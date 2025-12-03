@interface NURAWImageSourceNode
+ (id)_firstFilterOfType:(int)type inArray:(id)array;
+ (int)_filterTypeForClassName:(id)name;
- (BOOL)_hasLensCorrectionFilter:(id)filter;
- (BOOL)load:(id *)load;
- (BOOL)shouldGenerateMeteorGainMap;
- (BOOL)supportsPipelineState:(id)state error:(id *)error;
- (NURAWImageSourceNode)initWithImageSource:(CGImageSource *)source identifier:(id)identifier;
- (NURAWImageSourceNode)initWithURL:(id)l UTI:(id)i identifier:(id)identifier;
- (NURAWImageSourceNode)initWithURL:(id)l UTI:(id)i settings:(id)settings;
- (id)_RAWCameraSpaceProperties:(id)properties RAWProperties:(id)wProperties;
- (id)_RAWToneCurveProperties:(id)properties;
- (id)_appendFilter:(id)filter filterType:(int)type settings:(id)settings source:(id)source;
- (id)_cachedRawImagePropertiesForOptions:(id)options error:(id *)error;
- (id)_evaluateImageGeometryWithSourceOptions:(id)options error:(id *)error;
- (id)_evaluateImagePropertiesWithSourceOptions:(id)options error:(id *)error;
- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error;
- (id)_neutralColorArrayForSettings:(id)settings;
- (id)_neutralColorVectorForSettings:(id)settings;
- (id)_rawFiltersWithSourceOptions:(id)options error:(id *)error;
- (id)_rawMethodVersionForSettings:(id)settings error:(id *)error;
- (id)_sourceOptionsForSettings:(id)settings rawMethodVersion:(id)version sushiLevel:(id)level;
- (id)preparedNodeWithSourceContainer:(id)container pipelineState:(id)state pipelineSettings:(id)settings sourceSettings:(id)sourceSettings error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (id)sourceOptionsForSettings:(id)settings error:(id *)error;
- (void)_addDefaultFinalizedSourceOptions:(id)options;
- (void)_processRAWProperties:(id)properties;
@end

@implementation NURAWImageSourceNode

