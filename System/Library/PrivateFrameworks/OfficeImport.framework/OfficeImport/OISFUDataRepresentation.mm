@interface OISFUDataRepresentation
- (BOOL)isEqual:(id)equal;
- (CGDataProvider)cgDataProvider;
- (_xmlDoc)xmlDocument;
- (_xmlTextReader)xmlReaderForGzippedDataWithInputStream:(id *)stream;
- (_xmlTextReader)xmlReaderWithReadCallback:(void *)callback;
- (id)bufferedInputStream;
- (id)bufferedInputStreamWithBufferSize:(unint64_t)size;
- (id)inputStream;
- (id)sha1Hash;
- (int64_t)compare:(id)compare;
- (int64_t)dataLength;
- (unint64_t)readIntoData:(id)data;
- (unsigned)uint32Hash;
@end

@implementation OISFUDataRepresentation

- (int64_t)dataLength
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUDataRepresentation dataLength]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUDataRepresentation.m"], 60, 0, "Abstract method.");
  +[OITSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (id)inputStream
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUDataRepresentation inputStream]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUDataRepresentation.m"], 73, 0, "Abstract method.");
  +[OITSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (id)bufferedInputStream
{
  v2 = [[OISFUBufferedInputStream alloc] initWithStream:[(OISFUDataRepresentation *)self inputStream] dataLength:[(OISFUDataRepresentation *)self dataLength]];

  return v2;
}

- (id)bufferedInputStreamWithBufferSize:(unint64_t)size
{
  v3 = [[OISFUBufferedInputStream alloc] initWithStream:[(OISFUDataRepresentation *)self inputStream] bufferSize:size];

  return v3;
}

- (_xmlDoc)xmlDocument
{
  context = objc_autoreleasePoolPush();
  if (initMultiThreadedLibXMLUse_once != -1)
  {
    [OISFUDataRepresentation xmlDocument];
  }

  bufferedInputStream = [(OISFUDataRepresentation *)self bufferedInputStream];
  chunk = 0;
  v4 = [bufferedInputStream readToOwnBuffer:&chunk size:-1];
  v5 = v4;
  if (v4 >> 31)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUDataRepresentation xmlDocument]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUDataRepresentation.m"], 107, 0, "overflow in xmlDocument");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  PushParserCtxt = xmlCreatePushParserCtxt(0, 0, chunk, v5, 0);
  if (!PushParserCtxt)
  {
    [MEMORY[0x277CBEAD8] raise:@"SFUDataRepresentationError" format:@"xmlCreatePushParserCtxt() failed"];
  }

  while (1)
  {
    v8 = [bufferedInputStream readToOwnBuffer:&chunk size:-1];
    v9 = v8;
    if (!v8)
    {
      break;
    }

    if (v8 >> 31)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUDataRepresentation xmlDocument]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUDataRepresentation.m"], 120, 0, "overflow in xmlDocument");
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v11 = xmlParseChunk(PushParserCtxt, chunk, v9, 0);
    if (v11)
    {
      [MEMORY[0x277CBEAD8] raise:@"SFUDataRepresentationError" format:{@"xmlParseChunk() failed: %d", v11}];
    }
  }

  v12 = xmlParseChunk(PushParserCtxt, chunk, 0, 1);
  if (v12)
  {
    [MEMORY[0x277CBEAD8] raise:@"SFUDataRepresentationError" format:{@"xmlParseChunk() failed: %d", v12}];
  }

  myDoc = PushParserCtxt->myDoc;
  if (!PushParserCtxt->wellFormed)
  {
    [MEMORY[0x277CBEAD8] raise:@"SFUDataRepresentationError" format:@"XML document is not well formed."];
  }

  xmlFreeParserCtxt(PushParserCtxt);
  [bufferedInputStream close];
  objc_autoreleasePoolPop(context);
  return myDoc;
}

