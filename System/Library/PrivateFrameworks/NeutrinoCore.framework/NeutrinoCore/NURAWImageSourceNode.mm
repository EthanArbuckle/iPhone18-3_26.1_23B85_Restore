@interface NURAWImageSourceNode
+ (id)_firstFilterOfType:(int)a3 inArray:(id)a4;
+ (int)_filterTypeForClassName:(id)a3;
- (BOOL)_hasLensCorrectionFilter:(id)a3;
- (BOOL)load:(id *)a3;
- (BOOL)shouldGenerateMeteorGainMap;
- (BOOL)supportsPipelineState:(id)a3 error:(id *)a4;
- (NURAWImageSourceNode)initWithImageSource:(CGImageSource *)a3 identifier:(id)a4;
- (NURAWImageSourceNode)initWithURL:(id)a3 UTI:(id)a4 identifier:(id)a5;
- (NURAWImageSourceNode)initWithURL:(id)a3 UTI:(id)a4 settings:(id)a5;
- (id)_RAWCameraSpaceProperties:(id)a3 RAWProperties:(id)a4;
- (id)_RAWToneCurveProperties:(id)a3;
- (id)_appendFilter:(id)a3 filterType:(int)a4 settings:(id)a5 source:(id)a6;
- (id)_cachedRawImagePropertiesForOptions:(id)a3 error:(id *)a4;
- (id)_evaluateImageGeometryWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5;
- (id)_neutralColorArrayForSettings:(id)a3;
- (id)_neutralColorVectorForSettings:(id)a3;
- (id)_rawFiltersWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_rawMethodVersionForSettings:(id)a3 error:(id *)a4;
- (id)_sourceOptionsForSettings:(id)a3 rawMethodVersion:(id)a4 sushiLevel:(id)a5;
- (id)preparedNodeWithSourceContainer:(id)a3 pipelineState:(id)a4 pipelineSettings:(id)a5 sourceSettings:(id)a6 error:(id *)a7;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (id)sourceOptionsForSettings:(id)a3 error:(id *)a4;
- (void)_addDefaultFinalizedSourceOptions:(id)a3;
- (void)_processRAWProperties:(id)a3;
@end

@implementation NURAWImageSourceNode

