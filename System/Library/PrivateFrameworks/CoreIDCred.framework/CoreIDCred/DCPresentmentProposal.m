@interface DCPresentmentProposal
- (DCPresentmentProposal)initWithCoder:(id)a3;
- (DCPresentmentProposal)initWithCredentialIdentifier:(id)a3 presentmentKeyIdentifier:(id)a4 presentmentPublicKey:(id)a5 partition:(id)a6 docType:(id)a7 elements:(id)a8 authACL:(id)a9 readerAuthCertificateData:(id)a10 issuerSignerCertificateData:(id)a11 readerMetadata:(id)a12 readerAnalytics:(id)a13 region:(id)a14 issuingJurisdiction:(id)a15 credentialRevocationInfo:(id)a16;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCPresentmentProposal

- (DCPresentmentProposal)initWithCredentialIdentifier:(id)a3 presentmentKeyIdentifier:(id)a4 presentmentPublicKey:(id)a5 partition:(id)a6 docType:(id)a7 elements:(id)a8 authACL:(id)a9 readerAuthCertificateData:(id)a10 issuerSignerCertificateData:(id)a11 readerMetadata:(id)a12 readerAnalytics:(id)a13 region:(id)a14 issuingJurisdiction:(id)a15 credentialRevocationInfo:(id)a16
{
  v62 = a3;
  v61 = a4;
  v21 = a5;
  v64 = a6;
  v63 = a7;
  v22 = a8;
  v23 = a9;
  v60 = a10;
  v24 = a11;
  v25 = v21;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v65.receiver = self;
  v65.super_class = DCPresentmentProposal;
  v31 = [(DCPresentmentProposal *)&v65 init];
  if (v31)
  {
    v32 = [v62 copy];
    credentialIdentifier = v31->_credentialIdentifier;
    v31->_credentialIdentifier = v32;

    v34 = [v61 copy];
    presentmentKeyIdentifier = v31->_presentmentKeyIdentifier;
    v31->_presentmentKeyIdentifier = v34;

    v36 = [v25 copy];
    presentmentPublicKey = v31->_presentmentPublicKey;
    v31->_presentmentPublicKey = v36;

    v38 = [v64 copy];
    partition = v31->_partition;
    v31->_partition = v38;

    v40 = [v63 copy];
    docType = v31->_docType;
    v31->_docType = v40;

    v42 = [v22 copy];
    elements = v31->_elements;
    v31->_elements = v42;

    v44 = [v23 copy];
    authACL = v31->_authACL;
    v31->_authACL = v44;

    v46 = [v60 copy];
    readerAuthCertificateData = v31->_readerAuthCertificateData;
    v31->_readerAuthCertificateData = v46;

    v48 = [v24 copy];
    issuerSignerCertificateData = v31->_issuerSignerCertificateData;
    v31->_issuerSignerCertificateData = v48;

    v50 = [v26 copy];
    readerMetadata = v31->_readerMetadata;
    v31->_readerMetadata = v50;

    v52 = [v27 copy];
    readerAnalytics = v31->_readerAnalytics;
    v31->_readerAnalytics = v52;

    v54 = [v28 copy];
    region = v31->_region;
    v31->_region = v54;

    v56 = [v29 copy];
    issuingJurisdiction = v31->_issuingJurisdiction;
    v31->_issuingJurisdiction = v56;

    objc_storeStrong(&v31->_credentialRevocationInfo, a16);
  }

  return v31;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DCPresentmentProposal *)self credentialIdentifier];
  [v4 encodeObject:v5 forKey:0x28586CD20];

  v6 = [(DCPresentmentProposal *)self presentmentKeyIdentifier];
  [v4 encodeObject:v6 forKey:0x28586CF20];

  v7 = [(DCPresentmentProposal *)self presentmentPublicKey];
  [v4 encodeObject:v7 forKey:0x28586CF40];

  v8 = [(DCPresentmentProposal *)self partition];
  [v4 encodeObject:v8 forKey:0x28586CD40];

  v9 = [(DCPresentmentProposal *)self docType];
  [v4 encodeObject:v9 forKey:0x28586CDA0];

  v10 = [(DCPresentmentProposal *)self elements];
  [v4 encodeObject:v10 forKey:0x28586D340];

  v11 = [(DCPresentmentProposal *)self authACL];
  [v4 encodeObject:v11 forKey:0x28586D2A0];

  v12 = [(DCPresentmentProposal *)self readerAuthCertificateData];
  [v4 encodeObject:v12 forKey:0x28586D2C0];

  v13 = [(DCPresentmentProposal *)self issuerSignerCertificateData];
  [v4 encodeObject:v13 forKey:0x28586D2E0];

  v14 = [(DCPresentmentProposal *)self readerMetadata];
  [v4 encodeObject:v14 forKey:0x28586D300];

  v15 = [(DCPresentmentProposal *)self readerAnalytics];
  [v4 encodeObject:v15 forKey:0x28586D320];

  v16 = [(DCPresentmentProposal *)self region];
  [v4 encodeObject:v16 forKey:0x28586D080];

  v17 = [(DCPresentmentProposal *)self issuingJurisdiction];
  [v4 encodeObject:v17 forKey:0x28586D0A0];

  v18 = [(DCPresentmentProposal *)self credentialRevocationInfo];
  [v4 encodeObject:v18 forKey:0x28586D0C0];
}

