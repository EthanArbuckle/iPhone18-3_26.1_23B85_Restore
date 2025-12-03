@interface HKCDADocumentSample(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableCDADocumentSample)codableRepresentationForSync;
@end

@implementation HKCDADocumentSample(HDCodingSupport)

- (HDCodableCDADocumentSample)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableCDADocumentSample);
  v14.receiver = self;
  v14.super_class = &off_283D41280;
  v3 = objc_msgSendSuper2(&v14, sel_codableRepresentationForSync);
  [(HDCodableCDADocumentSample *)v2 setSample:v3];

  _omittedContentFlags = [self _omittedContentFlags];
  document = [self document];
  if (document)
  {
    if ((_omittedContentFlags & 2) != 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (_omittedContentFlags)
    {
      v7 = 3;
    }

    else
    {
      v7 = v6;
    }

    [(HDCodableCDADocumentSample *)v2 setOmittedContent:v7];
    _compressedDocumentData = [document _compressedDocumentData];
    [(HDCodableCDADocumentSample *)v2 setDocumentData:_compressedDocumentData];

    title = [document title];
    [(HDCodableCDADocumentSample *)v2 setTitle:title];

    patientName = [document patientName];
    [(HDCodableCDADocumentSample *)v2 setPatientName:patientName];

    authorName = [document authorName];
    [(HDCodableCDADocumentSample *)v2 setAuthorName:authorName];

    custodianName = [document custodianName];
    [(HDCodableCDADocumentSample *)v2 setCustodianName:custodianName];
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addCdaDocumentSamples:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    _init = [[self alloc] _init];
    if ([v5 applyToObject:_init])
    {
      v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v9 = [_init _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = _init;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end