- (id)preparedNodeWithSourceContainer:(id)container pipelineState:(id)state pipelineSettings:(id)settings sourceSettings:(id)sourceSettings error:(id *)error
{
  v175 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  stateCopy = state;
  settingsCopy = settings;
  sourceSettingsCopy = sourceSettings;
  v15 = [(NURAWImageSourceNode *)self sourceOptionsForSettings:sourceSettingsCopy error:error];
  if (!v15 || (v139 = self, ![(NURAWImageSourceNode *)self supportsPipelineState:stateCopy error:error]))
  {
    v20 = 0;
    goto LABEL_92;
  }

  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x1E696E0D8]];
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x1E696E0C0]];
  if (!v16)
  {
    v87 = NUAssertLogger();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing kCIInputDecoderVersionKey"];
      *buf = 138543362;
      v172 = v88;
      _os_log_error_impl(&dword_1C0184000, v87, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v90 = NUAssertLogger();
    v91 = os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v91)
      {
        v101 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v102 = MEMORY[0x1E696AF00];
        v103 = v101;
        callStackSymbols = [v102 callStackSymbols];
        v105 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v172 = v101;
        v173 = 2114;
        v174 = v105;
        _os_log_error_impl(&dword_1C0184000, v90, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v91)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v93 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v172 = v93;
      _os_log_error_impl(&dword_1C0184000, v90, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode preparedNodeWithSourceContainer:pipelineState:pipelineSettings:sourceSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 832, @"Missing kCIInputDecoderVersionKey", v106, v107, v108, v109, v119);
  }

  v18 = v17;
  if (!v17)
  {
    v94 = NUAssertLogger();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing sushi level"];
      *buf = 138543362;
      v172 = v95;
      _os_log_error_impl(&dword_1C0184000, v94, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v96 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v97 = NUAssertLogger();
    v98 = os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);
    if (v96)
    {
      if (v98)
      {
        v110 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v111 = MEMORY[0x1E696AF00];
        v112 = v110;
        callStackSymbols3 = [v111 callStackSymbols];
        v114 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v172 = v110;
        v173 = 2114;
        v174 = v114;
        _os_log_error_impl(&dword_1C0184000, v97, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v98)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v100 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v172 = v100;
      _os_log_error_impl(&dword_1C0184000, v97, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode preparedNodeWithSourceContainer:pipelineState:pipelineSettings:sourceSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 833, @"Missing sushi level", v115, v116, v117, v118, v119);
  }

  if ([stateCopy auxiliaryImageType] == 1)
  {
    v19 = 1;
LABEL_7:
    auxiliaryImageType = v19;
LABEL_14:
    v21 = [(NURAWImageSourceNode *)self _rawFiltersWithSourceOptions:v15 error:error];
    if (!v21)
    {
      v20 = 0;
LABEL_90:

      goto LABEL_91;
    }

    v127 = [(NURAWImageSourceNode *)self _RAWToneCurveProperties:v21];
    if (auxiliaryImageType == 1)
    {
      v138 = [stateCopy beginGroupWithName:@"RAW" error:error];
      if (!v138)
      {
        v20 = 0;
LABEL_89:

        goto LABEL_90;
      }
    }

    else
    {
      v138 = 0;
    }

    errorCopy = error;
    v121 = v18;
    v122 = v16;
    v133 = stateCopy;
    v146 = auxiliaryImageType == 7;
    v123 = v15;
    v124 = containerCopy;
    v22 = [[NUSubsampleNode alloc] initWithPreparedSource:self container:containerCopy pipelineSettings:settingsCopy sourceOptions:v15];
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v120 = v21;
    obj = v21;
    v137 = [obj countByEnumeratingWithState:&v149 objects:v170 count:16];
    v132 = v22;
    if (!v137)
    {
      v147 = 0;
      v148 = 0;
      v141 = 0;
      v145 = v22;
      v23 = v22;
LABEL_83:

      stateCopy = v133;
      if (v138 && ![v133 endGroupWithName:@"RAW" error:errorCopy])
      {
        v20 = 0;
      }

      else
      {
        v23 = v23;
        v20 = v23;
      }

      v15 = v123;
      containerCopy = v124;
      v18 = v121;
      v16 = v122;
      v85 = v132;
      v84 = v145;
LABEL_88:

      v21 = v120;
      goto LABEL_89;
    }

    v147 = 0;
    v148 = 0;
    v141 = 0;
    v143 = 0;
    v136 = *v150;
    v126 = *MEMORY[0x1E695FAA0];
    v130 = *MEMORY[0x1E695FAB0];
    v125 = *MEMORY[0x1E695FA58];
    v145 = v22;
    v23 = v22;
    v142 = sourceSettingsCopy;
    selfCopy = self;
LABEL_22:
    v25 = 0;
    while (1)
    {
      if (*v150 != v136)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v149 + 1) + 8 * v25);
      v27 = objc_opt_class();
      v144 = NSStringFromClass(v27);
      v28 = [objc_opt_class() _filterTypeForClassName:v144];
      v29 = v28;
      v30 = v28 < 4;
      v33 = (v28 < 9 || auxiliaryImageType != 7) && v28 < 0xB;
      v23 = v23;

      v34 = v145;
      v147 = v34;
      v148 = v23;
      if (((v30 | HIDWORD(v143)) & 1) == 0)
      {
        v35 = [(NUSourceNode *)selfCopy _addResampleNode:v23 subsampleNode:v132];

        v36 = [(NUSourceNode *)selfCopy _addScaleNode:v35 pipelineState:v133 pipelineSettings:settingsCopy sourceSettings:sourceSettingsCopy];

        v34 = v36;
        HIDWORD(v143) = 1;
        v23 = v34;
      }

      if ((v33 | v143))
      {
        v37 = v34;
      }

      else
      {
        v38 = [(NUSourceNode *)selfCopy _addOrientationNode:v23 sourceSettings:sourceSettingsCopy error:errorCopy];

        v37 = [(NUSourceNode *)selfCopy _addOrientationNode:v34 sourceSettings:sourceSettingsCopy error:errorCopy];

        if (!v38)
        {

          v23 = 0;
          v20 = 0;
          v84 = v37;
          v15 = v123;
          containerCopy = v124;
          v85 = v132;
          stateCopy = v133;
          v18 = v121;
          v16 = v122;
          goto LABEL_88;
        }

        LODWORD(v143) = 1;
        v23 = v38;
      }

      if (!v141)
      {
        if ((v29 & 0xFFFFFFFE) != 0xA)
        {
          v141 = 0;
          goto LABEL_49;
        }

        v141 = v23;
      }

      v39 = v29 != 11 || v138 == 0;
      v40 = @"Linear";
      if (!v39)
      {
        goto LABEL_63;
      }

LABEL_49:
      if (v29 == 6 && v138 != 0)
      {
        v40 = @"SushiLevel1";
LABEL_63:
        v46 = [v138 addTag:v40 forNode:v23];

        v43 = 0;
        v42 = 0;
        v23 = v46;
LABEL_64:
        v47 = v23;
        v23 = [(NURAWImageSourceNode *)selfCopy _appendFilter:v26 filterType:v29 settings:sourceSettingsCopy source:v23];

        v145 = [(NURAWImageSourceNode *)selfCopy _appendFilter:v26 filterType:v29 settings:0 source:v37];

        if (((v29 == 9) & v146) == 1)
        {
          v48 = [sourceSettingsCopy objectForKeyedSubscript:@"gainMapVersion"];
          v49 = [sourceSettingsCopy objectForKeyedSubscript:@"gainMapParameters"];
          v50 = [[NURAWGainMapNode alloc] initWithInput:v23 gainMapVersion:v48 gainMapParameters:v49];

          v23 = v50;
        }

        if (v42)
        {
          v51 = [v142 objectForKeyedSubscript:@"debugTransferTone"];
          bOOLValue = [v51 BOOLValue];

          if (bOOLValue)
          {
            [v127 baselineExposure];
            v54 = v53;
            v55 = [NUFilterNode alloc];
            v168 = v126;
            LODWORD(v56) = v54;
            v57 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
            v169 = v57;
            v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
            v166 = v130;
            v167 = v147;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
            v59 = v129 = v43;
            v128 = [(NUFilterNode *)v55 initWithFilterName:@"CIExposureAdjust" settings:v58 inputs:v59];

            v60 = [NUFilterNode alloc];
            v164 = v126;
            LODWORD(v61) = v54;
            v62 = [MEMORY[0x1E696AD98] numberWithFloat:v61];
            v165 = v62;
            v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
            v162 = v130;
            v163 = v148;
            v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
            v65 = [(NUFilterNode *)v60 initWithFilterName:@"CIExposureAdjust" settings:v63 inputs:v64];

            v66 = [v142 objectForKeyedSubscript:@"inputToneMapping"];
            v67 = v66;
            v68 = &unk_1F3F82C20;
            if (v66)
            {
              v68 = v66;
            }

            v69 = v68;

            v70 = [NURawFilterNode alloc];
            v160 = @"inputStrength";
            v161 = v69;
            v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
            v158[0] = v130;
            v159[0] = v65;
            v159[1] = v128;
            v158[1] = @"inputSourceImage";
            v158[2] = @"inputTargetImage";
            v159[2] = v145;
            v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v159 forKeys:v158 count:3];

            v73 = [(NURawFilterNode *)v70 initWithRawFilterName:@"NUToneTransferFilter" type:v29 settings:v71 inputs:v72];
            v43 = v129;

            v23 = v73;
          }
        }

        selfCopy = v139;
        v146 |= v29 == 5;
        if (v43)
        {
          sourceSettingsCopy = v142;
          v74 = [v142 objectForKeyedSubscript:@"debugTransferTone"];
          bOOLValue2 = [v74 BOOLValue];

          if (bOOLValue2)
          {
            v76 = [v142 objectForKeyedSubscript:v125];
            v77 = v76;
            v78 = &unk_1F3F82C20;
            if (v76)
            {
              v78 = v76;
            }

            v79 = v78;

            v80 = [NURawFilterNode alloc];
            v156 = @"inputStrength";
            v157 = v79;
            v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
            v154[0] = v130;
            v154[1] = @"inputSourceImage";
            v155[0] = v148;
            v155[1] = v147;
            v154[2] = @"inputTargetImage";
            v155[2] = v145;
            v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v155 forKeys:v154 count:3];

            v83 = [(NURawFilterNode *)v80 initWithRawFilterName:@"NUToneTransferFilter" type:v29 settings:v81 inputs:v82];
            v23 = v83;
          }
        }

        else
        {
          sourceSettingsCopy = v142;
        }

        goto LABEL_77;
      }

      v42 = v29 == 10;
      v43 = v29 == 14;
      v44 = v29 == 14 || v29 == 10;
      if (!v44 || auxiliaryImageType != 10)
      {
        goto LABEL_64;
      }

      v145 = v37;
LABEL_77:

      if (v137 == ++v25)
      {
        v137 = [obj countByEnumeratingWithState:&v149 objects:v170 count:16];
        if (v137)
        {
          goto LABEL_22;
        }

        goto LABEL_83;
      }
    }
  }

  if ([stateCopy auxiliaryImageType] == 7 && -[NURAWImageSourceNode shouldGenerateMeteorGainMap](self, "shouldGenerateMeteorGainMap"))
  {
    v19 = 7;
    goto LABEL_7;
  }

  if ([stateCopy auxiliaryImageType] == 10)
  {
    auxiliaryImageType = [stateCopy auxiliaryImageType];
    goto LABEL_14;
  }

  v153.receiver = self;
  v153.super_class = NURAWImageSourceNode;
  v20 = [(NUCGImageSourceNode *)&v153 preparedNodeWithSourceContainer:containerCopy pipelineState:stateCopy pipelineSettings:settingsCopy sourceSettings:sourceSettingsCopy error:error];
