@interface NUStyleTransferApplyNode
- (NUStyleTransferApplyNode)initWithInput:(id)a3 thumbnail:(id)a4 target:(id)a5 settings:(id)a6;
- (id)_evaluateImage:(id *)a3;
- (id)configuration;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (id)targetColorSpace;
- (id)tuningParameters;
@end

@implementation NUStyleTransferApplyNode

- (id)_evaluateImage:(id *)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = [(NUStyleTransferNode *)self inputNode];
  v41 = 0;
  v6 = [v5 outputImage:&v41];
  v7 = v41;

  if (!v6)
  {
    v9 = [(NUStyleTransferNode *)self inputNode];
    [NUError errorWithCode:1 reason:@"Failed to get input image" object:v9 underlyingError:v7];
    *a3 = v23 = 0;
    goto LABEL_36;
  }

  v8 = [(NUStyleTransferApplyNode *)self thumbnailNode];
  v40 = 0;
  v9 = [v8 outputImage:&v40];
  v10 = v40;

  if (v9)
  {
    v11 = [(NUStyleTransferApplyNode *)self styleNode];
    v12 = v11;
    if (!v11)
    {
      v12 = [(NUStyleTransferNode *)self targetNode];
    }

    v39 = 0;
    v13 = [v12 outputImage:&v39];
    v14 = v39;

    if (!v11)
    {
    }

    if (!v13)
    {
      v23 = v6;
LABEL_34:
      v10 = v14;
      goto LABEL_35;
    }

    v15 = [(NUStyleTransferApplyNode *)self configuration];
    v16 = [v15 mutableCopy];

    [v16 setObject:&unk_1F3F828C0 forKeyedSubscript:@"useFloat16"];
    v17 = [(NUStyleTransferApplyNode *)self tuningParameters];
    v37 = [(NUStyleTransferApplyNode *)self targetColorSpace];
    v18 = [v17 objectForKeyedSubscript:@"ResidualScaleFactor"];
    [v18 floatValue];
    v20 = v19;

    if (v20 <= 0.0)
    {
      goto LABEL_14;
    }

    if (+[NUGlobalSettings semanticStyleDisableResiduals])
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
      }

      v21 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C0184000, v21, OS_LOG_TYPE_INFO, "NUStyleTransferApplyNode: not applying residuals, disabled", buf, 2u);
      }

LABEL_14:
      v22 = 0;
LABEL_33:
      v32 = [(NUStyleTransferNode *)self noiseModel];
      v23 = [_NUStyleTransferApplyProcessor applyStyle:v13 toImage:v6 thumbnail:v9 target:v22 deltaMap:0 colorSpace:v37 configuration:v16 tuningParameters:v17 noiseModel:v32 error:a3];

      goto LABEL_34;
    }

    v24 = [(NUStyleTransferApplyNode *)self styleNode];
    v36 = [v24 targetNode];

    v25 = [(NUStyleTransferApplyNode *)self styleNode];
    v26 = [v25 thumbnailNode];

    v34 = [(NUStyleTransferApplyNode *)self thumbnailNode];
    v35 = v26;
    if (v26 == v34 || +[NUGlobalSettings semanticStyleAllowResidualsMismatch])
    {
      v27 = [(NUStyleTransferApplyNode *)self thumbnailNode];

      if (v26 != v27)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
        }

        v28 = _NULogger;
        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C0184000, v28, OS_LOG_TYPE_INFO, "NUStyleTransferApplyNode: applying residuals even though thumbnails do not match", buf, 2u);
        }
      }

      v38 = 0;
      v22 = [v36 outputImage:&v38];
      v29 = v38;

      if (v22)
      {
        v14 = v29;
        v30 = v36;
LABEL_32:

        goto LABEL_33;
      }

      v31 = NULogger_30639();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v29;
        v43 = v29;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "NUStyleTransferApplyNode: not applying residuals because of error: %{public}@", buf, 0xCu);
      }

      else
      {
        v14 = v29;
      }
    }

    else
    {
      v31 = NULogger_30639();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C0184000, v31, OS_LOG_TYPE_INFO, "NUStyleTransferApplyNode: not applying residuals because thumbnails do not match", buf, 2u);
      }
    }

    v30 = v36;

    v22 = 0;
    goto LABEL_32;
  }

  v13 = [(NUStyleTransferApplyNode *)self thumbnailNode];
  [NUError errorWithCode:1 reason:@"Failed to get input thumbnail image" object:v13 underlyingError:v10];
  *a3 = v23 = 0;
LABEL_35:

  v7 = v10;
