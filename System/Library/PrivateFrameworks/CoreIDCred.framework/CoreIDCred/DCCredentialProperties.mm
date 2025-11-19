@interface DCCredentialProperties
- (BOOL)hasUsablePresentmentAuthPolicy;
- (BOOL)needsPresentmentKeyRefresh;
- (DCCredentialOptions)options;
- (DCCredentialProperties)init;
- (DCCredentialProperties)initWithCoder:(id)a3;
- (DCCredentialRevocationInfo)credentialRevocationInfo;
- (NSArray)issuerCertificateChain;
- (NSArray)payloadProtectionKeys;
- (NSArray)provisioningFailureReasons;
- (NSData)payloadIngestionHash;
- (NSDate)createdAt;
- (NSDate)payloadSignedAt;
- (NSDate)payloadValidFrom;
- (NSDate)payloadValidUntil;
- (NSDate)updatedAt;
- (NSDictionary)deviceEncryptionKeys;
- (NSDictionary)keySigningKeys;
- (NSDictionary)presentmentKeys;
- (NSString)credentialIdentifier;
- (NSString)docType;
- (NSString)issuingAuthority;
- (NSString)issuingJurisdiction;
- (NSString)partition;
- (NSString)region;
- (unint64_t)credentialState;
- (void)encodeWithCoder:(id)a3;
- (void)setCreatedAt:(id)a3;
- (void)setCredentialIdentifier:(id)a3;
- (void)setCredentialRevocationInfo:(id)a3;
- (void)setCredentialState:(unint64_t)a3;
- (void)setDeviceEncryptionKeys:(id)a3;
- (void)setDocType:(id)a3;
- (void)setHasUsablePresentmentAuthPolicy:(BOOL)a3;
- (void)setIssuerCertificateChain:(id)a3;
- (void)setIssuingAuthority:(id)a3;
- (void)setIssuingJurisdiction:(id)a3;
- (void)setKeySigningKeys:(id)a3;
- (void)setNeedsPresentmentKeyRefresh:(BOOL)a3;
- (void)setOptions:(id)a3;
- (void)setPartition:(id)a3;
- (void)setPayloadIngestionHash:(id)a3;
- (void)setPayloadProtectionKeys:(id)a3;
- (void)setPayloadSignedAt:(id)a3;
- (void)setPayloadValidFrom:(id)a3;
- (void)setPayloadValidUntil:(id)a3;
- (void)setPresentmentKeys:(id)a3;
- (void)setProvisioningFailureReasons:(id)a3;
- (void)setRegion:(id)a3;
- (void)setUpdatedAt:(id)a3;
@end