LABEL_91:

LABEL_92:

  return v20;
}

- (id)_rawFiltersWithSourceOptions:(id)options error:(id *)error
{
  v4 = [(NURAWImageSourceNode *)self _cachedRawImagePropertiesForOptions:options error:error];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DF00]];
    v7 = [v6 objectForKeyedSubscript:@"filters"];

    v8 = [v7 indexOfObjectPassingTest:&__block_literal_global_281];
    v9 = [v7 indexOfObjectPassingTest:&__block_literal_global_283];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL && v8 > v9)
    {
      v12 = v9;
      v13 = [v7 objectAtIndex:v8];
      v14 = [v7 mutableCopy];
      [v14 removeObjectAtIndex:v8];
      [v14 insertObject:v13 atIndex:v12];
      v15 = [v14 copy];

      v7 = v15;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __59__NURAWImageSourceNode__rawFiltersWithSourceOptions_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"RAWLinearSpacePlaceholder"];

  return v3;
}

uint64_t __59__NURAWImageSourceNode__rawFiltersWithSourceOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"RAWProfileGainTableMap"];

  return v3;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  inputsCopy = inputs;
  settingsCopy = settings;
  stateCopy = state;
  if ([stateCopy auxiliaryImageType] == 7 && -[NURAWImageSourceNode shouldGenerateMeteorGainMap](self, "shouldGenerateMeteorGainMap") || objc_msgSend(stateCopy, "auxiliaryImageType") == 10)
  {
    selfCopy = self;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NURAWImageSourceNode;
    selfCopy = [(NUCGImageSourceNode *)&v16 resolvedNodeWithCachedInputs:inputsCopy settings:settingsCopy pipelineState:stateCopy error:error];
  }

  v14 = selfCopy;

  return v14;
}

- (BOOL)supportsPipelineState:(id)state error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!error)
  {
    v10 = NUAssertLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger();
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
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode supportsPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 751, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != nil");
  }

  v7 = stateCopy;
  if ([stateCopy mediaComponentType] == 1)
  {
    if ([v7 auxiliaryImageType] == 7 && -[NURAWImageSourceNode shouldGenerateMeteorGainMap](self, "shouldGenerateMeteorGainMap") || objc_msgSend(v7, "auxiliaryImageType") == 10)
    {
      v8 = 1;
    }

    else
    {
      v26.receiver = self;
      v26.super_class = NURAWImageSourceNode;
      v8 = [(NUCGImageSourceNode *)&v26 supportsPipelineState:v7 error:error];
    }
  }

  else
  {
    [NUError mismatchError:@"expected image media type" object:v7];
    *error = v8 = 0;
  }

  return v8;
}