LABEL_36:

  return v23;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [a4 mutableCopy];
  v13 = [v10 objectForKeyedSubscript:@"target"];
  v14 = [v13 configuration];
  v15 = [v14 objectForKeyedSubscript:@"applySyntheticNoise"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = [(NUStyleTransferNode *)self inputNode];
    v18 = [v17 imageProperties:a6];

    if (!v18)
    {
      v34 = 0;
      goto LABEL_13;
    }

    v19 = [v18 metadata];
    v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    v21 = [v20 objectForKeyedSubscript:@"90"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v20;
      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __86__NUStyleTransferApplyNode_resolvedNodeWithCachedInputs_settings_pipelineState_error___block_invoke;
      v42[3] = &unk_1E810B7D8;
      v43 = v11;
      v39 = self;
      v23 = MEMORY[0x1C68D98A0](v42);
      [v21 objectForKeyedSubscript:@"0"];
      v24 = v38 = v18;
      [v22 setObject:v24 forKeyedSubscript:@"Version"];

      v25 = [v21 objectForKeyedSubscript:@"1"];
      (v23)[2](v23, v25);
      v26 = v40 = a6;
      [v22 setObject:v26 forKeyedSubscript:@"ReadNoise"];

      v27 = [v21 objectForKeyedSubscript:@"2"];
      v28 = (v23)[2](v23, v27);
      [v22 setObject:v28 forKeyedSubscript:@"ShotNoise"];

      v29 = [v21 objectForKeyedSubscript:@"3"];
      v30 = (v23)[2](v23, v29);
      [v22 setObject:v30 forKeyedSubscript:@"SquaredNoise"];

      v31 = [v21 objectForKeyedSubscript:@"4"];
      v32 = (v23)[2](v23, v31);
      [v22 setObject:v32 forKeyedSubscript:@"SpatialSigma"];

      v18 = v38;
      v33 = [v22 copy];
      [v12 setObject:v33 forKeyedSubscript:NUStyleTransferNodeNoiseModelKey];

      a6 = v40;
      self = v39;

      v20 = v37;
    }

    else if (v21)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
      }

      v35 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v45 = v21;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Invalid noise model from makernote, ignored: %{public}@", buf, 0xCu);
      }
    }
  }

  v41.receiver = self;
  v41.super_class = NUStyleTransferApplyNode;
  v34 = [(NUStyleTransferNode *)&v41 resolvedNodeWithCachedInputs:v10 settings:v12 pipelineState:v11 error:a6];
LABEL_13:

  return v34;
}

id __86__NUStyleTransferApplyNode_resolvedNodeWithCachedInputs_settings_pipelineState_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696AD98];
    [v3 doubleValue];
    v6 = v5;
    v7 = [*(a1 + 32) scale];
    v9 = [v4 numberWithDouble:{v6 * NUScaleToDouble(v7, v8)}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NUStyleTransferNode *)self inputNode];
  v11 = [v10 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];

  if (!v11)
  {
    v14 = 0;
    goto LABEL_22;
  }

  if ([v9 auxiliaryImageType] != 1)
  {
    v15 = v11;
LABEL_11:
    v14 = v15;
    goto LABEL_22;
  }

  if (![v9 evaluationMode])
  {
    v26.receiver = self;
    v26.super_class = NUStyleTransferApplyNode;
    v15 = [(NUStyleTransferNode *)&v26 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
    goto LABEL_11;
  }

  v12 = [(NUStyleTransferNode *)self targetNode];
  v13 = [v12 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 evaluationMode] == 2)
      {
        v14 = v13;
      }

      else
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v16 setObject:v11 forKeyedSubscript:@"input"];
        [v16 setObject:v13 forKeyedSubscript:@"target"];
        v17 = [(NUStyleTransferApplyNode *)self thumbnailNode];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = [(NUStyleTransferNode *)self inputNode];
        }

        v20 = v19;

        v21 = [NUStyleTransferThumbnailNode alloc];
        v22 = [v13 settings];
        v23 = [(NUStyleTransferThumbnailNode *)v21 initWithInput:v20 settings:v22];

        v24 = [(NUStyleTransferThumbnailNode *)v23 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];

        if (v24)
        {
          [v16 setObject:v24 forKeyedSubscript:@"thumbnail"];
          v14 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v16 cache:v8 pipelineState:v9 error:a5];
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      [NUError invalidError:@"Invalid style node" object:v13];
      *a5 = v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (id)configuration
{
  v2 = [(NUStyleTransferApplyNode *)self styleNode];
  v3 = [v2 configuration];

  return v3;
}

- (id)tuningParameters
{
  v2 = [(NUStyleTransferApplyNode *)self styleNode];
  v3 = [v2 tuningParameters];

  return v3;
}

- (id)targetColorSpace
{
  v2 = [(NUStyleTransferApplyNode *)self styleNode];
  v3 = [v2 targetColorSpace];

  return v3;
}

- (NUStyleTransferApplyNode)initWithInput:(id)a3 thumbnail:(id)a4 target:(id)a5 settings:(id)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v19 = NUAssertLogger_30110();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v70 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_30110();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v40;
        v71 = 2114;
        v72 = v44;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferApplyNode initWithInput:thumbnail:target:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1438, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "input != nil");
  }

  if (!v11)
  {
    v26 = NUAssertLogger_30110();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "thumbnail != nil"];
      *buf = 138543362;
      v70 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_30110();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v49;
        v71 = 2114;
        v72 = v53;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferApplyNode initWithInput:thumbnail:target:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1439, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "thumbnail != nil");
  }

  if (!v12)
  {
    v33 = NUAssertLogger_30110();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "target != nil"];
      *buf = 138543362;
      v70 = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_30110();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v59 = MEMORY[0x1E696AF00];
        v60 = v58;
        v61 = [v59 callStackSymbols];
        v62 = [v61 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v58;
        v71 = 2114;
        v72 = v62;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferApplyNode initWithInput:thumbnail:target:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1440, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "target != nil");
  }

  v14 = v13;
  v15 = [v13 mutableCopy];
  [v15 setObject:@"input" forKeyedSubscript:@"__dominantInputSettingsKey"];
  v67[0] = @"input";
  v67[1] = @"target";
  v68[0] = v10;
  v68[1] = v12;
  v67[2] = @"thumbnail";
  v68[2] = v11;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:3];
  v17 = [(NURenderNode *)self initWithSettings:v15 inputs:v16];

  return v17;
}

@end