- (id)preparedNodeWithSourceContainer:(id)a3 pipelineState:(id)a4 pipelineSettings:(id)a5 sourceSettings:(id)a6 error:(id *)a7
{
  v175 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v135 = a5;
  v14 = a6;
  v15 = [(NURAWImageSourceNode *)self sourceOptionsForSettings:v14 error:a7];
  if (!v15 || (v139 = self, ![(NURAWImageSourceNode *)self supportsPipelineState:v13 error:a7]))
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
        v104 = [v102 callStackSymbols];
        v105 = [v104 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v172 = v101;
        v173 = 2114;
        v174 = v105;
        _os_log_error_impl(&dword_1C0184000, v90, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v91)
    {
      v92 = [MEMORY[0x1E696AF00] callStackSymbols];
      v93 = [v92 componentsJoinedByString:@"\n"];
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
        v113 = [v111 callStackSymbols];
        v114 = [v113 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v172 = v110;
        v173 = 2114;
        v174 = v114;
        _os_log_error_impl(&dword_1C0184000, v97, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v98)
    {
      v99 = [MEMORY[0x1E696AF00] callStackSymbols];
      v100 = [v99 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v172 = v100;
      _os_log_error_impl(&dword_1C0184000, v97, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode preparedNodeWithSourceContainer:pipelineState:pipelineSettings:sourceSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 833, @"Missing sushi level", v115, v116, v117, v118, v119);
  }

  if ([v13 auxiliaryImageType] == 1)
  {
    v19 = 1;
LABEL_7:
    v140 = v19;
LABEL_14:
    v21 = [(NURAWImageSourceNode *)self _rawFiltersWithSourceOptions:v15 error:a7];
    if (!v21)
    {
      v20 = 0;
LABEL_90:

      goto LABEL_91;
    }

    v127 = [(NURAWImageSourceNode *)self _RAWToneCurveProperties:v21];
    if (v140 == 1)
    {
      v138 = [v13 beginGroupWithName:@"RAW" error:a7];
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

    v131 = a7;
    v121 = v18;
    v122 = v16;
    v133 = v13;
    v146 = v140 == 7;
    v123 = v15;
    v124 = v12;
    v22 = [[NUSubsampleNode alloc] initWithPreparedSource:self container:v12 pipelineSettings:v135 sourceOptions:v15];
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

      v13 = v133;
      if (v138 && ![v133 endGroupWithName:@"RAW" error:v131])
      {
        v20 = 0;
      }

      else
      {
        v23 = v23;
        v20 = v23;
      }

      v15 = v123;
      v12 = v124;
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
    v142 = v14;
    v24 = self;
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
      v33 = (v28 < 9 || v140 != 7) && v28 < 0xB;
      v23 = v23;

      v34 = v145;
      v147 = v34;
      v148 = v23;
      if (((v30 | HIDWORD(v143)) & 1) == 0)
      {
        v35 = [(NUSourceNode *)v24 _addResampleNode:v23 subsampleNode:v132];

        v36 = [(NUSourceNode *)v24 _addScaleNode:v35 pipelineState:v133 pipelineSettings:v135 sourceSettings:v14];

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
        v38 = [(NUSourceNode *)v24 _addOrientationNode:v23 sourceSettings:v14 error:v131];

        v37 = [(NUSourceNode *)v24 _addOrientationNode:v34 sourceSettings:v14 error:v131];

        if (!v38)
        {

          v23 = 0;
          v20 = 0;
          v84 = v37;
          v15 = v123;
          v12 = v124;
          v85 = v132;
          v13 = v133;
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
        v23 = [(NURAWImageSourceNode *)v24 _appendFilter:v26 filterType:v29 settings:v14 source:v23];

        v145 = [(NURAWImageSourceNode *)v24 _appendFilter:v26 filterType:v29 settings:0 source:v37];

        if (((v29 == 9) & v146) == 1)
        {
          v48 = [v14 objectForKeyedSubscript:@"gainMapVersion"];
          v49 = [v14 objectForKeyedSubscript:@"gainMapParameters"];
          v50 = [[NURAWGainMapNode alloc] initWithInput:v23 gainMapVersion:v48 gainMapParameters:v49];

          v23 = v50;
        }

        if (v42)
        {
          v51 = [v142 objectForKeyedSubscript:@"debugTransferTone"];
          v52 = [v51 BOOLValue];

          if (v52)
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

        v24 = v139;
        v146 |= v29 == 5;
        if (v43)
        {
          v14 = v142;
          v74 = [v142 objectForKeyedSubscript:@"debugTransferTone"];
          v75 = [v74 BOOLValue];

          if (v75)
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
          v14 = v142;
        }

        goto LABEL_77;
      }

      v42 = v29 == 10;
      v43 = v29 == 14;
      v44 = v29 == 14 || v29 == 10;
      if (!v44 || v140 != 10)
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

  if ([v13 auxiliaryImageType] == 7 && -[NURAWImageSourceNode shouldGenerateMeteorGainMap](self, "shouldGenerateMeteorGainMap"))
  {
    v19 = 7;
    goto LABEL_7;
  }

  if ([v13 auxiliaryImageType] == 10)
  {
    v140 = [v13 auxiliaryImageType];
    goto LABEL_14;
  }

  v153.receiver = self;
  v153.super_class = NURAWImageSourceNode;
  v20 = [(NUCGImageSourceNode *)&v153 preparedNodeWithSourceContainer:v12 pipelineState:v13 pipelineSettings:v135 sourceSettings:v14 error:a7];
LABEL_91:

LABEL_92:

  return v20;
}

- (id)_rawFiltersWithSourceOptions:(id)a3 error:(id *)a4
{
  v4 = [(NURAWImageSourceNode *)self _cachedRawImagePropertiesForOptions:a3 error:a4];
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

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v12 auxiliaryImageType] == 7 && -[NURAWImageSourceNode shouldGenerateMeteorGainMap](self, "shouldGenerateMeteorGainMap") || objc_msgSend(v12, "auxiliaryImageType") == 10)
  {
    v13 = self;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NURAWImageSourceNode;
    v13 = [(NUCGImageSourceNode *)&v16 resolvedNodeWithCachedInputs:v10 settings:v11 pipelineState:v12 error:a6];
  }

  v14 = v13;

  return v14;
}

- (BOOL)supportsPipelineState:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
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
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode supportsPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 751, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != nil");
  }

  v7 = v6;
  if ([v6 mediaComponentType] == 1)
  {
    if ([v7 auxiliaryImageType] == 7 && -[NURAWImageSourceNode shouldGenerateMeteorGainMap](self, "shouldGenerateMeteorGainMap") || objc_msgSend(v7, "auxiliaryImageType") == 10)
    {
      v8 = 1;
    }

    else
    {
      v26.receiver = self;
      v26.super_class = NURAWImageSourceNode;
      v8 = [(NUCGImageSourceNode *)&v26 supportsPipelineState:v7 error:a4];
    }
  }

  else
  {
    [NUError mismatchError:@"expected image media type" object:v7];
    *a4 = v8 = 0;
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

  v4 = [(NUCGImageSourceNode *)self cgImageProperties];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696E090]];

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

- (id)sourceOptionsForSettings:(id)a3 error:(id *)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(NUSourceNode *)self isValid:a4])
  {
    v7 = [(NURAWImageSourceNode *)self _rawMethodVersionForSettings:v6 error:a4];
    v8 = v7;
    if (v7)
    {
      v9 = *MEMORY[0x1E696E0C0];
      v18[0] = *MEMORY[0x1E696E0D8];
      v18[1] = v9;
      v19[0] = v7;
      v19[1] = @"1";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v11 = [(NURAWImageSourceNode *)self _cachedRawImagePropertiesForOptions:v10 error:a4];
      if (v11)
      {
        v12 = [v6 objectForKeyedSubscript:v9];
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

        v16 = [(NURAWImageSourceNode *)self _sourceOptionsForSettings:v6 rawMethodVersion:v8 sushiLevel:v15];
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

- (id)_appendFilter:(id)a3 filterType:(int)a4 settings:(id)a5 source:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  switch(v8)
  {
    case 1:
      v14 = [NURAWDemosaicNode alloc];
      v15 = v10;
      v16 = 1;
      goto LABEL_22;
    case 2:
      v34 = [v10 valueForKey:@"inputCropRect"];
      v35 = [NUCropNode alloc];
      [v34 CGRectValue];
      v59.origin.x = v36;
      v59.origin.y = v37;
      v59.size.width = v38;
      v59.size.height = v39;
      NU::RectT<long>::RectT(v58, &v59, 2);
      v57[0] = v58[0];
      v57[1] = v58[1];
      v40 = [(NUCropNode *)v35 initWithRect:v57 input:v12];
      goto LABEL_34;
    case 3:
      v14 = [NURAWGeometryResetNode alloc];
      v15 = v10;
      v16 = 3;
      goto LABEL_22;
    case 4:
      v25 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FAC0]];
      if (v25)
      {
        [v13 setObject:v25 forKeyedSubscript:@"inputLNRAmount"];
      }

      v26 = [v11 objectForKeyedSubscript:@"inputUILuminanceNoiseReductionAmount"];

      if (v26)
      {
        v27 = [(NUCGImageSourceNode *)self cgImageProperties];
        v28 = [v27 objectForKeyedSubscript:*MEMORY[0x1E696E090]];

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

      v50 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FA80]];

      if (v50)
      {
        [v13 setObject:v50 forKeyedSubscript:@"inputCNRAmount"];
      }

      v34 = [v11 objectForKeyedSubscript:@"inputUIColorNoiseReductionAmount"];

      if (v34)
      {
        [v34 doubleValue];
        v52 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(fmin((v51 + 1.0) * 0.5, 1.0), 0.0)}];
        [v13 setObject:v52 forKeyedSubscript:@"inputCNRAmount"];
      }

      v53 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FB08]];
      [v13 setObject:v53 forKeyedSubscript:@"inputSharpenAmount"];

      v54 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FAF8]];
      [v13 setObject:v54 forKeyedSubscript:@"inputContrastAmount"];

      v55 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FB00]];
      [v13 setObject:v55 forKeyedSubscript:@"inputDetailAmount"];

      v56 = [NURenderPipelineFunction functionWithName:@"RAWInputScaleFactor" parameters:MEMORY[0x1E695E0F0] evaluationBlock:&__block_literal_global_227];
      [v13 setObject:v56 forKeyedSubscript:@"inputScaleFactor"];

      v40 = [[NURawFilterNode alloc] initWithRawFilter:v10 type:4 settings:v13 input:v12];
