@interface OABOle
+ (BOOL)isBiffCLSID:(id)d;
+ (BOOL)isChart:(id)chart;
+ (BOOL)readSharedInfoFor:(id)for fromStorage:(SsrwOOStorage *)storage;
+ (id)read4ByteFromStream:(SsrwOOStream *)stream;
+ (id)readAnsiStringFromStream:(SsrwOOStream *)stream;
+ (id)readCLSIDFromStream:(SsrwOOStream *)stream;
+ (id)readCompressedFromStream:(SsrwOOStream *)stream compressedSize:(unsigned int)size uncompressedSize:(unsigned int)uncompressedSize cancel:(id)cancel;
+ (id)readFromData:(id)data cancel:(id)cancel;
+ (id)readFromFileName:(id)name cancel:(id)cancel;
+ (id)readFromParentStorage:(SsrwOOStorage *)storage storageName:(id)name cancel:(id)cancel;
+ (id)readFromStream:(SsrwOOStream *)stream size:(unsigned int)size cancel:(id)cancel;
+ (id)readUnicodeStringFromStream:(SsrwOOStream *)stream;
@end

@implementation OABOle

+ (id)read4ByteFromStream:(SsrwOOStream *)stream
{
  if ((*(stream->var0 + 22))(stream, a2) >= 4)
  {
    for (i = 3; i != -1; --i)
    {
      v7[i] = (*(stream->var0 + 8))(stream);
    }

    v7[4] = 0;
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)readAnsiStringFromStream:(SsrwOOStream *)stream
{
  if ((*(stream->var0 + 22))(stream, a2) < 4)
  {
LABEL_4:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = (*(stream->var0 + 13))(stream);
  if (v4)
  {
    if ((*(stream->var0 + 22))(stream) >= v4)
    {
      operator new[]();
    }

    goto LABEL_4;
  }

  v5 = &stru_286EE1130;
LABEL_7:

  return v5;
}

+ (id)readCLSIDFromStream:(SsrwOOStream *)stream
{
  v8[2] = *MEMORY[0x277D85DE8];
  if ((*(stream->var0 + 22))(stream, a2) >= 0x10)
  {
    LODWORD(v8[0]) = (*(stream->var0 + 13))(stream);
    WORD2(v8[0]) = (*(stream->var0 + 10))(stream);
    HIWORD(v8[0]) = (*(stream->var0 + 10))(stream);
    for (i = 8; i != 16; ++i)
    {
      *(v8 + i) = (*(stream->var0 + 8))(stream);
    }

    v5 = [self stringForCLSID:{v8[0], v8[1]}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isBiffCLSID:(id)d
{
  dCopy = d;
  v4 = +[OABOle isBiffCLSID:]::biffClassIds;
  if (!+[OABOle isBiffCLSID:]::biffClassIds)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"00020820-0000-0000-C000-000000000046", @"00020803-0000-0000-C000-000000000046", @"00020821-0000-0000-C000-000000000046", @"00020801-0000-0000-C000-000000000046", 0}];
    v6 = +[OABOle isBiffCLSID:]::biffClassIds;
    +[OABOle isBiffCLSID:]::biffClassIds = v5;

    v4 = +[OABOle isBiffCLSID:]::biffClassIds;
  }

  v7 = [v4 containsObject:dCopy];

  return v7;
}

+ (BOOL)isChart:(id)chart
{
  cLSID = [chart CLSID];
  if (cLSID)
  {
    v5 = [self isBiffCLSID:cLSID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)readUnicodeStringFromStream:(SsrwOOStream *)stream
{
  if ((*(stream->var0 + 22))(stream, a2) < 4)
  {
LABEL_4:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = (*(stream->var0 + 13))(stream);
  if (v4)
  {
    if ((*(stream->var0 + 22))(stream) >= v4)
    {
      operator new[]();
    }

    goto LABEL_4;
  }

  v5 = &stru_286EE1130;
LABEL_7:

  return v5;
}

+ (BOOL)readSharedInfoFor:(id)for fromStorage:(SsrwOOStorage *)storage
{
  forCopy = for;
  if (forCopy && SsrwOOStorage::getChildType(storage, +[OABOle readSharedInfoFor:fromStorage:]::compObjStreamName) == 2)
  {
    SsrwOOStorage::openStream(storage, +[OABOle readSharedInfoFor:fromStorage:]::compObjStreamName);
  }

  return 0;
}

+ (id)readFromFileName:(id)name cancel:(id)cancel
{
  nameCopy = name;
  cancelCopy = cancel;
  v8 = objc_alloc_init(OADOle);
  SsrwOORootStorage::SsrwOORootStorage(v18);
  SsrwOORootStorage::open(v18, [(NSString *)nameCopy fileSystemRepresentation], 0);
  LOBYTE(self) = [self readSharedInfoFor:v8 fromStorage:v18];
  SsrwOORootStorage::close(v18, 0);
  SsrwOORootStorage::~SsrwOORootStorage(v18);
  if ((self & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = [[EBReader alloc] initWithCancelDelegate:cancelCopy];
  [(OCDReader *)v9 setFileName:nameCopy];
  if (![(EBReader *)v9 start])
  {

LABEL_9:
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:nameCopy error:0];

    read = 0;
    goto LABEL_10;
  }

  v10 = v9;
  LODWORD(v18[0]) = 0;
  if ([(OCBReader *)v10 retainDecryptorWithErrorCode:v18])
  {
    decryptor = [(OCDEncryptedReader *)v10 decryptor];
    isReadProtectedUsingDefaultPassphrase = [decryptor isReadProtectedUsingDefaultPassphrase];

    if ((isReadProtectedUsingDefaultPassphrase & 1) == 0)
    {

      TCRemoveFileSecurely(nameCopy);
      v14 = 0;
      v15 = v10;
      goto LABEL_11;
    }
  }

  read = [(EBReader *)v10 read];

  if (!read)
  {
    goto LABEL_9;
  }

  [(OADOle *)v8 setObject:read];
LABEL_10:
  v15 = v8;
  v10 = read;
  v14 = v15;
LABEL_11:

  return v14;
}

+ (id)readFromParentStorage:(SsrwOOStorage *)storage storageName:(id)name cancel:(id)cancel
{
  nameCopy = name;
  cancelCopy = cancel;
  uTF8String = [nameCopy UTF8String];
  if (uTF8String)
  {
    SsrwOOStorage::openStorage(storage, uTF8String);
  }

  free(0);
  v10 = 0;

  return v10;
}

+ (id)readFromData:(id)data cancel:(id)cancel
{
  dataCopy = data;
  cancelCopy = cancel;
  if ([dataCopy length] >> 32)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = objc_alloc_init(OADOle);
  SsrwOORootStorage::SsrwOORootStorage(v19);
  SsrwOORootStorage::openInBuf(v19, &v18, [dataCopy length]);
  v10 = [self readSharedInfoFor:v9 fromStorage:v19];
  SsrwOORootStorage::close(v19, 0);
  SsrwOORootStorage::~SsrwOORootStorage(v19);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = [[EBReader alloc] initWithCancelDelegate:cancelCopy];
  [(OCDReader *)v11 setData:dataCopy];
  if (![(EBReader *)v11 start])
  {

    goto LABEL_11;
  }

  v12 = v11;
  v19[0] = 0;
  if (!-[OCBReader retainDecryptorWithErrorCode:](v12, "retainDecryptorWithErrorCode:", v19) || (-[OCDEncryptedReader decryptor](v12, "decryptor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isReadProtectedUsingDefaultPassphrase], v13, (v14 & 1) != 0))
  {
    read = [(EBReader *)v12 read];

    if (read)
    {
      [(OADOle *)v9 setObject:read];
LABEL_12:
      v16 = v9;
      v12 = read;
      v8 = v16;
      goto LABEL_13;
    }

LABEL_11:

    read = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  v16 = v12;
LABEL_13:

LABEL_14:

  return v8;
}

+ (id)readCompressedFromStream:(SsrwOOStream *)stream compressedSize:(unsigned int)size uncompressedSize:(unsigned int)uncompressedSize cancel:(id)cancel
{
  cancelCopy = cancel;
  if (size >= 0x4000)
  {
    sizeCopy = 0x4000;
  }

  else
  {
    sizeCopy = size;
  }

  v29 = sizeCopy;
  v12 = malloc_type_malloc(sizeCopy, 0x9AD330A3uLL);
  if (v12)
  {
    if (uncompressedSize >= 0x4000)
    {
      uncompressedSizeCopy = 0x4000;
    }

    else
    {
      uncompressedSizeCopy = uncompressedSize;
    }

    v14 = malloc_type_malloc(uncompressedSizeCopy, 0xA2661725uLL);
    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:uncompressedSize];
      selfCopy = self;
      memset(&strm, 0, sizeof(strm));
      v16 = inflateInit_(&strm, "1.2.12", 112);
      strm.avail_in = 0;
      strm.next_out = v14;
      strm.avail_out = uncompressedSizeCopy;
      if (!v16)
      {
        sizeCopy2 = size;
        do
        {
          if (!strm.avail_in)
          {
            v18 = v29;
            if (sizeCopy2 - strm.total_in < v29)
            {
              v29 = sizeCopy2 - LODWORD(strm.total_in);
              v18 = sizeCopy2 - LODWORD(strm.total_in);
            }

            if (!v18)
            {
              break;
            }

            (*(stream->var0 + 7))(stream, v12, &v29);
            strm.next_in = v12;
            strm.avail_in = v29;
            if (!v29)
            {
              break;
            }
          }

          v19 = inflate(&strm, 0);
          v20 = (uncompressedSizeCopy - strm.avail_out);
          if (v20 >= 1)
          {
            v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v14 length:v20 freeWhenDone:0];
            [v15 appendData:v21];
          }

          strm.next_out = v14;
          strm.avail_out = uncompressedSizeCopy;
        }

        while (!v19);
      }

      v22 = 1;
      v23 = inflateEnd(&strm);
      self = selfCopy;
    }

    else
    {
      v22 = 0;
      v15 = 0;
      v23 = 0;
    }
  }

  else
  {
    v22 = 0;
    v15 = 0;
    v23 = 0;
    v14 = 0;
  }

  if (v12)
  {
    free(v12);
  }

  if (v14)
  {
    free(v14);
  }

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  if (v24 == 1)
  {
    v25 = [self readFromData:v15 cancel:cancelCopy];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)readFromStream:(SsrwOOStream *)stream size:(unsigned int)size cancel:(id)cancel
{
  cancelCopy = cancel;
  v9 = malloc_type_malloc(size, 0xA08413B1uLL);
  sizeCopy = size;
  (*(stream->var0 + 7))(stream, v9, &sizeCopy);
  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v9 length:size freeWhenDone:1];
  v11 = [self readFromData:v10 cancel:cancelCopy];

  return v11;
}

@end