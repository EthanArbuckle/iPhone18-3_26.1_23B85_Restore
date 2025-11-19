@interface OISFUCryptor
- (BOOL)cryptDataFromBuffer:(const char *)a3 length:(unint64_t)a4 toStream:(id)a5 finished:(BOOL)a6 crc32:(unsigned int *)a7 error:(id *)a8;
- (BOOL)cryptDataFromStream:(id)a3 toBuffer:(char *)a4 length:(unint64_t)a5 bytesRead:(unint64_t *)a6 error:(id *)a7;
- (OISFUCryptor)initWithKey:(id)a3 operation:(int)a4 iv:(const char *)a5 ivLength:(unint64_t)a6 usePKCS7Padding:(BOOL)a7;
- (void)dealloc;
@end

@implementation OISFUCryptor

- (OISFUCryptor)initWithKey:(id)a3 operation:(int)a4 iv:(const char *)a5 ivLength:(unint64_t)a6 usePKCS7Padding:(BOOL)a7
{
  v7 = a7;
  v22.receiver = self;
  v22.super_class = OISFUCryptor;
  v12 = [(OISFUCryptor *)&v22 init];
  if (!v12)
  {
    return v12;
  }

  if (!a3)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 48, 0, "invalid nil value for '%{public}s'", "key");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (![a3 keyType])
  {
    if (a6 != 16)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 62, 0, "Incorrect iv length (%lu, should be %d)", a6, 16);
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    if (!a5)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v16, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 63, 0, "invalid nil value for '%{public}s'", "iv");
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v17 = CCCryptorCreate(a4 == 1, 0, v7, [a3 keyData], objc_msgSend(a3, "keyLength"), a5, &v12->mCryptor);
    if (v17)
    {
      v18 = v17;
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v19, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 67, 0, "CCCryptorCreate() failed: %d", v18);
LABEL_15:
      +[OITSUAssertionHandler logBacktraceThrottled];

      return 0;
    }

    v12->mBlockSize = 16;
  }

  if (!v12->mCryptor)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v20, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 79, 0, "Failed to initialize SFUCommonCryptoCryptor.");
    goto LABEL_15;
  }

  v12->mOperation = a4;
  v14 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  v12->mOutputBuffer = v14;
  v12->mOutputBufferPos = v14;
  if (v12->mOperation == 1)
  {
    v12->mDecryptionInputBuffer = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  }

  return v12;
}

- (void)dealloc
{
  mCryptor = self->mCryptor;
  if (mCryptor)
  {
    CCCryptorRelease(mCryptor);
    self->mCryptor = 0;
  }

  free(self->mOutputBuffer);
  mDecryptionInputBuffer = self->mDecryptionInputBuffer;
  if (mDecryptionInputBuffer)
  {
    free(mDecryptionInputBuffer);
  }

  v5.receiver = self;
  v5.super_class = OISFUCryptor;
  [(OISFUCryptor *)&v5 dealloc];
}

- (BOOL)cryptDataFromBuffer:(const char *)a3 length:(unint64_t)a4 toStream:(id)a5 finished:(BOOL)a6 crc32:(unsigned int *)a7 error:(id *)a8
{
  v10 = a6;
  if (self->mOperation)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 118, 0, "Decryption to stream not supported");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (a4)
  {
    while (1)
    {
      mCryptor = self->mCryptor;
      v17 = a4 >= 0x20000 - self->mBlockSize ? 0x20000 - self->mBlockSize : a4;
      dataOutMoved = 0;
      v18 = CCCryptorUpdate(mCryptor, a3, v17, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v18)
      {
        break;
      }

      if (dataOutMoved)
      {
        [a5 writeBuffer:self->mOutputBuffer size:?];
        if (a7)
        {
          if (HIDWORD(dataOutMoved))
          {
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"];
            v29 = v31;
            v30 = 140;
            goto LABEL_28;
          }

          *a7 = crc32(*a7, self->mOutputBuffer, dataOutMoved);
        }
      }

      a3 += v17;
      a4 -= v17;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    if (!a8)
    {
      return 0;
    }

    v23 = *MEMORY[0x277CCA590];
    v24 = v18;
    v25 = MEMORY[0x277CCA9B8];
    goto LABEL_32;
  }

LABEL_13:
  if (v10)
  {
    dataOutMoved = 0;
    mOutputBuffer = self->mOutputBuffer;
    if (CCCryptorFinal(self->mCryptor, mOutputBuffer, 0x20000uLL, &dataOutMoved) == -4301)
    {
      OutputLength = CCCryptorGetOutputLength(self->mCryptor, 0, 1);
      v21 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
      if (!v21)
      {
        if (!a8)
        {
          return 0;
        }

        v25 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277CCA590];
        v24 = -4301;
LABEL_32:
        *a8 = [v25 errorWithDomain:v23 code:v24 userInfo:0];
        return 0;
      }

      mOutputBuffer = v21;
      v22 = CCCryptorFinal(self->mCryptor, v21, OutputLength, &dataOutMoved);
      if (v22)
      {
        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v22 userInfo:0];
        }

        free(mOutputBuffer);
        return 0;
      }

      v26 = mOutputBuffer;
    }

    else
    {
      v26 = 0;
    }

    if (dataOutMoved)
    {
      [a5 writeBuffer:mOutputBuffer size:?];
      if (a7)
      {
        if (HIDWORD(dataOutMoved))
        {
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"];
          v29 = v27;
          v30 = 180;
LABEL_28:
          [OITSUAssertionHandler handleFailureInFunction:v29 file:v28 lineNumber:v30 isFatal:0 description:"overflow in cryptDataFromBuffer:length:toStream:finished:crc32:error:"];
          +[OITSUAssertionHandler logBacktraceThrottled];
          if (!a8)
          {
            return 0;
          }

          v25 = MEMORY[0x277CCA9B8];
          v23 = *MEMORY[0x277CCA590];
          v24 = -4302;
          goto LABEL_32;
        }

        *a7 = crc32(*a7, mOutputBuffer, dataOutMoved);
      }
    }

    if (v26)
    {
      free(v26);
    }
  }

  return 1;
}