- (BOOL)shouldGenerateMeteorGainMap
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (+[NUGlobalSettings forceMeteorGainMapGeneration])
  {
    return 1;
  }

  if (+[NUGlobalSettings disableMeteorGainMapGeneration])
  {
    return 0;
  }

  cgImageProperties = [(NUCGImageSourceNode *)self cgImageProperties];
  v5 = [cgImageProperties objectForKeyedSubscript:*MEMORY[0x1E696E090]];

  v6 = [v5 objectForKeyedSubscript:@"kCGImageSourceMethodVersion"];
  v7 = v6;
  if (v6)
  {
    v20 = @"inputDecoderVersion";
    v21[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v17 = 0;
    v9 = [(NURAWImageSourceNode *)self sourceOptionsForSettings:v8 error:&v17];
    v10 = v17;
    if (v9)
    {
      v16 = 0;
      v11 = [(NURAWImageSourceNode *)self _rawFiltersWithSourceOptions:v9 error:&v16];
      v12 = v16;

      if (v11)
      {
        v3 = [(NURAWImageSourceNode *)self _hasLensCorrectionFilter:v11];
      }

      else
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_714);
        }

        v14 = _NULogger;
        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v19 = v12;
          _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Failed to get RAW filters: %{public}@", buf, 0xCu);
        }

        v3 = 0;
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_714);
      }

      v13 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v10;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Failed to get RAW source options: %{public}@", buf, 0xCu);
      }

      v3 = 0;
      v12 = v10;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)sourceOptionsForSettings:(id)settings error:(id *)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if ([(NUSourceNode *)self isValid:error])
  {
    v7 = [(NURAWImageSourceNode *)self _rawMethodVersionForSettings:settingsCopy error:error];
    v8 = v7;
    if (v7)
    {
      v9 = *MEMORY[0x1E696E0C0];
      v18[0] = *MEMORY[0x1E696E0D8];
      v18[1] = v9;
      v19[0] = v7;
      v19[1] = @"1";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v11 = [(NURAWImageSourceNode *)self _cachedRawImagePropertiesForOptions:v10 error:error];
      if (v11)
      {
        v12 = [settingsCopy objectForKeyedSubscript:v9];
        v13 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696E090]];
        v14 = [v13 objectForKeyedSubscript:@"kCGImageSourceSupportedSushiLevels"];

        if (v12 && [v14 containsObject:v12])
        {
          v15 = v12;
        }

        else
        {
          v15 = @"3";
          if (([v14 containsObject:@"3"] & 1) == 0)
          {
            v15 = @"2";
            if (![v14 containsObject:@"2"])
            {
              v15 = @"1";
            }
          }
        }

        v16 = [(NURAWImageSourceNode *)self _sourceOptionsForSettings:settingsCopy rawMethodVersion:v8 sushiLevel:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_appendFilter:(id)filter filterType:(int)type settings:(id)settings source:(id)source
{
  v8 = *&type;
  filterCopy = filter;
  settingsCopy = settings;
  sourceCopy = source;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  switch(v8)
  {
    case 1:
      v14 = [NURAWDemosaicNode alloc];
      v15 = filterCopy;
      v16 = 1;
      goto LABEL_22;
    case 2:
      v34 = [filterCopy valueForKey:@"inputCropRect"];
      v35 = [NUCropNode alloc];
      [v34 CGRectValue];
      v59.origin.x = v36;
      v59.origin.y = v37;
      v59.size.width = v38;
      v59.size.height = v39;
      NU::RectT<long>::RectT(v58, &v59, 2);
      v57[0] = v58[0];
      v57[1] = v58[1];
      v40 = [(NUCropNode *)v35 initWithRect:v57 input:sourceCopy];
      goto LABEL_34;
    case 3:
      v14 = [NURAWGeometryResetNode alloc];
      v15 = filterCopy;
      v16 = 3;
      goto LABEL_22;
    case 4:
      v25 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FAC0]];
      if (v25)
      {
        [v13 setObject:v25 forKeyedSubscript:@"inputLNRAmount"];
      }

      v26 = [settingsCopy objectForKeyedSubscript:@"inputUILuminanceNoiseReductionAmount"];

      if (v26)
      {
        cgImageProperties = [(NUCGImageSourceNode *)self cgImageProperties];
        v28 = [cgImageProperties objectForKeyedSubscript:*MEMORY[0x1E696E090]];

        v29 = [v28 objectForKeyedSubscript:@"kCGImageSourceLuminanceNoiseReductionAmount"];
        [v29 doubleValue];
        v31 = v30;

        [v26 doubleValue];
        if (v32 >= 0.0 || v31 <= 0.0)
        {
          v33 = v31 + fmin(fmax(v32, 0.0), 1.0) * (1.0 - v31);
        }

        else
        {
          v33 = (fmin(fmax(v32, -0.1), 0.0) + 0.1) / 0.1 * v31 + 0.0;
        }

        v49 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
        [v13 setObject:v49 forKeyedSubscript:@"inputLNRAmount"];
      }

      v50 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FA80]];

      if (v50)
      {
        [v13 setObject:v50 forKeyedSubscript:@"inputCNRAmount"];
      }

      v34 = [settingsCopy objectForKeyedSubscript:@"inputUIColorNoiseReductionAmount"];

      if (v34)
      {
        [v34 doubleValue];
        v52 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(fmin((v51 + 1.0) * 0.5, 1.0), 0.0)}];
        [v13 setObject:v52 forKeyedSubscript:@"inputCNRAmount"];
      }

      v53 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FB08]];
      [v13 setObject:v53 forKeyedSubscript:@"inputSharpenAmount"];

      v54 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FAF8]];
      [v13 setObject:v54 forKeyedSubscript:@"inputContrastAmount"];

      v55 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FB00]];
      [v13 setObject:v55 forKeyedSubscript:@"inputDetailAmount"];

      v56 = [NURenderPipelineFunction functionWithName:@"RAWInputScaleFactor" parameters:MEMORY[0x1E695E0F0] evaluationBlock:&__block_literal_global_227];
      [v13 setObject:v56 forKeyedSubscript:@"inputScaleFactor"];

      v40 = [[NURawFilterNode alloc] initWithRawFilter:filterCopy type:4 settings:v13 input:sourceCopy];
