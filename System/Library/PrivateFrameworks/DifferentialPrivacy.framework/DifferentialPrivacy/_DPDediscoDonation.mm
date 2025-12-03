@interface _DPDediscoDonation
+ (BOOL)defaultValueForKey:(id)key;
+ (id)requiredClasses;
- (BOOL)isFeatureEnabled:(id)enabled withError:(id *)error;
- (BOOL)isTelemetryAllowed;
- (_DPDediscoDonation)initWithCoder:(id)coder;
- (_DPDediscoDonation)initWithKey:(id)key share1:(id)share1 share2:(id)share2 dimension:(int64_t)dimension metadata:(id)metadata serverAlgorithm:(id)algorithm algorithmParameters:(id)parameters;
- (id)getHelperServerName;
- (id)getLeaderServerName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPDediscoDonation

- (_DPDediscoDonation)initWithKey:(id)key share1:(id)share1 share2:(id)share2 dimension:(int64_t)dimension metadata:(id)metadata serverAlgorithm:(id)algorithm algorithmParameters:(id)parameters
{
  keyCopy = key;
  share1Copy = share1;
  share2Copy = share2;
  metadataCopy = metadata;
  algorithmCopy = algorithm;
  parametersCopy = parameters;
  v33.receiver = self;
  v33.super_class = _DPDediscoDonation;
  v19 = [(_DPDediscoDonation *)&v33 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_key, key);
    objc_storeStrong(&v20->_share1, share1);
    objc_storeStrong(&v20->_share2, share2);
    v20->_dimension = dimension;
    v21 = [metadataCopy objectForKeyedSubscript:@"PrivatizationAlgorithmCache"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v23 = [metadataCopy objectForKeyedSubscript:@"PrivatizationAlgorithmCache"];
      v24 = [v23 copy];

      algorithmCopy = v24;
    }

    v25 = [metadataCopy objectForKeyedSubscript:@"PrivatizationAlgorithmParametersCache"];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if (v26)
    {
      v27 = [metadataCopy objectForKeyedSubscript:@"PrivatizationAlgorithmParametersCache"];
      v28 = [v27 copy];

      parametersCopy = v28;
    }

    objc_storeStrong(&v20->_metadata, metadata);
    objc_storeStrong(&v20->_serverAlgorithm, algorithmCopy);
    objc_storeStrong(&v20->_algorithmParameters, parametersCopy);
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

- (_DPDediscoDonation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"share1"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"share2"];
  v18 = [coderCopy decodeInt64ForKey:@"dimension"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverAlgorithm"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"metadata"];
  v15 = [coderCopy decodeObjectOfClasses:v13 forKey:@"algorithmParameters"];

  v16 = [(_DPDediscoDonation *)self initWithKey:v20 share1:v19 share2:v4 dimension:v18 metadata:v14 serverAlgorithm:v5 algorithmParameters:v15];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_DPDediscoDonation *)self key];
  [coderCopy encodeObject:v5 forKey:@"key"];

  share1 = [(_DPDediscoDonation *)self share1];
  [coderCopy encodeObject:share1 forKey:@"share1"];

  share2 = [(_DPDediscoDonation *)self share2];
  [coderCopy encodeObject:share2 forKey:@"share2"];

  [coderCopy encodeInt64:-[_DPDediscoDonation dimension](self forKey:{"dimension"), @"dimension"}];
  metadata = [(_DPDediscoDonation *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];

  serverAlgorithm = [(_DPDediscoDonation *)self serverAlgorithm];
  [coderCopy encodeObject:serverAlgorithm forKey:@"serverAlgorithm"];

  algorithmParameters = [(_DPDediscoDonation *)self algorithmParameters];
  [coderCopy encodeObject:algorithmParameters forKey:@"algorithmParameters"];
}

+ (BOOL)defaultValueForKey:(id)key
{
  v3 = defaultValueForKey__onceToken;
  keyCopy = key;
  if (v3 != -1)
  {
    +[_DPDediscoDonation(TaskConfig) defaultValueForKey:];
  }

  v5 = [defaultValueForKey__defaultValues objectForKeyedSubscript:keyCopy];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (id)getLeaderServerName
{
  metadata = [(_DPDediscoDonation *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"DediscoTaskConfig"];

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
  metadata = [(_DPDediscoDonation *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"DediscoTaskConfig"];

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

- (BOOL)isFeatureEnabled:(id)enabled withError:(id *)error
{
  enabledCopy = enabled;
  metadata = [(_DPDediscoDonation *)self metadata];
  v8 = [metadata objectForKeyedSubscript:@"DediscoTaskConfig"];
  if (v8)
  {
    v9 = v8;
    v10 = [metadata objectForKeyedSubscript:@"DediscoTaskConfig"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      IsV2 = _DPMetadataIsV2(metadata);
      v13 = [metadata objectForKeyedSubscript:@"DediscoTaskConfig"];
      v14 = [v13 objectForKeyedSubscript:@"Features"];

      if (v14)
      {
        v15 = [v13 objectForKeyedSubscript:@"Features"];
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();

        if (v16)
        {
          v17 = [v13 objectForKeyedSubscript:@"Features"];
          v18 = [v17 objectForKeyedSubscript:enabledCopy];

          if (v18)
          {
            v19 = [v17 objectForKeyedSubscript:enabledCopy];
            objc_opt_class();
            v20 = objc_opt_isKindOfClass();

            if (v20)
            {
              v21 = [v17 objectForKeyedSubscript:enabledCopy];
              bOOLValue = [v21 BOOLValue];

LABEL_25:
              goto LABEL_26;
            }

            enabledCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Incorrect data type for %@.%@.%@ - expect BOOLean", @"DediscoTaskConfig", @"Features", enabledCopy];
            if (error)
            {
              *error = [_DPDediscoError errorWithCode:400 underlyingError:0 description:enabledCopy];
            }

            v26 = +[_DPLog service];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [_DPSemanticVersion initWithString:enabledCopy error:v26];
            }
          }

          else if (IsV2)
          {
            bOOLValue = [objc_opt_class() defaultValueForKey:enabledCopy];
            goto LABEL_25;
          }

          bOOLValue = 0;
          goto LABEL_25;
        }

        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incorrect data type for %@.%@ - expect dictionary", @"DediscoTaskConfig", @"Features"];
        if (error)
        {
          *error = [_DPDediscoError errorWithCode:400 underlyingError:0 description:v23];
        }

        v24 = +[_DPLog service];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_DPSemanticVersion initWithString:v23 error:v24];
        }
      }

      else if (IsV2)
      {
        bOOLValue = [objc_opt_class() defaultValueForKey:enabledCopy];
LABEL_26:

        goto LABEL_27;
      }

      bOOLValue = 0;
      goto LABEL_26;
    }
  }

  bOOLValue = 0;
LABEL_27:

  return bOOLValue;
}

- (BOOL)isTelemetryAllowed
{
  metadata = [(_DPDediscoDonation *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"telemetryAllowed"];
  v4 = ([v3 BOOLValue] & 1) != 0 || +[_DPDeviceInfo isInternalBuild](_DPDeviceInfo, "isInternalBuild");

  return v4;
}

@end