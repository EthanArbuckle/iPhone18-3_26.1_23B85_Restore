@interface _DPDediscoDonation
+ (BOOL)defaultValueForKey:(id)a3;
+ (id)requiredClasses;
- (BOOL)isFeatureEnabled:(id)a3 withError:(id *)a4;
- (BOOL)isTelemetryAllowed;
- (_DPDediscoDonation)initWithCoder:(id)a3;
- (_DPDediscoDonation)initWithKey:(id)a3 share1:(id)a4 share2:(id)a5 dimension:(int64_t)a6 metadata:(id)a7 serverAlgorithm:(id)a8 algorithmParameters:(id)a9;
- (id)getHelperServerName;
- (id)getLeaderServerName;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DPDediscoDonation

- (_DPDediscoDonation)initWithKey:(id)a3 share1:(id)a4 share2:(id)a5 dimension:(int64_t)a6 metadata:(id)a7 serverAlgorithm:(id)a8 algorithmParameters:(id)a9
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v33.receiver = self;
  v33.super_class = _DPDediscoDonation;
  v19 = [(_DPDediscoDonation *)&v33 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_key, a3);
    objc_storeStrong(&v20->_share1, a4);
    objc_storeStrong(&v20->_share2, a5);
    v20->_dimension = a6;
    v21 = [v16 objectForKeyedSubscript:@"PrivatizationAlgorithmCache"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v23 = [v16 objectForKeyedSubscript:@"PrivatizationAlgorithmCache"];
      v24 = [v23 copy];

      v17 = v24;
    }

    v25 = [v16 objectForKeyedSubscript:@"PrivatizationAlgorithmParametersCache"];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if (v26)
    {
      v27 = [v16 objectForKeyedSubscript:@"PrivatizationAlgorithmParametersCache"];
      v28 = [v27 copy];

      v18 = v28;
    }

    objc_storeStrong(&v20->_metadata, a7);
    objc_storeStrong(&v20->_serverAlgorithm, v17);
    objc_storeStrong(&v20->_algorithmParameters, v18);
  }

  return v20;
}

+ (id)requiredClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
}

- (_DPDediscoDonation)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"share1"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"share2"];
  v18 = [v3 decodeInt64ForKey:@"dimension"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"serverAlgorithm"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"metadata"];
  v15 = [v3 decodeObjectOfClasses:v13 forKey:@"algorithmParameters"];

  v16 = [(_DPDediscoDonation *)self initWithKey:v20 share1:v19 share2:v4 dimension:v18 metadata:v14 serverAlgorithm:v5 algorithmParameters:v15];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_DPDediscoDonation *)self key];
  [v4 encodeObject:v5 forKey:@"key"];

  v6 = [(_DPDediscoDonation *)self share1];
  [v4 encodeObject:v6 forKey:@"share1"];

  v7 = [(_DPDediscoDonation *)self share2];
  [v4 encodeObject:v7 forKey:@"share2"];

  [v4 encodeInt64:-[_DPDediscoDonation dimension](self forKey:{"dimension"), @"dimension"}];
  v8 = [(_DPDediscoDonation *)self metadata];
  [v4 encodeObject:v8 forKey:@"metadata"];

  v9 = [(_DPDediscoDonation *)self serverAlgorithm];
  [v4 encodeObject:v9 forKey:@"serverAlgorithm"];

  v10 = [(_DPDediscoDonation *)self algorithmParameters];
  [v4 encodeObject:v10 forKey:@"algorithmParameters"];
}

+ (BOOL)defaultValueForKey:(id)a3
{
  v3 = defaultValueForKey__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[_DPDediscoDonation(TaskConfig) defaultValueForKey:];
  }

  v5 = [defaultValueForKey__defaultValues objectForKeyedSubscript:v4];

  v6 = [v5 BOOLValue];
  return v6;
}

- (id)getLeaderServerName
{
  v2 = [(_DPDediscoDonation *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"DediscoTaskConfig"];

  if (v3 && ([v3 objectForKeyedSubscript:@"DediscoServerConfiguration"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 objectForKeyedSubscript:@"Leader"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getHelperServerName
{
  v2 = [(_DPDediscoDonation *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"DediscoTaskConfig"];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"DediscoServerConfiguration"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"Helpers"];
      v7 = v6;
      if (v6 && [v6 count])
      {
        v8 = [v7 objectAtIndexedSubscript:0];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isFeatureEnabled:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(_DPDediscoDonation *)self metadata];
  v8 = [v7 objectForKeyedSubscript:@"DediscoTaskConfig"];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 objectForKeyedSubscript:@"DediscoTaskConfig"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      IsV2 = _DPMetadataIsV2(v7);
      v13 = [v7 objectForKeyedSubscript:@"DediscoTaskConfig"];
      v14 = [v13 objectForKeyedSubscript:@"Features"];

      if (v14)
      {
        v15 = [v13 objectForKeyedSubscript:@"Features"];
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();

        if (v16)
        {
          v17 = [v13 objectForKeyedSubscript:@"Features"];
          v18 = [v17 objectForKeyedSubscript:v6];

          if (v18)
          {
            v19 = [v17 objectForKeyedSubscript:v6];
            objc_opt_class();
            v20 = objc_opt_isKindOfClass();

            if (v20)
            {
              v21 = [v17 objectForKeyedSubscript:v6];
              v22 = [v21 BOOLValue];

LABEL_25:
              goto LABEL_26;
            }

            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incorrect data type for %@.%@.%@ - expect BOOLean", @"DediscoTaskConfig", @"Features", v6];
            if (a4)
            {
              *a4 = [_DPDediscoError errorWithCode:400 underlyingError:0 description:v25];
            }

            v26 = +[_DPLog service];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [_DPSemanticVersion initWithString:v25 error:v26];
            }
          }

          else if (IsV2)
          {
            v22 = [objc_opt_class() defaultValueForKey:v6];
            goto LABEL_25;
          }

          v22 = 0;
          goto LABEL_25;
        }

        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incorrect data type for %@.%@ - expect dictionary", @"DediscoTaskConfig", @"Features"];
        if (a4)
        {
          *a4 = [_DPDediscoError errorWithCode:400 underlyingError:0 description:v23];
        }

        v24 = +[_DPLog service];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_DPSemanticVersion initWithString:v23 error:v24];
        }
      }

      else if (IsV2)
      {
        v22 = [objc_opt_class() defaultValueForKey:v6];
LABEL_26:

        goto LABEL_27;
      }

      v22 = 0;
      goto LABEL_26;
    }
  }

  v22 = 0;
LABEL_27:

  return v22;
}

- (BOOL)isTelemetryAllowed
{
  v2 = [(_DPDediscoDonation *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"telemetryAllowed"];
  v4 = ([v3 BOOLValue] & 1) != 0 || +[_DPDeviceInfo isInternalBuild](_DPDeviceInfo, "isInternalBuild");

  return v4;
}

@end