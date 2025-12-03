@interface MAAutoAssetPushNotification
+ (id)pushReasonName:(int64_t)name;
- (MAAutoAssetPushNotification)initWithCoder:(id)coder;
- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)reason;
- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)reason forAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version;
- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)reason forAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version withUpdatePolicy:(id)policy;
- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)reason forAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version withUpdatePolicy:(id)policy withAdditional:(id)additional;
- (NSDictionary)historyRepresentation;
- (id)newAssetName;
- (id)newSummaryDictionary;
- (id)pushReasonName;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetPushNotification

- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)reason
{
  v12.receiver = self;
  v12.super_class = MAAutoAssetPushNotification;
  v4 = [(MAAutoAssetPushNotification *)&v12 init];
  v5 = v4;
  if (v4)
  {
    assetType = v4->_assetType;
    v4->_pushReason = reason;
    v4->_assetType = 0;

    assetSpecifier = v5->_assetSpecifier;
    v5->_assetSpecifier = 0;

    assetVersion = v5->_assetVersion;
    v5->_assetVersion = 0;

    autoUpdatePolicy = v5->_autoUpdatePolicy;
    v5->_autoUpdatePolicy = 0;

    additionalPushParameters = v5->_additionalPushParameters;
    v5->_additionalPushParameters = 0;
  }

  return v5;
}

- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)reason forAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version
{
  typeCopy = type;
  specifierCopy = specifier;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = MAAutoAssetPushNotification;
  v14 = [(MAAutoAssetPushNotification *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_pushReason = reason;
    objc_storeStrong(&v14->_assetType, type);
    objc_storeStrong(&v15->_assetSpecifier, specifier);
    objc_storeStrong(&v15->_assetVersion, version);
    autoUpdatePolicy = v15->_autoUpdatePolicy;
    v15->_autoUpdatePolicy = 0;

    additionalPushParameters = v15->_additionalPushParameters;
    v15->_additionalPushParameters = 0;
  }

  return v15;
}

- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)reason forAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version withUpdatePolicy:(id)policy
{
  typeCopy = type;
  specifierCopy = specifier;
  versionCopy = version;
  policyCopy = policy;
  v21.receiver = self;
  v21.super_class = MAAutoAssetPushNotification;
  v17 = [(MAAutoAssetPushNotification *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_pushReason = reason;
    objc_storeStrong(&v17->_assetType, type);
    objc_storeStrong(&v18->_assetSpecifier, specifier);
    objc_storeStrong(&v18->_assetVersion, version);
    objc_storeStrong(&v18->_autoUpdatePolicy, policy);
    additionalPushParameters = v18->_additionalPushParameters;
    v18->_additionalPushParameters = 0;
  }

  return v18;
}

- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)reason forAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version withUpdatePolicy:(id)policy withAdditional:(id)additional
{
  typeCopy = type;
  specifierCopy = specifier;
  versionCopy = version;
  policyCopy = policy;
  additionalCopy = additional;
  v23.receiver = self;
  v23.super_class = MAAutoAssetPushNotification;
  v18 = [(MAAutoAssetPushNotification *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_pushReason = reason;
    objc_storeStrong(&v18->_assetType, type);
    objc_storeStrong(&v19->_assetSpecifier, specifier);
    objc_storeStrong(&v19->_assetVersion, version);
    objc_storeStrong(&v19->_autoUpdatePolicy, policy);
    objc_storeStrong(&v19->_additionalPushParameters, additional);
  }

  return v19;
}

- (MAAutoAssetPushNotification)initWithCoder:(id)coder
{
  v22[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = MAAutoAssetPushNotification;
  v5 = [(MAAutoAssetPushNotification *)&v21 init];
  if (v5)
  {
    v5->_pushReason = [coderCopy decodeIntegerForKey:@"pushReason"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSpecifier"];
    assetSpecifier = v5->_assetSpecifier;
    v5->_assetSpecifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoUpdatePolicy"];
    autoUpdatePolicy = v5->_autoUpdatePolicy;
    v5->_autoUpdatePolicy = v12;

    v14 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v22[3] = objc_opt_class();
    v22[4] = objc_opt_class();
    v22[5] = objc_opt_class();
    v22[6] = objc_opt_class();
    v22[7] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:8];
    v16 = [v14 setWithArray:v15];

    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"additionalPushParameters"];
    additionalPushParameters = v5->_additionalPushParameters;
    v5->_additionalPushParameters = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[MAAutoAssetPushNotification pushReason](self forKey:{"pushReason"), @"pushReason"}];
  assetType = [(MAAutoAssetPushNotification *)self assetType];
  [coderCopy encodeObject:assetType forKey:@"assetType"];

  assetSpecifier = [(MAAutoAssetPushNotification *)self assetSpecifier];
  [coderCopy encodeObject:assetSpecifier forKey:@"assetSpecifier"];

  assetVersion = [(MAAutoAssetPushNotification *)self assetVersion];
  [coderCopy encodeObject:assetVersion forKey:@"assetVersion"];

  autoUpdatePolicy = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
  [coderCopy encodeObject:autoUpdatePolicy forKey:@"autoUpdatePolicy"];

  additionalPushParameters = [(MAAutoAssetPushNotification *)self additionalPushParameters];
  [coderCopy encodeObject:additionalPushParameters forKey:@"additionalPushParameters"];
}

- (id)newAssetName
{
  assetType = [(MAAutoAssetPushNotification *)self assetType];

  if (!assetType)
  {
    return &stru_1F0C1B388;
  }

  assetSpecifier = [(MAAutoAssetPushNotification *)self assetSpecifier];

  if (assetSpecifier)
  {
    assetVersion = [(MAAutoAssetPushNotification *)self assetVersion];

    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetType2 = [(MAAutoAssetPushNotification *)self assetType];
    assetSpecifier2 = [(MAAutoAssetPushNotification *)self assetSpecifier];
    v9 = assetSpecifier2;
    if (assetVersion)
    {
      assetVersion2 = [(MAAutoAssetPushNotification *)self assetVersion];
      v11 = [v6 initWithFormat:@"(%@|%@|%@)", assetType2, v9, assetVersion2];
    }

    else
    {
      v11 = [v6 initWithFormat:@"(%@|%@)", assetType2, assetSpecifier2];
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetType2 = [(MAAutoAssetPushNotification *)self assetType];
    v11 = [v12 initWithFormat:@"(%@)", assetType2];
  }

  return v11;
}

- (id)summary
{
  v4 = MEMORY[0x1E696AEC0];
  pushReasonName = [(MAAutoAssetPushNotification *)self pushReasonName];
  newAssetName = [(MAAutoAssetPushNotification *)self newAssetName];
  autoUpdatePolicy = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
  if (autoUpdatePolicy)
  {
    autoUpdatePolicy2 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
    summary = [autoUpdatePolicy2 summary];
  }

  else
  {
    summary = @"NONE";
  }

  additionalPushParameters = [(MAAutoAssetPushNotification *)self additionalPushParameters];
  v10 = @"PRESENT";
  if (!additionalPushParameters)
  {
    v10 = @"NONE";
  }

  v11 = [v4 stringWithFormat:@"%@%@|policy:%@|additional:%@", pushReasonName, newAssetName, summary, v10];

  if (autoUpdatePolicy)
  {
  }

  return v11;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  pushReasonName = [(MAAutoAssetPushNotification *)self pushReasonName];
  [v3 setSafeObject:pushReasonName forKey:@"pushReason"];

  newAssetName = [(MAAutoAssetPushNotification *)self newAssetName];
  [v3 setSafeObject:newAssetName forKey:@"assetName"];

  autoUpdatePolicy = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
  if (autoUpdatePolicy)
  {
    autoUpdatePolicy2 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
    newSummaryDictionary = [autoUpdatePolicy2 newSummaryDictionary];
    [v3 setSafeObject:newSummaryDictionary forKey:@"autoUpdatePolicy"];
  }

  else
  {
    autoUpdatePolicy2 = objc_alloc_init(MEMORY[0x1E695DF20]);
    [v3 setSafeObject:autoUpdatePolicy2 forKey:@"autoUpdatePolicy"];
  }

  additionalPushParameters = [(MAAutoAssetPushNotification *)self additionalPushParameters];
  if (additionalPushParameters)
  {
    additionalPushParameters2 = [(MAAutoAssetPushNotification *)self additionalPushParameters];
  }

  else
  {
    additionalPushParameters2 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v11 = additionalPushParameters2;
  [v3 setSafeObject:additionalPushParameters2 forKey:@"additionalPushParameters"];

  return v3;
}

- (id)pushReasonName
{
  pushReason = [(MAAutoAssetPushNotification *)self pushReason];

  return [MAAutoAssetPushNotification pushReasonName:pushReason];
}

+ (id)pushReasonName:(int64_t)name
{
  if (name > 5)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E74C9A10[name];
  }
}

- (NSDictionary)historyRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  assetType = [(MAAutoAssetPushNotification *)self assetType];

  if (assetType)
  {
    assetType2 = [(MAAutoAssetPushNotification *)self assetType];
    [dictionary setSafeObject:assetType2 forKey:@"assetType"];
  }

  assetSpecifier = [(MAAutoAssetPushNotification *)self assetSpecifier];

  if (assetSpecifier)
  {
    assetSpecifier2 = [(MAAutoAssetPushNotification *)self assetSpecifier];
    [dictionary setSafeObject:assetSpecifier2 forKey:@"assetSpecifier"];
  }

  pushReasonName = [(MAAutoAssetPushNotification *)self pushReasonName];

  if (pushReasonName)
  {
    pushReasonName2 = [(MAAutoAssetPushNotification *)self pushReasonName];
    [dictionary setSafeObject:pushReasonName2 forKey:@"pushReasonName"];
  }

  autoUpdatePolicy = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
  if (autoUpdatePolicy)
  {
    v11 = autoUpdatePolicy;
    autoUpdatePolicy2 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
    updatePolicyName = [autoUpdatePolicy2 updatePolicyName];

    if (updatePolicyName)
    {
      autoUpdatePolicy3 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
      updatePolicyName2 = [autoUpdatePolicy3 updatePolicyName];
      [dictionary setSafeObject:updatePolicyName2 forKey:@"autoUpdatePolicy"];
    }
  }

  assetVersion = [(MAAutoAssetPushNotification *)self assetVersion];

  if (assetVersion)
  {
    assetVersion2 = [(MAAutoAssetPushNotification *)self assetVersion];
    [dictionary setSafeObject:assetVersion2 forKey:@"assetVersion"];
  }

  v18 = [dictionary copy];

  return v18;
}

@end