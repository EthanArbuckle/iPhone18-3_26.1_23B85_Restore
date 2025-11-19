@interface DCCredentialPayload
- (DCCredentialPayload)init;
- (DCCredentialPayload)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DCCredentialPayload *)self payloadData];
  v6 = NSStringFromSelector(sel_payloadData);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(DCCredentialPayload *)self format];
  v8 = NSStringFromSelector(sel_format);
  [v4 encodeInteger:v7 forKey:v8];

  v9 = [(DCCredentialPayload *)self protectionType];
  v10 = NSStringFromSelector(sel_protectionType);
  [v4 encodeInteger:v9 forKey:v10];

  v11 = [(DCCredentialPayload *)self docType];
  v12 = NSStringFromSelector(sel_docType);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(DCCredentialPayload *)self createdAt];
  v14 = NSStringFromSelector(sel_createdAt);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(DCCredentialPayload *)self updatedAt];
  v16 = NSStringFromSelector(sel_updatedAt);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(DCCredentialPayload *)self validFrom];
  v18 = NSStringFromSelector(sel_validFrom);
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(DCCredentialPayload *)self validUntil];
  v20 = NSStringFromSelector(sel_validUntil);
  [v4 encodeObject:v19 forKey:v20];

  v21 = [(DCCredentialPayload *)self signedAt];
  v22 = NSStringFromSelector(sel_signedAt);
  [v4 encodeObject:v21 forKey:v22];

  v23 = [(DCCredentialPayload *)self elementIdentifiersByNamespace];
  v24 = NSStringFromSelector(sel_elementIdentifiersByNamespace);
  [v4 encodeObject:v23 forKey:v24];

  v25 = [(DCCredentialPayload *)self issuerCertificateChain];
  v26 = NSStringFromSelector(sel_issuerCertificateChain);
  [v4 encodeObject:v25 forKey:v26];

  v27 = [(DCCredentialPayload *)self region];
  v28 = NSStringFromSelector(sel_region);
  [v4 encodeObject:v27 forKey:v28];

  v29 = [(DCCredentialPayload *)self issuingJurisdiction];
  v30 = NSStringFromSelector(sel_issuingJurisdiction);
  [v4 encodeObject:v29 forKey:v30];

  v31 = [(DCCredentialPayload *)self issuingAuthority];
  v32 = NSStringFromSelector(sel_issuingAuthority);
  [v4 encodeObject:v31 forKey:v32];

  v34 = [(DCCredentialPayload *)self credentialRevocationInfo];
  v33 = NSStringFromSelector(sel_credentialRevocationInfo);
  [v4 encodeObject:v34 forKey:v33];
}

- (DCCredentialPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DCCredentialPayload *)self init];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_payloadData);
  v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
  [(DCCredentialPayload *)v5 setPayloadData:v8];

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_docType);
  v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
  [(DCCredentialPayload *)v5 setDocType:v11];

  v12 = NSStringFromSelector(sel_format);
  -[DCCredentialPayload setFormat:](v5, "setFormat:", [v4 decodeIntegerForKey:v12]);

  v13 = NSStringFromSelector(sel_protectionType);
  -[DCCredentialPayload setProtectionType:](v5, "setProtectionType:", [v4 decodeIntegerForKey:v13]);

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_createdAt);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
  [(DCCredentialPayload *)v5 setCreatedAt:v16];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_updatedAt);
  v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
  [(DCCredentialPayload *)v5 setUpdatedAt:v19];

  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_validFrom);
  v22 = [v4 decodeObjectOfClass:v20 forKey:v21];
  [(DCCredentialPayload *)v5 setValidFrom:v22];

  v23 = objc_opt_class();
  v24 = NSStringFromSelector(sel_validUntil);
  v25 = [v4 decodeObjectOfClass:v23 forKey:v24];
  [(DCCredentialPayload *)v5 setValidUntil:v25];

  v26 = objc_opt_class();
  v27 = NSStringFromSelector(sel_signedAt);
  v28 = [v4 decodeObjectOfClass:v26 forKey:v27];
  [(DCCredentialPayload *)v5 setSignedAt:v28];

  v29 = MEMORY[0x277CBEB98];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = [v29 setWithObjects:{v30, v31, objc_opt_class(), 0}];
  v33 = NSStringFromSelector(sel_elementIdentifiersByNamespace);
  v34 = [v4 decodeObjectOfClasses:v32 forKey:v33];
  [(DCCredentialPayload *)v5 setElementIdentifiersByNamespace:v34];

  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  v38 = NSStringFromSelector(sel_issuerCertificateChain);
  v39 = [v4 decodeObjectOfClasses:v37 forKey:v38];
  [(DCCredentialPayload *)v5 setIssuerCertificateChain:v39];

  v40 = objc_opt_class();
  v41 = NSStringFromSelector(sel_region);
  v42 = [v4 decodeObjectOfClass:v40 forKey:v41];
  [(DCCredentialPayload *)v5 setRegion:v42];

  v43 = objc_opt_class();
  v44 = NSStringFromSelector(sel_issuingJurisdiction);
  v45 = [v4 decodeObjectOfClass:v43 forKey:v44];
  [(DCCredentialPayload *)v5 setIssuingJurisdiction:v45];

  v46 = objc_opt_class();
  v47 = NSStringFromSelector(sel_issuingAuthority);
  v48 = [v4 decodeObjectOfClass:v46 forKey:v47];
  [(DCCredentialPayload *)v5 setIssuingAuthority:v48];

  v49 = objc_opt_class();
  v50 = NSStringFromSelector(sel_credentialRevocationInfo);
  v51 = [v4 decodeObjectOfClass:v49 forKey:v50];

  [(DCCredentialPayload *)v5 setCredentialRevocationInfo:v51];
  return v5;
}

@end