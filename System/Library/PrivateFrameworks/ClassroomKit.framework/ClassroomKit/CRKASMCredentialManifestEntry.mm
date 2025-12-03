@interface CRKASMCredentialManifestEntry
+ (id)validityIntervalWithDictionary:(id)dictionary;
- (BOOL)isFullyPopulated;
- (CRKASMCredentialManifestEntry)initWithDictionary:(id)dictionary;
- (CRKASMCredentialManifestEntry)initWithUserIdentifier:(id)identifier validityInterval:(id)interval fingerprint:(id)fingerprint;
- (NSString)stringValue;
- (id)dictionaryValue;
@end

@implementation CRKASMCredentialManifestEntry

- (CRKASMCredentialManifestEntry)initWithUserIdentifier:(id)identifier validityInterval:(id)interval fingerprint:(id)fingerprint
{
  identifierCopy = identifier;
  intervalCopy = interval;
  fingerprintCopy = fingerprint;
  v17.receiver = self;
  v17.super_class = CRKASMCredentialManifestEntry;
  v11 = [(CRKASMCredentialManifestEntry *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    userIdentifier = v11->_userIdentifier;
    v11->_userIdentifier = v12;

    objc_storeStrong(&v11->_validityInterval, interval);
    v14 = [fingerprintCopy copy];
    fingerprint = v11->_fingerprint;
    v11->_fingerprint = v14;
  }

  return v11;
}

- (BOOL)isFullyPopulated
{
  userIdentifier = [(CRKASMCredentialManifestEntry *)self userIdentifier];
  if (userIdentifier)
  {
    validityInterval = [(CRKASMCredentialManifestEntry *)self validityInterval];
    if (validityInterval)
    {
      fingerprint = [(CRKASMCredentialManifestEntry *)self fingerprint];
      v6 = fingerprint != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)stringValue
{
  v3 = MEMORY[0x277CCACA8];
  userIdentifier = [(CRKASMCredentialManifestEntry *)self userIdentifier];
  validityInterval = [(CRKASMCredentialManifestEntry *)self validityInterval];
  fingerprint = [(CRKASMCredentialManifestEntry *)self fingerprint];
  v7 = [v3 stringWithFormat:@"{ userIdentifier = %@, validityInterval = %@, fingerprint = %@ }", userIdentifier, validityInterval, fingerprint];

  return v7;
}

- (CRKASMCredentialManifestEntry)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"UserIdentifier"];
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

  v8 = [objc_opt_class() validityIntervalWithDictionary:dictionaryCopy];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"Fingerprint"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [(CRKASMCredentialManifestEntry *)self initWithUserIdentifier:v7 validityInterval:v8 fingerprint:v11];
  return v12;
}

- (id)dictionaryValue
{
  v3 = objc_opt_new();
  userIdentifier = [(CRKASMCredentialManifestEntry *)self userIdentifier];
  [v3 setObject:userIdentifier forKeyedSubscript:@"UserIdentifier"];

  validityInterval = [(CRKASMCredentialManifestEntry *)self validityInterval];
  startDate = [validityInterval startDate];
  [v3 setObject:startDate forKeyedSubscript:@"ValidityStartDate"];

  validityInterval2 = [(CRKASMCredentialManifestEntry *)self validityInterval];
  endDate = [validityInterval2 endDate];
  [v3 setObject:endDate forKeyedSubscript:@"ValidityEndDate"];

  fingerprint = [(CRKASMCredentialManifestEntry *)self fingerprint];
  [v3 setObject:fingerprint forKeyedSubscript:@"Fingerprint"];

  v10 = [v3 copy];

  return v10;
}

+ (id)validityIntervalWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"ValidityStartDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [dictionaryCopy objectForKeyedSubscript:@"ValidityEndDate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = 0;
  if (v6)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v9];
  }

  return v10;
}

@end