LABEL_34:
      p_super = v40;

      goto LABEL_24;
    case 6:
      v18 = [(NURAWImageSourceNode *)self _neutralColorArrayForSettings:settingsCopy];
      [v13 setObject:v18 forKeyedSubscript:@"inputNeutral"];

      v14 = [NURawFilterNode alloc];
      v15 = filterCopy;
      v16 = 6;
      goto LABEL_22;
    case 7:
      v21 = [(NURAWImageSourceNode *)self _neutralColorVectorForSettings:settingsCopy];
      [v13 setObject:v21 forKeyedSubscript:@"inputWhitePoint"];

      v14 = [NURawFilterNode alloc];
      v15 = filterCopy;
      v16 = 7;
      goto LABEL_22;
    case 8:
      v41 = [(NURAWImageSourceNode *)self _neutralColorVectorForSettings:settingsCopy];
      [v13 setObject:v41 forKeyedSubscript:@"inputWhitePoint"];

      v42 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FAA0]];
      [v13 setObject:v42 forKeyedSubscript:@"inputExposure"];

      v14 = [NURawFilterNode alloc];
      v15 = filterCopy;
      v16 = 8;
      goto LABEL_22;
    case 9:
      v43 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FAA0]];
      [v13 setObject:v43 forKeyedSubscript:@"inputExposure"];

      v44 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FA50]];
      [v13 setObject:v44 forKeyedSubscript:@"inputBias"];

      v14 = [NURawFilterNode alloc];
      v15 = filterCopy;
      v16 = 9;
      goto LABEL_22;
    case 10:
      v45 = [settingsCopy objectForKeyedSubscript:@"inputToneMapping"];
      [v13 setObject:v45 forKeyedSubscript:@"inputStrength"];

      v14 = [NURawFilterNode alloc];
      v15 = filterCopy;
      v16 = 10;
      goto LABEL_22;
    case 11:
      goto LABEL_8;
    case 12:
      v17 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FA58]];
      [v13 setObject:v17 forKeyedSubscript:@"inputBoostAmount"];

      v14 = [NURawFilterNode alloc];
      v15 = filterCopy;
      v16 = 12;
      goto LABEL_22;
    case 13:
      v22 = [settingsCopy objectForKeyedSubscript:@"debugDisableGamutMap"];
      bOOLValue = [v22 BOOLValue];

      if (bOOLValue)
      {
LABEL_8:
        v24 = sourceCopy;
      }

      else
      {
        v46 = [settingsCopy objectForKeyedSubscript:@"inputGamutMapMax"];
        [v13 setObject:v46 forKeyedSubscript:@"inputGamutMapMax"];

        v14 = [NURawFilterNode alloc];
        v15 = filterCopy;
        v16 = 13;
LABEL_22:
        v24 = [(NURawFilterNode *)v14 initWithRawFilter:v15 type:v16 settings:v13 input:sourceCopy];
      }

      p_super = &v24->super;
LABEL_24:

      return p_super;
    case 14:
      v19 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FA58]];
      [v13 setObject:v19 forKeyedSubscript:@"inputBoostAmount"];

      v20 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FA60]];
      [v13 setObject:v20 forKeyedSubscript:@"inputBoostShadowAmount"];

      v14 = [NURawFilterNode alloc];
      v15 = filterCopy;
      v16 = 14;
      goto LABEL_22;
    default:
      v14 = [NURawFilterNode alloc];
      v15 = filterCopy;
      v16 = v8;
      goto LABEL_22;
  }
}

uint64_t __65__NURAWImageSourceNode__appendFilter_filterType_settings_source___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 scale];
  v5 = NUScaleToDouble(v3, v4);

  return [v2 numberWithDouble:v5];
}

- (id)_cachedRawImagePropertiesForOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [(NSCache *)self->_propertiesByOptionCache objectForKey:optionsCopy];
  if (!v7)
  {
    v7 = [(NUCGImageSourceNode *)self _evaluateRawImagePropertiesWithSourceOptions:optionsCopy error:error];
    if (v7)
    {
      propertiesByOptionCache = self->_propertiesByOptionCache;
      v9 = [optionsCopy copy];
      [(NSCache *)propertiesByOptionCache setObject:v7 forKey:v9];
    }
  }

  return v7;
}

- (id)_sourceOptionsForSettings:(id)settings rawMethodVersion:(id)version sushiLevel:(id)level
{
  v60 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  versionCopy = version;
  levelCopy = level;
  if (!versionCopy)
  {
    v22 = NUAssertLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "rawMethodVersion != nil"];
      *buf = 138543362;
      v57 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v36;
        v58 = 2114;
        v59 = v40;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode _sourceOptionsForSettings:rawMethodVersion:sushiLevel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 412, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "rawMethodVersion != nil");
  }

  v11 = levelCopy;
  if (!levelCopy)
  {
    v29 = NUAssertLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sushiLevel != nil"];
      *buf = 138543362;
      v57 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols3 = [v46 callStackSymbols];
        v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v45;
        v58 = 2114;
        v59 = v49;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode _sourceOptionsForSettings:rawMethodVersion:sushiLevel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 413, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "sushiLevel != nil");
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v12 setObject:versionCopy forKeyedSubscript:*MEMORY[0x1E696E0D8]];
  [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696E0C0]];
  if ([versionCopy integerValue] > 5)
  {
    if (![v11 isEqualToString:@"1"])
    {
      goto LABEL_10;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FAC0]];
    [v14 setObject:v16 forKeyedSubscript:@"kCGImageSourceLuminanceNoiseReductionAmount"];

    v17 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FA80]];
    [v14 setObject:v17 forKeyedSubscript:@"kCGImageSourceColorNoiseReductionAmount"];

    v18 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FB08]];
    [v14 setObject:v18 forKeyedSubscript:@"kCGImageSourceNoiseReductionSharpnessAmount"];

    v19 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FAF8]];
    [v14 setObject:v19 forKeyedSubscript:@"kCGImageSourceNoiseReductionContrastAmount"];

    v20 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FB00]];
    [v14 setObject:v20 forKeyedSubscript:@"kCGImageSourceNoiseReductionDetailAmount"];

    if ([v14 count])
    {
      [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696E090]];
    }
  }

  else
  {
    v13 = [(NURAWImageSourceNode *)self _neutralColorArrayForSettings:settingsCopy];
    v14 = v13;
    if (v13)
    {
      v54 = @"kCGImageSourceNeutral";
      v55 = v13;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      [v12 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696E090]];
    }
  }

