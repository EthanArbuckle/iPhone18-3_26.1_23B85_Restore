@interface DCPresentmentProposal
- (DCPresentmentProposal)initWithCoder:(id)coder;
- (DCPresentmentProposal)initWithCredentialIdentifier:(id)identifier presentmentKeyIdentifier:(id)keyIdentifier presentmentPublicKey:(id)key partition:(id)partition docType:(id)type elements:(id)elements authACL:(id)l readerAuthCertificateData:(id)self0 issuerSignerCertificateData:(id)self1 readerMetadata:(id)self2 readerAnalytics:(id)self3 region:(id)self4 issuingJurisdiction:(id)self5 credentialRevocationInfo:(id)self6;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCPresentmentProposal

- (DCPresentmentProposal)initWithCredentialIdentifier:(id)identifier presentmentKeyIdentifier:(id)keyIdentifier presentmentPublicKey:(id)key partition:(id)partition docType:(id)type elements:(id)elements authACL:(id)l readerAuthCertificateData:(id)self0 issuerSignerCertificateData:(id)self1 readerMetadata:(id)self2 readerAnalytics:(id)self3 region:(id)self4 issuingJurisdiction:(id)self5 credentialRevocationInfo:(id)self6
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  keyCopy = key;
  partitionCopy = partition;
  typeCopy = type;
  elementsCopy = elements;
  lCopy = l;
  dataCopy = data;
  certificateDataCopy = certificateData;
  v25 = keyCopy;
  metadataCopy = metadata;
  analyticsCopy = analytics;
  regionCopy = region;
  jurisdictionCopy = jurisdiction;
  infoCopy = info;
  v65.receiver = self;
  v65.super_class = DCPresentmentProposal;
  v31 = [(DCPresentmentProposal *)&v65 init];
  if (v31)
  {
    v32 = [identifierCopy copy];
    credentialIdentifier = v31->_credentialIdentifier;
    v31->_credentialIdentifier = v32;

    v34 = [keyIdentifierCopy copy];
    presentmentKeyIdentifier = v31->_presentmentKeyIdentifier;
    v31->_presentmentKeyIdentifier = v34;

    v36 = [v25 copy];
    presentmentPublicKey = v31->_presentmentPublicKey;
    v31->_presentmentPublicKey = v36;

    v38 = [partitionCopy copy];
    partition = v31->_partition;
    v31->_partition = v38;

    v40 = [typeCopy copy];
    docType = v31->_docType;
    v31->_docType = v40;

    v42 = [elementsCopy copy];
    elements = v31->_elements;
    v31->_elements = v42;

    v44 = [lCopy copy];
    authACL = v31->_authACL;
    v31->_authACL = v44;

    v46 = [dataCopy copy];
    readerAuthCertificateData = v31->_readerAuthCertificateData;
    v31->_readerAuthCertificateData = v46;

    v48 = [certificateDataCopy copy];
    issuerSignerCertificateData = v31->_issuerSignerCertificateData;
    v31->_issuerSignerCertificateData = v48;

    v50 = [metadataCopy copy];
    readerMetadata = v31->_readerMetadata;
    v31->_readerMetadata = v50;

    v52 = [analyticsCopy copy];
    readerAnalytics = v31->_readerAnalytics;
    v31->_readerAnalytics = v52;

    v54 = [regionCopy copy];
    region = v31->_region;
    v31->_region = v54;

    v56 = [jurisdictionCopy copy];
    issuingJurisdiction = v31->_issuingJurisdiction;
    v31->_issuingJurisdiction = v56;

    objc_storeStrong(&v31->_credentialRevocationInfo, info);
  }

  return v31;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  credentialIdentifier = [(DCPresentmentProposal *)self credentialIdentifier];
  [coderCopy encodeObject:credentialIdentifier forKey:0x28586CD20];

  presentmentKeyIdentifier = [(DCPresentmentProposal *)self presentmentKeyIdentifier];
  [coderCopy encodeObject:presentmentKeyIdentifier forKey:0x28586CF20];

  presentmentPublicKey = [(DCPresentmentProposal *)self presentmentPublicKey];
  [coderCopy encodeObject:presentmentPublicKey forKey:0x28586CF40];

  partition = [(DCPresentmentProposal *)self partition];
  [coderCopy encodeObject:partition forKey:0x28586CD40];

  docType = [(DCPresentmentProposal *)self docType];
  [coderCopy encodeObject:docType forKey:0x28586CDA0];

  elements = [(DCPresentmentProposal *)self elements];
  [coderCopy encodeObject:elements forKey:0x28586D340];

  authACL = [(DCPresentmentProposal *)self authACL];
  [coderCopy encodeObject:authACL forKey:0x28586D2A0];

  readerAuthCertificateData = [(DCPresentmentProposal *)self readerAuthCertificateData];
  [coderCopy encodeObject:readerAuthCertificateData forKey:0x28586D2C0];

  issuerSignerCertificateData = [(DCPresentmentProposal *)self issuerSignerCertificateData];
  [coderCopy encodeObject:issuerSignerCertificateData forKey:0x28586D2E0];

  readerMetadata = [(DCPresentmentProposal *)self readerMetadata];
  [coderCopy encodeObject:readerMetadata forKey:0x28586D300];

  readerAnalytics = [(DCPresentmentProposal *)self readerAnalytics];
  [coderCopy encodeObject:readerAnalytics forKey:0x28586D320];

  region = [(DCPresentmentProposal *)self region];
  [coderCopy encodeObject:region forKey:0x28586D080];

  issuingJurisdiction = [(DCPresentmentProposal *)self issuingJurisdiction];
  [coderCopy encodeObject:issuingJurisdiction forKey:0x28586D0A0];

  credentialRevocationInfo = [(DCPresentmentProposal *)self credentialRevocationInfo];
  [coderCopy encodeObject:credentialRevocationInfo forKey:0x28586D0C0];
}

