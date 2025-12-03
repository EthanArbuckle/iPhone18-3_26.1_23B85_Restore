@interface DCCredentialProperties
- (BOOL)hasUsablePresentmentAuthPolicy;
- (BOOL)needsPresentmentKeyRefresh;
- (DCCredentialOptions)options;
- (DCCredentialProperties)init;
- (DCCredentialProperties)initWithCoder:(id)coder;
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
- (void)encodeWithCoder:(id)coder;
- (void)setCreatedAt:(id)at;
- (void)setCredentialIdentifier:(id)identifier;
- (void)setCredentialRevocationInfo:(id)info;
- (void)setCredentialState:(unint64_t)state;
- (void)setDeviceEncryptionKeys:(id)keys;
- (void)setDocType:(id)type;
- (void)setHasUsablePresentmentAuthPolicy:(BOOL)policy;
- (void)setIssuerCertificateChain:(id)chain;
- (void)setIssuingAuthority:(id)authority;
- (void)setIssuingJurisdiction:(id)jurisdiction;
- (void)setKeySigningKeys:(id)keys;
- (void)setNeedsPresentmentKeyRefresh:(BOOL)refresh;
- (void)setOptions:(id)options;
- (void)setPartition:(id)partition;
- (void)setPayloadIngestionHash:(id)hash;
- (void)setPayloadProtectionKeys:(id)keys;
- (void)setPayloadSignedAt:(id)at;
- (void)setPayloadValidFrom:(id)from;
- (void)setPayloadValidUntil:(id)until;
- (void)setPresentmentKeys:(id)keys;
- (void)setProvisioningFailureReasons:(id)reasons;
- (void)setRegion:(id)region;
- (void)setUpdatedAt:(id)at;
@end