LABEL_34:
      p_super = v40;

      goto LABEL_24;
    case 6:
      v18 = [(NURAWImageSourceNode *)self _neutralColorArrayForSettings:v11];
      [v13 setObject:v18 forKeyedSubscript:@"inputNeutral"];

      v14 = [NURawFilterNode alloc];
      v15 = v10;
      v16 = 6;
      goto LABEL_22;
    case 7:
      v21 = [(NURAWImageSourceNode *)self _neutralColorVectorForSettings:v11];
      [v13 setObject:v21 forKeyedSubscript:@"inputWhitePoint"];

      v14 = [NURawFilterNode alloc];
      v15 = v10;
      v16 = 7;
      goto LABEL_22;
    case 8:
      v41 = [(NURAWImageSourceNode *)self _neutralColorVectorForSettings:v11];
      [v13 setObject:v41 forKeyedSubscript:@"inputWhitePoint"];

      v42 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FAA0]];
      [v13 setObject:v42 forKeyedSubscript:@"inputExposure"];

      v14 = [NURawFilterNode alloc];
      v15 = v10;
      v16 = 8;
      goto LABEL_22;
    case 9:
      v43 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FAA0]];
      [v13 setObject:v43 forKeyedSubscript:@"inputExposure"];

      v44 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FA50]];
      [v13 setObject:v44 forKeyedSubscript:@"inputBias"];

      v14 = [NURawFilterNode alloc];
      v15 = v10;
      v16 = 9;
      goto LABEL_22;
    case 10:
      v45 = [v11 objectForKeyedSubscript:@"inputToneMapping"];
      [v13 setObject:v45 forKeyedSubscript:@"inputStrength"];

      v14 = [NURawFilterNode alloc];
      v15 = v10;
      v16 = 10;
      goto LABEL_22;
    case 11:
      goto LABEL_8;
    case 12:
      v17 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FA58]];
      [v13 setObject:v17 forKeyedSubscript:@"inputBoostAmount"];

      v14 = [NURawFilterNode alloc];
      v15 = v10;
      v16 = 12;
      goto LABEL_22;
    case 13:
      v22 = [v11 objectForKeyedSubscript:@"debugDisableGamutMap"];
      v23 = [v22 BOOLValue];

      if (v23)
      {
LABEL_8:
        v24 = v12;
      }

      else
      {
        v46 = [v11 objectForKeyedSubscript:@"inputGamutMapMax"];
        [v13 setObject:v46 forKeyedSubscript:@"inputGamutMapMax"];

        v14 = [NURawFilterNode alloc];
        v15 = v10;
        v16 = 13;
LABEL_22:
        v24 = [(NURawFilterNode *)v14 initWithRawFilter:v15 type:v16 settings:v13 input:v12];
      }

      p_super = &v24->super;