- (DCPresentmentProposal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = DCPresentmentProposal;
  v5 = [(DCPresentmentProposal *)&v40 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CD20];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CF20];
    presentmentKeyIdentifier = v5->_presentmentKeyIdentifier;
    v5->_presentmentKeyIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CF40];
    presentmentPublicKey = v5->_presentmentPublicKey;
    v5->_presentmentPublicKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CD40];
    partition = v5->_partition;
    v5->_partition = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CDA0];
    docType = v5->_docType;
    v5->_docType = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:0x28586D340];
    elements = v5->_elements;
    v5->_elements = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D2C0];
    readerAuthCertificateData = v5->_readerAuthCertificateData;
    v5->_readerAuthCertificateData = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D2E0];
    issuerSignerCertificateData = v5->_issuerSignerCertificateData;
    v5->_issuerSignerCertificateData = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D2A0];
    authACL = v5->_authACL;
    v5->_authACL = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D300];
    readerMetadata = v5->_readerMetadata;
    v5->_readerMetadata = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D320];
    readerAnalytics = v5->_readerAnalytics;
    v5->_readerAnalytics = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D080];
    region = v5->_region;
    v5->_region = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D0A0];
    issuingJurisdiction = v5->_issuingJurisdiction;
    v5->_issuingJurisdiction = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D0C0];
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
  credentialIdentifier = [(DCPresentmentProposal *)self credentialIdentifier];
  presentmentKeyIdentifier = [(DCPresentmentProposal *)self presentmentKeyIdentifier];
  partition = [(DCPresentmentProposal *)self partition];
  docType = [(DCPresentmentProposal *)self docType];
  elements = [(DCPresentmentProposal *)self elements];
  readerMetadata = [(DCPresentmentProposal *)self readerMetadata];
  readerAnalytics = [(DCPresentmentProposal *)self readerAnalytics];
  region = [(DCPresentmentProposal *)self region];
  issuingJurisdiction = [(DCPresentmentProposal *)self issuingJurisdiction];
  credentialRevocationInfo = [(DCPresentmentProposal *)self credentialRevocationInfo];
  v12 = [v16 stringWithFormat:@"<%@ %p credentialIdentifier = %@; presentmentKeyIdentifier = %@; partition = %@; docType = %@; elements = %@; readerMetadata = %@; readerAnalytics = %@; region = %@; issuingJurisdiction = %@, credentialRevocationInfo = %@>", v15, self, credentialIdentifier, presentmentKeyIdentifier, partition, docType, elements, readerMetadata, readerAnalytics, region, issuingJurisdiction, credentialRevocationInfo];;

  return v12;
}

@end