@implementation DCCredentialProperties

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  credentialIdentifier = self->_credentialIdentifier;
  v6 = NSStringFromSelector(sel_credentialIdentifier);
  [coderCopy encodeObject:credentialIdentifier forKey:v6];

  partition = self->_partition;
  v8 = NSStringFromSelector(sel_partition);
  [coderCopy encodeObject:partition forKey:v8];

  credentialState = self->_credentialState;
  v10 = NSStringFromSelector(sel_credentialState);
  [coderCopy encodeInteger:credentialState forKey:v10];

  options = self->_options;
  v12 = NSStringFromSelector(sel_options);
  [coderCopy encodeObject:options forKey:v12];

  createdAt = self->_createdAt;
  v14 = NSStringFromSelector(sel_createdAt);
  [coderCopy encodeObject:createdAt forKey:v14];

  updatedAt = self->_updatedAt;
  v16 = NSStringFromSelector(sel_updatedAt);
  [coderCopy encodeObject:updatedAt forKey:v16];

  payloadValidFrom = self->_payloadValidFrom;
  v18 = NSStringFromSelector(sel_payloadValidFrom);
  [coderCopy encodeObject:payloadValidFrom forKey:v18];

  payloadValidUntil = self->_payloadValidUntil;
  v20 = NSStringFromSelector(sel_payloadValidUntil);
  [coderCopy encodeObject:payloadValidUntil forKey:v20];

  payloadSignedAt = self->_payloadSignedAt;
  v22 = NSStringFromSelector(sel_payloadSignedAt);
  [coderCopy encodeObject:payloadSignedAt forKey:v22];

  keySigningKeys = self->_keySigningKeys;
  v24 = NSStringFromSelector(sel_keySigningKeys);
  [coderCopy encodeObject:keySigningKeys forKey:v24];

  deviceEncryptionKeys = self->_deviceEncryptionKeys;
  v26 = NSStringFromSelector(sel_deviceEncryptionKeys);
  [coderCopy encodeObject:deviceEncryptionKeys forKey:v26];

  presentmentKeys = self->_presentmentKeys;
  v28 = NSStringFromSelector(sel_presentmentKeys);
  [coderCopy encodeObject:presentmentKeys forKey:v28];

  payloadProtectionKeys = self->_payloadProtectionKeys;
  v30 = NSStringFromSelector(sel_payloadProtectionKeys);
  [coderCopy encodeObject:payloadProtectionKeys forKey:v30];

  hasUsablePresentmentAuthPolicy = self->_hasUsablePresentmentAuthPolicy;
  v32 = NSStringFromSelector(sel_hasUsablePresentmentAuthPolicy);
  [coderCopy encodeBool:hasUsablePresentmentAuthPolicy forKey:v32];

  needsPresentmentKeyRefresh = self->_needsPresentmentKeyRefresh;
  v34 = NSStringFromSelector(sel_needsPresentmentKeyRefresh);
  [coderCopy encodeBool:needsPresentmentKeyRefresh forKey:v34];

  payloadIngestionHash = self->_payloadIngestionHash;
  v36 = NSStringFromSelector(sel_payloadIngestionHash);
  [coderCopy encodeObject:payloadIngestionHash forKey:v36];

  issuerCertificateChain = self->_issuerCertificateChain;
  v38 = NSStringFromSelector(sel_issuerCertificateChain);
  [coderCopy encodeObject:issuerCertificateChain forKey:v38];

  region = self->_region;
  v40 = NSStringFromSelector(sel_region);
  [coderCopy encodeObject:region forKey:v40];

  issuingJurisdiction = self->_issuingJurisdiction;
  v42 = NSStringFromSelector(sel_issuingJurisdiction);
  [coderCopy encodeObject:issuingJurisdiction forKey:v42];

  issuingAuthority = self->_issuingAuthority;
  v44 = NSStringFromSelector(sel_issuingAuthority);
  [coderCopy encodeObject:issuingAuthority forKey:v44];

  docType = self->_docType;
  v46 = NSStringFromSelector(sel_docType);
  [coderCopy encodeObject:docType forKey:v46];

  credentialRevocationInfo = self->_credentialRevocationInfo;
  v48 = NSStringFromSelector(sel_credentialRevocationInfo);
  [coderCopy encodeObject:credentialRevocationInfo forKey:v48];

  provisioningFailureReasons = self->_provisioningFailureReasons;
  v50 = NSStringFromSelector(sel_provisioningFailureReasons);
  [coderCopy encodeObject:provisioningFailureReasons forKey:v50];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DCCredentialProperties *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_credentialIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v8;

    v10 = NSStringFromSelector(sel_credentialState);
    v5->_credentialState = [coderCopy decodeIntegerForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_partition);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    partition = v5->_partition;
    v5->_partition = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_options);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    options = v5->_options;
    v5->_options = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_createdAt);
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
    createdAt = v5->_createdAt;
    v5->_createdAt = v21;

    v23 = objc_opt_class();
    v24 = NSStringFromSelector(sel_updatedAt);
    v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];
    updatedAt = v5->_updatedAt;
    v5->_updatedAt = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_payloadValidFrom);
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    payloadValidFrom = v5->_payloadValidFrom;
    v5->_payloadValidFrom = v29;

    v31 = objc_opt_class();
    v32 = NSStringFromSelector(sel_payloadValidUntil);
    v33 = [coderCopy decodeObjectOfClass:v31 forKey:v32];
    payloadValidUntil = v5->_payloadValidUntil;
    v5->_payloadValidUntil = v33;

    v35 = objc_opt_class();
    v36 = NSStringFromSelector(sel_payloadSignedAt);
    v37 = [coderCopy decodeObjectOfClass:v35 forKey:v36];
    payloadSignedAt = v5->_payloadSignedAt;
    v5->_payloadSignedAt = v37;

    v39 = objc_opt_class();
    v40 = NSStringFromSelector(sel_payloadIngestionHash);
    v41 = [coderCopy decodeObjectOfClass:v39 forKey:v40];
    payloadIngestionHash = v5->_payloadIngestionHash;
    v5->_payloadIngestionHash = v41;

    v43 = MEMORY[0x277CBEB98];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = [v43 setWithObjects:{v44, v45, objc_opt_class(), 0}];
    v47 = NSStringFromSelector(sel_keySigningKeys);
    v48 = [coderCopy decodeObjectOfClasses:v46 forKey:v47];
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
    v57 = [coderCopy decodeObjectOfClasses:v55 forKey:v56];
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
    v65 = [coderCopy decodeObjectOfClasses:v63 forKey:v64];
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
    v72 = [coderCopy decodeObjectOfClasses:v70 forKey:v71];
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
    v5->_hasUsablePresentmentAuthPolicy = [coderCopy decodeBoolForKey:v76];

    v77 = NSStringFromSelector(sel_needsPresentmentKeyRefresh);
    v5->_needsPresentmentKeyRefresh = [coderCopy decodeBoolForKey:v77];

    v78 = MEMORY[0x277CBEB98];
    v79 = objc_opt_class();
    v80 = objc_opt_class();
    v81 = [v78 setWithObjects:{v79, v80, objc_opt_class(), 0}];
    v82 = NSStringFromSelector(sel_issuerCertificateChain);
    v83 = [coderCopy decodeObjectOfClasses:v81 forKey:v82];
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
    v88 = [coderCopy decodeObjectOfClass:v86 forKey:v87];
    region = v5->_region;
    v5->_region = v88;

    v90 = objc_opt_class();
    v91 = NSStringFromSelector(sel_issuingJurisdiction);
    v92 = [coderCopy decodeObjectOfClass:v90 forKey:v91];
    issuingJurisdiction = v5->_issuingJurisdiction;
    v5->_issuingJurisdiction = v92;

    v94 = objc_opt_class();
    v95 = NSStringFromSelector(sel_issuingAuthority);
    v96 = [coderCopy decodeObjectOfClass:v94 forKey:v95];
    issuingAuthority = v5->_issuingAuthority;
    v5->_issuingAuthority = v96;

    v98 = objc_opt_class();
    v99 = NSStringFromSelector(sel_docType);
    v100 = [coderCopy decodeObjectOfClass:v98 forKey:v99];
    docType = v5->_docType;
    v5->_docType = v100;

    v102 = objc_opt_class();
    v103 = NSStringFromSelector(sel_credentialRevocationInfo);
    v104 = [coderCopy decodeObjectOfClass:v102 forKey:v103];
    credentialRevocationInfo = v5->_credentialRevocationInfo;
    v5->_credentialRevocationInfo = v104;

    v106 = MEMORY[0x277CBEB98];
    v107 = objc_opt_class();
    v108 = [v106 setWithObjects:{v107, objc_opt_class(), 0}];
    v109 = NSStringFromSelector(sel_provisioningFailureReasons);
    v110 = [coderCopy decodeObjectOfClasses:v108 forKey:v109];
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

