@interface STPropertyStorage
- (STPropertyStorage)initWithPropertyStorage:(_SsrwPropertyStorage *)storage;
- (id)getDocumentPropertyWithId:(int)id propType:(int *)type;
- (id)getDocumentPropertyWithName:(id)name propType:(int *)type;
- (id)getStringDocumentPropertyWithId:(int)id;
- (int)getLongDocumentPropertyWithId:(int)id;
- (signed)getShortDocumentPropertyWithId:(int)id;
- (void)setBlobDocumentPropertyWithName:(id)name to:(id)to;
- (void)setDocumentPropertyWithId:(int)id to:(id)to;
- (void)setLongDocumentPropertyWithId:(int)id to:(int)to;
- (void)setShortDocumentPropertyWithId:(int)id to:(signed __int16)to;
- (void)setStringDocumentPropertyWithId:(int)id to:(id)to;
@end

@implementation STPropertyStorage

- (STPropertyStorage)initWithPropertyStorage:(_SsrwPropertyStorage *)storage
{
  v8.receiver = self;
  v8.super_class = STPropertyStorage;
  v4 = [(STPropertyStorage *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->m_pPropertyStorage = storage;
    v6 = v4;
  }

  return v5;
}

- (id)getDocumentPropertyWithId:(int)id propType:(int *)type
{
  v5 = *&id;
  if (type)
  {
    *type = -1;
  }

  v7 = objc_alloc_init(STPropVariant);
  if (propertyStorageGetPropertyValue(self->m_pPropertyStorage, v5, [(STPropVariant *)v7 propVariant]))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(STPropVariant *)v7 asDataOfType:type];
  }

  return v8;
}

- (int)getLongDocumentPropertyWithId:(int)id
{
  v8 = 0;
  v3 = [(STPropertyStorage *)self getDocumentPropertyWithId:*&id propType:&v8];
  v4 = v3;
  if (v8 != 1 || v3 == 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = *[v3 bytes];
  }

  return v6;
}

- (signed)getShortDocumentPropertyWithId:(int)id
{
  v8 = 0;
  v3 = [(STPropertyStorage *)self getDocumentPropertyWithId:*&id propType:&v8];
  v4 = v3;
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = *[v3 bytes];
  }

  return v6;
}

- (id)getStringDocumentPropertyWithId:(int)id
{
  v3 = *&id;
  v5 = [(STPropertyStorage *)self getShortDocumentPropertyWithId:1];
  if (v5 <= 0x4E4)
  {
    if (v5 > 1249)
    {
      if (v5 == 1250)
      {
        v6 = 15;
      }

      else if (v5 == 1251)
      {
        v6 = 11;
      }

      else
      {
        v6 = 12;
      }

      goto LABEL_31;
    }

    switch(v5)
    {
      case 932:
        v6 = 8;
        goto LABEL_31;
      case 1200:
        return 0;
      case 1201:
        v6 = 10;
        goto LABEL_31;
    }
  }

  else if (v5 <= 28590)
  {
    switch(v5)
    {
      case 1253:
        v6 = 13;
        goto LABEL_31;
      case 1254:
        v6 = 14;
        goto LABEL_31;
      case 10000:
        v6 = 30;
        goto LABEL_31;
    }
  }

  else if (v5 > 51931)
  {
    if (v5 == 51932)
    {
      v6 = 3;
      goto LABEL_31;
    }

    if (v5 == 65001)
    {
      v6 = 4;
      goto LABEL_31;
    }
  }

  else
  {
    if (v5 == 28591)
    {
      v6 = 5;
      goto LABEL_31;
    }

    if (v5 == 50220)
    {
      v6 = 21;
      goto LABEL_31;
    }
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSStringEncoding NSStringEncodingFromCodePage(UInt16)"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeCommon/StructuredStorage/ObjcInterface/STPropertyStorage.m"];
  [OITSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:51 isFatal:0 description:"Encountered unhandled code page"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = 1;
LABEL_31:
  v13 = 0;
  v10 = [(STPropertyStorage *)self getDocumentPropertyWithId:v3 propType:&v13];
  v11 = v10;
  v7 = 0;
  if (v13 == 2 && v10)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v10 length:"bytes") encoding:{objc_msgSend(v10, "length"), v6}];
  }

  return v7;
}

- (id)getDocumentPropertyWithName:(id)name propType:(int *)type
{
  v11 = 0;
  m_pPropertyStorage = self->m_pPropertyStorage;
  nameCopy = name;
  if (propertyStorageGetPropertyID(m_pPropertyStorage, [name UTF8String], &v11))
  {
    v9 = 0;
  }

  else
  {
    v9 = [(STPropertyStorage *)self getDocumentPropertyWithId:v11 propType:type];
  }

  return v9;
}

- (void)setDocumentPropertyWithId:(int)id to:(id)to
{
  v4 = propertyStorageSetPropertyValueWithID(self->m_pPropertyStorage, *&id, [to propVariant]);

  [STSStgObject throwIfError:v4];
}

- (void)setLongDocumentPropertyWithId:(int)id to:(int)to
{
  v4 = *&to;
  v5 = *&id;
  v7 = objc_alloc_init(STPropVariant);
  [(STPropVariant *)v7 setLongValue:v4];
  [(STPropertyStorage *)self setDocumentPropertyWithId:v5 to:v7];
}

- (void)setShortDocumentPropertyWithId:(int)id to:(signed __int16)to
{
  toCopy = to;
  v5 = *&id;
  v7 = objc_alloc_init(STPropVariant);
  [(STPropVariant *)v7 setShortValue:toCopy];
  [(STPropertyStorage *)self setDocumentPropertyWithId:v5 to:v7];
}

- (void)setStringDocumentPropertyWithId:(int)id to:(id)to
{
  v4 = *&id;
  toCopy = to;
  v7 = objc_alloc_init(STPropVariant);
  [(STPropVariant *)v7 setStringValue:toCopy];

  [(STPropertyStorage *)self setDocumentPropertyWithId:v4 to:v7];
}

- (void)setBlobDocumentPropertyWithName:(id)name to:(id)to
{
  toCopy = to;
  nameCopy = name;
  v8 = objc_alloc_init(STPropVariant);
  [(STPropVariant *)v8 setBlobValue:toCopy];

  v11 = 0;
  m_pPropertyStorage = self->m_pPropertyStorage;
  uTF8String = [nameCopy UTF8String];

  propertyStorageGetPropertyID(m_pPropertyStorage, uTF8String, &v11);
  [(STPropertyStorage *)self setDocumentPropertyWithId:v11 to:v8];
}

@end