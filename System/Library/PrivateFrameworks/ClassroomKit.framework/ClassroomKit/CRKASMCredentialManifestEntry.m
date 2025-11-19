@interface CRKASMCredentialManifestEntry
+ (id)validityIntervalWithDictionary:(id)a3;
- (BOOL)isFullyPopulated;
- (CRKASMCredentialManifestEntry)initWithDictionary:(id)a3;
- (CRKASMCredentialManifestEntry)initWithUserIdentifier:(id)a3 validityInterval:(id)a4 fingerprint:(id)a5;
- (NSString)stringValue;
- (id)dictionaryValue;
@end

@implementation CRKASMCredentialManifestEntry

- (CRKASMCredentialManifestEntry)initWithUserIdentifier:(id)a3 validityInterval:(id)a4 fingerprint:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CRKASMCredentialManifestEntry;
  v11 = [(CRKASMCredentialManifestEntry *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    userIdentifier = v11->_userIdentifier;
    v11->_userIdentifier = v12;

    objc_storeStrong(&v11->_validityInterval, a4);
    v14 = [v10 copy];
    fingerprint = v11->_fingerprint;
    v11->_fingerprint = v14;
  }

  return v11;
}

- (BOOL)isFullyPopulated
{
  v3 = [(CRKASMCredentialManifestEntry *)self userIdentifier];
  if (v3)
  {
    v4 = [(CRKASMCredentialManifestEntry *)self validityInterval];
    if (v4)
    {
      v5 = [(CRKASMCredentialManifestEntry *)self fingerprint];
      v6 = v5 != 0;
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
  v4 = [(CRKASMCredentialManifestEntry *)self userIdentifier];
  v5 = [(CRKASMCredentialManifestEntry *)self validityInterval];
  v6 = [(CRKASMCredentialManifestEntry *)self fingerprint];
  v7 = [v3 stringWithFormat:@"{ userIdentifier = %@, validityInterval = %@, fingerprint = %@ }", v4, v5, v6];

  return v7;
}

- (CRKASMCredentialManifestEntry)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"UserIdentifier"];
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

  v8 = [objc_opt_class() validityIntervalWithDictionary:v4];
  v9 = [v4 objectForKeyedSubscript:@"Fingerprint"];

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
  v4 = [(CRKASMCredentialManifestEntry *)self userIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"UserIdentifier"];

  v5 = [(CRKASMCredentialManifestEntry *)self validityInterval];
  v6 = [v5 startDate];
  [v3 setObject:v6 forKeyedSubscript:@"ValidityStartDate"];

  v7 = [(CRKASMCredentialManifestEntry *)self validityInterval];
  v8 = [v7 endDate];
  [v3 setObject:v8 forKeyedSubscript:@"ValidityEndDate"];

  v9 = [(CRKASMCredentialManifestEntry *)self fingerprint];
  [v3 setObject:v9 forKeyedSubscript:@"Fingerprint"];

  v10 = [v3 copy];

  return v10;
}

+ (id)validityIntervalWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"ValidityStartDate"];
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

  v7 = [v3 objectForKeyedSubscript:@"ValidityEndDate"];

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