LABEL_10:

  return v12;
}

- (id)_neutralColorVectorForSettings:(id)settings
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v5 = [(NURAWImageSourceNode *)self _neutralColorArrayForSettings:settingsCopy];
  v6 = v5;
  if (v5)
  {
    if ([v5 count] != 2)
    {
      v15 = NUAssertLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        settingsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Incorrect count for neutral: %@, %@", v6, settingsCopy];
        *buf = 138543362;
        v32 = settingsCopy;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v18 = NUAssertLogger();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v19)
        {
          v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v23 = MEMORY[0x1E696AF00];
          v24 = v22;
          callStackSymbols = [v23 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v32 = v22;
          v33 = 2114;
          v34 = v26;
          _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v19)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v32 = v21;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NURAWImageSourceNode _neutralColorVectorForSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 401, @"Incorrect count for neutral: %@, %@", v27, v28, v29, v30, v6);
    }

    v7 = MEMORY[0x1E695F688];
    v8 = [v6 objectAtIndexedSubscript:0];
    [v8 doubleValue];
    v10 = v9;
    v11 = [v6 objectAtIndexedSubscript:1];
    [v11 doubleValue];
    v13 = [v7 vectorWithX:v10 Y:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_neutralColorArrayForSettings:(id)settings
{
  v22[2] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v4 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FAE8]];
  v5 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FAF0]];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v14 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FAD8]];
    v8 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E695FAE0]];
    v15 = v8;
    if (v14)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v21[0] = v14;
    v21[1] = v8;
    v16 = MEMORY[0x1E695DEC8];
    v17 = v21;
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
    [v4 doubleValue];
    v12 = v11;
    [v6 doubleValue];
    nu_tempTint_to_xy(&v20, &v19, v12, v13);
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    v22[0] = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    v22[1] = v15;
    v16 = MEMORY[0x1E695DEC8];
    v17 = v22;
  }

  v10 = [v16 arrayWithObjects:v17 count:2];
LABEL_13:

  return v10;
}

- (id)_rawMethodVersionForSettings:(id)settings error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (!error)
  {
    v17 = NUAssertLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v50 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v31;
        v51 = 2114;
        v52 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode _rawMethodVersionForSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 353, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "error != nil");
  }

  v7 = settingsCopy;
  cgImageProperties = [(NUCGImageSourceNode *)self cgImageProperties];
  v9 = [cgImageProperties objectForKeyedSubscript:*MEMORY[0x1E696E090]];

  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696E088]];
  if (!v10)
  {
    v24 = NUAssertLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No kCISupportedDecoderVersionsKey available: %@", self];
      *buf = 138543362;
      v50 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v40;
        v51 = 2114;
        v52 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode _rawMethodVersionForSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 359, @"No kCISupportedDecoderVersionsKey available: %@", v45, v46, v47, v48, self);
  }

  v11 = v10;
  v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695FA90]];
  if (v12)
  {
    lastObject2 = v12;
    if (([v11 containsObject:v12] & 1) == 0)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_714);
      }

      v14 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v50 = lastObject2;
        v51 = 2112;
        v52 = v11;
        _os_log_impl(&dword_1C0184000, v14, OS_LOG_TYPE_INFO, "Requested kCIInputDecoderVersionKey %@ is not available: %@, falling back to newest", buf, 0x16u);
      }

      lastObject = [v11 lastObject];

      lastObject2 = lastObject;
    }
  }

  else
  {
    lastObject2 = [v11 lastObject];
  }

  return lastObject2;
}

- (BOOL)load:(id *)load
{
  v31 = *MEMORY[0x1E69E9840];
  if (!load)
  {
    v10 = NUAssertLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger();
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
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode load:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 337, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != nil");
  }

  v26.receiver = self;
  v26.super_class = NURAWImageSourceNode;
  v5 = [(NUCGImageSourceNode *)&v26 load:?];
  cgImageProperties = [(NUCGImageSourceNode *)self cgImageProperties];
  v7 = cgImageProperties;
  if (cgImageProperties)
  {
    v8 = [cgImageProperties objectForKeyedSubscript:*MEMORY[0x1E696E090]];

    if (!v8)
    {
      [NUError unsupportedError:@"Unsupported RAW source" object:self];
      *load = v5 = 0;
    }
  }

  return v5;
}

- (id)_evaluateImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!factor)
  {
    v14 = NUAssertLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor != NULL"];
      *buf = 138543362;
      v32 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v21;
        v33 = 2114;
        v34 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 321, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "subsampleFactor != NULL");
  }

  v9 = optionsCopy;
  v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E696E0D8]];
  intValue = [v10 intValue];

  if (intValue <= 5 && *factor >= 2)
  {
    *factor = 1;
  }

  v30.receiver = self;
  v30.super_class = NURAWImageSourceNode;
  v12 = [(NUCGImageSourceNode *)&v30 _evaluateImageWithSourceOptions:v9 subsampleFactor:factor error:error];

  return v12;
}

- (id)_evaluateImageGeometryWithSourceOptions:(id)options error:(id *)error
{
  v6.receiver = self;
  v6.super_class = NURAWImageSourceNode;
  v4 = [(NUCGImageSourceNode *)&v6 _evaluateImageGeometryWithSourceOptions:options error:error];

  return v4;
}

- (id)_evaluateImagePropertiesWithSourceOptions:(id)options error:(id *)error
{
  v7.receiver = self;
  v7.super_class = NURAWImageSourceNode;
  v5 = [(NUCGImageSourceNode *)&v7 _evaluateImagePropertiesWithSourceOptions:options error:error];
  [(NURAWImageSourceNode *)self _processRAWProperties:v5];

  return v5;
}

