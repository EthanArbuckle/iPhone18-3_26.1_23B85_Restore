@interface MAAutoAssetPushNotification
+ (id)pushReasonName:(int64_t)a3;
- (MAAutoAssetPushNotification)initWithCoder:(id)a3;
- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)a3;
- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)a3 forAssetType:(id)a4 withAssetSpecifier:(id)a5 matchingAssetVersion:(id)a6;
- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)a3 forAssetType:(id)a4 withAssetSpecifier:(id)a5 matchingAssetVersion:(id)a6 withUpdatePolicy:(id)a7;
- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)a3 forAssetType:(id)a4 withAssetSpecifier:(id)a5 matchingAssetVersion:(id)a6 withUpdatePolicy:(id)a7 withAdditional:(id)a8;
- (NSDictionary)historyRepresentation;
- (id)newAssetName;
- (id)newSummaryDictionary;
- (id)pushReasonName;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetPushNotification

- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = MAAutoAssetPushNotification;
  v4 = [(MAAutoAssetPushNotification *)&v12 init];
  v5 = v4;
  if (v4)
  {
    assetType = v4->_assetType;
    v4->_pushReason = a3;
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

- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)a3 forAssetType:(id)a4 withAssetSpecifier:(id)a5 matchingAssetVersion:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MAAutoAssetPushNotification;
  v14 = [(MAAutoAssetPushNotification *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_pushReason = a3;
    objc_storeStrong(&v14->_assetType, a4);
    objc_storeStrong(&v15->_assetSpecifier, a5);
    objc_storeStrong(&v15->_assetVersion, a6);
    autoUpdatePolicy = v15->_autoUpdatePolicy;
    v15->_autoUpdatePolicy = 0;

    additionalPushParameters = v15->_additionalPushParameters;
    v15->_additionalPushParameters = 0;
  }

  return v15;
}

- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)a3 forAssetType:(id)a4 withAssetSpecifier:(id)a5 matchingAssetVersion:(id)a6 withUpdatePolicy:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = MAAutoAssetPushNotification;
  v17 = [(MAAutoAssetPushNotification *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_pushReason = a3;
    objc_storeStrong(&v17->_assetType, a4);
    objc_storeStrong(&v18->_assetSpecifier, a5);
    objc_storeStrong(&v18->_assetVersion, a6);
    objc_storeStrong(&v18->_autoUpdatePolicy, a7);
    additionalPushParameters = v18->_additionalPushParameters;
    v18->_additionalPushParameters = 0;
  }

  return v18;
}

