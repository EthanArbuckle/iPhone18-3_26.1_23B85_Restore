@interface NTKControlComplication
+ (id)controlWithIdentity:(id)identity;
- (BOOL)isEqual:(id)equal;
- (NSString)containerBundleIdentifier;
- (NSString)extensionBundleIdentifier;
- (NTKControlComplication)initWithCoder:(id)coder;
- (id)_createUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary;
- (id)analyticsIdentifier;
- (id)appIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKControlComplication

+ (id)controlWithIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[self alloc] initWithComplicationType:59];
  v6 = [identityCopy copy];

  v7 = v5[4];
  v5[4] = v6;

  _createUniqueIdentifier = [v5 _createUniqueIdentifier];
  [v5 setUniqueIdentifier:_createUniqueIdentifier];

  return v5;
}

- (id)analyticsIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NTKReportingValueForComplication(self);
  identity = [(NTKControlComplication *)self identity];
  extensionIdentity = [identity extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  identity2 = [(NTKControlComplication *)self identity];
  kind = [identity2 kind];
  v10 = [v3 stringWithFormat:@"%@:%@:%@", v4, extensionBundleIdentifier, kind];

  return v10;
}

- (id)_createUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  identity = [(NTKControlComplication *)self identity];
  extensionIdentity = [identity extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  identity2 = [(NTKControlComplication *)self identity];
  extensionIdentity2 = [identity2 extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity2 extensionBundleIdentifier];
  identity3 = [(NTKControlComplication *)self identity];
  kind = [identity3 kind];
  identity4 = [(NTKControlComplication *)self identity];
  intentReference = [identity4 intentReference];
  v13 = [v3 stringWithFormat:@"%@-%@-%@-%li", containerBundleIdentifier, extensionBundleIdentifier, kind, objc_msgSend(intentReference, "stableHash")];

  return v13;
}

- (id)appIdentifier
{
  identity = [(NTKControlComplication *)self identity];
  extensionIdentity = [identity extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

  return containerBundleIdentifier;
}

- (NSString)containerBundleIdentifier
{
  extensionIdentity = [(CHSControlIdentity *)self->_identity extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

  return containerBundleIdentifier;
}

- (NSString)extensionBundleIdentifier
{
  extensionIdentity = [(CHSControlIdentity *)self->_identity extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];

  return extensionBundleIdentifier;
}

- (NTKControlComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NTKControlComplication;
  v5 = [(NTKComplication *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    _createUniqueIdentifier = [(NTKControlComplication *)v5 _createUniqueIdentifier];
    [(NTKComplication *)v5 setUniqueIdentifier:_createUniqueIdentifier];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NTKControlComplication;
  coderCopy = coder;
  [(NTKThirdPartyComplication *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identity forKey:{@"identity", v5.receiver, v5.super_class}];
}

- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = NTKControlComplication;
  v7 = [(NTKComplication *)&v31 _initWithComplicationType:type JSONDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"identity"];
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

    _createUniqueIdentifier = [v7 _createUniqueIdentifier];
    [v7 setUniqueIdentifier:_createUniqueIdentifier];
  }

  return v7;
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = NTKControlComplication;
  [(NTKThirdPartyComplication *)&v21 _addKeysToJSONDictionary:dictionaryCopy];
  identity = [(NTKControlComplication *)self identity];
  extensionIdentity = [identity extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  [dictionaryCopy setObject:containerBundleIdentifier forKeyedSubscript:@"app"];

  v8 = objc_opt_new();
  extensionIdentity2 = [(CHSControlIdentity *)self->_identity extensionIdentity];
  containerBundleIdentifier2 = [extensionIdentity2 containerBundleIdentifier];
  [v8 setObject:containerBundleIdentifier2 forKeyedSubscript:@"containerBundleIdentifier"];

  extensionIdentity3 = [(CHSControlIdentity *)self->_identity extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity3 extensionBundleIdentifier];
  [v8 setObject:extensionBundleIdentifier forKeyedSubscript:@"extensionBundleIdentifier"];

  kind = [(CHSControlIdentity *)self->_identity kind];
  [v8 setObject:kind forKeyedSubscript:@"kind"];

  intentReference = [(CHSControlIdentity *)self->_identity intentReference];

  if (intentReference)
  {
    v15 = MEMORY[0x277CCAAB0];
    intentReference2 = [(CHSControlIdentity *)self->_identity intentReference];
    v20 = 0;
    v17 = [v15 archivedDataWithRootObject:intentReference2 requiringSecureCoding:1 error:&v20];
    v18 = v20;

    if (!v17 && v18)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:@"NTKControlComplication failed to encode intent"];
    }

    v19 = [v17 base64EncodedStringWithOptions:0];
    [v8 setObject:v19 forKeyedSubscript:@"intentReference"];
  }

  [dictionaryCopy setObject:v8 forKeyedSubscript:@"identity"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = NTKControlComplication;
  v4 = [(NTKComplication *)&v11 description];
  extensionIdentity = [(CHSControlIdentity *)self->_identity extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  kind = [(CHSControlIdentity *)self->_identity kind];
  intentReference = [(CHSControlIdentity *)self->_identity intentReference];
  v9 = [v3 stringWithFormat:@"%@ (%@, %@, %lli)", v4, extensionBundleIdentifier, kind, objc_msgSend(intentReference, "stableHash")];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKControlComplication;
  v4 = [(NTKComplication *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 4, self->_identity);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[NTKControlComplication identity](self, "identity"), v5 = objc_claimAutoreleasedReturnValue(), [equalCopy identity], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    v10.receiver = self;
    v10.super_class = NTKControlComplication;
    v8 = [(NTKComplication *)&v10 isEqual:equalCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end