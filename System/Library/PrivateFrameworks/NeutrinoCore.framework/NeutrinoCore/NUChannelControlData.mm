@interface NUChannelControlData
+ (id)controlDataWithAdjustment:(id)adjustment;
+ (id)controlDataWithComposition:(id)composition;
+ (id)controlDataWithSetting:(id)setting value:(id)value;
+ (id)controlDataWithSource:(id)source;
- (BOOL)isBoolean;
- (BOOL)isNumber;
- (NUChannelControlData)initWithData:(id)data format:(id)format;
- (NUChannelControlData)initWithData:(id)data schema:(id)schema;
- (NUChannelControlData)initWithFormat:(id)format;
- (NUChannelControlData)initWithSetting:(id)setting value:(id)value;
- (id)cardinality;
- (id)compactDescription;
- (id)debugDescription;
- (id)description;
- (id)subdataAtIndex:(unint64_t)index error:(id *)error;
- (id)subdataForChannel:(id)channel error:(id *)error;
- (int64_t)compare:(id)compare;
- (int64_t)compareToControlData:(id)data;
@end

@implementation NUChannelControlData

- (int64_t)compareToControlData:(id)data
{
  dataCopy = data;
  controlFormat = [(NUChannelControlData *)self controlFormat];
  controlType = [controlFormat controlType];

  if (controlType == 1)
  {
    controlFormat2 = [dataCopy controlFormat];
    controlType2 = [controlFormat2 controlType];

    if (controlType2 != 1)
    {
LABEL_26:
      v16 = -1;
      goto LABEL_27;
    }

    controlFormat3 = [(NUChannelControlData *)self controlFormat];
    dataModel = [controlFormat3 dataModel];

    controlFormat4 = [dataCopy controlFormat];
    dataModel2 = [controlFormat4 dataModel];

    type = [dataModel2 type];
    if (type != [dataModel type])
    {
      v16 = -1;
LABEL_33:

      goto LABEL_27;
    }

    type2 = [dataModel type];
    if (type2 <= 3)
    {
      if (type2 == 1)
      {
        value = [(NUChannelControlData *)self value];
        bOOLValue = [value BOOLValue];

        value2 = [dataCopy value];
        bOOLValue2 = [value2 BOOLValue];

        v16 = bOOLValue ^ bOOLValue2 ^ 1u;
        goto LABEL_33;
      }

      if (type2 != 2)
      {
        if (type2 == 3)
        {
          value3 = [(NUChannelControlData *)self value];
          value4 = [dataCopy value];
          v29 = [value3 compare:value4];
          v30 = 3;
          if (v29 == 1)
          {
            v30 = 4;
          }

          if (v29 == -1)
          {
            v16 = 2;
          }

          else
          {
            v16 = v30;
          }

          goto LABEL_32;
        }

LABEL_25:

        goto LABEL_26;
      }

      value3 = [(NUChannelControlData *)self value];
      value4 = [dataCopy value];
      v39 = [value4 isEqualToString:value3];
    }

    else
    {
      if (type2 <= 5)
      {
        if (type2 != 4)
        {
          v44 = 0u;
          v45 = 0u;
          value5 = [(NUChannelControlData *)self value];
          v26 = value5;
          if (value5)
          {
            [value5 nu_pixelRect];
          }

          else
          {
            v44 = 0u;
            v45 = 0u;
          }

          v42 = 0u;
          v43 = 0u;
          value6 = [dataCopy value];
          v41 = value6;
          if (value6)
          {
            [value6 nu_pixelRect];
          }

          else
          {
            v42 = 0u;
            v43 = 0u;
          }

          v16 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v42, v44), vceqq_s64(v43, v45)))) & 1;
          goto LABEL_33;
        }

        value3 = [(NUChannelControlData *)self value];
        value4 = [dataCopy value];
        v39 = [value4 isEqualToDictionary:value3];
        goto LABEL_31;
      }

      if (type2 != 6)
      {
        if (type2 == 7)
        {
          value7 = [dataCopy value];
          value8 = [(NUChannelControlData *)self value];
          v33 = [value7 isEqual:value8];

          v16 = v33;
          goto LABEL_33;
        }

        goto LABEL_25;
      }

      value3 = [(NUChannelControlData *)self value];
      value4 = [dataCopy value];
      v39 = [value4 isEqualToArray:value3];
    }

