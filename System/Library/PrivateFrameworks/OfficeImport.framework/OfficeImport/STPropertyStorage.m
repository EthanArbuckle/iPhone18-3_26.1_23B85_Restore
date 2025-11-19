@interface STPropertyStorage
- (STPropertyStorage)initWithPropertyStorage:(_SsrwPropertyStorage *)a3;
- (id)getDocumentPropertyWithId:(int)a3 propType:(int *)a4;
- (id)getDocumentPropertyWithName:(id)a3 propType:(int *)a4;
- (id)getStringDocumentPropertyWithId:(int)a3;
- (int)getLongDocumentPropertyWithId:(int)a3;
- (signed)getShortDocumentPropertyWithId:(int)a3;
- (void)setBlobDocumentPropertyWithName:(id)a3 to:(id)a4;
- (void)setDocumentPropertyWithId:(int)a3 to:(id)a4;
- (void)setLongDocumentPropertyWithId:(int)a3 to:(int)a4;
- (void)setShortDocumentPropertyWithId:(int)a3 to:(signed __int16)a4;
- (void)setStringDocumentPropertyWithId:(int)a3 to:(id)a4;
@end

@implementation STPropertyStorage

- (STPropertyStorage)initWithPropertyStorage:(_SsrwPropertyStorage *)a3
{
  v8.receiver = self;
  v8.super_class = STPropertyStorage;
  v4 = [(STPropertyStorage *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->m_pPropertyStorage = a3;
    v6 = v4;
  }

  return v5;
}

- (id)getDocumentPropertyWithId:(int)a3 propType:(int *)a4
{
  v5 = *&a3;
  if (a4)
  {
    *a4 = -1;
  }

  v7 = objc_alloc_init(STPropVariant);
  if (propertyStorageGetPropertyValue(self->m_pPropertyStorage, v5, [(STPropVariant *)v7 propVariant]))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(STPropVariant *)v7 asDataOfType:a4];
  }

  return v8;
}

- (int)getLongDocumentPropertyWithId:(int)a3
{
  v8 = 0;
  v3 = [(STPropertyStorage *)self getDocumentPropertyWithId:*&a3 propType:&v8];
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

- (signed)getShortDocumentPropertyWithId:(int)a3
{
  v8 = 0;
  v3 = [(STPropertyStorage *)self getDocumentPropertyWithId:*&a3 propType:&v8];
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

- (id)getStringDocumentPropertyWithId:(int)a3
{
  v3 = *&a3;
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

- (id)getDocumentPropertyWithName:(id)a3 propType:(int *)a4
{
  v11 = 0;
  m_pPropertyStorage = self->m_pPropertyStorage;
  v8 = a3;
  if (propertyStorageGetPropertyID(m_pPropertyStorage, [a3 UTF8String], &v11))
  {
    v9 = 0;
  }

  else
  {
    v9 = [(STPropertyStorage *)self getDocumentPropertyWithId:v11 propType:a4];
  }

  return v9;
}

- (void)setDocumentPropertyWithId:(int)a3 to:(id)a4
{
  v4 = propertyStorageSetPropertyValueWithID(self->m_pPropertyStorage, *&a3, [a4 propVariant]);

  [STSStgObject throwIfError:v4];
}

- (void)setLongDocumentPropertyWithId:(int)a3 to:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v7 = objc_alloc_init(STPropVariant);
  [(STPropVariant *)v7 setLongValue:v4];
  [(STPropertyStorage *)self setDocumentPropertyWithId:v5 to:v7];
}

- (void)setShortDocumentPropertyWithId:(int)a3 to:(signed __int16)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = objc_alloc_init(STPropVariant);
  [(STPropVariant *)v7 setShortValue:v4];
  [(STPropertyStorage *)self setDocumentPropertyWithId:v5 to:v7];
}

- (void)setStringDocumentPropertyWithId:(int)a3 to:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = objc_alloc_init(STPropVariant);
  [(STPropVariant *)v7 setStringValue:v6];

  [(STPropertyStorage *)self setDocumentPropertyWithId:v4 to:v7];
}

- (void)setBlobDocumentPropertyWithName:(id)a3 to:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(STPropVariant);
  [(STPropVariant *)v8 setBlobValue:v6];

  v11 = 0;
  m_pPropertyStorage = self->m_pPropertyStorage;
  v10 = [v7 UTF8String];

  propertyStorageGetPropertyID(m_pPropertyStorage, v10, &v11);
  [(STPropertyStorage *)self setDocumentPropertyWithId:v11 to:v8];
}

@end