LABEL_24:

      return p_super;
    case 14:
      v19 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FA58]];
      [v13 setObject:v19 forKeyedSubscript:@"inputBoostAmount"];

      v20 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FA60]];
      [v13 setObject:v20 forKeyedSubscript:@"inputBoostShadowAmount"];

      v14 = [NURawFilterNode alloc];
      v15 = v10;
      v16 = 14;
      goto LABEL_22;
    default:
      v14 = [NURawFilterNode alloc];
      v15 = v10;
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

- (id)_cachedRawImagePropertiesForOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSCache *)self->_propertiesByOptionCache objectForKey:v6];
  if (!v7)
  {
    v7 = [(NUCGImageSourceNode *)self _evaluateRawImagePropertiesWithSourceOptions:v6 error:a4];
    if (v7)
    {
      propertiesByOptionCache = self->_propertiesByOptionCache;
      v9 = [v6 copy];
      [(NSCache *)propertiesByOptionCache setObject:v7 forKey:v9];
    }
  }

  return v7;
}

- (id)_sourceOptionsForSettings:(id)a3 rawMethodVersion:(id)a4 sushiLevel:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
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
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v36;
        v58 = 2114;
        v59 = v40;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode _sourceOptionsForSettings:rawMethodVersion:sushiLevel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 412, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "rawMethodVersion != nil");
  }

  v11 = v10;
  if (!v10)
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
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v45;
        v58 = 2114;
        v59 = v49;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode _sourceOptionsForSettings:rawMethodVersion:sushiLevel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 413, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "sushiLevel != nil");
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v12 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696E0D8]];
  [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696E0C0]];
  if ([v9 integerValue] > 5)
  {
    if (![v11 isEqualToString:@"1"])
    {
      goto LABEL_10;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695FAC0]];
    [v14 setObject:v16 forKeyedSubscript:@"kCGImageSourceLuminanceNoiseReductionAmount"];

    v17 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695FA80]];
    [v14 setObject:v17 forKeyedSubscript:@"kCGImageSourceColorNoiseReductionAmount"];

    v18 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695FB08]];
    [v14 setObject:v18 forKeyedSubscript:@"kCGImageSourceNoiseReductionSharpnessAmount"];

    v19 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695FAF8]];
    [v14 setObject:v19 forKeyedSubscript:@"kCGImageSourceNoiseReductionContrastAmount"];

    v20 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695FB00]];
    [v14 setObject:v20 forKeyedSubscript:@"kCGImageSourceNoiseReductionDetailAmount"];

    if ([v14 count])
    {
      [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696E090]];
    }
  }

  else
  {
    v13 = [(NURAWImageSourceNode *)self _neutralColorArrayForSettings:v8];
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

- (id)_neutralColorVectorForSettings:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NURAWImageSourceNode *)self _neutralColorArrayForSettings:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 count] != 2)
    {
      v15 = NUAssertLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Incorrect count for neutral: %@, %@", v6, v4];
        *buf = 138543362;
        v32 = v16;
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
          v25 = [v23 callStackSymbols];
          v26 = [v25 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v32 = v22;
          v33 = 2114;
          v34 = v26;
          _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v19)
      {
        v20 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
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

- (id)_neutralColorArrayForSettings:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695FAE8]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695FAF0]];
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
    v14 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695FAD8]];
    v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695FAE0]];
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

