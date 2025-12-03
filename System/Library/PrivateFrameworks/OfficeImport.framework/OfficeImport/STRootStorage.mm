@interface STRootStorage
- (STRootStorage)initWithMutableData:(id)data andMode:(int)mode;
- (STRootStorage)initWithName:(id)name andMode:(int)mode;
- (id)getDocumentProperty:(int)property withId:(int)id PropType:(int *)type throwOnError:(BOOL)error;
- (id)getStringDocumentPropertyWithId:(int)id givenPropStream:(int)stream;
- (int)getLongDocumentPropertyWithId:(int)id givenPropStream:(int)stream;
- (signed)getShortDocumentPropertyWithId:(int)id givenPropStream:(int)stream;
- (void)dealloc;
- (void)resizeStorageBuffer:(unint64_t)buffer;
- (void)setDefaultDocumentProperties;
- (void)setDocumentProperty:(int)property withId:(int)id AndType:(int)type AndValue:(void *)value;
- (void)setStringDocumentPropertyWithId:(int)id to:(id)to givenPropStream:(int)stream;
@end

@implementation STRootStorage

- (STRootStorage)initWithName:(id)name andMode:(int)mode
{
  v12 = 0;
  self->m_pvBuf = 0;
  self->m_StorageData = 0;
  v6 = StgModeFromSTStgMode(*&mode);
  if (v6 == 1)
  {
    StructuredStorage = createStructuredStorage([name fileSystemRepresentation], 1, &self->m_pCRoot);
  }

  else
  {
    if ((v6 & 0xFFFFFFFD) != 0)
    {
      v8 = 0;
      goto LABEL_8;
    }

    StructuredStorage = openStructuredStorage([name fileSystemRepresentation], v6, &self->m_pCRoot);
  }

  v8 = StructuredStorage;
  if (StructuredStorage)
  {
  }

LABEL_8:
  [STSStgObject throwIfError:v8];
  StorageFromRoot = getStorageFromRoot(self->m_pCRoot, &v12);
  if (StorageFromRoot)
  {
  }

  [STSStgObject throwIfError:StorageFromRoot];
  v11.receiver = self;
  v11.super_class = STRootStorage;
  return [(STStorage *)&v11 initWithCStorage:v12];
}

- (STRootStorage)initWithMutableData:(id)data andMode:(int)mode
{
  v12 = 0;
  self->m_StorageData = 0;
  if (StgModeFromSTStgMode(*&mode) == 1)
  {
    self->m_StorageData = data;
    dataCopy = data;
    if ([(NSMutableData *)self->m_StorageData length]<= 7)
    {
      [(NSMutableData *)self->m_StorageData setLength:8];
    }

    *[(NSMutableData *)self->m_StorageData mutableBytes]= self;
    self->m_pvBuf = [(NSMutableData *)self->m_StorageData mutableBytes]+ 8;
    v7 = [(NSMutableData *)self->m_StorageData length];
    StructuredStorageInBuf = createStructuredStorageInBuf(&self->m_pvBuf, v7 - 8, storageBufferReallocFunction, 1, &self->m_pCRoot, v8);
  }

  else
  {
    self->m_pvBuf = [data mutableBytes];
    StructuredStorageInBuf = openStructuredStorageInBuf(&self->m_pvBuf, [data length], 0, &self->m_pCRoot);
  }

  [STSStgObject throwIfError:StructuredStorageInBuf];
  [STSStgObject throwIfError:getStorageFromRoot(self->m_pCRoot, &v12)];
  v11.receiver = self;
  v11.super_class = STRootStorage;
  return [(STStorage *)&v11 initWithCStorage:v12];
}

