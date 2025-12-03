@interface CRKRequestCertificatesResponseIDSMessage
+ (id)instanceWithDictionary:(id)dictionary;
- (CRKRequestCertificatesResponseIDSMessage)initWithRequestIdentifier:(id)identifier certificateDataCollection:(id)collection error:(id)error;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKRequestCertificatesResponseIDSMessage

- (CRKRequestCertificatesResponseIDSMessage)initWithRequestIdentifier:(id)identifier certificateDataCollection:(id)collection error:(id)error
{
  identifierCopy = identifier;
  collectionCopy = collection;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = CRKRequestCertificatesResponseIDSMessage;
  v12 = [(CRKRequestCertificatesResponseIDSMessage *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestIdentifier, identifier);
    v14 = [collectionCopy copy];
    certificateDataCollection = v13->_certificateDataCollection;
    v13->_certificateDataCollection = v14;

    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  requestIdentifier = [(CRKRequestCertificatesResponseIDSMessage *)self requestIdentifier];
  uUIDString = [requestIdentifier UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"RequestIdentifier"];

  certificateDataCollection = [(CRKRequestCertificatesResponseIDSMessage *)self certificateDataCollection];
  [v3 setObject:certificateDataCollection forKeyedSubscript:@"CertificateDataCollection"];

  error = [(CRKRequestCertificatesResponseIDSMessage *)self error];

  if (error)
  {
    v8 = [CRKErrorBox alloc];
    error2 = [(CRKRequestCertificatesResponseIDSMessage *)self error];
    v10 = [(CRKErrorBox *)v8 initWithError:error2];
    dictionaryValue = [(CRKErrorBox *)v10 dictionaryValue];
    [v3 setObject:dictionaryValue forKeyedSubscript:@"ErrorBox"];
  }

  v12 = [v3 copy];

  return v12;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"RequestIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"ErrorBox"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"CertificateDataCollection"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v7)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
  if (v14)
  {
    if (!v10)
    {
      error = 0;
      goto LABEL_18;
    }

    v15 = [CRKErrorBox instanceWithDictionary:v10];
    if (v15)
    {
      v16 = v15;
      error = [v15 error];

LABEL_18:
      v18 = [[self alloc] initWithRequestIdentifier:v14 certificateDataCollection:v13 error:error];

      goto LABEL_19;
    }
  }

  v18 = 0;
LABEL_19:

LABEL_20:

  return v18;
}

@end