- (id)_rawMethodVersionForSettings:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
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
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v31;
        v51 = 2114;
        v52 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode _rawMethodVersionForSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 353, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "error != nil");
  }

  v7 = v6;
  v8 = [(NUCGImageSourceNode *)self cgImageProperties];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696E090]];

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
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v40;
        v51 = 2114;
        v52 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
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
    v13 = v12;
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
        v50 = v13;
        v51 = 2112;
        v52 = v11;
        _os_log_impl(&dword_1C0184000, v14, OS_LOG_TYPE_INFO, "Requested kCIInputDecoderVersionKey %@ is not available: %@, falling back to newest", buf, 0x16u);
      }

      v15 = [v11 lastObject];

      v13 = v15;
    }
  }

  else
  {
    v13 = [v11 lastObject];
  }

  return v13;
}

- (BOOL)load:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode load:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 337, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != nil");
  }

  v26.receiver = self;
  v26.super_class = NURAWImageSourceNode;
  v5 = [(NUCGImageSourceNode *)&v26 load:?];
  v6 = [(NUCGImageSourceNode *)self cgImageProperties];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696E090]];

    if (!v8)
    {
      [NUError unsupportedError:@"Unsupported RAW source" object:self];
      *a3 = v5 = 0;
    }
  }

  return v5;
}

- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a4)
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
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v21;
        v33 = 2114;
        v34 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 321, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "subsampleFactor != NULL");
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696E0D8]];
  v11 = [v10 intValue];

  if (v11 <= 5 && *a4 >= 2)
  {
    *a4 = 1;
  }

  v30.receiver = self;
  v30.super_class = NURAWImageSourceNode;
  v12 = [(NUCGImageSourceNode *)&v30 _evaluateImageWithSourceOptions:v9 subsampleFactor:a4 error:a5];

  return v12;
}

- (id)_evaluateImageGeometryWithSourceOptions:(id)a3 error:(id *)a4
{
  v6.receiver = self;
  v6.super_class = NURAWImageSourceNode;
  v4 = [(NUCGImageSourceNode *)&v6 _evaluateImageGeometryWithSourceOptions:a3 error:a4];

  return v4;
}

- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4
{
  v7.receiver = self;
  v7.super_class = NURAWImageSourceNode;
  v5 = [(NUCGImageSourceNode *)&v7 _evaluateImagePropertiesWithSourceOptions:a3 error:a4];
  [(NURAWImageSourceNode *)self _processRAWProperties:v5];

  return v5;
}

- (void)_processRAWProperties:(id)a3
{
  v50 = a3;
  v4 = [v50 metadata];
  v5 = *MEMORY[0x1E696DF00];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DF00]];

  v7 = [v50 metadata];
  v8 = *MEMORY[0x1E696E090];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696E090]];

  if (!(v6 | v9) || (([v50 metadata], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "mutableCopy"), v10, objc_msgSend(v11, "removeObjectForKey:", v5), objc_msgSend(v11, "removeObjectForKey:", v8), objc_msgSend(v50, "setMetadata:", v11), v11, v6) ? (v12 = v9 == 0) : (v12 = 1), v12))
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

  v34 = [v50 metadata];
  v35 = [v34 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

  v36 = *MEMORY[0x1E69867F8];
  v37 = [v35 objectForKeyedSubscript:*MEMORY[0x1E69867F8]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v39 = [v35 objectForKeyedSubscript:v36];
    v40 = [v39 unsignedIntValue];

    if ((v40 & 0x10000) != 0)
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
    v44 = [v43 unsignedLongLongValue];

    if ((v44 & 4) != 0)
    {
      [(_NURAWImageProperties *)v13 setIsSensorRawCapture:1];
    }

    if ((v44 & 0x100000) != 0)
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
    v48 = [v47 intValue];

    if (v48 == 12)
    {
      [(_NURAWImageProperties *)v13 setIsDeepFusion:1];
    }
  }

  v49 = [v6 objectForKeyedSubscript:@"filters"];
  [(_NURAWImageProperties *)v13 setHasLensCorrection:[(NURAWImageSourceNode *)self _hasLensCorrectionFilter:v49]];

  [v50 setRawProperties:v13];
}

- (BOOL)_hasLensCorrectionFilter:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _firstFilterOfType:5 inArray:v3];

  return v4 != 0;
}

