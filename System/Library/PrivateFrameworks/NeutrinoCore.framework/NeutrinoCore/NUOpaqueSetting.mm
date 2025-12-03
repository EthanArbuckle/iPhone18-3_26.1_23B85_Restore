@interface NUOpaqueSetting
+ (id)deserializeFromDictionary:(id)dictionary error:(id *)error;
+ (id)supportedAttributes;
- (BOOL)serializeIntoDictionary:(id)dictionary error:(id *)error;
- (BOOL)validateAttribute:(id)attribute value:(id)value error:(id *)error;
- (BOOL)validatePlistCompatibility:(id)compatibility error:(id *)error;
- (id)deserialize:(id)deserialize error:(id *)error;
- (id)serialize:(id)serialize error:(id *)error;
@end

@implementation NUOpaqueSetting

- (BOOL)serializeIntoDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  [dictionaryCopy setObject:@"opaque" forKeyedSubscript:@"isa"];
  LOBYTE(error) = [(NUSetting *)self serializeAttributesIntoDictionary:dictionaryCopy error:error];

  return error;
}

- (id)deserialize:(id)deserialize error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  deserializeCopy = deserialize;
  if (!deserializeCopy)
  {
    v7 = NUAssertLogger_25303();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v40 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_25303();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v21;
        v41 = 2114;
        v42 = v25;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUOpaqueSetting deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1341, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "object != nil");
  }

  if (!error)
  {
    v14 = NUAssertLogger_25303();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v40 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_25303();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      if (v18)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols3 = [v31 callStackSymbols];
        v34 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v30;
        v41 = 2114;
        v42 = v34;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUOpaqueSetting deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1342, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "error != NULL");
  }

  return deserializeCopy;
}

- (id)serialize:(id)serialize error:(id *)error
{
  serializeCopy = serialize;
  if ([(NUOpaqueSetting *)self validatePlistCompatibility:serializeCopy error:error])
  {
    v7 = serializeCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)validateAttribute:(id)attribute value:(id)value error:(id *)error
{
  attributeCopy = attribute;
  valueCopy = value;
  if ([attributeCopy isEqualToString:@"required"])
  {
    v17 = 0;
    v10 = [NUModel validateBool:valueCopy error:&v17];

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v12 = v17;
      v13 = [NUError errorWithCode:2 reason:@"Invalid attribute value" object:attributeCopy underlyingError:v12];
      v14 = v13;

      v11 = 0;
      *error = v13;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NUOpaqueSetting;
    v11 = [(NUSetting *)&v16 validateAttribute:attributeCopy value:valueCopy error:error];
  }

  return v11;
}

- (BOOL)validatePlistCompatibility:(id)compatibility error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  compatibilityCopy = compatibility;
  if (!compatibilityCopy)
  {
    v9 = NUAssertLogger_25303();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v42 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_25303();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v23;
        v43 = 2114;
        v44 = v27;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUOpaqueSetting validatePlistCompatibility:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1291, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "object != nil");
  }

  if (!error)
  {
    v16 = NUAssertLogger_25303();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_25303();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols3 = [v33 callStackSymbols];
        v36 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v32;
        v43 = 2114;
        v44 = v36;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUOpaqueSetting validatePlistCompatibility:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 1292, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != NULL");
  }

  v6 = compatibilityCopy;
  v7 = [MEMORY[0x1E696AE40] propertyList:compatibilityCopy isValidForFormat:100];
  if ((v7 & 1) == 0)
  {
    *error = [NUError invalidError:@"Object is not plist-compatible" object:v6];
  }

  return v7;
}

+ (id)deserializeFromDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v11 = 0;
  v7 = [self deserializeAttributesFromDictionary:dictionaryCopy error:&v11];
  v8 = v11;
  if (v7)
  {
    v9 = [[self alloc] initWithAttributes:v7];
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to deserialized attributes" object:dictionaryCopy underlyingError:v8];
    *error = v9 = 0;
  }

  return v9;
}

+ (id)supportedAttributes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"required";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end