- (void)_processRAWProperties:(id)properties
{
  propertiesCopy = properties;
  metadata = [propertiesCopy metadata];
  v5 = *MEMORY[0x1E696DF00];
  v6 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696DF00]];

  metadata2 = [propertiesCopy metadata];
  v8 = *MEMORY[0x1E696E090];
  v9 = [metadata2 objectForKeyedSubscript:*MEMORY[0x1E696E090]];

  if (!(v6 | v9) || (([propertiesCopy metadata], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "mutableCopy"), v10, objc_msgSend(v11, "removeObjectForKey:", v5), objc_msgSend(v11, "removeObjectForKey:", v8), objc_msgSend(propertiesCopy, "setMetadata:", v11), v11, v6) ? (v12 = v9 == 0) : (v12 = 1), v12))
  {
    v13 = 0;
  }

  else
  {
    v13 = objc_alloc_init(_NURAWImageProperties);
    v14 = [v9 objectForKeyedSubscript:@"kCGImageSourceMethodVersion"];
    [(_NURAWImageProperties *)v13 setDecoderVersion:v14];

    v15 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696E088]];
    [(_NURAWImageProperties *)v13 setAvailableDecoderVersions:v15];

    v16 = [v6 objectForKeyedSubscript:@"wx"];
    v17 = [v6 objectForKeyedSubscript:@"wy"];
    v18 = v17;
    if (v16 && v17)
    {
      v51 = 0.0;
      v52 = 0.0;
      [v16 doubleValue];
      v20 = v19;
      [v18 doubleValue];
      nu_xy_to_tempTint(&v52, &v51, v20, v21);
      [(_NURAWImageProperties *)v13 setTemperature:v52];
      v22 = v51;
    }

    else
    {
      [(_NURAWImageProperties *)v13 setTemperature:5000.0];
      v22 = 0.0;
    }

    [(_NURAWImageProperties *)v13 setTint:v22];
  }

  v23 = [v9 objectForKeyedSubscript:@"kCGImageSourceLuminanceNoiseReductionAmount"];

  if (v23)
  {
    v24 = objc_alloc_init(_NURAWNoiseReductionProperties);
    v25 = [v9 objectForKeyedSubscript:@"kCGImageSourceLuminanceNoiseReductionAmount"];
    [v25 doubleValue];
    [(_NURAWNoiseReductionProperties *)v24 setLuminance:?];

    v26 = [v9 objectForKeyedSubscript:@"kCGImageSourceColorNoiseReductionAmount"];
    [v26 doubleValue];
    [(_NURAWNoiseReductionProperties *)v24 setColor:?];

    v27 = [v9 objectForKeyedSubscript:@"kCGImageSourceNoiseReductionSharpnessAmount"];
    [v27 doubleValue];
    [(_NURAWNoiseReductionProperties *)v24 setSharpness:?];

    v28 = [v9 objectForKeyedSubscript:@"kCGImageSourceNoiseReductionContrastAmount"];
    [v28 doubleValue];
    [(_NURAWNoiseReductionProperties *)v24 setContrast:?];

    v29 = [v9 objectForKeyedSubscript:@"kCGImageSourceNoiseReductionDetailAmount"];
    [v29 doubleValue];
    [(_NURAWNoiseReductionProperties *)v24 setDetail:?];

    [(_NURAWImageProperties *)v13 setNoiseReductionProperties:v24];
  }

  v30 = [v6 objectForKeyedSubscript:@"filters"];
  v31 = [(NURAWImageSourceNode *)self _RAWCameraSpaceProperties:v30 RAWProperties:v13];
  [(_NURAWImageProperties *)v13 setRawCameraSpaceProperties:v31];

  v32 = [v6 objectForKeyedSubscript:@"filters"];
  v33 = [(NURAWImageSourceNode *)self _RAWToneCurveProperties:v32];
  [(_NURAWImageProperties *)v13 setRawToneCurveProperties:v33];

  metadata3 = [propertiesCopy metadata];
  v35 = [metadata3 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

  v36 = *MEMORY[0x1E69867F8];
  v37 = [v35 objectForKeyedSubscript:*MEMORY[0x1E69867F8]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v39 = [v35 objectForKeyedSubscript:v36];
    unsignedIntValue = [v39 unsignedIntValue];

    if ((unsignedIntValue & 0x10000) != 0)
    {
      [(_NURAWImageProperties *)v13 setIsAppleProRaw:1];
    }
  }

  v41 = [v35 objectForKeyedSubscript:@"23"];
  objc_opt_class();
  v42 = objc_opt_isKindOfClass();

  if (v42)
  {
    v43 = [v35 objectForKeyedSubscript:@"23"];
    unsignedLongLongValue = [v43 unsignedLongLongValue];

    if ((unsignedLongLongValue & 4) != 0)
    {
      [(_NURAWImageProperties *)v13 setIsSensorRawCapture:1];
    }

    if ((unsignedLongLongValue & 0x100000) != 0)
    {
      [(_NURAWImageProperties *)v13 setIsUnifiedBracketingHDRCapture:1];
    }
  }

  v45 = [v35 objectForKeyedSubscript:@"20"];
  objc_opt_class();
  v46 = objc_opt_isKindOfClass();

  if (v46)
  {
    v47 = [v35 objectForKeyedSubscript:@"20"];
    intValue = [v47 intValue];

    if (intValue == 12)
    {
      [(_NURAWImageProperties *)v13 setIsDeepFusion:1];
    }
  }

  v49 = [v6 objectForKeyedSubscript:@"filters"];
  [(_NURAWImageProperties *)v13 setHasLensCorrection:[(NURAWImageSourceNode *)self _hasLensCorrectionFilter:v49]];

  [propertiesCopy setRawProperties:v13];
}

- (BOOL)_hasLensCorrectionFilter:(id)filter
{
  filterCopy = filter;
  v4 = [objc_opt_class() _firstFilterOfType:5 inArray:filterCopy];

  return v4 != 0;
}

