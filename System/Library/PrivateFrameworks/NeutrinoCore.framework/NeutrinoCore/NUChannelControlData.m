@interface NUChannelControlData
+ (id)controlDataWithAdjustment:(id)a3;
+ (id)controlDataWithComposition:(id)a3;
+ (id)controlDataWithSetting:(id)a3 value:(id)a4;
+ (id)controlDataWithSource:(id)a3;
- (BOOL)isBoolean;
- (BOOL)isNumber;
- (NUChannelControlData)initWithData:(id)a3 format:(id)a4;
- (NUChannelControlData)initWithData:(id)a3 schema:(id)a4;
- (NUChannelControlData)initWithFormat:(id)a3;
- (NUChannelControlData)initWithSetting:(id)a3 value:(id)a4;
- (id)cardinality;
- (id)compactDescription;
- (id)debugDescription;
- (id)description;
- (id)subdataAtIndex:(unint64_t)a3 error:(id *)a4;
- (id)subdataForChannel:(id)a3 error:(id *)a4;
- (int64_t)compare:(id)a3;
- (int64_t)compareToControlData:(id)a3;
@end

@implementation NUChannelControlData

- (int64_t)compareToControlData:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelControlData *)self controlFormat];
  v6 = [v5 controlType];

  if (v6 == 1)
  {
    v17 = [v4 controlFormat];
    v18 = [v17 controlType];

    if (v18 != 1)
    {
LABEL_26:
      v16 = -1;
      goto LABEL_27;
    }

    v19 = [(NUChannelControlData *)self controlFormat];
    v20 = [v19 dataModel];

    v21 = [v4 controlFormat];
    v22 = [v21 dataModel];

    v23 = [v22 type];
    if (v23 != [v20 type])
    {
      v16 = -1;
LABEL_33:

      goto LABEL_27;
    }

    v24 = [v20 type];
    if (v24 <= 3)
    {
      if (v24 == 1)
      {
        v34 = [(NUChannelControlData *)self value];
        v35 = [v34 BOOLValue];

        v36 = [v4 value];
        v37 = [v36 BOOLValue];

        v16 = v35 ^ v37 ^ 1u;
        goto LABEL_33;
      }

      if (v24 != 2)
      {
        if (v24 == 3)
        {
          v27 = [(NUChannelControlData *)self value];
          v28 = [v4 value];
          v29 = [v27 compare:v28];
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

      v27 = [(NUChannelControlData *)self value];
      v28 = [v4 value];
      v39 = [v28 isEqualToString:v27];
    }

    else
    {
      if (v24 <= 5)
      {
        if (v24 != 4)
        {
          v44 = 0u;
          v45 = 0u;
          v25 = [(NUChannelControlData *)self value];
          v26 = v25;
          if (v25)
          {
            [v25 nu_pixelRect];
          }

          else
          {
            v44 = 0u;
            v45 = 0u;
          }

          v42 = 0u;
          v43 = 0u;
          v40 = [v4 value];
          v41 = v40;
          if (v40)
          {
            [v40 nu_pixelRect];
          }

          else
          {
            v42 = 0u;
            v43 = 0u;
          }

          v16 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v42, v44), vceqq_s64(v43, v45)))) & 1;
          goto LABEL_33;
        }

        v27 = [(NUChannelControlData *)self value];
        v28 = [v4 value];
        v39 = [v28 isEqualToDictionary:v27];
        goto LABEL_31;
      }

      if (v24 != 6)
      {
        if (v24 == 7)
        {
          v31 = [v4 value];
          v32 = [(NUChannelControlData *)self value];
          v33 = [v31 isEqual:v32];

          v16 = v33;
          goto LABEL_33;
        }

        goto LABEL_25;
      }

      v27 = [(NUChannelControlData *)self value];
      v28 = [v4 value];
      v39 = [v28 isEqualToArray:v27];
    }

LABEL_31:
    v16 = v39;
LABEL_32:

    goto LABEL_33;
  }

  if (v6 != 2)
  {
    goto LABEL_26;
  }

  v7 = [v4 controlFormat];
  v8 = [v7 controlType];

  if (v8 != 2)
  {
    goto LABEL_26;
  }

  v9 = [(NUChannelControlData *)self controlFormat];
  v10 = [v9 dataModel];

  v11 = [v4 controlFormat];
  v12 = [v11 dataModel];

  v13 = [v12 identifier];
  v14 = [v10 identifier];
  v15 = [v13 isEqualToIdentifier:v14];

  v16 = v15;