- (void)dealloc
{
  self->super.m_pCStorage = 0;
  if (self->m_pCRoot)
  {
    closeStructuredStorage(&self->m_pCRoot);
  }

  m_StorageData = self->m_StorageData;
  if (m_StorageData)
  {
    memmove([(NSMutableData *)m_StorageData mutableBytes], [(NSMutableData *)self->m_StorageData mutableBytes]+ 8, [(NSMutableData *)self->m_StorageData length]- 8);
    [(NSMutableData *)self->m_StorageData setLength:[(NSMutableData *)self->m_StorageData length]- 4];

    self->m_StorageData = 0;
  }

  v4.receiver = self;
  v4.super_class = STRootStorage;
  [(STStorage *)&v4 dealloc];
}

- (void)resizeStorageBuffer:(unint64_t)buffer
{
  [(NSMutableData *)self->m_StorageData setLength:buffer + 8];
  result = [(NSMutableData *)self->m_StorageData mutableBytes]+ 8;
  self->m_pvBuf = result;
  return result;
}

- (id)getDocumentProperty:(int)property withId:(int)id PropType:(int *)type throwOnError:(BOOL)error
{
  errorCopy = error;
  __s = 0;
  *type = -1;
  v19 = 1;
  DocumentProperty = getDocumentProperty(self->m_pCRoot, property, *&id, &v19, &__s);
  v9 = __s;
  if (DocumentProperty)
  {
    v10 = 1;
  }

  else
  {
    v10 = __s == 0;
  }

  if (!v10)
  {
    v12 = v19;
    if (v19 > 2)
    {
      v13 = 1;
      if (v19 == 6 || v19 == 4)
      {
LABEL_19:
        if (v12 != 1)
        {
          if (v12 == 6 || v12 == 4)
          {
            v14 = *v9;
            v9 += 4 * (v12 == 6);
            goto LABEL_27;
          }

          if (!v13)
          {
            v14 = 0;
LABEL_27:
            v11 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:v14];
            if (!__s)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

LABEL_25:
          v14 = strlen(v9) + 1;
          goto LABEL_27;
        }

LABEL_23:
        v14 = 4;
        goto LABEL_27;
      }

      if (v19 == 3)
      {
        v14 = 8;
        goto LABEL_27;
      }
    }

    else
    {
      switch(v19)
      {
        case 0u:
          v14 = 2;
          goto LABEL_27;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_25;
      }
    }

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"long TypeLength(TypeTag)"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeCommon/StructuredStorage/ObjcInterface/STRootStorage.m"], 56, 0, "Unsupported type tag encountered in structured storage library.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    v13 = 0;
    v12 = v19;
    v9 = __s;
    goto LABEL_19;
  }

  v11 = 0;
  if (__s)
  {
LABEL_28:
    freeDocumentProperty(&__s);
  }

LABEL_29:
  if (DocumentProperty)
  {
    if (errorCopy)
    {
LABEL_31:
      [STSStgObject throwIfError:DocumentProperty];
    }
  }

  else
  {
    if (v19 < 7 && ((0x5Fu >> v19) & 1) != 0)
    {
      v17 = dword_25D6FDBE0[v19];
    }

    else
    {
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STTypeTag STTypeTagFromTypeTag(TypeTag)"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v18, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeCommon/StructuredStorage/ObjcInterface/STRootStorage.m"], 76, 0, "Unsupported type tag encountered in structured storage library.");
      +[OITSUAssertionHandler logBacktraceThrottled];
      v17 = -1;
    }

    *type = v17;
    if (errorCopy)
    {
      goto LABEL_31;
    }
  }

  return v11;
}

