@interface NUChannelControlFormat
+ (id)controlFormatForRect;
+ (id)controlFormatWithSchema:(id)a3;
+ (id)controlFormatWithSetting:(id)a3;
- (BOOL)isArray;
- (BOOL)isCompatibleWithChannelFormat:(id)a3;
- (BOOL)isEqualToChannelFormat:(id)a3;
- (BOOL)requiresSubchannelDataForKey:(id)a3;
- (BOOL)validateChannelData:(id)a3 error:(id *)a4;
- (NUChannelControlFormat)init;
- (NUChannelControlFormat)initWithControlType:(int64_t)a3 dataModel:(id)a4;
- (id)arrayItemFormat;
- (id)debugDescription;
- (id)description;
- (id)elementChannel;
- (id)subchannelFormatForKey:(id)a3;
- (id)subchannelKeys;
- (int64_t)expressionType;
- (unint64_t)hash;
@end

@implementation NUChannelControlFormat

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUChannelControlFormat *)self controlType];
  v6 = @"???";
  if (v5 == 2)
  {
    v6 = @"schema";
  }

  if (v5 == 1)
  {
    v6 = @"setting";
  }

  v7 = v6;
  v8 = [(NUChannelControlFormat *)self dataModel];
  v9 = [v8 debugDescription];
  v10 = [v3 stringWithFormat:@"<%@:%p type:%@ model:%@>", v4, self, v7, v9];

  return v10;
}

- (id)description
{
  v3 = [(NUChannelControlFormat *)self controlType];
  if (v3 == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(NUModel *)self->_dataModel type];
    if ((v9 - 1) > 6)
    {
      v10 = @"???";
    }

    else
    {
      v10 = off_1E810B208[v9 - 1];
    }

    v5 = v10;
    v7 = [v8 stringWithFormat:@"setting:%@", v5];
  }

  else
  {
    if (v3 != 2)
    {
      v7 = @"???";
      goto LABEL_10;
    }

    v4 = MEMORY[0x1E696AEC0];
    v5 = [(NUModel *)self->_dataModel identifier];
    v6 = [(__CFString *)v5 name];
    v7 = [v4 stringWithFormat:@"schema:%@", v6];
  }

LABEL_10:

  return v7;
}

- (BOOL)validateChannelData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = NUChannelControlFormat;
  if ([(NUChannelFormat *)&v12 validateChannelData:v6 error:a4])
  {
    v7 = v6;
    v8 = [(NUChannelControlFormat *)self dataModel];
    v9 = [v7 value];

    v10 = [v8 validate:v9 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isCompatibleWithChannelFormat:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v4 controlType];
  if (v5 != [(NUChannelControlFormat *)self controlType])
  {
    goto LABEL_9;
  }

  v6 = [(NUChannelControlFormat *)self controlType];
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v7 = [(NUChannelControlFormat *)self dataModel];
      v8 = [v4 dataModel];
      if ([v7 isEqual:v8])
      {
LABEL_6:
        v9 = 1;
LABEL_16:

        goto LABEL_10;
      }

      v15 = +[NUSourceSchema sharedSourceSchema];
      if ([v7 isEqual:v15])
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v9 = 0;
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v10 = [(NUChannelControlFormat *)self dataModel];
  v11 = [v10 type];
  v12 = [v4 dataModel];
  v13 = [v12 type];

  if (v11 != v13)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

LABEL_8:
  v9 = 1;
LABEL_10:

  return v9;
}

- (BOOL)isEqualToChannelFormat:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v4 controlType], v5 == -[NUChannelControlFormat controlType](self, "controlType")))
  {
    v6 = [v4 dataModel];
    v7 = [(NUChannelControlFormat *)self dataModel];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = NUChannelControlFormat;
  v3 = [(NUChannelFormat *)&v6 hash];
  v4 = 0x98D1398391 * self->_controlType;
  return v4 ^ v3 ^ (0xD97BDCE34BLL * [(NUModel *)self->_dataModel hash]);
}

- (int64_t)expressionType
{
  if ([(NUChannelControlFormat *)self controlType]!= 1)
  {
    return 4;
  }

  v3 = [(NUChannelControlFormat *)self dataModel];
  v4 = [v3 type];
  v5 = 3;
  if (v4 != 3)
  {
    v5 = 4;
  }

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)elementChannel
{
  v3 = [NUChannelElementFormat alloc];
  v4 = [(NUChannelControlFormat *)self arrayItemFormat];
  v5 = [(NUChannelElementFormat *)v3 initWithRepresentedFormat:v4];

  v6 = [[NUChannel alloc] initWithName:@"$item" format:v5];

  return v6;
}