LABEL_27:

  return v16;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if ([v4 isNull])
  {
    v5 = 0;
  }

  else if ([v4 type] == 2)
  {
    v5 = [(NUChannelControlData *)self compareToControlData:v4];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (id)subdataAtIndex:(unint64_t)a3 error:(id *)a4
{
  v7 = [(NUChannelControlData *)self controlFormat];
  v8 = [v7 controlType];

  if (v8 == 2)
  {
    v9 = [(NUChannelControlData *)self controlFormat];
    v10 = [v9 dataModel];

    if ([v10 type] == 2)
    {
      v11 = [(NUChannelControlData *)self value];
      if ([v11 count] <= a3)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [NUError invalidError:@"Invalid index" object:v12];
        *a4 = v15 = 0;
      }

      else
      {
        v12 = [v11 objectAtIndex:a3];
        v13 = [(NUChannelControlData *)self controlFormat];
        v14 = [v13 arrayItemFormat];

        v15 = [[NUChannelControlData alloc] initWithData:v12 format:v14];
      }

      goto LABEL_9;
    }
  }

  [NUError unsupportedError:@"Not an array" object:self];
  *a4 = v15 = 0;
LABEL_9:

  return v15;
}

- (id)cardinality
{
  v3 = [(NUChannelControlData *)self controlFormat];
  v4 = [v3 controlType];

  if (v4 == 2)
  {
    v5 = [(NUChannelControlData *)self controlFormat];
    v6 = [v5 dataModel];

    if ([v6 type] == 2)
    {
      v7 = [(NUChannelControlData *)self value];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
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
  v5 = [(NUChannelControlData *)self value];
  v6 = [(NUChannelData *)self format];
  v7 = [v6 debugDescription];
  v8 = [v3 stringWithFormat:@"<%@:%p data:'%@' format:%@>", v4, self, v5, v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannelData *)self format];
  v5 = [(NUChannelControlData *)self value];
  v6 = [v3 stringWithFormat:@"%@=%@", v4, v5];

  return v6;
}

- (id)compactDescription
{
  v3 = [(NUChannelControlData *)self controlFormat];
  v4 = [v3 controlType];

  if (v4 == 2)
  {
    v17 = [(NUChannelControlData *)self controlFormat];
    v6 = [v17 dataModel];

    v15 = [v6 identifier];
    v18 = [v15 name];
    v19 = [v18 substringToIndex:3];

LABEL_24:
    goto LABEL_25;
  }

  if (v4 != 1)
  {
    v19 = @"???";
    goto LABEL_26;
  }

  v5 = [(NUChannelControlData *)self controlFormat];
  v6 = [v5 dataModel];

  v7 = [v6 type];
  if (v7 <= 3)
  {
    switch(v7)
    {
      case 1:
        v13 = MEMORY[0x1E696AEC0];
        v15 = [(NUChannelControlData *)self value];
        v16 = [v15 BOOLValue];
LABEL_16:
        [v13 stringWithFormat:@"%d", v16];
        v21 = LABEL_22:;
        goto LABEL_23;
      case 2:
        v15 = [(NUChannelControlData *)self value];
        v21 = [v15 substringToIndex:3];
LABEL_23:
        v19 = v21;
        goto LABEL_24;
      case 3:
        v8 = [(NUChannelControlData *)self value];
        [v8 floatValue];
        v10 = v9;
        v11 = [(NUChannelControlData *)self value];
        v12 = vabds_f32(v10, [v11 intValue]);

        v13 = MEMORY[0x1E696AEC0];
        v14 = [(NUChannelControlData *)self value];
        v15 = v14;
        if (v12 >= 0.01)
        {
          [v14 floatValue];
          [v13 stringWithFormat:@"%0.1f", v23];
          goto LABEL_22;
        }

        v16 = [v14 intValue];
        goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (v7 == 4)
  {
    v20 = MEMORY[0x1E696AEC0];
    v15 = [(NUChannelControlData *)self value];
    [v20 stringWithFormat:@"{%lu}", objc_msgSend(v15, "count")];
    goto LABEL_22;
  }

  if (v7 == 6)
  {
    v22 = MEMORY[0x1E696AEC0];
    v15 = [(NUChannelControlData *)self value];
    [v22 stringWithFormat:@"[%lu]", objc_msgSend(v15, "count")];
    goto LABEL_22;
  }

  if (v7 != 7)
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
  v3 = [(NUChannelControlData *)self controlFormat];
  v4 = [v3 controlType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(NUChannelControlData *)self controlFormat];
  v6 = [v5 dataModel];

  v7 = [v6 type] == 1;
  return v7;
}

- (BOOL)isNumber
{
  v3 = [(NUChannelControlData *)self controlFormat];
  v4 = [v3 controlType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(NUChannelControlData *)self controlFormat];
  v6 = [v5 dataModel];

  v7 = [v6 type] == 3;
  return v7;
}

- (NUChannelControlData)initWithSetting:(id)a3 value:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
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
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlData initWithSetting:value:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2164, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "setting != nil");
  }

  v8 = v7;
  v9 = [NUChannelControlFormat controlFormatWithSetting:v6];
  v10 = [(NUChannelControlData *)self initWithData:v8 format:v9];

  return v10;
}