@implementation DCCredentialProperties

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  credentialIdentifier = self->_credentialIdentifier;
  v6 = NSStringFromSelector(sel_credentialIdentifier);
  [v4 encodeObject:credentialIdentifier forKey:v6];

  partition = self->_partition;
  v8 = NSStringFromSelector(sel_partition);
  [v4 encodeObject:partition forKey:v8];

  credentialState = self->_credentialState;
  v10 = NSStringFromSelector(sel_credentialState);
  [v4 encodeInteger:credentialState forKey:v10];

  options = self->_options;
  v12 = NSStringFromSelector(sel_options);
  [v4 encodeObject:options forKey:v12];

  createdAt = self->_createdAt;
  v14 = NSStringFromSelector(sel_createdAt);
  [v4 encodeObject:createdAt forKey:v14];

  updatedAt = self->_updatedAt;
  v16 = NSStringFromSelector(sel_updatedAt);
  [v4 encodeObject:updatedAt forKey:v16];

  payloadValidFrom = self->_payloadValidFrom;
  v18 = NSStringFromSelector(sel_payloadValidFrom);
  [v4 encodeObject:payloadValidFrom forKey:v18];

  payloadValidUntil = self->_payloadValidUntil;
  v20 = NSStringFromSelector(sel_payloadValidUntil);
  [v4 encodeObject:payloadValidUntil forKey:v20];

  payloadSignedAt = self->_payloadSignedAt;
  v22 = NSStringFromSelector(sel_payloadSignedAt);
  [v4 encodeObject:payloadSignedAt forKey:v22];

  keySigningKeys = self->_keySigningKeys;
  v24 = NSStringFromSelector(sel_keySigningKeys);
  [v4 encodeObject:keySigningKeys forKey:v24];

  deviceEncryptionKeys = self->_deviceEncryptionKeys;
  v26 = NSStringFromSelector(sel_deviceEncryptionKeys);
  [v4 encodeObject:deviceEncryptionKeys forKey:v26];

  presentmentKeys = self->_presentmentKeys;
  v28 = NSStringFromSelector(sel_presentmentKeys);
  [v4 encodeObject:presentmentKeys forKey:v28];

  payloadProtectionKeys = self->_payloadProtectionKeys;
  v30 = NSStringFromSelector(sel_payloadProtectionKeys);
  [v4 encodeObject:payloadProtectionKeys forKey:v30];

  hasUsablePresentmentAuthPolicy = self->_hasUsablePresentmentAuthPolicy;
  v32 = NSStringFromSelector(sel_hasUsablePresentmentAuthPolicy);
  [v4 encodeBool:hasUsablePresentmentAuthPolicy forKey:v32];

  needsPresentmentKeyRefresh = self->_needsPresentmentKeyRefresh;
  v34 = NSStringFromSelector(sel_needsPresentmentKeyRefresh);
  [v4 encodeBool:needsPresentmentKeyRefresh forKey:v34];

  payloadIngestionHash = self->_payloadIngestionHash;
  v36 = NSStringFromSelector(sel_payloadIngestionHash);
  [v4 encodeObject:payloadIngestionHash forKey:v36];

  issuerCertificateChain = self->_issuerCertificateChain;
  v38 = NSStringFromSelector(sel_issuerCertificateChain);
  [v4 encodeObject:issuerCertificateChain forKey:v38];

  region = self->_region;
  v40 = NSStringFromSelector(sel_region);
  [v4 encodeObject:region forKey:v40];

  issuingJurisdiction = self->_issuingJurisdiction;
  v42 = NSStringFromSelector(sel_issuingJurisdiction);
  [v4 encodeObject:issuingJurisdiction forKey:v42];

  issuingAuthority = self->_issuingAuthority;
  v44 = NSStringFromSelector(sel_issuingAuthority);
  [v4 encodeObject:issuingAuthority forKey:v44];

  docType = self->_docType;
  v46 = NSStringFromSelector(sel_docType);
  [v4 encodeObject:docType forKey:v46];

  credentialRevocationInfo = self->_credentialRevocationInfo;
  v48 = NSStringFromSelector(sel_credentialRevocationInfo);
  [v4 encodeObject:credentialRevocationInfo forKey:v48];

  provisioningFailureReasons = self->_provisioningFailureReasons;
  v50 = NSStringFromSelector(sel_provisioningFailureReasons);
  [v4 encodeObject:provisioningFailureReasons forKey:v50];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DCCredentialProperties *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_credentialIdentifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v8;

    v10 = NSStringFromSelector(sel_credentialState);
    v5->_credentialState = [v4 decodeIntegerForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_partition);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    partition = v5->_partition;
    v5->_partition = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_options);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    options = v5->_options;
    v5->_options = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_createdAt);
    v21 = [v4 decodeObjectOfClass:v19 forKey:v20];
    createdAt = v5->_createdAt;
    v5->_createdAt = v21;

    v23 = objc_opt_class();
    v24 = NSStringFromSelector(sel_updatedAt);
    v25 = [v4 decodeObjectOfClass:v23 forKey:v24];
    updatedAt = v5->_updatedAt;
    v5->_updatedAt = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_payloadValidFrom);
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    payloadValidFrom = v5->_payloadValidFrom;
    v5->_payloadValidFrom = v29;

    v31 = objc_opt_class();
    v32 = NSStringFromSelector(sel_payloadValidUntil);
    v33 = [v4 decodeObjectOfClass:v31 forKey:v32];
    payloadValidUntil = v5->_payloadValidUntil;
    v5->_payloadValidUntil = v33;

    v35 = objc_opt_class();
    v36 = NSStringFromSelector(sel_payloadSignedAt);
    v37 = [v4 decodeObjectOfClass:v35 forKey:v36];
    payloadSignedAt = v5->_payloadSignedAt;
    v5->_payloadSignedAt = v37;

    v39 = objc_opt_class();
    v40 = NSStringFromSelector(sel_payloadIngestionHash);
    v41 = [v4 decodeObjectOfClass:v39 forKey:v40];
    payloadIngestionHash = v5->_payloadIngestionHash;
    v5->_payloadIngestionHash = v41;

    v43 = MEMORY[0x277CBEB98];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = [v43 setWithObjects:{v44, v45, objc_opt_class(), 0}];
    v47 = NSStringFromSelector(sel_keySigningKeys);
    v48 = [v4 decodeObjectOfClasses:v46 forKey:v47];
    v49 = v48;
    v50 = MEMORY[0x277CBEC10];
    if (v48)
    {
      v51 = v48;
    }

    else
    {
      v51 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v5->_keySigningKeys, v51);

    v52 = MEMORY[0x277CBEB98];
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v55 = [v52 setWithObjects:{v53, v54, objc_opt_class(), 0}];
    v56 = NSStringFromSelector(sel_deviceEncryptionKeys);
    v57 = [v4 decodeObjectOfClasses:v55 forKey:v56];
    v58 = v57;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = v50;
    }

    objc_storeStrong(&v5->_deviceEncryptionKeys, v59);

    v60 = MEMORY[0x277CBEB98];
    v61 = objc_opt_class();
    v62 = objc_opt_class();
    v63 = [v60 setWithObjects:{v61, v62, objc_opt_class(), 0}];
    v64 = NSStringFromSelector(sel_presentmentKeys);
    v65 = [v4 decodeObjectOfClasses:v63 forKey:v64];
    v66 = v65;
    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = v50;
    }

    objc_storeStrong(&v5->_presentmentKeys, v67);

    v68 = MEMORY[0x277CBEB98];
    v69 = objc_opt_class();
    v70 = [v68 setWithObjects:{v69, objc_opt_class(), 0}];
    v71 = NSStringFromSelector(sel_payloadProtectionKeys);
    v72 = [v4 decodeObjectOfClasses:v70 forKey:v71];
    v73 = v72;
    v74 = MEMORY[0x277CBEBF8];
    if (v72)
    {
      v75 = v72;
    }

    else
    {
      v75 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_payloadProtectionKeys, v75);

    v76 = NSStringFromSelector(sel_hasUsablePresentmentAuthPolicy);
    v5->_hasUsablePresentmentAuthPolicy = [v4 decodeBoolForKey:v76];

    v77 = NSStringFromSelector(sel_needsPresentmentKeyRefresh);
    v5->_needsPresentmentKeyRefresh = [v4 decodeBoolForKey:v77];

    v78 = MEMORY[0x277CBEB98];
    v79 = objc_opt_class();
    v80 = objc_opt_class();
    v81 = [v78 setWithObjects:{v79, v80, objc_opt_class(), 0}];
    v82 = NSStringFromSelector(sel_issuerCertificateChain);
    v83 = [v4 decodeObjectOfClasses:v81 forKey:v82];
    v84 = v83;
    if (v83)
    {
      v85 = v83;
    }

    else
    {
      v85 = v74;
    }

    objc_storeStrong(&v5->_issuerCertificateChain, v85);

    v86 = objc_opt_class();
    v87 = NSStringFromSelector(sel_region);
    v88 = [v4 decodeObjectOfClass:v86 forKey:v87];
    region = v5->_region;
    v5->_region = v88;

    v90 = objc_opt_class();
    v91 = NSStringFromSelector(sel_issuingJurisdiction);
    v92 = [v4 decodeObjectOfClass:v90 forKey:v91];
    issuingJurisdiction = v5->_issuingJurisdiction;
    v5->_issuingJurisdiction = v92;

    v94 = objc_opt_class();
    v95 = NSStringFromSelector(sel_issuingAuthority);
    v96 = [v4 decodeObjectOfClass:v94 forKey:v95];
    issuingAuthority = v5->_issuingAuthority;
    v5->_issuingAuthority = v96;

    v98 = objc_opt_class();
    v99 = NSStringFromSelector(sel_docType);
    v100 = [v4 decodeObjectOfClass:v98 forKey:v99];
    docType = v5->_docType;
    v5->_docType = v100;

    v102 = objc_opt_class();
    v103 = NSStringFromSelector(sel_credentialRevocationInfo);
    v104 = [v4 decodeObjectOfClass:v102 forKey:v103];
    credentialRevocationInfo = v5->_credentialRevocationInfo;
    v5->_credentialRevocationInfo = v104;

    v106 = MEMORY[0x277CBEB98];
    v107 = objc_opt_class();
    v108 = [v106 setWithObjects:{v107, objc_opt_class(), 0}];
    v109 = NSStringFromSelector(sel_provisioningFailureReasons);
    v110 = [v4 decodeObjectOfClasses:v108 forKey:v109];
    v111 = v110;
    if (v110)
    {
      v112 = v110;
    }

    else
    {
      v112 = v74;
    }

    objc_storeStrong(&v5->_provisioningFailureReasons, v112);
  }

  return v5;
}

