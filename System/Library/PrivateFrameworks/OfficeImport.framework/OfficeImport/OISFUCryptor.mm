@interface OISFUCryptor
- (BOOL)cryptDataFromBuffer:(const char *)buffer length:(unint64_t)length toStream:(id)stream finished:(BOOL)finished crc32:(unsigned int *)crc32 error:(id *)error;
- (BOOL)cryptDataFromStream:(id)stream toBuffer:(char *)buffer length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error;
- (OISFUCryptor)initWithKey:(id)key operation:(int)operation iv:(const char *)iv ivLength:(unint64_t)length usePKCS7Padding:(BOOL)padding;
- (void)dealloc;
@end

@implementation OISFUCryptor

- (OISFUCryptor)initWithKey:(id)key operation:(int)operation iv:(const char *)iv ivLength:(unint64_t)length usePKCS7Padding:(BOOL)padding
{
  paddingCopy = padding;
  v22.receiver = self;
  v22.super_class = OISFUCryptor;
  v12 = [(OISFUCryptor *)&v22 init];
  if (!v12)
  {
    return v12;
  }

  if (!key)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 48, 0, "invalid nil value for '%{public}s'", "key");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (![key keyType])
  {
    if (length != 16)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 62, 0, "Incorrect iv length (%lu, should be %d)", length, 16);
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    if (!iv)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v16, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 63, 0, "invalid nil value for '%{public}s'", "iv");
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v17 = CCCryptorCreate(operation == 1, 0, paddingCopy, [key keyData], objc_msgSend(key, "keyLength"), iv, &v12->mCryptor);
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

  v12->mOperation = operation;
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

- (BOOL)cryptDataFromBuffer:(const char *)buffer length:(unint64_t)length toStream:(id)stream finished:(BOOL)finished crc32:(unsigned int *)crc32 error:(id *)error
{
  finishedCopy = finished;
  if (self->mOperation)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"], 118, 0, "Decryption to stream not supported");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (length)
  {
    while (1)
    {
      mCryptor = self->mCryptor;
      v17 = length >= 0x20000 - self->mBlockSize ? 0x20000 - self->mBlockSize : length;
      dataOutMoved = 0;
      v18 = CCCryptorUpdate(mCryptor, buffer, v17, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v18)
      {
        break;
      }

      if (dataOutMoved)
      {
        [stream writeBuffer:self->mOutputBuffer size:?];
        if (crc32)
        {
          if (HIDWORD(dataOutMoved))
          {
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptor.m"];
            v29 = v31;
            v30 = 140;
            goto LABEL_28;
          }

          *crc32 = crc32(*crc32, self->mOutputBuffer, dataOutMoved);
        }
      }

      buffer += v17;
      length -= v17;
      if (!length)
      {
        goto LABEL_13;
      }
    }

    if (!error)
    {
      return 0;
    }

    v23 = *MEMORY[0x277CCA590];
    v24 = v18;
    v25 = MEMORY[0x277CCA9B8];
    goto LABEL_32;
  }

LABEL_13:
  if (finishedCopy)
  {
    dataOutMoved = 0;
    mOutputBuffer = self->mOutputBuffer;
    if (CCCryptorFinal(self->mCryptor, mOutputBuffer, 0x20000uLL, &dataOutMoved) == -4301)
    {
      OutputLength = CCCryptorGetOutputLength(self->mCryptor, 0, 1);
      v21 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
      if (!v21)
      {
        if (!error)
        {
          return 0;
        }

        v25 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277CCA590];
        v24 = -4301;
LABEL_32:
        *error = [v25 errorWithDomain:v23 code:v24 userInfo:0];
        return 0;
      }

      mOutputBuffer = v21;
      v22 = CCCryptorFinal(self->mCryptor, v21, OutputLength, &dataOutMoved);
      if (v22)
      {
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v22 userInfo:0];
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
      [stream writeBuffer:mOutputBuffer size:?];
      if (crc32)
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
          if (!error)
          {
            return 0;
          }

          v25 = MEMORY[0x277CCA9B8];
          v23 = *MEMORY[0x277CCA590];
          v24 = -4302;
          goto LABEL_32;
        }

        *crc32 = crc32(*crc32, mOutputBuffer, dataOutMoved);
      }
    }

    if (v26)
    {
      free(v26);
    }
  }

  return 1;
}

- (BOOL)cryptDataFromStream:(id)stream toBuffer:(char *)buffer length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error
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
    if (mOutputBufferAvailable >= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = self->mOutputBufferAvailable;
    }

    memcpy(buffer, self->mOutputBufferPos, lengthCopy);
    v16 = self->mOutputBufferAvailable - lengthCopy;
    self->mOutputBufferPos += lengthCopy;
    self->mOutputBufferAvailable = v16;
    bufferCopy = &buffer[lengthCopy];
    length -= lengthCopy;
  }

  else
  {
    bufferCopy = buffer;
  }

  if (self->mFinished)
  {
    v18 = bufferCopy - buffer;
LABEL_11:
    *read = v18;
    return 1;
  }

  if (length)
  {
    errorCopy = error;
    while (1)
    {
      v19 = [stream readToBuffer:self->mDecryptionInputBuffer size:{0x20000 - self->mBlockSize, errorCopy}];
      if (!v19)
      {
        break;
      }

      dataOutMoved = 0;
      v20 = CCCryptorUpdate(self->mCryptor, self->mDecryptionInputBuffer, v19, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v20)
      {
        error = errorCopy;
        goto LABEL_36;
      }

      v21 = dataOutMoved;
      if (length >= dataOutMoved)
      {
        lengthCopy2 = dataOutMoved;
      }

      else
      {
        lengthCopy2 = length;
      }

      memcpy(bufferCopy, self->mOutputBuffer, lengthCopy2);
      bufferCopy += lengthCopy2;
      length -= lengthCopy2;
      self->mOutputBufferPos = &self->mOutputBuffer[lengthCopy2];
      self->mOutputBufferAvailable = v21 - lengthCopy2;
      v23 = length != 0;
      if (!length)
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

    error = errorCopy;
  }

  else
  {
    v23 = 0;
  }

  if (bufferCopy != buffer && !v23)
  {
    *read = bufferCopy - buffer;
    return 1;
  }

  self->mFinished = 1;
  dataOutMoved = 0;
  v20 = CCCryptorFinal(self->mCryptor, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
  if (!v20)
  {
    if (length >= dataOutMoved)
    {
      lengthCopy3 = dataOutMoved;
    }

    else
    {
      lengthCopy3 = length;
    }

    memcpy(bufferCopy, self->mOutputBuffer, lengthCopy3);
    v26 = dataOutMoved - lengthCopy3;
    self->mOutputBufferPos = &self->mOutputBuffer[lengthCopy3];
    self->mOutputBufferAvailable = v26;
    v18 = &bufferCopy[lengthCopy3] - buffer;
    goto LABEL_11;
  }

LABEL_36:
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v20 userInfo:0];
  }

  return 0;
}

@end