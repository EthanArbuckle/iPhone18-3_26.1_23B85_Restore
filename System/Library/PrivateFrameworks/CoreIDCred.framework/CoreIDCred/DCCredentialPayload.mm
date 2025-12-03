@interface DCCredentialPayload
- (DCCredentialPayload)init;
- (DCCredentialPayload)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCCredentialPayload

- (DCCredentialPayload)init
{
  v7.receiver = self;
  v7.super_class = DCCredentialPayload;
  v2 = [(DCCredentialPayload *)&v7 init];
  v3 = v2;
  if (v2)
  {
    elementIdentifiersByNamespace = v2->_elementIdentifiersByNamespace;
    v2->_elementIdentifiersByNamespace = MEMORY[0x277CBEC10];

    issuerCertificateChain = v3->_issuerCertificateChain;
    v3->_issuerCertificateChain = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  payloadData = [(DCCredentialPayload *)self payloadData];
  v6 = NSStringFromSelector(sel_payloadData);
  [coderCopy encodeObject:payloadData forKey:v6];

  format = [(DCCredentialPayload *)self format];
  v8 = NSStringFromSelector(sel_format);
  [coderCopy encodeInteger:format forKey:v8];

  protectionType = [(DCCredentialPayload *)self protectionType];
  v10 = NSStringFromSelector(sel_protectionType);
  [coderCopy encodeInteger:protectionType forKey:v10];

  docType = [(DCCredentialPayload *)self docType];
  v12 = NSStringFromSelector(sel_docType);
  [coderCopy encodeObject:docType forKey:v12];

  createdAt = [(DCCredentialPayload *)self createdAt];
  v14 = NSStringFromSelector(sel_createdAt);
  [coderCopy encodeObject:createdAt forKey:v14];

  updatedAt = [(DCCredentialPayload *)self updatedAt];
  v16 = NSStringFromSelector(sel_updatedAt);
  [coderCopy encodeObject:updatedAt forKey:v16];

  validFrom = [(DCCredentialPayload *)self validFrom];
  v18 = NSStringFromSelector(sel_validFrom);
  [coderCopy encodeObject:validFrom forKey:v18];

  validUntil = [(DCCredentialPayload *)self validUntil];
  v20 = NSStringFromSelector(sel_validUntil);
  [coderCopy encodeObject:validUntil forKey:v20];

  signedAt = [(DCCredentialPayload *)self signedAt];
  v22 = NSStringFromSelector(sel_signedAt);
  [coderCopy encodeObject:signedAt forKey:v22];

  elementIdentifiersByNamespace = [(DCCredentialPayload *)self elementIdentifiersByNamespace];
  v24 = NSStringFromSelector(sel_elementIdentifiersByNamespace);
  [coderCopy encodeObject:elementIdentifiersByNamespace forKey:v24];

  issuerCertificateChain = [(DCCredentialPayload *)self issuerCertificateChain];
  v26 = NSStringFromSelector(sel_issuerCertificateChain);
  [coderCopy encodeObject:issuerCertificateChain forKey:v26];

  region = [(DCCredentialPayload *)self region];
  v28 = NSStringFromSelector(sel_region);
  [coderCopy encodeObject:region forKey:v28];

  issuingJurisdiction = [(DCCredentialPayload *)self issuingJurisdiction];
  v30 = NSStringFromSelector(sel_issuingJurisdiction);
  [coderCopy encodeObject:issuingJurisdiction forKey:v30];

  issuingAuthority = [(DCCredentialPayload *)self issuingAuthority];
  v32 = NSStringFromSelector(sel_issuingAuthority);
  [coderCopy encodeObject:issuingAuthority forKey:v32];

  credentialRevocationInfo = [(DCCredentialPayload *)self credentialRevocationInfo];
  v33 = NSStringFromSelector(sel_credentialRevocationInfo);
  [coderCopy encodeObject:credentialRevocationInfo forKey:v33];
}

- (DCCredentialPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DCCredentialPayload *)self init];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_payloadData);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
  [(DCCredentialPayload *)v5 setPayloadData:v8];

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_docType);
  v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
  [(DCCredentialPayload *)v5 setDocType:v11];

  v12 = NSStringFromSelector(sel_format);
  -[DCCredentialPayload setFormat:](v5, "setFormat:", [coderCopy decodeIntegerForKey:v12]);

  v13 = NSStringFromSelector(sel_protectionType);
  -[DCCredentialPayload setProtectionType:](v5, "setProtectionType:", [coderCopy decodeIntegerForKey:v13]);

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_createdAt);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
  [(DCCredentialPayload *)v5 setCreatedAt:v16];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_updatedAt);
  v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];
  [(DCCredentialPayload *)v5 setUpdatedAt:v19];

  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_validFrom);
  v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
  [(DCCredentialPayload *)v5 setValidFrom:v22];

  v23 = objc_opt_class();
  v24 = NSStringFromSelector(sel_validUntil);
  v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];
  [(DCCredentialPayload *)v5 setValidUntil:v25];

  v26 = objc_opt_class();
  v27 = NSStringFromSelector(sel_signedAt);
  v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
  [(DCCredentialPayload *)v5 setSignedAt:v28];

  v29 = MEMORY[0x277CBEB98];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = [v29 setWithObjects:{v30, v31, objc_opt_class(), 0}];
  v33 = NSStringFromSelector(sel_elementIdentifiersByNamespace);
  v34 = [coderCopy decodeObjectOfClasses:v32 forKey:v33];
  [(DCCredentialPayload *)v5 setElementIdentifiersByNamespace:v34];

  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  v38 = NSStringFromSelector(sel_issuerCertificateChain);
  v39 = [coderCopy decodeObjectOfClasses:v37 forKey:v38];
  [(DCCredentialPayload *)v5 setIssuerCertificateChain:v39];

  v40 = objc_opt_class();
  v41 = NSStringFromSelector(sel_region);
  v42 = [coderCopy decodeObjectOfClass:v40 forKey:v41];
  [(DCCredentialPayload *)v5 setRegion:v42];

  v43 = objc_opt_class();
  v44 = NSStringFromSelector(sel_issuingJurisdiction);
  v45 = [coderCopy decodeObjectOfClass:v43 forKey:v44];
  [(DCCredentialPayload *)v5 setIssuingJurisdiction:v45];

  v46 = objc_opt_class();
  v47 = NSStringFromSelector(sel_issuingAuthority);
  v48 = [coderCopy decodeObjectOfClass:v46 forKey:v47];
  [(DCCredentialPayload *)v5 setIssuingAuthority:v48];

  v49 = objc_opt_class();
  v50 = NSStringFromSelector(sel_credentialRevocationInfo);
  v51 = [coderCopy decodeObjectOfClass:v49 forKey:v50];

  [(DCCredentialPayload *)v5 setCredentialRevocationInfo:v51];
  return v5;
}

@end