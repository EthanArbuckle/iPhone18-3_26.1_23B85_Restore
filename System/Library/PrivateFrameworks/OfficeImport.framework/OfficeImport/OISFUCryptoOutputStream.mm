@interface OISFUCryptoOutputStream
+ (unint64_t)encodedLengthForDataLength:(unint64_t)length key:(id)key;
- (id)closeLocalStream;
- (id)initForEncryptionWithOutputStream:(id)stream key:(id)key computeCrc32:(BOOL)crc32;
- (id)inputStream;
- (unsigned)crc32;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset whence:(int)whence;
- (void)writeBuffer:(const char *)buffer size:(unint64_t)size;
@end

@implementation OISFUCryptoOutputStream

+ (unint64_t)encodedLengthForDataLength:(unint64_t)length key:(id)key
{
  v6 = 2 * [OISFUCryptoUtils ivLengthForKey:key];
  keyType = [key keyType];
  LODWORD(v8) = v6 - (length & 0xF) + 16;
  if (keyType)
  {
    v8 = v6;
  }

  else
  {
    v8 = v8;
  }

  if (__CFADD__(v8, length))
  {
    v8 = 0;
  }

  return v8 + length;
}

- (id)initForEncryptionWithOutputStream:(id)stream key:(id)key computeCrc32:(BOOL)crc32
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = [(OISFUCryptoOutputStream *)self init];
  if (v8)
  {
    v8->mBaseStream = stream;
    v8->mComputeCrc32 = crc32;
    v9 = [OISFUCryptoUtils ivLengthForKey:key];
    v10 = v14 - ((v9 + 15) & 0x1FFFFFFF0);
    if (![OISFUCryptoUtils generateRandomDataInBuffer:v10 length:v9])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to generate IV"];
    }

    v11 = [[OISFUCryptor alloc] initWithKey:key operation:0 iv:v10 ivLength:v9];
    v8->mCryptor = v11;
    if (!v11)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to create SFUCryptor"];
    }

    [(SFUOutputStream *)v8->mBaseStream writeBuffer:v10 size:v9];
    if (v8->mComputeCrc32)
    {
      v12 = crc32(0, 0, 0);
      v8->mCrc32 = v12;
      v8->mCrc32 = crc32(v12, v10, v9);
    }

    if (v9)
    {
      if (![OISFUCryptoUtils generateRandomDataInBuffer:v10 length:v9])
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to generate initial plaintext"];
      }

      [(OISFUCryptoOutputStream *)v8 writeBuffer:v10 size:v9];
    }
  }

  return v8;
}

- (void)dealloc
{
  if (!self->mIsClosed)
  {
    [(OISFUCryptoOutputStream *)self closeLocalStream];
  }

  v3.receiver = self;
  v3.super_class = OISFUCryptoOutputStream;
  [(OISFUCryptoOutputStream *)&v3 dealloc];
}

- (void)writeBuffer:(const char *)buffer size:(unint64_t)size
{
  if (self->mIsClosed)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Tried to write data to a closed SFUCryptoOutputStream."];
  }

  v11 = 0;
  if (self->mComputeCrc32)
  {
    p_mCrc32 = &self->mCrc32;
  }

  else
  {
    p_mCrc32 = 0;
  }

  if (![(OISFUCryptor *)self->mCryptor cryptDataFromBuffer:buffer length:size toStream:self->mBaseStream finished:0 crc32:p_mCrc32 error:&v11])
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE648];
    localizedDescription = [v11 localizedDescription];
    [v8 raise:v9 format:{@"SFUCryptor failed. %@: %@", localizedDescription, objc_msgSend(v11, "localizedFailureReason")}];
  }
}

- (void)seekToOffset:(int64_t)offset whence:(int)whence
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[OISFUCryptoOutputStream seekToOffset:whence:]", *&whence}];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptoOutputStream.mm"], 121, 0, "SFUCryptoOutputStream cannot seek.");

  +[OITSUAssertionHandler logBacktraceThrottled];
}

- (id)inputStream
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptoOutputStream inputStream]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptoOutputStream.mm"], 133, 0, "SFUCryptoOutputStream cannot create an input stream.");
  +[OITSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (unsigned)crc32
{
  if (!self->mComputeCrc32 || !self->mIsClosed)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptoOutputStream crc32]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptoOutputStream.mm"], 138, 0, "Can't call -crc32 unless the stream is closed and was asked to compute the CRC32.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return self->mCrc32;
}

- (void)close
{
  [(OISFUCryptoOutputStream *)self closeLocalStream];
  mBaseStream = self->mBaseStream;

  [(SFUOutputStream *)mBaseStream close];
}

- (id)closeLocalStream
{
  if (!self->mIsClosed)
  {
    self->mIsClosed = 1;
    v10 = 0;
    mBaseStream = self->mBaseStream;
    mCryptor = self->mCryptor;
    if (self->mComputeCrc32)
    {
      p_mCrc32 = &self->mCrc32;
    }

    else
    {
      p_mCrc32 = 0;
    }

    if (![(OISFUCryptor *)mCryptor cryptDataFromBuffer:0 length:0 toStream:mBaseStream finished:1 crc32:p_mCrc32 error:&v10])
    {
      v6 = MEMORY[0x277CBEAD8];
      v7 = *MEMORY[0x277CBE648];
      localizedDescription = [v10 localizedDescription];
      [v6 raise:v7 format:{@"SFUCryptor failed. %@: %@", localizedDescription, objc_msgSend(v10, "localizedFailureReason")}];
    }
  }

  return self->mBaseStream;
}

@end