- (id)_RAWToneCurveProperties:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _firstFilterOfType:14 inArray:v3];
  if (v4)
  {
    v5 = [objc_opt_class() _firstFilterOfType:10 inArray:v3];
    v6 = [[_NURAWToneCurveProperties alloc] initWithToneCurveFilter:v4 gainMapTableFilter:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_RAWCameraSpaceProperties:(id)a3 RAWProperties:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _firstFilterOfType:6 inArray:v6];

  [v5 setRawConvert:v7];
  v8 = [v5 rawConvert];

  if (v8)
  {
    v8 = objc_alloc_init(_NURAWCameraSpaceProperties);
    v9 = [v5 rawConvert];
    v10 = [v9 valueForKey:@"inputXYZtoCamera1"];
    [(_NURAWCameraSpaceProperties *)v8 setXyzToCamera1:v10];

    v11 = [v5 rawConvert];
    v12 = [v11 valueForKey:@"inputXYZtoCamera2"];
    [(_NURAWCameraSpaceProperties *)v8 setXyzToCamera2:v12];

    v13 = [v5 rawConvert];
    v14 = [v13 valueForKey:@"inputRange"];
    [v14 doubleValue];
    [(_NURAWCameraSpaceProperties *)v8 setWhiteValue:?];

    v15 = [v5 rawConvert];
    v16 = [v15 valueForKey:@"inputFactor"];
    [v16 doubleValue];
    [(_NURAWCameraSpaceProperties *)v8 setWhiteFactor:?];
  }

  return v8;
}

- (void)_addDefaultFinalizedSourceOptions:(id)a3
{
  v5.receiver = self;
  v5.super_class = NURAWImageSourceNode;
  v3 = a3;
  [(NUCGImageSourceNode *)&v5 _addDefaultFinalizedSourceOptions:v3];
  v4 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:{*MEMORY[0x1E696E080], v5.receiver, v5.super_class}];
  [v3 setObject:@"1" forKeyedSubscript:*MEMORY[0x1E696E0C0]];
  [v3 setObject:v4 forKeyedSubscript:@"kCGImageSourceShouldUseRawDataForFullSize"];
}

- (NURAWImageSourceNode)initWithURL:(id)a3 UTI:(id)a4 settings:(id)a5
{
  v9.receiver = self;
  v9.super_class = NURAWImageSourceNode;
  v5 = [(NUCGImageSourceNode *)&v9 initWithURL:a3 UTI:a4 settings:a5];
  v6 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  propertiesByOptionCache = v5->_propertiesByOptionCache;
  v5->_propertiesByOptionCache = v6;

  [(NSCache *)v5->_propertiesByOptionCache setName:@"NURAWImageSourceNode.propertiesCache"];
  [(NSCache *)v5->_propertiesByOptionCache setCountLimit:8];
  return v5;
}

- (NURAWImageSourceNode)initWithURL:(id)a3 UTI:(id)a4 identifier:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
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
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v29;
        v51 = 2114;
        v52 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode initWithURL:UTI:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 135, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "URL != nil");
  }

  v11 = v10;
  if (!v10)
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
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v38;
        v51 = 2114;
        v52 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURAWImageSourceNode initWithURL:UTI:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 136, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "identifier != nil");
  }

  v47[0] = @"asRAW";
  v47[1] = @"identifier";
  v48[0] = MEMORY[0x1E695E118];
  v48[1] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v13 = [(NURAWImageSourceNode *)self initWithURL:v8 UTI:v9 settings:v12];

  return v13;
}

- (NURAWImageSourceNode)initWithImageSource:(CGImageSource *)a3 identifier:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a4;
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
      v17 = [v15 callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
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
    v24 = [v21 callStackSymbols];
    v25 = [v24 componentsJoinedByString:@"\n"];
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

+ (int)_filterTypeForClassName:(id)a3
{
  v3 = a3;
  if (_filterTypeForClassName__onceToken != -1)
  {
    dispatch_once(&_filterTypeForClassName__onceToken, &__block_literal_global);
  }

  v4 = [_filterTypeForClassName__typeMapping objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __48__NURAWImageSourceNode__filterTypeForClassName___block_invoke()
{
  v0 = _filterTypeForClassName__typeMapping;
  _filterTypeForClassName__typeMapping = &unk_1F3F828D8;
}

+ (id)_firstFilterOfType:(int)a3 inArray:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 attributes];
        v13 = [v12 objectForKeyedSubscript:@"CIAttributeFilterName"];

        if ([a1 _filterTypeForClassName:v13] == a3)
        {
          v14 = v11;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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