- (_xmlTextReader)xmlReaderWithReadCallback:(void *)callback
{
  inputStream = [(OISFUDataRepresentation *)self inputStream];

  return xmlReaderForIO(callback, SFUXmlReaderIOClose, inputStream, 0, 0, 0);
}

- (_xmlTextReader)xmlReaderForGzippedDataWithInputStream:(id *)stream
{
  v12 = *MEMORY[0x277D85DE8];
  inputStream = [(OISFUDataRepresentation *)self inputStream];
  if ([inputStream readToBuffer:v10 size:10] != 10)
  {
    return 0;
  }

  v5 = v11;
  if ((v11 & 4) != 0)
  {
    v9 = 0;
    if ([inputStream readToBuffer:&v9 size:2] != 2)
    {
      return 0;
    }

    if (v9)
    {
      v8 = 0;
      while ([inputStream readToBuffer:v10 size:1] == 1)
      {
        if (++v8 >= v9)
        {
          goto LABEL_3;
        }
      }

      return 0;
    }
  }

LABEL_3:
  if ((v5 & 8) != 0)
  {
    v10[0] = 1;
    while ([inputStream readToBuffer:v10 size:1] == 1)
    {
      if (!v10[0])
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  if ((v5 & 0x10) != 0)
  {
    v10[0] = 1;
    while ([inputStream readToBuffer:v10 size:1] == 1)
    {
      if (!v10[0])
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if ((v5 & 2) != 0 && [inputStream readToBuffer:v10 size:2] != 2)
  {
    return 0;
  }

  v6 = [[OISFUZipInflateInputStream alloc] initWithInput:inputStream];
  if (stream)
  {
    *stream = v6;
  }

  return xmlReaderForIO(SFUXmlReaderIORead, SFUXmlReaderIOClose, v6, 0, 0, 0);
}

- (CGDataProvider)cgDataProvider
{
  inputStream = [(OISFUDataRepresentation *)self inputStream];
  if (([inputStream canSeek] & 1) == 0)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUDataRepresentation cgDataProvider]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUDataRepresentation.m"], 244, 0, "Need a seekable input stream for -cgDataProvider");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return CGDataProviderCreateSequential(inputStream, &SFUCGDataProviderCallbacks);
}

- (unint64_t)readIntoData:(id)data
{
  v5 = [data length];
  bufferedInputStream = [(OISFUDataRepresentation *)self bufferedInputStream];
  for (i = 0; ; [data appendBytes:i length:v7])
  {
    v7 = [bufferedInputStream readToOwnBuffer:&i size:-1];
    if (!v7)
    {
      break;
    }
  }

  [bufferedInputStream close];
  return [data length] - v5;
}

- (unsigned)uint32Hash
{
  if (!self->mHasHash && [(OISFUDataRepresentation *)self isReadable])
  {
    objc_sync_enter(self);
    if (!self->mHasHash && [(OISFUDataRepresentation *)self isReadable])
    {
      v3 = objc_autoreleasePoolPush();
      dataLength = [(OISFUDataRepresentation *)self dataLength];
      inputStream = [(OISFUDataRepresentation *)self inputStream];
      v6 = malloc_type_malloc(0x1008uLL, 0x100004077774924uLL);
      if (!v6)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Failed to allocate hash buffer for SFEData"];
      }

      v7 = [inputStream readToBuffer:v6 size:4096];
      *&v6[v7] = dataLength;
      self->mHash = SFUHash(v6, v7 + 8);
      free(v6);
      __dmb(0xBu);
      self->mHasHash = 1;
      objc_autoreleasePoolPop(v3);
    }

    objc_sync_exit(self);
  }

  return self->mHash;
}

- (id)sha1Hash
{
  if (!self->mHasSha1Hash && [(OISFUDataRepresentation *)self isReadable])
  {
    objc_sync_enter(self);
    if (!self->mHasSha1Hash && [(OISFUDataRepresentation *)self isReadable])
    {
      v3 = objc_autoreleasePoolPush();
      self->mSha1Hash = [OISFUCryptoUtils sha1HashFromStorage:self];
      objc_autoreleasePoolPop(v3);
      __dmb(0xBu);
      self->mHasSha1Hash = 1;
    }

    objc_sync_exit(self);
  }

  return self->mSha1Hash;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dataLength = [(OISFUDataRepresentation *)self dataLength];
  if (dataLength != [equal dataLength])
  {
    return 0;
  }

  if ([(OISFUDataRepresentation *)self hasSameLocationAs:equal])
  {
    return 1;
  }

  if (!-[OISFUDataRepresentation isReadable](self, "isReadable") || ![equal isReadable])
  {
    return 0;
  }

  v7 = objc_autoreleasePoolPush();
  bufferedInputStream = [(OISFUDataRepresentation *)self bufferedInputStream];
  bufferedInputStream2 = [equal bufferedInputStream];
  v19 = 0;
  v20 = 0;
  if (dataLength < 1)
  {
LABEL_20:
    v6 = 1;
  }

  else
  {
    v10 = bufferedInputStream2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      if (v12 == v13)
      {
        v15 = [bufferedInputStream readToOwnBuffer:&v20 size:-1];
        v11 = v19;
        v12 = v20;
        v13 = &v20[v15];
      }

      if (v11 == v14)
      {
        v16 = [v10 readToOwnBuffer:&v19 size:-1];
        v11 = v19;
        v12 = v20;
        v14 = &v19[v16];
      }

      v17 = v13 - v12 >= v14 - v11 ? v14 - v11 : v13 - v12;
      if (!v17 || memcmp(v12, v11, v17))
      {
        break;
      }

      v12 += v17;
      v11 += v17;
      v19 = v11;
      v20 = v12;
      dataLength -= v17;
      if (dataLength <= 0)
      {
        goto LABEL_20;
      }
    }

    v6 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v6;
}

- (int64_t)compare:(id)compare
{
  if (self == compare)
  {
    return 0;
  }

  dataLength = [(OISFUDataRepresentation *)self dataLength];
  dataLength2 = [compare dataLength];
  if (dataLength < dataLength2)
  {
    return -1;
  }

  if (dataLength > dataLength2)
  {
    return 1;
  }

  if ([(OISFUDataRepresentation *)self hasSameLocationAs:compare])
  {
    return 0;
  }

  v9 = objc_autoreleasePoolPush();
  bufferedInputStream = [(OISFUDataRepresentation *)self bufferedInputStream];
  bufferedInputStream2 = [compare bufferedInputStream];
  v21 = 0;
  v22 = 0;
  if (dataLength < 1)
  {
LABEL_26:
    v7 = 0;
  }

  else
  {
    v12 = bufferedInputStream2;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v7 = 1;
    while (1)
    {
      if (v14 == v15)
      {
        v17 = [bufferedInputStream readToOwnBuffer:&v22 size:-1];
        v13 = v21;
        v14 = v22;
        v15 = &v22[v17];
      }

      if (v13 == v16)
      {
        v18 = [v12 readToOwnBuffer:&v21 size:-1];
        v13 = v21;
        v14 = v22;
        v16 = &v21[v18];
      }

      if (v15 == v14 && v16 != v13)
      {
        break;
      }

      if (v15 != v14 && v16 == v13)
      {
        goto LABEL_28;
      }

      if (v15 - v14 >= (v16 - v13))
      {
        v19 = v16 - v13;
      }

      else
      {
        v19 = v15 - v14;
      }

      if (!v19)
      {
        goto LABEL_26;
      }

      v20 = memcmp(v14, v13, v19);
      if (v20 < 0)
      {
        break;
      }

      if (v20)
      {
        goto LABEL_28;
      }

      v14 += v19;
      v13 += v19;
      v21 = v13;
      v22 = v14;
      dataLength -= v19;
      if (dataLength <= 0)
      {
        goto LABEL_26;
      }
    }

    v7 = -1;
  }

LABEL_28:
  objc_autoreleasePoolPop(v9);
  return v7;
}

@end