- (id)getStringDocumentPropertyWithId:(int)id givenPropStream:(int)stream
{
  v4 = *&stream;
  v5 = *&id;
  v14 = 0;
  v7 = [(STRootStorage *)self getShortDocumentPropertyWithId:1 givenPropStream:?];
  if (v7 <= 0x4E4u)
  {
    if (v7 > 0x4E1u)
    {
      switch(v7)
      {
        case 0x4E2u:
          v8 = 15;
          goto LABEL_32;
        case 0x4E3u:
          v8 = 11;
          goto LABEL_32;
        case 0x4E4u:
          v8 = 12;
          goto LABEL_32;
      }
    }

    else
    {
      if (v7 == 932)
      {
        v8 = 8;
        goto LABEL_32;
      }

      v9 = 0;
      if (v7 == 1200)
      {
        return v9;
      }

      if (v7 == 1201)
      {
        v8 = 10;
        goto LABEL_32;
      }
    }

LABEL_30:
    v8 = CFStringConvertEncodingToNSStringEncoding(v7);
    if (v8 == 0xFFFFFFFF)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSStringEncoding NSStringEncodingFromCodePage(UInt16)"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeCommon/StructuredStorage/ObjcInterface/STRootStorage.m"], 117, 0, "Encountered unhandled code page");
      +[OITSUAssertionHandler logBacktraceThrottled];
      v8 = 1;
    }

    goto LABEL_32;
  }

  if (v7 <= 0x6FAEu)
  {
    switch(v7)
    {
      case 0x4E5u:
        v8 = 13;
        goto LABEL_32;
      case 0x4E6u:
        v8 = 14;
        goto LABEL_32;
      case 0x2710u:
        v8 = 30;
        goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (v7 > 0xCADBu)
  {
    if (v7 == 51932)
    {
      v8 = 3;
      goto LABEL_32;
    }

    if (v7 == 65001)
    {
      v8 = 4;
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (v7 == 28591)
  {
    v8 = 5;
    goto LABEL_32;
  }

  if (v7 != 50220)
  {
    goto LABEL_30;
  }

  v8 = 21;
LABEL_32:
  v13 = -1;
  v11 = [(STRootStorage *)self getDocumentProperty:v4 withId:v5 PropType:&v13 throwOnError:0];
  if (v13 == 2)
  {
    if (v11)
    {
      return [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v11 length:"bytes") encoding:{objc_msgSend(v11, "length"), v8}];
    }

    else
    {
      return 0;
    }
  }

  return v14;
}

- (int)getLongDocumentPropertyWithId:(int)id givenPropStream:(int)stream
{
  v7 = -1;
  v6 = -1;
  v4 = [(STRootStorage *)self getDocumentProperty:*&stream withId:*&id PropType:&v6 throwOnError:0];
  if (v6 == 1)
  {
    return *[v4 bytes];
  }

  return v7;
}

- (signed)getShortDocumentPropertyWithId:(int)id givenPropStream:(int)stream
{
  v7 = -1;
  v6 = -1;
  v4 = [(STRootStorage *)self getDocumentProperty:*&stream withId:*&id PropType:&v6 throwOnError:0];
  if (!v6)
  {
    return *[v4 bytes];
  }

  return v7;
}

- (void)setDocumentProperty:(int)property withId:(int)id AndType:(int)type AndValue:(void *)value
{
  v7 = *&id;
  if (type >= 6)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TypeTag TypeTagFromSTTypeTag(STTypeTag)"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeCommon/StructuredStorage/ObjcInterface/STRootStorage.m"], 37, 0, "Unsupported type tag encountered in structured storage library.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    v10 = -1;
  }

  else
  {
    v10 = dword_25D6FDBFC[type];
  }

  v12 = setDocumentProperty(self->m_pCRoot, property, v7, v10, value);

  [STSStgObject throwIfError:v12];
}

- (void)setStringDocumentPropertyWithId:(int)id to:(id)to givenPropStream:(int)stream
{
  v5 = *&stream;
  v7 = *&id;
  if ([(STRootStorage *)self getShortDocumentPropertyWithId:1 givenPropStream:*&stream]== -535)
  {
    uTF8String = [to UTF8String];

    [(STRootStorage *)self setDocumentProperty:v5 withId:v7 AndType:2 AndValue:uTF8String];
  }
}

- (void)setDefaultDocumentProperties
{
  v2 = setDefaultDocumentProperties(self->m_pCRoot);

  [STSStgObject throwIfError:v2];
}

@end