- (DCCredentialProperties)init
{
  v12.receiver = self;
  v12.super_class = DCCredentialProperties;
  v2 = [(DCCredentialProperties *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    keySigningKeys = v2->_keySigningKeys;
    v5 = MEMORY[0x277CBEC10];
    v2->_keySigningKeys = MEMORY[0x277CBEC10];

    deviceEncryptionKeys = v3->_deviceEncryptionKeys;
    v3->_deviceEncryptionKeys = v5;

    presentmentKeys = v3->_presentmentKeys;
    v3->_presentmentKeys = v5;

    payloadProtectionKeys = v3->_payloadProtectionKeys;
    v9 = MEMORY[0x277CBEBF8];
    v3->_payloadProtectionKeys = MEMORY[0x277CBEBF8];

    issuerCertificateChain = v3->_issuerCertificateChain;
    v3->_issuerCertificateChain = v9;
  }

  return v3;
}

- (NSString)credentialIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_credentialIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCredentialIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_credentialIdentifier != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    credentialIdentifier = self->_credentialIdentifier;
    self->_credentialIdentifier = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)partition
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_partition;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPartition:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_partition != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    partition = self->_partition;
    self->_partition = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)credentialState
{
  os_unfair_lock_lock(&self->_lock);
  credentialState = self->_credentialState;
  os_unfair_lock_unlock(&self->_lock);
  return credentialState;
}