LABEL_31:
    v16 = v39;
LABEL_32:

    goto LABEL_33;
  }

  if (controlType != 2)
  {
    goto LABEL_26;
  }

  controlFormat5 = [dataCopy controlFormat];
  controlType3 = [controlFormat5 controlType];

  if (controlType3 != 2)
  {
    goto LABEL_26;
  }

  controlFormat6 = [(NUChannelControlData *)self controlFormat];
  dataModel3 = [controlFormat6 dataModel];

  controlFormat7 = [dataCopy controlFormat];
  dataModel4 = [controlFormat7 dataModel];

  identifier = [dataModel4 identifier];
  identifier2 = [dataModel3 identifier];
  v15 = [identifier isEqualToIdentifier:identifier2];

  v16 = v15;
LABEL_27:

  return v16;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if ([compareCopy isNull])
  {
    v5 = 0;
  }

  else if ([compareCopy type] == 2)
  {
    v5 = [(NUChannelControlData *)self compareToControlData:compareCopy];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (id)subdataAtIndex:(unint64_t)index error:(id *)error
{
  controlFormat = [(NUChannelControlData *)self controlFormat];
  controlType = [controlFormat controlType];

  if (controlType == 2)
  {
    controlFormat2 = [(NUChannelControlData *)self controlFormat];
    dataModel = [controlFormat2 dataModel];

    if ([dataModel type] == 2)
    {
      value = [(NUChannelControlData *)self value];
      if ([value count] <= index)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
        [NUError invalidError:@"Invalid index" object:v12];
        *error = v15 = 0;
      }

      else
      {
        v12 = [value objectAtIndex:index];
        controlFormat3 = [(NUChannelControlData *)self controlFormat];
        arrayItemFormat = [controlFormat3 arrayItemFormat];

        v15 = [[NUChannelControlData alloc] initWithData:v12 format:arrayItemFormat];
      }

      goto LABEL_9;
    }
  }

  [NUError unsupportedError:@"Not an array" object:self];
  *error = v15 = 0;
LABEL_9:

  return v15;
}