- (void)setCredentialIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  if (self->_credentialIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copyWithZone:0];
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

- (void)setPartition:(id)partition
{
  partitionCopy = partition;
  os_unfair_lock_lock(&self->_lock);
  if (self->_partition != partitionCopy)
  {
    v4 = [(NSString *)partitionCopy copyWithZone:0];
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

- (void)setCredentialState:(unint64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  self->_credentialState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialOptions)options
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_options;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  os_unfair_lock_lock(&self->_lock);
  if (self->_options != optionsCopy)
  {
    v4 = [(DCCredentialOptions *)optionsCopy copyWithZone:0];
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

- (void)setCreatedAt:(id)at
{
  atCopy = at;
  os_unfair_lock_lock(&self->_lock);
  if (self->_createdAt != atCopy)
  {
    v4 = [(NSDate *)atCopy copyWithZone:0];
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

- (void)setUpdatedAt:(id)at
{
  atCopy = at;
  os_unfair_lock_lock(&self->_lock);
  if (self->_updatedAt != atCopy)
  {
    v4 = [(NSDate *)atCopy copyWithZone:0];
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

- (void)setPayloadValidFrom:(id)from
{
  fromCopy = from;
  os_unfair_lock_lock(&self->_lock);
  if (self->_payloadValidFrom != fromCopy)
  {
    v4 = [(NSDate *)fromCopy copyWithZone:0];
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

- (void)setPayloadValidUntil:(id)until
{
  untilCopy = until;
  os_unfair_lock_lock(&self->_lock);
  if (self->_payloadValidUntil != untilCopy)
  {
    v4 = [(NSDate *)untilCopy copyWithZone:0];
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

- (void)setPayloadSignedAt:(id)at
{
  atCopy = at;
  os_unfair_lock_lock(&self->_lock);
  if (self->_payloadSignedAt != atCopy)
  {
    v4 = [(NSDate *)atCopy copyWithZone:0];
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

- (void)setPayloadIngestionHash:(id)hash
{
  hashCopy = hash;
  os_unfair_lock_lock(&self->_lock);
  if (self->_payloadIngestionHash != hashCopy)
  {
    v4 = [(NSData *)hashCopy copyWithZone:0];
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

- (void)setKeySigningKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:keysCopy copyItems:1];

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

- (void)setDeviceEncryptionKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:keysCopy copyItems:1];

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

- (void)setPresentmentKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:keysCopy copyItems:1];

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

- (void)setPayloadProtectionKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:keysCopy copyItems:1];

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

- (void)setHasUsablePresentmentAuthPolicy:(BOOL)policy
{
  os_unfair_lock_lock(&self->_lock);
  self->_hasUsablePresentmentAuthPolicy = policy;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)needsPresentmentKeyRefresh
{
  os_unfair_lock_lock(&self->_lock);
  needsPresentmentKeyRefresh = self->_needsPresentmentKeyRefresh;
  os_unfair_lock_unlock(&self->_lock);
  return needsPresentmentKeyRefresh;
}

- (void)setNeedsPresentmentKeyRefresh:(BOOL)refresh
{
  os_unfair_lock_lock(&self->_lock);
  self->_needsPresentmentKeyRefresh = refresh;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)issuerCertificateChain
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_issuerCertificateChain;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIssuerCertificateChain:(id)chain
{
  chainCopy = chain;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:chainCopy copyItems:1];

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

- (void)setRegion:(id)region
{
  regionCopy = region;
  os_unfair_lock_lock(&self->_lock);
  if (self->_region != regionCopy)
  {
    v4 = [(NSString *)regionCopy copyWithZone:0];
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

- (void)setIssuingJurisdiction:(id)jurisdiction
{
  jurisdictionCopy = jurisdiction;
  os_unfair_lock_lock(&self->_lock);
  if (self->_issuingJurisdiction != jurisdictionCopy)
  {
    v4 = [(NSString *)jurisdictionCopy copyWithZone:0];
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

- (void)setIssuingAuthority:(id)authority
{
  authorityCopy = authority;
  os_unfair_lock_lock(&self->_lock);
  if (self->_issuingAuthority != authorityCopy)
  {
    v4 = [(NSString *)authorityCopy copyWithZone:0];
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

- (void)setDocType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->_lock);
  if (self->_docType != typeCopy)
  {
    v4 = [(NSString *)typeCopy copyWithZone:0];
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

- (void)setCredentialRevocationInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock(&self->_lock);
  credentialRevocationInfo = self->_credentialRevocationInfo;
  self->_credentialRevocationInfo = infoCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)provisioningFailureReasons
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_provisioningFailureReasons;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setProvisioningFailureReasons:(id)reasons
{
  reasonsCopy = reasons;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:reasonsCopy copyItems:1];

  provisioningFailureReasons = self->_provisioningFailureReasons;
  self->_provisioningFailureReasons = v5;

  os_unfair_lock_unlock(&self->_lock);
}

@end