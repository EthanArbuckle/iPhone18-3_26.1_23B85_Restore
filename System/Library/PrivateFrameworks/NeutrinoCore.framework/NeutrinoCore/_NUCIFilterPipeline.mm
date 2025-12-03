@interface _NUCIFilterPipeline
+ (id)channelFormatForFilterAttributes:(id)attributes;
+ (id)pipelineWithFilterName:(id)name error:(id *)error;
- (BOOL)build:(id *)build;
- (_NUCIFilterPipeline)initWithFilterName:(id)name;
- (_NUCIFilterPipeline)initWithIdentifier:(id)identifier;
- (id)_evaluateOutputPort:(id)port context:(id)context error:(id *)error;
- (id)_genericInputPortsMatchingOutputPort:(id)port;
- (id)_genericOutputPortsMatchingInputPort:(id)port;
@end

@implementation _NUCIFilterPipeline

- (id)_genericInputPortsMatchingOutputPort:(id)port
{
  v9[4] = *MEMORY[0x1E69E9840];
  fullName = [port fullName];
  v4 = [fullName isEqualToString:*MEMORY[0x1E695FB50]];

  if (v4)
  {
    v5 = *MEMORY[0x1E695FA48];
    v9[0] = *MEMORY[0x1E695FAB0];
    v9[1] = v5;
    v9[2] = *MEMORY[0x1E695FB28];
    v9[3] = @"inputGuideImage";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
    v7 = PFMap();
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)_genericOutputPortsMatchingInputPort:(id)port
{
  v9[1] = *MEMORY[0x1E69E9840];
  fullName = [port fullName];
  v5 = [fullName isEqualToString:*MEMORY[0x1E695FAB0]];

  if (v5)
  {
    v6 = [(_NUPipeline *)self _outputPortNamed:*MEMORY[0x1E695FB50]];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)_evaluateOutputPort:(id)port context:(id)context error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  inputChannels = [(_NUPipeline *)self inputChannels];
  v9 = [(NUFilterNode *)inputChannels countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v33 != v11)
      {
        objc_enumerationMutation(inputChannels);
      }

      v13 = *(*(&v32 + 1) + 8 * v12);
      name = [v13 name];
      v15 = [contextCopy dataForChannel:name];

      if (-[__CFString isNull](v15, "isNull") && [v13 type] == 1)
      {
        [NUError missingError:@"Missing media input" object:v13];
        *error = v27 = 0;
        goto LABEL_22;
      }

      if ([v13 type] == 1)
      {
        break;
      }

      if (([(__CFString *)v15 isNull]& 1) == 0)
      {
        value = [(__CFString *)v15 value];
        name2 = [v13 name];
        [v31 setObject:value forKeyedSubscript:name2];
        goto LABEL_12;
      }

LABEL_13:

      if (v10 == ++v12)
      {
        v10 = [(NUFilterNode *)inputChannels countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    value = [(__CFString *)v15 value];
    name2 = [value renderNode];
    name3 = [v13 name];
    [v7 setObject:name2 forKeyedSubscript:name3];

LABEL_12:
    goto LABEL_13;
  }

LABEL_15:

  inputChannels = [[NUFilterNode alloc] initWithFilterName:selfCopy->_filterName settings:v31 inputs:v7];
  v19 = *MEMORY[0x1E695FAB0];
  v15 = v19;
  if ([(NSString *)selfCopy->_filterName isEqualToString:@"CILocalLightMapPrepare"])
  {

    v15 = @"inputGuideImage";
  }

  v20 = [NUChannelMatching name:v15];
  v21 = [(_NUPipeline *)selfCopy inputChannelMatching:v20];

  if (v21)
  {
    name4 = [v21 name];
    v23 = [contextCopy dataForChannel:name4];

    value2 = [v23 value];
    geometry = [value2 geometry];
    v26 = [value2 filteredMediaWithRenderNode:inputChannels geometry:geometry];

    v27 = [[NUChannelMediaData alloc] initWithMedia:v26];
  }

  else
  {
    [NUError missingError:@"missing input channel for name" object:v19];
    *error = v27 = 0;
  }

LABEL_22:

  return v27;
}

- (BOOL)build:(id *)build
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695F648] filterWithName:self->_filterName];
  v6 = v5;
  if (v5)
  {
    attributes = [v5 attributes];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = v6;
    inputKeys = [v6 inputKeys];
    v9 = [inputKeys countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(inputKeys);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          v14 = [attributes objectForKeyedSubscript:v13];
          v15 = [objc_opt_class() channelFormatForFilterAttributes:v14];
          v16 = [[NUChannel alloc] initWithName:v13 format:v15 index:0];
          v17 = [(_NUPipeline *)self _addInputChannel:v16];
        }

        v10 = [inputKeys countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v10);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v30;
    obj = [v30 outputKeys];
    v18 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v33 = *v35;
      v20 = *MEMORY[0x1E695FB50];
      v32 = *MEMORY[0x1E695F6F0];
      v21 = *MEMORY[0x1E695F720];
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v35 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v34 + 1) + 8 * j);
          if (([v23 isEqualToString:v20] & 1) == 0)
          {
            [NUError unsupportedError:@"Unsupported output filter key" object:v23];
            *build = v28 = 0;
            goto LABEL_19;
          }

          v42 = v32;
          v43 = v21;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v25 = [objc_opt_class() channelFormatForFilterAttributes:v24];
          v26 = [[NUChannel alloc] initWithName:v23 format:v25 index:0];
          v27 = [(_NUPipeline *)self _addOutputChannel:v26];
        }

        v19 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v28 = 1;