- (id)subdataForChannel:(id)a3 error:(id *)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
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
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v44;
        v64 = 2114;
        v65 = v48;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlData subdataForChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2104, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v7 = v6;
  if (!v6)
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
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v53;
        v64 = 2114;
        v65 = v57;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlData subdataForChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2105, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "channel != nil");
  }

  v8 = [v6 type];
  v9 = [(NUChannelData *)self format];
  v10 = v9;
  if (v8 == 5)
  {
    v11 = [v9 representedFormat];

    v12 = [v7 format];
    v13 = [v11 isEqualToChannelFormat:v12];

    if (v13)
    {
      v14 = [(NUChannelControlData *)self cardinality];

      if (!v14)
      {
        v25 = self;
        goto LABEL_22;
      }

      v15 = [NUChannelElementData alloc];
      v16 = [v7 format];
      v17 = [(NUChannelElementData *)v15 initWithIdentifier:@"???" format:v16];
      goto LABEL_20;
    }

    v23 = @"Incompatible element format";
    goto LABEL_14;
  }

  v18 = [v7 name];
  v11 = [v10 subchannelFormatForKey:v18];

  if (!v11)
  {
    v24 = [NUError notFoundError:@"Unknown subchannel" object:v7];
LABEL_15:
    v25 = 0;
    *a4 = v24;
    goto LABEL_22;
  }

  v19 = [v7 format];
  v20 = [v11 isEqualToChannelFormat:v19];

  if ((v20 & 1) == 0)
  {
    v23 = @"Incompatible subchannel format";
LABEL_14:
    v24 = [NUError mismatchError:v23 object:v7];
    goto LABEL_15;
  }

  v21 = [(NUChannelControlData *)self value];
  v22 = [v7 name];
  v16 = [v21 valueForKey:v22];

  if (v16)
  {
    v17 = [[NUChannelControlData alloc] initWithData:v16 format:v11];
LABEL_20:
    v25 = v17;
    goto LABEL_21;
  }

  v26 = [(NUChannelData *)self format];
  v27 = [v7 name];
  v28 = [v26 requiresSubchannelDataForKey:v27];

  if (!v28)
  {
    v17 = +[NUChannelData null];
    goto LABEL_20;
  }

  [NUError missingError:@"Missing required subchannel value" object:v7];
  *a4 = v25 = 0;
LABEL_21:

LABEL_22:

  return v25;
}

- (NUChannelControlData)initWithData:(id)a3 schema:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
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
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlData initWithData:schema:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2098, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "schema != nil");
  }

  v8 = v7;
  v9 = [NUChannelControlFormat controlFormatWithSchema:v7];
  v10 = [(NUChannelControlData *)self initWithData:v6 format:v9];

  return v10;
}

- (NUChannelControlData)initWithData:(id)a3 format:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
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
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelControlData initWithData:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2091, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "data != nil");
  }

  v8 = v7;
  v29.receiver = self;
  v29.super_class = NUChannelControlData;
  v9 = [(NUChannelData *)&v29 initWithFormat:v7];
  v10 = [v6 copy];
  data = v9->_data;
  v9->_data = v10;

  return v9;
}

- (NUChannelControlData)initWithFormat:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
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
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
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

+ (id)controlDataWithSetting:(id)a3 value:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
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
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelControlData controlDataWithSetting:value:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2170, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "setting != nil");
  }

  v8 = v7;
  if (!v7)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelControlData controlDataWithSetting:value:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2171, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "value != nil");
  }

  v9 = [[a1 alloc] initWithSetting:v6 value:v7];

  return v9;
}

+ (id)controlDataWithSource:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelControlData controlDataWithSource:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2159, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "source != nil");
  }

  v5 = v4;
  v6 = [a1 alloc];
  v7 = [v5 schema];
  v8 = [v6 initWithData:v5 schema:v7];

  return v8;
}

+ (id)controlDataWithAdjustment:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelControlData controlDataWithAdjustment:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2154, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "adjustment != nil");
  }

  v5 = v4;
  v6 = [a1 alloc];
  v7 = [v5 schema];
  v8 = [v6 initWithData:v5 schema:v7];

  return v8;
}

+ (id)controlDataWithComposition:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelControlData controlDataWithComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2149, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "composition != nil");
  }

  v5 = v4;
  v6 = [a1 alloc];
  v7 = [v5 schema];
  v8 = [v6 initWithData:v5 schema:v7];

  return v8;
}

@end