- (void)setCredentialState:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_credentialState = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialOptions)options
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_options;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setOptions:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_options != v6)
  {
    v4 = [(DCCredentialOptions *)v6 copyWithZone:0];
    options = self->_options;
    self->_options = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)createdAt
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_createdAt;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCreatedAt:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_createdAt != v6)
  {
    v4 = [(NSDate *)v6 copyWithZone:0];
    createdAt = self->_createdAt;
    self->_createdAt = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)updatedAt
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_updatedAt;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setUpdatedAt:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_updatedAt != v6)
  {
    v4 = [(NSDate *)v6 copyWithZone:0];
    updatedAt = self->_updatedAt;
    self->_updatedAt = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)payloadValidFrom
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_payloadValidFrom;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPayloadValidFrom:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_payloadValidFrom != v6)
  {
    v4 = [(NSDate *)v6 copyWithZone:0];
    payloadValidFrom = self->_payloadValidFrom;
    self->_payloadValidFrom = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)payloadValidUntil
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_payloadValidUntil;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPayloadValidUntil:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_payloadValidUntil != v6)
  {
    v4 = [(NSDate *)v6 copyWithZone:0];
    payloadValidUntil = self->_payloadValidUntil;
    self->_payloadValidUntil = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)payloadSignedAt
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_payloadSignedAt;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPayloadSignedAt:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_payloadSignedAt != v6)
  {
    v4 = [(NSDate *)v6 copyWithZone:0];
    payloadSignedAt = self->_payloadSignedAt;
    self->_payloadSignedAt = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)payloadIngestionHash
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_payloadIngestionHash;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPayloadIngestionHash:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_payloadIngestionHash != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
    payloadIngestionHash = self->_payloadIngestionHash;
    self->_payloadIngestionHash = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)keySigningKeys
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_keySigningKeys;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setKeySigningKeys:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v4 copyItems:1];

  keySigningKeys = self->_keySigningKeys;
  self->_keySigningKeys = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)deviceEncryptionKeys
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_deviceEncryptionKeys;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeviceEncryptionKeys:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v4 copyItems:1];

  deviceEncryptionKeys = self->_deviceEncryptionKeys;
  self->_deviceEncryptionKeys = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)presentmentKeys
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_presentmentKeys;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPresentmentKeys:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v4 copyItems:1];

  presentmentKeys = self->_presentmentKeys;
  self->_presentmentKeys = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)payloadProtectionKeys
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_payloadProtectionKeys;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPayloadProtectionKeys:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4 copyItems:1];

  payloadProtectionKeys = self->_payloadProtectionKeys;
  self->_payloadProtectionKeys = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasUsablePresentmentAuthPolicy
{
  os_unfair_lock_lock(&self->_lock);
  hasUsablePresentmentAuthPolicy = self->_hasUsablePresentmentAuthPolicy;
  os_unfair_lock_unlock(&self->_lock);
  return hasUsablePresentmentAuthPolicy;
}