- (id)arrayItemFormat
{
  if ([(NUChannelControlFormat *)self controlType]== 2)
  {
    v3 = [(NUChannelControlFormat *)self dataModel];
    if ([v3 type] == 2 && (objc_msgSend(v3, "contents"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5 == 1))
    {
      v6 = [v3 contents];
      v7 = [v6 allKeys];
      v8 = [v7 firstObject];

      v9 = [(NUChannelControlFormat *)self subchannelFormatForKey:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isArray
{
  if ([(NUChannelControlFormat *)self controlType]== 2)
  {
    v3 = [(NUChannelControlFormat *)self dataModel];
    if ([v3 type] == 2)
    {
      v4 = [v3 contents];
      v5 = [v4 count];

      if (v5 == 1)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

- (BOOL)requiresSubchannelDataForKey:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelControlFormat *)self controlType];
  if (v5 == 1)
  {
    goto LABEL_14;
  }

  if (v5 == 2)
  {
    v6 = [(NUChannelControlFormat *)self dataModel];
    v7 = [v6 type];
    v8 = 0;
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 != 1)
        {
LABEL_13:

LABEL_14:
          v6 = [(NUChannelControlFormat *)self dataModel];
          v8 = [v6 isRequired];
          goto LABEL_15;
        }

LABEL_11:
        v11 = [v6 settings];
        v9 = [v11 objectForKeyedSubscript:v4];

        v10 = [v9 isRequired];
        goto LABEL_12;
      }
    }

    else if (v7 != 2)
    {
      if (v7 != 3)
      {
        if (v7 == 4)
        {
          v9 = [v6 requiredContents];
          v10 = [v9 containsObject:v4];
LABEL_12:
          v8 = v10;

          goto LABEL_15;
        }

        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_15:

    goto LABEL_16;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (id)subchannelFormatForKey:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NUChannelControlFormat *)self controlType];
  if (v5 == 1)
  {
    v6 = [(NUChannelControlFormat *)self dataModel];
    v13 = [v6 type];
    if (v13 <= 7)
    {
      if (v13 == 4)
      {
        v15 = [v6 properties];
LABEL_29:
        v18 = v15;
        v10 = [v15 objectForKeyedSubscript:v4];

        if (v10)
        {
          v8 = [NUChannelControlFormat controlFormatWithSetting:v10];
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1369);
      }

      v14 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
LABEL_37:
        v20 = v14;
        v21 = [(NUChannelControlFormat *)self description];
        v22 = 138412546;
        v23 = v21;
        v24 = 2112;
        v25 = v4;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Unsupported subchannel format %@:%@", &v22, 0x16u);
      }
    }

LABEL_15:
    v8 = 0;
    goto LABEL_33;
  }

  if (v5 != 2)
  {
    v8 = 0;
    goto LABEL_34;
  }

  v6 = [(NUChannelControlFormat *)self dataModel];
  v7 = [v6 type];
  v8 = 0;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_19;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1369);
    }

    v14 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_15;
  }

  switch(v7)
  {
    case 2:
      v16 = [v6 contents];
      v10 = [v16 objectForKeyedSubscript:v4];

      if (v10)
      {
        v17 = +[NUSchemaRegistry sharedRegistry];
        v12 = [v17 schemaWithIdentifier:v10];

        goto LABEL_22;
      }

LABEL_31:
      v8 = 0;
      goto LABEL_32;
    case 3:
LABEL_19:
      v15 = [v6 settings];
      goto LABEL_29;
    case 4:
      v9 = [v6 contents];
      v10 = [v9 objectForKeyedSubscript:v4];

      if (v10)
      {
        v11 = +[NUSchemaRegistry sharedRegistry];
        v12 = [v11 schemaWithIdentifier:v10];

        if (!v12)
        {
          v8 = 0;
LABEL_23:

LABEL_32:
          break;
        }

LABEL_22:
        v8 = [NUChannelControlFormat controlFormatWithSchema:v12];
        goto LABEL_23;
      }

      goto LABEL_31;
  }

LABEL_33:

LABEL_34:

  return v8;
}

- (id)subchannelKeys
{
  v3 = [(NUChannelControlFormat *)self controlType];
  if (v3 == 1)
  {
    v4 = [(NUChannelControlFormat *)self dataModel];
    if ([v4 type] == 4)
    {
      v7 = [v4 properties];
LABEL_15:
      v8 = v7;
      v6 = [v7 allKeys];

      goto LABEL_16;
    }

    v6 = 0;
  }

  else
  {
    if (v3 != 2)
    {
      v6 = 0;
      goto LABEL_17;
    }

    v4 = [(NUChannelControlFormat *)self dataModel];
    v5 = [v4 type];
    v6 = 0;
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 != 2)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

LABEL_14:
      v7 = [v4 settings];
      goto LABEL_15;
    }

    if (v5 == 3)
    {
      goto LABEL_14;
    }

    if (v5 == 4)
    {
LABEL_12:
      v7 = [v4 contents];
      goto LABEL_15;
    }
  }

LABEL_16:

LABEL_17:

  return v6;
}

- (NUChannelControlFormat)initWithControlType:(int64_t)a3 dataModel:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!v6)
  {
    v11 = NUAssertLogger_4187();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dataModel != nil"];
      *buf = 138543362;
      v29 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_4187();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlFormat initWithControlType:dataModel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1411, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "dataModel != nil");
  }

  v7 = v6;
  v27.receiver = self;
  v27.super_class = NUChannelControlFormat;
  v8 = [(NUChannelControlFormat *)&v27 init];
  v8->_controlType = a3;
  dataModel = v8->_dataModel;
  v8->_dataModel = v7;

  return v8;
}

- (NUChannelControlFormat)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUChannelControlFormat init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1403, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)controlFormatForRect
{
  v2 = [a1 alloc];
  v3 = objc_alloc_init(NURectSetting);
  v4 = [v2 initWithControlType:1 dataModel:v3];

  return v4;
}

+ (id)controlFormatWithSetting:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithControlType:1 dataModel:v4];

  return v5;
}

+ (id)controlFormatWithSchema:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithControlType:2 dataModel:v4];

  return v5;
}

@end