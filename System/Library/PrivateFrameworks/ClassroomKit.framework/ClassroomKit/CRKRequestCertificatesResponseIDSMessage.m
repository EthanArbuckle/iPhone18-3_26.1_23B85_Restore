@interface CRKRequestCertificatesResponseIDSMessage
+ (id)instanceWithDictionary:(id)a3;
- (CRKRequestCertificatesResponseIDSMessage)initWithRequestIdentifier:(id)a3 certificateDataCollection:(id)a4 error:(id)a5;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKRequestCertificatesResponseIDSMessage

- (CRKRequestCertificatesResponseIDSMessage)initWithRequestIdentifier:(id)a3 certificateDataCollection:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CRKRequestCertificatesResponseIDSMessage;
  v12 = [(CRKRequestCertificatesResponseIDSMessage *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestIdentifier, a3);
    v14 = [v10 copy];
    certificateDataCollection = v13->_certificateDataCollection;
    v13->_certificateDataCollection = v14;

    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(CRKRequestCertificatesResponseIDSMessage *)self requestIdentifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"RequestIdentifier"];

  v6 = [(CRKRequestCertificatesResponseIDSMessage *)self certificateDataCollection];
  [v3 setObject:v6 forKeyedSubscript:@"CertificateDataCollection"];

  v7 = [(CRKRequestCertificatesResponseIDSMessage *)self error];

  if (v7)
  {
    v8 = [CRKErrorBox alloc];
    v9 = [(CRKRequestCertificatesResponseIDSMessage *)self error];
    v10 = [(CRKErrorBox *)v8 initWithError:v9];
    v11 = [(CRKErrorBox *)v10 dictionaryValue];
    [v3 setObject:v11 forKeyedSubscript:@"ErrorBox"];
  }

  v12 = [v3 copy];

  return v12;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"RequestIdentifier"];
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

  v8 = [v4 objectForKeyedSubscript:@"ErrorBox"];
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

  v11 = [v4 objectForKeyedSubscript:@"CertificateDataCollection"];

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
      v17 = 0;
      goto LABEL_18;
    }

    v15 = [CRKErrorBox instanceWithDictionary:v10];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 error];

LABEL_18:
      v18 = [[a1 alloc] initWithRequestIdentifier:v14 certificateDataCollection:v13 error:v17];

      goto LABEL_19;
    }
  }

  v18 = 0;
LABEL_19:

LABEL_20:

  return v18;
}

@end