- (void)setHasUsablePresentmentAuthPolicy:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_hasUsablePresentmentAuthPolicy = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)needsPresentmentKeyRefresh
{
  os_unfair_lock_lock(&self->_lock);
  needsPresentmentKeyRefresh = self->_needsPresentmentKeyRefresh;
  os_unfair_lock_unlock(&self->_lock);
  return needsPresentmentKeyRefresh;
}

- (void)setNeedsPresentmentKeyRefresh:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_needsPresentmentKeyRefresh = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)issuerCertificateChain
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_issuerCertificateChain;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIssuerCertificateChain:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4 copyItems:1];

  issuerCertificateChain = self->_issuerCertificateChain;
  self->_issuerCertificateChain = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)region
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_region;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRegion:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_region != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    region = self->_region;
    self->_region = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)issuingJurisdiction
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_issuingJurisdiction;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIssuingJurisdiction:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_issuingJurisdiction != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    issuingJurisdiction = self->_issuingJurisdiction;
    self->_issuingJurisdiction = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)issuingAuthority
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_issuingAuthority;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIssuingAuthority:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_issuingAuthority != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    issuingAuthority = self->_issuingAuthority;
    self->_issuingAuthority = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)docType
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_docType;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDocType:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_docType != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    docType = self->_docType;
    self->_docType = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialRevocationInfo)credentialRevocationInfo
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_credentialRevocationInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCredentialRevocationInfo:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  credentialRevocationInfo = self->_credentialRevocationInfo;
  self->_credentialRevocationInfo = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)provisioningFailureReasons
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_provisioningFailureReasons;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setProvisioningFailureReasons:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4 copyItems:1];

  provisioningFailureReasons = self->_provisioningFailureReasons;
  self->_provisioningFailureReasons = v5;

  os_unfair_lock_unlock(&self->_lock);
}

@end