- (id)_RAWToneCurveProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [objc_opt_class() _firstFilterOfType:14 inArray:propertiesCopy];
  if (v4)
  {
    v5 = [objc_opt_class() _firstFilterOfType:10 inArray:propertiesCopy];
    v6 = [[_NURAWToneCurveProperties alloc] initWithToneCurveFilter:v4 gainMapTableFilter:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_RAWCameraSpaceProperties:(id)properties RAWProperties:(id)wProperties
{
  wPropertiesCopy = wProperties;
  propertiesCopy = properties;
  v7 = [objc_opt_class() _firstFilterOfType:6 inArray:propertiesCopy];

  [wPropertiesCopy setRawConvert:v7];
  rawConvert = [wPropertiesCopy rawConvert];

  if (rawConvert)
  {
    rawConvert = objc_alloc_init(_NURAWCameraSpaceProperties);
    rawConvert2 = [wPropertiesCopy rawConvert];
    v10 = [rawConvert2 valueForKey:@"inputXYZtoCamera1"];
    [(_NURAWCameraSpaceProperties *)rawConvert setXyzToCamera1:v10];

    rawConvert3 = [wPropertiesCopy rawConvert];
    v12 = [rawConvert3 valueForKey:@"inputXYZtoCamera2"];
    [(_NURAWCameraSpaceProperties *)rawConvert setXyzToCamera2:v12];

    rawConvert4 = [wPropertiesCopy rawConvert];
    v14 = [rawConvert4 valueForKey:@"inputRange"];
    [v14 doubleValue];
    [(_NURAWCameraSpaceProperties *)rawConvert setWhiteValue:?];

    rawConvert5 = [wPropertiesCopy rawConvert];
    v16 = [rawConvert5 valueForKey:@"inputFactor"];
    [v16 doubleValue];
    [(_NURAWCameraSpaceProperties *)rawConvert setWhiteFactor:?];
  }

  return rawConvert;
}

- (void)_addDefaultFinalizedSourceOptions:(id)options
{
  v5.receiver = self;
  v5.super_class = NURAWImageSourceNode;
  optionsCopy = options;
  [(NUCGImageSourceNode *)&v5 _addDefaultFinalizedSourceOptions:optionsCopy];
  v4 = MEMORY[0x1E695E118];
  [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:{*MEMORY[0x1E696E080], v5.receiver, v5.super_class}];
  [optionsCopy setObject:@"1" forKeyedSubscript:*MEMORY[0x1E696E0C0]];
  [optionsCopy setObject:v4 forKeyedSubscript:@"kCGImageSourceShouldUseRawDataForFullSize"];
}

- (NURAWImageSourceNode)initWithURL:(id)l UTI:(id)i settings:(id)settings
{
  v9.receiver = self;
  v9.super_class = NURAWImageSourceNode;
  v5 = [(NUCGImageSourceNode *)&v9 initWithURL:l UTI:i settings:settings];
  v6 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  propertiesByOptionCache = v5->_propertiesByOptionCache;
  v5->_propertiesByOptionCache = v6;

  [(NSCache *)v5->_propertiesByOptionCache setName:@"NURAWImageSourceNode.propertiesCache"];
  [(NSCache *)v5->_propertiesByOptionCache setCountLimit:8];
  return v5;
}

- (NURAWImageSourceNode)initWithURL:(id)l UTI:(id)i identifier:(id)identifier
{
  v53 = *MEMORY[0x1E69E9840];
  lCopy = l;
  iCopy = i;
  identifierCopy = identifier;
  if (!lCopy)
  {
    v15 = NUAssertLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "URL != nil"];
      *buf = 138543362;
      v50 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v29;
        v51 = 2114;
        v52 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode initWithURL:UTI:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 135, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "URL != nil");
  }

  v11 = identifierCopy;
  if (!identifierCopy)
  {
    v22 = NUAssertLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols3 = [v39 callStackSymbols];
        v42 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v38;
        v51 = 2114;
        v52 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode initWithURL:UTI:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 136, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "identifier != nil");
  }

  v47[0] = @"asRAW";
  v47[1] = @"identifier";
  v48[0] = MEMORY[0x1E695E118];
  v48[1] = identifierCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v13 = [(NURAWImageSourceNode *)self initWithURL:lCopy UTI:iCopy settings:v12];

  return v13;
}

- (NURAWImageSourceNode)initWithImageSource:(CGImageSource *)source identifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
  }

  v6 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = v6;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = [v7 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v10, v11];
    *buf = 138543362;
    v33 = v12;
    _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v13 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v13 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
      }

      goto LABEL_8;
    }

    if (v13 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v14 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AF00];
      v16 = v14;
      callStackSymbols = [v15 callStackSymbols];
      v18 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v18;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v19 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = MEMORY[0x1E696AF00];
    v22 = specific;
    v23 = v19;
    callStackSymbols2 = [v21 callStackSymbols];
    v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v33 = specific;
    v34 = 2114;
    v35 = v25;
    _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NURAWImageSourceNode initWithImageSource:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 130, @"Initializer not available: [%@ %@], use designated initializer instead.", v28, v29, v30, v31, v27);
}

+ (int)_filterTypeForClassName:(id)name
{
  nameCopy = name;
  if (_filterTypeForClassName__onceToken != -1)
  {
    dispatch_once(&_filterTypeForClassName__onceToken, &__block_literal_global);
  }

  v4 = [_filterTypeForClassName__typeMapping objectForKeyedSubscript:nameCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

void __48__NURAWImageSourceNode__filterTypeForClassName___block_invoke()
{
  v0 = _filterTypeForClassName__typeMapping;
  _filterTypeForClassName__typeMapping = &unk_1F3F828D8;
}

+ (id)_firstFilterOfType:(int)type inArray:(id)array
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        attributes = [v11 attributes];
        v13 = [attributes objectForKeyedSubscript:@"CIAttributeFilterName"];

        if ([self _filterTypeForClassName:v13] == type)
        {
          v14 = v11;

          goto LABEL_11;
        }
      }

      v8 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

@end