- (BOOL)cryptDataFromStream:(id)a3 toBuffer:(char *)a4 length:(unint64_t)a5 bytesRead:(unint64_t *)a6 error:(id *)a7
{
  if (self->mOperation != 1)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor cryptDataFromStream:toBuffer:length:bytesRead:error:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 200, 0, "Encryption from stream not supported");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  mOutputBufferAvailable = self->mOutputBufferAvailable;
  if (mOutputBufferAvailable)
  {
    if (mOutputBufferAvailable >= a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = self->mOutputBufferAvailable;
    }

    memcpy(a4, self->mOutputBufferPos, v15);
    v16 = self->mOutputBufferAvailable - v15;
    self->mOutputBufferPos += v15;
    self->mOutputBufferAvailable = v16;
    v17 = &a4[v15];
    a5 -= v15;
  }

  else
  {
    v17 = a4;
  }

  if (self->mFinished)
  {
    v18 = v17 - a4;
LABEL_11:
    *a6 = v18;
    return 1;
  }

  if (a5)
  {
    v27 = a7;
    while (1)
    {
      v19 = [a3 readToBuffer:self->mDecryptionInputBuffer size:{0x20000 - self->mBlockSize, v27}];
      if (!v19)
      {
        break;
      }

      dataOutMoved = 0;
      v20 = CCCryptorUpdate(self->mCryptor, self->mDecryptionInputBuffer, v19, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v20)
      {
        a7 = v27;
        goto LABEL_36;
      }

      v21 = dataOutMoved;
      if (a5 >= dataOutMoved)
      {
        v22 = dataOutMoved;
      }

      else
      {
        v22 = a5;
      }

      memcpy(v17, self->mOutputBuffer, v22);
      v17 += v22;
      a5 -= v22;
      self->mOutputBufferPos = &self->mOutputBuffer[v22];
      self->mOutputBufferAvailable = v21 - v22;
      v23 = a5 != 0;
      if (!a5)
      {
        goto LABEL_23;
      }
    }

    v23 = 1;
LABEL_23:
    if (v19)
    {
      v23 = 0;
    }

    a7 = v27;
  }

  else
  {
    v23 = 0;
  }

  if (v17 != a4 && !v23)
  {
    *a6 = v17 - a4;
    return 1;
  }

  self->mFinished = 1;
  dataOutMoved = 0;
  v20 = CCCryptorFinal(self->mCryptor, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
  if (!v20)
  {
    if (a5 >= dataOutMoved)
    {
      v25 = dataOutMoved;
    }

    else
    {
      v25 = a5;
    }

    memcpy(v17, self->mOutputBuffer, v25);
    v26 = dataOutMoved - v25;
    self->mOutputBufferPos = &self->mOutputBuffer[v25];
    self->mOutputBufferAvailable = v26;
    v18 = &v17[v25] - a4;
    goto LABEL_11;
  }

LABEL_36:
  if (a7)
  {
    *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v20 userInfo:0];
  }

  return 0;
}

@end