- (id)cardinality
{
  controlFormat = [(NUChannelControlData *)self controlFormat];
  controlType = [controlFormat controlType];

  if (controlType == 2)
  {
    controlFormat2 = [(NUChannelControlData *)self controlFormat];
    dataModel = [controlFormat2 dataModel];

    if ([dataModel type] == 2)
    {
      value = [(NUChannelControlData *)self value];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(value, "count")}];
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

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  value = [(NUChannelControlData *)self value];
  format = [(NUChannelData *)self format];
  v7 = [format debugDescription];
  v8 = [v3 stringWithFormat:@"<%@:%p data:'%@' format:%@>", v4, self, value, v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  format = [(NUChannelData *)self format];
  value = [(NUChannelControlData *)self value];
  v6 = [v3 stringWithFormat:@"%@=%@", format, value];

  return v6;
}

- (id)compactDescription
{
  controlFormat = [(NUChannelControlData *)self controlFormat];
  controlType = [controlFormat controlType];

  if (controlType == 2)
  {
    controlFormat2 = [(NUChannelControlData *)self controlFormat];
    dataModel = [controlFormat2 dataModel];

    identifier = [dataModel identifier];
    name = [identifier name];
    v19 = [name substringToIndex:3];

LABEL_24:
    goto LABEL_25;
  }

  if (controlType != 1)
  {
    v19 = @"???";
    goto LABEL_26;
  }

  controlFormat3 = [(NUChannelControlData *)self controlFormat];
  dataModel = [controlFormat3 dataModel];

  type = [dataModel type];
  if (type <= 3)
  {
    switch(type)
    {
      case 1:
        v13 = MEMORY[0x1E696AEC0];
        identifier = [(NUChannelControlData *)self value];
        bOOLValue = [identifier BOOLValue];
LABEL_16:
        [v13 stringWithFormat:@"%d", bOOLValue];
        v21 = LABEL_22:;
        goto LABEL_23;
      case 2:
        identifier = [(NUChannelControlData *)self value];
        v21 = [identifier substringToIndex:3];
LABEL_23:
        v19 = v21;
        goto LABEL_24;
      case 3:
        value = [(NUChannelControlData *)self value];
        [value floatValue];
        v10 = v9;
        value2 = [(NUChannelControlData *)self value];
        v12 = vabds_f32(v10, [value2 intValue]);

        v13 = MEMORY[0x1E696AEC0];
        value3 = [(NUChannelControlData *)self value];
        identifier = value3;
        if (v12 >= 0.01)
        {
          [value3 floatValue];
          [v13 stringWithFormat:@"%0.1f", v23];
          goto LABEL_22;
        }

        bOOLValue = [value3 intValue];
        goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (type == 4)
  {
    v20 = MEMORY[0x1E696AEC0];
    identifier = [(NUChannelControlData *)self value];
    [v20 stringWithFormat:@"{%lu}", objc_msgSend(identifier, "count")];
    goto LABEL_22;
  }

  if (type == 6)
  {
    v22 = MEMORY[0x1E696AEC0];
    identifier = [(NUChannelControlData *)self value];
    [v22 stringWithFormat:@"[%lu]", objc_msgSend(identifier, "count")];
    goto LABEL_22;
  }

  if (type != 7)
  {
LABEL_18:
    v19 = @"???";
    goto LABEL_25;
  }

  v19 = @"n/a";
LABEL_25:

LABEL_26:

  return v19;
}

- (BOOL)isBoolean
{
  controlFormat = [(NUChannelControlData *)self controlFormat];
  controlType = [controlFormat controlType];

  if (controlType != 1)
  {
    return 0;
  }

  controlFormat2 = [(NUChannelControlData *)self controlFormat];
  dataModel = [controlFormat2 dataModel];

  v7 = [dataModel type] == 1;
  return v7;
}

- (BOOL)isNumber
{
  controlFormat = [(NUChannelControlData *)self controlFormat];
  controlType = [controlFormat controlType];

  if (controlType != 1)
  {
    return 0;
  }

  controlFormat2 = [(NUChannelControlData *)self controlFormat];
  dataModel = [controlFormat2 dataModel];

  v7 = [dataModel type] == 3;
  return v7;
}

- (NUChannelControlData)initWithSetting:(id)setting value:(id)value
{
  v32 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  valueCopy = value;
  if (!settingCopy)
  {
    v12 = NUAssertLogger_4187();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "setting != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_4187();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlData initWithSetting:value:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2164, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "setting != nil");
  }

  v8 = valueCopy;
  v9 = [NUChannelControlFormat controlFormatWithSetting:settingCopy];
  v10 = [(NUChannelControlData *)self initWithData:v8 format:v9];

  return v10;
}

- (id)subdataForChannel:(id)channel error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!error)
  {
    v30 = NUAssertLogger_4187();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v63 = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_4187();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols = [v45 callStackSymbols];
        v48 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v44;
        v64 = 2114;
        v65 = v48;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlData subdataForChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2104, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v7 = channelCopy;
  if (!channelCopy)
  {
    v37 = NUAssertLogger_4187();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v63 = v38;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_4187();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v41)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        callStackSymbols3 = [v54 callStackSymbols];
        v57 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v53;
        v64 = 2114;
        v65 = v57;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlData subdataForChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2105, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "channel != nil");
  }

  type = [channelCopy type];
  format = [(NUChannelData *)self format];
  v10 = format;
  if (type == 5)
  {
    representedFormat = [format representedFormat];

    format2 = [v7 format];
    v13 = [representedFormat isEqualToChannelFormat:format2];

    if (v13)
    {
      cardinality = [(NUChannelControlData *)self cardinality];

      if (!cardinality)
      {
        selfCopy = self;
        goto LABEL_22;
      }

      v15 = [NUChannelElementData alloc];
      format3 = [v7 format];
      v17 = [(NUChannelElementData *)v15 initWithIdentifier:@"???" format:format3];
      goto LABEL_20;
    }

    v23 = @"Incompatible element format";
    goto LABEL_14;
  }

  name = [v7 name];
  representedFormat = [v10 subchannelFormatForKey:name];

  if (!representedFormat)
  {
    v24 = [NUError notFoundError:@"Unknown subchannel" object:v7];
LABEL_15:
    selfCopy = 0;
    *error = v24;
    goto LABEL_22;
  }

  format4 = [v7 format];
  v20 = [representedFormat isEqualToChannelFormat:format4];

  if ((v20 & 1) == 0)
  {
    v23 = @"Incompatible subchannel format";
LABEL_14:
    v24 = [NUError mismatchError:v23 object:v7];
    goto LABEL_15;
  }

  value = [(NUChannelControlData *)self value];
  name2 = [v7 name];
  format3 = [value valueForKey:name2];

  if (format3)
  {
    v17 = [[NUChannelControlData alloc] initWithData:format3 format:representedFormat];
LABEL_20:
    selfCopy = v17;
    goto LABEL_21;
  }

  format5 = [(NUChannelData *)self format];
  name3 = [v7 name];
  v28 = [format5 requiresSubchannelDataForKey:name3];

  if (!v28)
  {
    v17 = +[NUChannelData null];
    goto LABEL_20;
  }

  [NUError missingError:@"Missing required subchannel value" object:v7];
  *error = selfCopy = 0;
LABEL_21:

LABEL_22:

  return selfCopy;
}

