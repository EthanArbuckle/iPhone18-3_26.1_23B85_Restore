@interface NTKControlComplication
+ (id)controlWithIdentity:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)containerBundleIdentifier;
- (NSString)extensionBundleIdentifier;
- (NTKControlComplication)initWithCoder:(id)a3;
- (id)_createUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4;
- (id)analyticsIdentifier;
- (id)appIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_addKeysToJSONDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKControlComplication

+ (id)controlWithIdentity:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithComplicationType:59];
  v6 = [v4 copy];

  v7 = v5[4];
  v5[4] = v6;

  v8 = [v5 _createUniqueIdentifier];
  [v5 setUniqueIdentifier:v8];

  return v5;
}

- (id)analyticsIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NTKReportingValueForComplication(self);
  v5 = [(NTKControlComplication *)self identity];
  v6 = [v5 extensionIdentity];
  v7 = [v6 extensionBundleIdentifier];
  v8 = [(NTKControlComplication *)self identity];
  v9 = [v8 kind];
  v10 = [v3 stringWithFormat:@"%@:%@:%@", v4, v7, v9];

  return v10;
}

- (id)_createUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v15 = [(NTKControlComplication *)self identity];
  v4 = [v15 extensionIdentity];
  v5 = [v4 containerBundleIdentifier];
  v6 = [(NTKControlComplication *)self identity];
  v7 = [v6 extensionIdentity];
  v8 = [v7 extensionBundleIdentifier];
  v9 = [(NTKControlComplication *)self identity];
  v10 = [v9 kind];
  v11 = [(NTKControlComplication *)self identity];
  v12 = [v11 intentReference];
  v13 = [v3 stringWithFormat:@"%@-%@-%@-%li", v5, v8, v10, objc_msgSend(v12, "stableHash")];

  return v13;
}

- (id)appIdentifier
{
  v2 = [(NTKControlComplication *)self identity];
  v3 = [v2 extensionIdentity];
  v4 = [v3 containerBundleIdentifier];

  return v4;
}

- (NSString)containerBundleIdentifier
{
  v2 = [(CHSControlIdentity *)self->_identity extensionIdentity];
  v3 = [v2 containerBundleIdentifier];

  return v3;
}

- (NSString)extensionBundleIdentifier
{
  v2 = [(CHSControlIdentity *)self->_identity extensionIdentity];
  v3 = [v2 extensionBundleIdentifier];

  return v3;
}

- (NTKControlComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKControlComplication;
  v5 = [(NTKComplication *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v8 = [(NTKControlComplication *)v5 _createUniqueIdentifier];
    [(NTKComplication *)v5 setUniqueIdentifier:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKControlComplication;
  v4 = a3;
  [(NTKThirdPartyComplication *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identity forKey:{@"identity", v5.receiver, v5.super_class}];
}

- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4
{
  v6 = a4;
  v31.receiver = self;
  v31.super_class = NTKControlComplication;
  v7 = [(NTKComplication *)&v31 _initWithComplicationType:a3 JSONDictionary:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"identity"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:@"NTKControlComplication dictionary is nil or not a dictionary"];
    }

    v9 = [v8 objectForKeyedSubscript:@"containerBundleIdentifier"];
    v10 = [v8 objectForKeyedSubscript:@"extensionBundleIdentifier"];
    v11 = [v8 objectForKeyedSubscript:@"kind"];
    v28 = v10;
    v12 = [objc_alloc(MEMORY[0x277CFA258]) initWithExtensionBundleIdentifier:v10 containerBundleIdentifier:v9 deviceIdentifier:0];
    v13 = [v8 objectForKeyedSubscript:@"intentReference"];
    v27 = v13;
    if (v13)
    {
      v14 = v11;
      v26 = v9;
      v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v13 options:0];
      if (!v15)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:@"NTKControlComplication failed to decode intent"];
      }

      v30 = 0;
      v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:&v30];
      v17 = v30;
      v18 = v17;
      if (!v16 && v17)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"NTKControlComplication failed to unarchive intent reference: %@", v17}];
      }

      v19 = v12;
      v20 = [objc_alloc(MEMORY[0x277CFA228]) initWithExtensionIdentity:v12 kind:v14 intentReference:v16];
      v21 = v7[4];
      v7[4] = v20;

      v9 = v26;
    }

    else
    {
      v22 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "encodedIntent was nil, creating CHSControlIdentity using nil intentReference.", buf, 2u);
      }

      v19 = v12;
      v14 = v11;
      v23 = [objc_alloc(MEMORY[0x277CFA228]) initWithExtensionIdentity:v12 kind:v11 intentReference:0];
      v15 = v7[4];
      v7[4] = v23;
    }

    if (!v28 || !v9 || !v14)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:@"CHSControlIdentity was created from JSON with missing values"];
    }

    if (!v7[4] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:@"NTKControlComplication: CHSControlIdentity is not defined or an incorrect class"];
    }

    v24 = [v7 _createUniqueIdentifier];
    [v7 setUniqueIdentifier:v24];
  }

  return v7;
}

- (void)_addKeysToJSONDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NTKControlComplication;
  [(NTKThirdPartyComplication *)&v21 _addKeysToJSONDictionary:v4];
  v5 = [(NTKControlComplication *)self identity];
  v6 = [v5 extensionIdentity];
  v7 = [v6 containerBundleIdentifier];
  [v4 setObject:v7 forKeyedSubscript:@"app"];

  v8 = objc_opt_new();
  v9 = [(CHSControlIdentity *)self->_identity extensionIdentity];
  v10 = [v9 containerBundleIdentifier];
  [v8 setObject:v10 forKeyedSubscript:@"containerBundleIdentifier"];

  v11 = [(CHSControlIdentity *)self->_identity extensionIdentity];
  v12 = [v11 extensionBundleIdentifier];
  [v8 setObject:v12 forKeyedSubscript:@"extensionBundleIdentifier"];

  v13 = [(CHSControlIdentity *)self->_identity kind];
  [v8 setObject:v13 forKeyedSubscript:@"kind"];

  v14 = [(CHSControlIdentity *)self->_identity intentReference];

  if (v14)
  {
    v15 = MEMORY[0x277CCAAB0];
    v16 = [(CHSControlIdentity *)self->_identity intentReference];
    v20 = 0;
    v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v20];
    v18 = v20;

    if (!v17 && v18)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:@"NTKControlComplication failed to encode intent"];
    }

    v19 = [v17 base64EncodedStringWithOptions:0];
    [v8 setObject:v19 forKeyedSubscript:@"intentReference"];
  }

  [v4 setObject:v8 forKeyedSubscript:@"identity"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = NTKControlComplication;
  v4 = [(NTKComplication *)&v11 description];
  v5 = [(CHSControlIdentity *)self->_identity extensionIdentity];
  v6 = [v5 extensionBundleIdentifier];
  v7 = [(CHSControlIdentity *)self->_identity kind];
  v8 = [(CHSControlIdentity *)self->_identity intentReference];
  v9 = [v3 stringWithFormat:@"%@ (%@, %@, %lli)", v4, v6, v7, objc_msgSend(v8, "stableHash")];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKControlComplication;
  v4 = [(NTKComplication *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 4, self->_identity);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[NTKControlComplication identity](self, "identity"), v5 = objc_claimAutoreleasedReturnValue(), [v4 identity], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    v10.receiver = self;
    v10.super_class = NTKControlComplication;
    v8 = [(NTKComplication *)&v10 isEqual:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end