LABEL_19:
      v6 = v30;
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    [NUError invalidError:@"Filter not found" object:self->_filterName];
    *build = v28 = 0;
  }

  return v28;
}

- (_NUCIFilterPipeline)initWithFilterName:(id)name
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "filterName != nil"];
      *buf = 138543362;
      v31 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
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

    _NUAssertFailHandler("[_NUCIFilterPipeline initWithFilterName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3377, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "filterName != nil");
  }

  v5 = nameCopy;
  v6 = [NUIdentifier alloc];
  v7 = +[NUVersion versionZero];
  v8 = [(NUIdentifier *)v6 initWithNamespace:@"com.apple.coreimage" name:v5 version:v7];

  v29.receiver = self;
  v29.super_class = _NUCIFilterPipeline;
  v9 = [(_NUPipeline *)&v29 initWithIdentifier:v8];
  v10 = [v5 copy];
  filterName = v9->_filterName;
  v9->_filterName = v10;

  return v9;
}

- (_NUCIFilterPipeline)initWithIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
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
  _NUAssertFailHandler("[_NUCIFilterPipeline initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3373, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

+ (id)channelFormatForFilterAttributes:(id)attributes
{
  v50[2] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E695F6F0]];
  v5 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E695F698]];
  if (([v4 isEqualToString:*MEMORY[0x1E695F720]] & 1) != 0 || !v4 && objc_msgSend(v5, "isEqualToString:", @"CIImage"))
  {
    v6 = +[NUChannelImageMediaFormat genericImageFormat];
    goto LABEL_22;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = *MEMORY[0x1E695F6A0];
  v9 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E695F6A0]];
  [v7 setObject:v9 forKeyedSubscript:@"default"];

  v10 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E695F6C8]];
  [v7 setObject:v10 forKeyedSubscript:@"identity"];

  v11 = MEMORY[0x1E696AD98];
  v12 = [attributesCopy objectForKeyedSubscript:v8];
  v13 = [v11 numberWithInt:v12 == 0];
  [v7 setObject:v13 forKeyedSubscript:@"required"];

  if (![v4 isEqualToString:*MEMORY[0x1E695F700]])
  {
    if (([v4 isEqualToString:*MEMORY[0x1E695F760]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695F758]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695F718]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695F6F8]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695F728]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695F710]))
    {
      v18 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E695F6D8]];
      v19 = v18;
      v20 = &unk_1F3F82DD8;
      if (v18)
      {
        v20 = v18;
      }

      v21 = v20;

      v22 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E695F6D0]];
      v23 = v22;
      v24 = &unk_1F3F82DE8;
      if (v22)
      {
        v24 = v22;
      }

      v25 = v24;

      v26 = [[NUNumberSetting alloc] initWithMinimum:v21 maximum:v25 attributes:v7];
      goto LABEL_20;
    }

    if (([v4 isEqualToString:*MEMORY[0x1E695F740]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695F730]))
    {
      v28 = [NUNumberSetting alloc];
      v21 = [(NUNumberSetting *)v28 initWithMinimum:&unk_1F3F82368 maximum:&unk_1F3F82380 attributes:MEMORY[0x1E695E0F8]];
      v29 = [NUCompoundSetting alloc];
      v49[0] = @"x";
      v49[1] = @"y";
      v50[0] = v21;
      v50[1] = v21;
      v30 = MEMORY[0x1E695DF20];
      v31 = v50;
      v32 = v49;
      v33 = 2;
LABEL_28:
      v25 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
      v26 = [(NUCompoundSetting *)v29 initWithProperties:v25 attributes:v7];
LABEL_20:
      v17 = v26;

      goto LABEL_21;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E695F748]])
    {
      v34 = [NUNumberSetting alloc];
      v21 = [(NUNumberSetting *)v34 initWithMinimum:&unk_1F3F82368 maximum:&unk_1F3F82380 attributes:MEMORY[0x1E695E0F8]];
      v29 = [NUCompoundSetting alloc];
      v47[0] = @"x";
      v47[1] = @"y";
      v48[0] = v21;
      v48[1] = v21;
      v47[2] = @"z";
      v48[2] = v21;
      v30 = MEMORY[0x1E695DF20];
      v31 = v48;
      v32 = v47;
LABEL_37:
      v33 = 3;
      goto LABEL_28;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E695F750]])
    {
      v35 = [NUNumberSetting alloc];
      v21 = [(NUNumberSetting *)v35 initWithMinimum:&unk_1F3F82368 maximum:&unk_1F3F82380 attributes:MEMORY[0x1E695E0F8]];
      v29 = [NUCompoundSetting alloc];
      v45[0] = @"x";
      v45[1] = @"y";
      v46[0] = v21;
      v46[1] = v21;
      v45[2] = @"w";
      v45[3] = @"h";
      v46[2] = v21;
      v46[3] = v21;
      v30 = MEMORY[0x1E695DF20];
      v31 = v46;
      v32 = v45;
LABEL_33:
      v33 = 4;
      goto LABEL_28;
    }

    if (([v4 isEqualToString:*MEMORY[0x1E695F708]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695F738]))
    {
      v36 = [NUNumberSetting alloc];
      v21 = [(NUNumberSetting *)v36 initWithMinimum:&unk_1F3F82C40 maximum:&unk_1F3F82C50 attributes:MEMORY[0x1E695E0F8]];
      v29 = [NUCompoundSetting alloc];
      v43[0] = @"r";
      v43[1] = @"g";
      v44[0] = v21;
      v44[1] = v21;
      v43[2] = @"b";
      v44[2] = v21;
      v30 = MEMORY[0x1E695DF20];
      v31 = v44;
      v32 = v43;
      goto LABEL_37;
    }

    if (![v4 isEqualToString:*MEMORY[0x1E695F768]])
    {
      if (!v4)
      {
        if ([v5 isEqualToString:@"CIVector"])
        {
          v38 = [NUNumberSetting alloc];
          v21 = [(NUNumberSetting *)v38 initWithMinimum:&unk_1F3F82C40 maximum:&unk_1F3F82C50 attributes:MEMORY[0x1E695E0F8]];
          v29 = [NUCompoundSetting alloc];
          v41[0] = @"r";
          v41[1] = @"g";
          v42[0] = v21;
          v42[1] = v21;
          v41[2] = @"b";
          v41[3] = @"a";
          v42[2] = v21;
          v42[3] = v21;
          v30 = MEMORY[0x1E695DF20];
          v31 = v42;
          v32 = v41;
          goto LABEL_33;
        }

        if ([v5 isEqualToString:@"NSData"])
        {
          v15 = [NUOpaqueSetting alloc];
          v16 = MEMORY[0x1E695E0F8];
          goto LABEL_8;
        }
      }

      v37 = NULogger_6168();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v39 = 138543362;
        v40 = attributesCopy;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Unsupported filter attributes: %{public}@", &v39, 0xCu);
      }
    }

    v14 = NUOpaqueSetting;
    goto LABEL_7;
  }

  v14 = NUBoolSetting;
LABEL_7:
  v15 = [v14 alloc];
  v16 = v7;
LABEL_8:
  v17 = [(NUModel *)v15 initWithAttributes:v16];
LABEL_21:
  v6 = [[NUChannelControlFormat alloc] initWithControlType:1 dataModel:v17];

LABEL_22:

  return v6;
}

+ (id)pipelineWithFilterName:(id)name error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "filterName != nil"];
      *buf = 138543362;
      v31 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
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

    _NUAssertFailHandler("+[_NUCIFilterPipeline pipelineWithFilterName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3361, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "filterName != nil");
  }

  v6 = nameCopy;
  v7 = [[_NUCIFilterPipeline alloc] initWithFilterName:nameCopy];
  v29 = 0;
  if ([(_NUCIFilterPipeline *)v7 build:&v29])
  {
    v8 = v7;
  }

  else
  {
    v9 = v29;
    v10 = [NUError errorWithCode:1 reason:@"Failed to build filter pipeline" object:v6 underlyingError:v9];
    v11 = v10;

    v8 = 0;
    *error = v10;
  }

  return v8;
}

@end