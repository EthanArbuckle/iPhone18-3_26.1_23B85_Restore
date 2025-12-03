@interface NUChannelControlFormat
+ (id)controlFormatForRect;
+ (id)controlFormatWithSchema:(id)schema;
+ (id)controlFormatWithSetting:(id)setting;
- (BOOL)isArray;
- (BOOL)isCompatibleWithChannelFormat:(id)format;
- (BOOL)isEqualToChannelFormat:(id)format;
- (BOOL)requiresSubchannelDataForKey:(id)key;
- (BOOL)validateChannelData:(id)data error:(id *)error;
- (NUChannelControlFormat)init;
- (NUChannelControlFormat)initWithControlType:(int64_t)type dataModel:(id)model;
- (id)arrayItemFormat;
- (id)debugDescription;
- (id)description;
- (id)elementChannel;
- (id)subchannelFormatForKey:(id)key;
- (id)subchannelKeys;
- (int64_t)expressionType;
- (unint64_t)hash;
@end

@implementation NUChannelControlFormat

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  controlType = [(NUChannelControlFormat *)self controlType];
  v6 = @"???";
  if (controlType == 2)
  {
    v6 = @"schema";
  }

  if (controlType == 1)
  {
    v6 = @"setting";
  }

  v7 = v6;
  dataModel = [(NUChannelControlFormat *)self dataModel];
  v9 = [dataModel debugDescription];
  v10 = [v3 stringWithFormat:@"<%@:%p type:%@ model:%@>", v4, self, v7, v9];

  return v10;
}

- (id)description
{
  controlType = [(NUChannelControlFormat *)self controlType];
  if (controlType == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
    type = [(NUModel *)self->_dataModel type];
    if ((type - 1) > 6)
    {
      v10 = @"???";
    }

    else
    {
      v10 = off_1E810B208[type - 1];
    }

    identifier = v10;
    v7 = [v8 stringWithFormat:@"setting:%@", identifier];
  }

  else
  {
    if (controlType != 2)
    {
      v7 = @"???";
      goto LABEL_10;
    }

    v4 = MEMORY[0x1E696AEC0];
    identifier = [(NUModel *)self->_dataModel identifier];
    name = [(__CFString *)identifier name];
    v7 = [v4 stringWithFormat:@"schema:%@", name];
  }

LABEL_10:

  return v7;
}