- (DCPresentmentProposal)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = DCPresentmentProposal;
  v5 = [(DCPresentmentProposal *)&v40 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CD20];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CF20];
    presentmentKeyIdentifier = v5->_presentmentKeyIdentifier;
    v5->_presentmentKeyIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CF40];
    presentmentPublicKey = v5->_presentmentPublicKey;
    v5->_presentmentPublicKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CD40];
    partition = v5->_partition;
    v5->_partition = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CDA0];
    docType = v5->_docType;
    v5->_docType = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:0x28586D340];
    elements = v5->_elements;
    v5->_elements = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D2C0];
    readerAuthCertificateData = v5->_readerAuthCertificateData;
    v5->_readerAuthCertificateData = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D2E0];
    issuerSignerCertificateData = v5->_issuerSignerCertificateData;
    v5->_issuerSignerCertificateData = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D2A0];
    authACL = v5->_authACL;
    v5->_authACL = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D300];
    readerMetadata = v5->_readerMetadata;
    v5->_readerMetadata = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D320];
    readerAnalytics = v5->_readerAnalytics;
    v5->_readerAnalytics = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D080];
    region = v5->_region;
    v5->_region = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D0A0];
    issuingJurisdiction = v5->_issuingJurisdiction;
    v5->_issuingJurisdiction = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D0C0];
    credentialRevocationInfo = v5->_credentialRevocationInfo;
    v5->_credentialRevocationInfo = v37;
  }

  return v5;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v17 = [(DCPresentmentProposal *)self credentialIdentifier];
  v4 = [(DCPresentmentProposal *)self presentmentKeyIdentifier];
  v5 = [(DCPresentmentProposal *)self partition];
  v6 = [(DCPresentmentProposal *)self docType];
  v7 = [(DCPresentmentProposal *)self elements];
  v14 = [(DCPresentmentProposal *)self readerMetadata];
  v8 = [(DCPresentmentProposal *)self readerAnalytics];
  v9 = [(DCPresentmentProposal *)self region];
  v10 = [(DCPresentmentProposal *)self issuingJurisdiction];
  v11 = [(DCPresentmentProposal *)self credentialRevocationInfo];
  v12 = [v16 stringWithFormat:@"<%@ %p credentialIdentifier = %@; presentmentKeyIdentifier = %@; partition = %@; docType = %@; elements = %@; readerMetadata = %@; readerAnalytics = %@; region = %@; issuingJurisdiction = %@, credentialRevocationInfo = %@>", v15, self, v17, v4, v5, v6, v7, v14, v8, v9, v10, v11];;

  return v12;
}

@end