- (NUChannelControlData)initWithData:(id)data schema:(id)schema
{
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  schemaCopy = schema;
  if (!schemaCopy)
  {
    v12 = NUAssertLogger_4187();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "schema != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_4187();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlData initWithData:schema:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2098, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "schema != nil");
  }

  v8 = schemaCopy;
  v9 = [NUChannelControlFormat controlFormatWithSchema:schemaCopy];
  v10 = [(NUChannelControlData *)self initWithData:dataCopy format:v9];

  return v10;
}

- (NUChannelControlData)initWithData:(id)data format:(id)format
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  formatCopy = format;
  if (!dataCopy)
  {
    v13 = NUAssertLogger_4187();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v31 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_4187();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlData initWithData:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2091, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "data != nil");
  }

  v8 = formatCopy;
  v29.receiver = self;
  v29.super_class = NUChannelControlData;
  v9 = [(NUChannelData *)&v29 initWithFormat:formatCopy];
  v10 = [dataCopy copy];
  data = v9->_data;
  v9->_data = v10;

  return v9;
}

- (NUChannelControlData)initWithFormat:(id)format
{
  v35 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols = [v14 callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    callStackSymbols2 = [v20 callStackSymbols];
    v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUChannelControlData initWithFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2087, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

+ (id)controlDataWithSetting:(id)setting value:(id)value
{
  v47 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  valueCopy = value;
  if (!settingCopy)
  {
    v11 = NUAssertLogger_4187();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "setting != nil"];
      *buf = 138543362;
      v44 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_4187();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelControlData controlDataWithSetting:value:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2170, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "setting != nil");
  }

  v8 = valueCopy;
  if (!valueCopy)
  {
    v18 = NUAssertLogger_4187();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "value != nil"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_4187();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelControlData controlDataWithSetting:value:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2171, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "value != nil");
  }

  v9 = [[self alloc] initWithSetting:settingCopy value:valueCopy];

  return v9;
}

+ (id)controlDataWithSource:(id)source
{
  v30 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (!sourceCopy)
  {
    v10 = NUAssertLogger_4187();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "source != nil"];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_4187();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelControlData controlDataWithSource:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2159, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "source != nil");
  }

  v5 = sourceCopy;
  v6 = [self alloc];
  schema = [v5 schema];
  v8 = [v6 initWithData:v5 schema:schema];

  return v8;
}

+ (id)controlDataWithAdjustment:(id)adjustment
{
  v30 = *MEMORY[0x1E69E9840];
  adjustmentCopy = adjustment;
  if (!adjustmentCopy)
  {
    v10 = NUAssertLogger_4187();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "adjustment != nil"];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_4187();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelControlData controlDataWithAdjustment:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2154, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "adjustment != nil");
  }

  v5 = adjustmentCopy;
  v6 = [self alloc];
  schema = [v5 schema];
  v8 = [v6 initWithData:v5 schema:schema];

  return v8;
}

+ (id)controlDataWithComposition:(id)composition
{
  v30 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
  {
    v10 = NUAssertLogger_4187();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_4187();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelControlData controlDataWithComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2149, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "composition != nil");
  }

  v5 = compositionCopy;
  v6 = [self alloc];
  schema = [v5 schema];
  v8 = [v6 initWithData:v5 schema:schema];

  return v8;
}

@end