- (MAAutoAssetPushNotification)initWithPushReason:(int64_t)a3 forAssetType:(id)a4 withAssetSpecifier:(id)a5 matchingAssetVersion:(id)a6 withUpdatePolicy:(id)a7 withAdditional:(id)a8
{
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = MAAutoAssetPushNotification;
  v18 = [(MAAutoAssetPushNotification *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_pushReason = a3;
    objc_storeStrong(&v18->_assetType, a4);
    objc_storeStrong(&v19->_assetSpecifier, a5);
    objc_storeStrong(&v19->_assetVersion, a6);
    objc_storeStrong(&v19->_autoUpdatePolicy, a7);
    objc_storeStrong(&v19->_additionalPushParameters, a8);
  }

  return v19;
}

- (MAAutoAssetPushNotification)initWithCoder:(id)a3
{
  v22[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MAAutoAssetPushNotification;
  v5 = [(MAAutoAssetPushNotification *)&v21 init];
  if (v5)
  {
    v5->_pushReason = [v4 decodeIntegerForKey:@"pushReason"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSpecifier"];
    assetSpecifier = v5->_assetSpecifier;
    v5->_assetSpecifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoUpdatePolicy"];
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

    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"additionalPushParameters"];
    additionalPushParameters = v5->_additionalPushParameters;
    v5->_additionalPushParameters = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[MAAutoAssetPushNotification pushReason](self forKey:{"pushReason"), @"pushReason"}];
  v5 = [(MAAutoAssetPushNotification *)self assetType];
  [v4 encodeObject:v5 forKey:@"assetType"];

  v6 = [(MAAutoAssetPushNotification *)self assetSpecifier];
  [v4 encodeObject:v6 forKey:@"assetSpecifier"];

  v7 = [(MAAutoAssetPushNotification *)self assetVersion];
  [v4 encodeObject:v7 forKey:@"assetVersion"];

  v8 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
  [v4 encodeObject:v8 forKey:@"autoUpdatePolicy"];

  v9 = [(MAAutoAssetPushNotification *)self additionalPushParameters];
  [v4 encodeObject:v9 forKey:@"additionalPushParameters"];
}

- (id)newAssetName
{
  v3 = [(MAAutoAssetPushNotification *)self assetType];

  if (!v3)
  {
    return &stru_1F0C1B388;
  }

  v4 = [(MAAutoAssetPushNotification *)self assetSpecifier];

  if (v4)
  {
    v5 = [(MAAutoAssetPushNotification *)self assetVersion];

    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [(MAAutoAssetPushNotification *)self assetType];
    v8 = [(MAAutoAssetPushNotification *)self assetSpecifier];
    v9 = v8;
    if (v5)
    {
      v10 = [(MAAutoAssetPushNotification *)self assetVersion];
      v11 = [v6 initWithFormat:@"(%@|%@|%@)", v7, v9, v10];
    }

    else
    {
      v11 = [v6 initWithFormat:@"(%@|%@)", v7, v8];
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [(MAAutoAssetPushNotification *)self assetType];
    v11 = [v12 initWithFormat:@"(%@)", v7];
  }

  return v11;
}

- (id)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(MAAutoAssetPushNotification *)self pushReasonName];
  v6 = [(MAAutoAssetPushNotification *)self newAssetName];
  v7 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
  if (v7)
  {
    v2 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
    v8 = [v2 summary];
  }

  else
  {
    v8 = @"NONE";
  }

  v9 = [(MAAutoAssetPushNotification *)self additionalPushParameters];
  v10 = @"PRESENT";
  if (!v9)
  {
    v10 = @"NONE";
  }

  v11 = [v4 stringWithFormat:@"%@%@|policy:%@|additional:%@", v5, v6, v8, v10];

  if (v7)
  {
  }

  return v11;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MAAutoAssetPushNotification *)self pushReasonName];
  [v3 setSafeObject:v4 forKey:@"pushReason"];

  v5 = [(MAAutoAssetPushNotification *)self newAssetName];
  [v3 setSafeObject:v5 forKey:@"assetName"];

  v6 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
  if (v6)
  {
    v7 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
    v8 = [v7 newSummaryDictionary];
    [v3 setSafeObject:v8 forKey:@"autoUpdatePolicy"];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF20]);
    [v3 setSafeObject:v7 forKey:@"autoUpdatePolicy"];
  }

  v9 = [(MAAutoAssetPushNotification *)self additionalPushParameters];
  if (v9)
  {
    v10 = [(MAAutoAssetPushNotification *)self additionalPushParameters];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v11 = v10;
  [v3 setSafeObject:v10 forKey:@"additionalPushParameters"];

  return v3;
}

- (id)pushReasonName
{
  v2 = [(MAAutoAssetPushNotification *)self pushReason];

  return [MAAutoAssetPushNotification pushReasonName:v2];
}

+ (id)pushReasonName:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E74C9A10[a3];
  }
}

- (NSDictionary)historyRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MAAutoAssetPushNotification *)self assetType];

  if (v4)
  {
    v5 = [(MAAutoAssetPushNotification *)self assetType];
    [v3 setSafeObject:v5 forKey:@"assetType"];
  }

  v6 = [(MAAutoAssetPushNotification *)self assetSpecifier];

  if (v6)
  {
    v7 = [(MAAutoAssetPushNotification *)self assetSpecifier];
    [v3 setSafeObject:v7 forKey:@"assetSpecifier"];
  }

  v8 = [(MAAutoAssetPushNotification *)self pushReasonName];

  if (v8)
  {
    v9 = [(MAAutoAssetPushNotification *)self pushReasonName];
    [v3 setSafeObject:v9 forKey:@"pushReasonName"];
  }

  v10 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
  if (v10)
  {
    v11 = v10;
    v12 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
    v13 = [v12 updatePolicyName];

    if (v13)
    {
      v14 = [(MAAutoAssetPushNotification *)self autoUpdatePolicy];
      v15 = [v14 updatePolicyName];
      [v3 setSafeObject:v15 forKey:@"autoUpdatePolicy"];
    }
  }

  v16 = [(MAAutoAssetPushNotification *)self assetVersion];

  if (v16)
  {
    v17 = [(MAAutoAssetPushNotification *)self assetVersion];
    [v3 setSafeObject:v17 forKey:@"assetVersion"];
  }

  v18 = [v3 copy];

  return v18;
}

@end