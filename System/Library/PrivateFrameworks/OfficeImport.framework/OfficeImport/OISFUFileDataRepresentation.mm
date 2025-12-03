@interface OISFUFileDataRepresentation
- (BOOL)hasSameLocationAs:(id)as;
- (BOOL)isCryptoKeyIdenticalToKey:(id)key;
- (OISFUFileDataRepresentation)initWithCopyOfData:(id)data path:(id)path cryptoKey:(id)key;
- (OISFUFileDataRepresentation)initWithInputStream:(id)stream cryptoKey:(id)key dataLength:(int64_t)length;
- (OISFUFileDataRepresentation)initWithPath:(id)path sharedFileDescriptor:(int)descriptor cryptoKey:(id)key dataLength:(int64_t)length;
- (id)inputStream;
- (int64_t)dataLength;
- (void)dealloc;
- (void)readFileAttributes;
- (void)setFileType:(unsigned int)type;
@end

@implementation OISFUFileDataRepresentation

- (OISFUFileDataRepresentation)initWithPath:(id)path sharedFileDescriptor:(int)descriptor cryptoKey:(id)key dataLength:(int64_t)length
{
  if (!path)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUFileDataRepresentation initWithPath:sharedFileDescriptor:cryptoKey:dataLength:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUFileDataRepresentation.m"], 48, 0, "Invalid parameter not satisfying: %{public}s", "path != nil");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v12 = [(OISFUFileDataRepresentation *)self init];
  if (v12)
  {
    v12->mPath = path;
    keyCopy = key;
    v12->mCryptoKey = keyCopy;
    if (keyCopy)
    {
      v12->mPlaintextDataLength = length;
    }

    v12->mSharedFd = descriptor;
    [(OISFUFileDataRepresentation *)v12 path];
  }

  return v12;
}

- (OISFUFileDataRepresentation)initWithCopyOfData:(id)data path:(id)path cryptoKey:(id)key
{
  if (data)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(data "path")] || (objc_msgSend(data, "isCryptoKeyIdenticalToKey:", key) & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      bufferedInputStream = [data bufferedInputStream];
      unlink([path fileSystemRepresentation]);
      v11 = [[OISFUFileOutputStream alloc] initWithPath:path];
      v12 = v11;
      if (key)
      {
        v13 = [[OISFUCryptoOutputStream alloc] initForEncryptionWithOutputStream:v11 key:key];
      }

      else
      {
        v13 = v11;
      }

      while (1)
      {
        v16 = 0;
        v15 = [bufferedInputStream readToOwnBuffer:&v16 size:-1];
        if (!v15)
        {
          break;
        }

        [(OISFUFileOutputStream *)v13 writeBuffer:v16 size:v15];
      }

      [bufferedInputStream close];
      [(OISFUFileOutputStream *)v13 close];

      objc_autoreleasePoolPop(v9);
    }

    return -[OISFUFileDataRepresentation initWithPath:cryptoKey:dataLength:](self, "initWithPath:cryptoKey:dataLength:", path, key, [data dataLength]);
  }

  else
  {

    return 0;
  }
}

- (OISFUFileDataRepresentation)initWithInputStream:(id)stream cryptoKey:(id)key dataLength:(int64_t)length
{
  v8 = [(OISFUFileDataRepresentation *)self init];
  if (v8)
  {
    keyCopy = key;
    v8->mCryptoKey = keyCopy;
    if (keyCopy)
    {
      v8->mPlaintextDataLength = length;
    }

    v8->mInputStream = stream;
  }

  return v8;
}

- (void)dealloc
{
  if (self->mDeleteFileWhenDone && self->mPath)
  {
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }

  v3.receiver = self;
  v3.super_class = OISFUFileDataRepresentation;
  [(OISFUFileDataRepresentation *)&v3 dealloc];
}

- (void)setFileType:(unsigned int)type
{
  path = [(OISFUFileDataRepresentation *)self path];
  objc_sync_enter(self);
  if (path)
  {
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:type];
    v7 = objc_alloc(MEMORY[0x277CBEB38]);
    v8 = [v7 initWithObjectsAndKeys:{v6, *MEMORY[0x277CCA130], 0}];
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }

  self->mFileType = type;

  objc_sync_exit(self);
}

- (int64_t)dataLength
{
  if (self->mCryptoKey)
  {
    return self->mPlaintextDataLength;
  }

  else
  {
    return [(OISFUFileDataRepresentation *)self encodedLength];
  }
}

- (BOOL)isCryptoKeyIdenticalToKey:(id)key
{
  mCryptoKey = self->mCryptoKey;
  result = (key | mCryptoKey) == 0;
  if (key)
  {
    if (mCryptoKey)
    {
      return [key isEqual:mCryptoKey];
    }
  }

  return result;
}

- (id)inputStream
{
  mSharedFd = self->mSharedFd;
  if (mSharedFd == -1 || pread(mSharedFd, 0, 0, 0) == -1)
  {
    v4 = [[OISFUFileInputStream alloc] initWithPath:[(OISFUFileDataRepresentation *)self path] offset:0 length:[(OISFUFileDataRepresentation *)self encodedLength]];
  }

  else
  {
    v4 = [[OISFUFileInputStream alloc] initWithFileDescriptor:SFUDup(self->mSharedFd) offset:0 length:[(OISFUFileDataRepresentation *)self encodedLength]];
  }

  v5 = v4;
  if (self->mCryptoKey)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [[OISFUCryptoInputStream alloc] initForDecryptionWithInputStream:v4 key:self->mCryptoKey];

    v5 = v7;
  }

  return v5;
}

- (BOOL)hasSameLocationAs:(id)as
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  path = [(OISFUFileDataRepresentation *)self path];
  path2 = [as path];

  return [path isEqualToString:path2];
}

- (void)readFileAttributes
{
  if (!self->mHasFileAttributes)
  {
    objc_sync_enter(self);
    if (!self->mHasFileAttributes)
    {
      v3 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 objectForKey:*MEMORY[0x277CCA1C0]];
        if (v5)
        {
          self->mFileLength = [v5 unsignedLongLongValue];
        }

        v6 = [v4 objectForKey:*MEMORY[0x277CCA130]];
        if (v6)
        {
          self->mFileType = [v6 unsignedIntValue];
        }

        __dmb(0xBu);
        self->mHasFileAttributes = 1;
      }
    }

    objc_sync_exit(self);
  }
}

@end