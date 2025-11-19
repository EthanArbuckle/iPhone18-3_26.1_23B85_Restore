@interface HKCDADocumentSample(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableCDADocumentSample)codableRepresentationForSync;
@end

@implementation HKCDADocumentSample(HDCodingSupport)

- (HDCodableCDADocumentSample)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableCDADocumentSample);
  v14.receiver = a1;
  v14.super_class = &off_283D41280;
  v3 = objc_msgSendSuper2(&v14, sel_codableRepresentationForSync);
  [(HDCodableCDADocumentSample *)v2 setSample:v3];

  v4 = [a1 _omittedContentFlags];
  v5 = [a1 document];
  if (v5)
  {
    if ((v4 & 2) != 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v4)
    {
      v7 = 3;
    }

    else
    {
      v7 = v6;
    }

    [(HDCodableCDADocumentSample *)v2 setOmittedContent:v7];
    v8 = [v5 _compressedDocumentData];
    [(HDCodableCDADocumentSample *)v2 setDocumentData:v8];

    v9 = [v5 title];
    [(HDCodableCDADocumentSample *)v2 setTitle:v9];

    v10 = [v5 patientName];
    [(HDCodableCDADocumentSample *)v2 setPatientName:v10];

    v11 = [v5 authorName];
    [(HDCodableCDADocumentSample *)v2 setAuthorName:v11];

    v12 = [v5 custodianName];
    [(HDCodableCDADocumentSample *)v2 setCustodianName:v12];
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addCdaDocumentSamples:v5];
  }

  return v5 != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [[a1 alloc] _init];
    if ([v5 applyToObject:v6])
    {
      v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v9 = [v6 _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6;
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