- (BOOL)validateChannelData:(id)data error:(id *)error
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = NUChannelControlFormat;
  if ([(NUChannelFormat *)&v12 validateChannelData:dataCopy error:error])
  {
    v7 = dataCopy;
    dataModel = [(NUChannelControlFormat *)self dataModel];
    value = [v7 value];

    v10 = [dataModel validate:value error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isCompatibleWithChannelFormat:(id)format
{
  formatCopy = format;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  controlType = [formatCopy controlType];
  if (controlType != [(NUChannelControlFormat *)self controlType])
  {
    goto LABEL_9;
  }

  controlType2 = [(NUChannelControlFormat *)self controlType];
  if (controlType2 != 1)
  {
    if (controlType2 == 2)
    {
      dataModel = [(NUChannelControlFormat *)self dataModel];
      dataModel2 = [formatCopy dataModel];
      if ([dataModel isEqual:dataModel2])
      {
LABEL_6:
        v9 = 1;
LABEL_16:

        goto LABEL_10;
      }

      v15 = +[NUSourceSchema sharedSourceSchema];
      if ([dataModel isEqual:v15])
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

  dataModel3 = [(NUChannelControlFormat *)self dataModel];
  type = [dataModel3 type];
  dataModel4 = [formatCopy dataModel];
  type2 = [dataModel4 type];

  if (type != type2)
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

- (BOOL)isEqualToChannelFormat:(id)format
{
  formatCopy = format;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [formatCopy controlType], v5 == -[NUChannelControlFormat controlType](self, "controlType")))
  {
    dataModel = [formatCopy dataModel];
    dataModel2 = [(NUChannelControlFormat *)self dataModel];
    v8 = [dataModel isEqual:dataModel2];
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

  dataModel = [(NUChannelControlFormat *)self dataModel];
  type = [dataModel type];
  v5 = 3;
  if (type != 3)
  {
    v5 = 4;
  }

  if (type == 1)
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
  arrayItemFormat = [(NUChannelControlFormat *)self arrayItemFormat];
  v5 = [(NUChannelElementFormat *)v3 initWithRepresentedFormat:arrayItemFormat];

  v6 = [[NUChannel alloc] initWithName:@"$item" format:v5];

  return v6;
}

- (id)arrayItemFormat
{
  if ([(NUChannelControlFormat *)self controlType]== 2)
  {
    dataModel = [(NUChannelControlFormat *)self dataModel];
    if ([dataModel type] == 2 && (objc_msgSend(dataModel, "contents"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5 == 1))
    {
      contents = [dataModel contents];
      allKeys = [contents allKeys];
      firstObject = [allKeys firstObject];

      v9 = [(NUChannelControlFormat *)self subchannelFormatForKey:firstObject];
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
    dataModel = [(NUChannelControlFormat *)self dataModel];
    if ([dataModel type] == 2)
    {
      contents = [dataModel contents];
      v5 = [contents count];

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

- (BOOL)requiresSubchannelDataForKey:(id)key
{
  keyCopy = key;
  controlType = [(NUChannelControlFormat *)self controlType];
  if (controlType == 1)
  {
    goto LABEL_14;
  }

  if (controlType == 2)
  {
    dataModel = [(NUChannelControlFormat *)self dataModel];
    type = [dataModel type];
    isRequired = 0;
    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
LABEL_13:

LABEL_14:
          dataModel = [(NUChannelControlFormat *)self dataModel];
          isRequired = [dataModel isRequired];
          goto LABEL_15;
        }

LABEL_11:
        settings = [dataModel settings];
        requiredContents = [settings objectForKeyedSubscript:keyCopy];

        isRequired2 = [requiredContents isRequired];
        goto LABEL_12;
      }
    }

    else if (type != 2)
    {
      if (type != 3)
      {
        if (type == 4)
        {
          requiredContents = [dataModel requiredContents];
          isRequired2 = [requiredContents containsObject:keyCopy];
LABEL_12:
          isRequired = isRequired2;

          goto LABEL_15;
        }

        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_15:

    goto LABEL_16;
  }

  isRequired = 0;
LABEL_16:

  return isRequired;
}

- (id)subchannelFormatForKey:(id)key
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  controlType = [(NUChannelControlFormat *)self controlType];
  if (controlType == 1)
  {
    dataModel = [(NUChannelControlFormat *)self dataModel];
    type = [dataModel type];
    if (type <= 7)
    {
      if (type == 4)
      {
        properties = [dataModel properties];
LABEL_29:
        v18 = properties;
        v10 = [properties objectForKeyedSubscript:keyCopy];

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
        v25 = keyCopy;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Unsupported subchannel format %@:%@", &v22, 0x16u);
      }
    }

LABEL_15:
    v8 = 0;
    goto LABEL_33;
  }

  if (controlType != 2)
  {
    v8 = 0;
    goto LABEL_34;
  }

  dataModel = [(NUChannelControlFormat *)self dataModel];
  type2 = [dataModel type];
  v8 = 0;
  if (type2 <= 1)
  {
    if (type2)
    {
      if (type2 != 1)
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

  switch(type2)
  {
    case 2:
      contents = [dataModel contents];
      v10 = [contents objectForKeyedSubscript:keyCopy];

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
      properties = [dataModel settings];
      goto LABEL_29;
    case 4:
      contents2 = [dataModel contents];
      v10 = [contents2 objectForKeyedSubscript:keyCopy];

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
  controlType = [(NUChannelControlFormat *)self controlType];
  if (controlType == 1)
  {
    dataModel = [(NUChannelControlFormat *)self dataModel];
    if ([dataModel type] == 4)
    {
      properties = [dataModel properties];
LABEL_15:
      v8 = properties;
      allKeys = [properties allKeys];

      goto LABEL_16;
    }

    allKeys = 0;
  }

  else
  {
    if (controlType != 2)
    {
      allKeys = 0;
      goto LABEL_17;
    }

    dataModel = [(NUChannelControlFormat *)self dataModel];
    type = [dataModel type];
    allKeys = 0;
    if (type <= 2)
    {
      if (type != 1)
      {
        if (type != 2)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

LABEL_14:
      properties = [dataModel settings];
      goto LABEL_15;
    }

    if (type == 3)
    {
      goto LABEL_14;
    }

    if (type == 4)
    {
LABEL_12:
      properties = [dataModel contents];
      goto LABEL_15;
    }
  }

LABEL_16:

LABEL_17:

  return allKeys;
}

- (NUChannelControlFormat)initWithControlType:(int64_t)type dataModel:(id)model
{
  v32 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if (!modelCopy)
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
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlFormat initWithControlType:dataModel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1411, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "dataModel != nil");
  }

  v7 = modelCopy;
  v27.receiver = self;
  v27.super_class = NUChannelControlFormat;
  v8 = [(NUChannelControlFormat *)&v27 init];
  v8->_controlType = type;
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
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  v2 = [self alloc];
  v3 = objc_alloc_init(NURectSetting);
  v4 = [v2 initWithControlType:1 dataModel:v3];

  return v4;
}

+ (id)controlFormatWithSetting:(id)setting
{
  settingCopy = setting;
  v5 = [[self alloc] initWithControlType:1 dataModel:settingCopy];

  return v5;
}

+ (id)controlFormatWithSchema:(id)schema
{
  schemaCopy = schema;
  v5 = [[self alloc] initWithControlType:2 dataModel:schemaCopy];

  return v5;
}

@end