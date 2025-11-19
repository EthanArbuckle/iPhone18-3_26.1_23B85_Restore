@interface NUStyleTransferReverseNode
+ (id)reverseSettingsForSemanticStyleProperties:(id)a3 size:(id)a4;
- (NUStyleTransferReverseNode)initWithInput:(id)a3 settings:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateVideo:(id *)a3;
- (id)_evaluateVideoComposition:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (id)styleData;
@end

@implementation NUStyleTransferReverseNode

- (id)_evaluateVideoComposition:(id *)a3
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v31 = NUAssertLogger_30110();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v49 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_30110();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v38;
        v50 = 2114;
        v51 = v42;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferReverseNode _evaluateVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1024, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v5 = [(NURenderNode *)self outputVideo:?];
  if (!v5)
  {
    v21 = 0;
    goto LABEL_21;
  }

  v6 = [(NUStyleTransferReverseNode *)self inputNode];
  v7 = [v6 outputVideoComposition:a3];

  if (v7)
  {
    v8 = [v7 instructions];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v10 = [(NUStyleTransferReverseNode *)self inputNode];
      v11 = [v10 videoProperties:a3];

      if (v11)
      {
        v12 = [v7 instructions];
        v13 = [v12 firstObject];

        v14 = [v13 copy];
        v15 = [v11 auxiliaryVideoTrackProperties];
        v16 = [v15 objectForKeyedSubscript:@"DeltaImage"];

        if (v16)
        {
          v17 = [v14 requiredSourceTrackIDs];
          v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v16, "trackID")}];
          v19 = [v17 arrayByAddingObject:v18];
          [v14 setRequiredSourceTrackIDs:v19];

          v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v16, "trackID")}];
          [v14 setSourceIdentifier:@"DeltaImage" forTrackID:v20];
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
          }

          v23 = _NULogger;
          if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Missing delta video track properties, omitting from video composition", buf, 2u);
          }
        }

        v24 = [NUVideoUtilities metadataTrackWithIdenfifier:kMetadataIdentifier_SmartStyleInfo forAsset:v5];
        v25 = v24;
        if (v24)
        {
          v26 = NUSourceIdentifierSmartStyleVideoMetadata;
          v27 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "trackID")}];
          [v14 setSourceIdentifier:v26 forMetadataTrackID:v27];
        }

        v21 = [v7 mutableCopy];
        v47 = v14;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
        [v21 setInstructions:v28];

        v29 = [v14 requiredSourceSampleDataTrackIDs];
        [v21 setSourceSampleDataTrackIDs:v29];
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_20;
    }

    v22 = [v7 instructions];
    *a3 = [NUError unsupportedError:@"Unsupported video configuration" object:v22];
  }

  v21 = 0;
LABEL_20:

LABEL_21:

  return v21;
}

- (id)_evaluateVideo:(id *)a3
{
  v5.receiver = self;
  v5.super_class = NUStyleTransferReverseNode;
  v3 = [(NURenderNode *)&v5 _evaluateVideo:a3];

  return v3;
}

- (id)styleData
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"styleData"];

  return v3;
}

- (NUStyleTransferReverseNode)initWithInput:(id)a3 settings:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v13 = NUAssertLogger_30110();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v33 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_30110();
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
        v33 = v20;
        v34 = 2114;
        v35 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferReverseNode initWithInput:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 979, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "input != nil");
  }

  v8 = v7;
  v9 = [v7 mutableCopy];
  [v9 setObject:@"input" forKeyedSubscript:@"__dominantInputSettingsKey"];
  v30 = @"input";
  v31 = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v29.receiver = self;
  v29.super_class = NUStyleTransferReverseNode;
  v11 = [(NURenderNode *)&v29 initWithSettings:v9 inputs:v10];

  return v11;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = NUStyleTransferReverseNode;
  v6 = [(NUStyleTransferNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v80[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (![v9 evaluationMode])
  {
    v77.receiver = self;
    v77.super_class = NUStyleTransferReverseNode;
    v13 = [(NUStyleTransferNode *)&v77 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
    goto LABEL_47;
  }

  v10 = [(NUStyleTransferReverseNode *)self inputNode];
  v11 = [v10 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];

  if (!v11)
  {
    v13 = 0;
    goto LABEL_46;
  }

  if ([v9 auxiliaryImageType] != 1)
  {
    v13 = v11;
    goto LABEL_46;
  }

  if ([v9 evaluationMode] != 2)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    [v14 setObject:v11 forKeyedSubscript:@"input"];
    v15 = [v9 copy];
    [v15 setAuxiliaryImageType:11];
    [v15 setSampleMode:2];
    v16 = [(NUStyleTransferReverseNode *)self inputNode];
    v17 = [v16 nodeByReplayingAgainstCache:v8 pipelineState:v15 error:a5];

    if (v17)
    {
      goto LABEL_20;
    }

    if (v9)
    {
      [v9 time];
      if ((v75 & 0x100000000) != 0)
      {
        v18 = NULogger_30639();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [v9 time];
          v19 = NUStringFromTime(&buf);
          v20 = *a5;
          LODWORD(buf.value) = 138543618;
          *(&buf.value + 4) = v19;
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = v20;
          _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Failed to obtain delta at time %{public}@, ignoring. Error: %{public}@", &buf, 0x16u);
        }

LABEL_19:

LABEL_20:
        [v14 setObject:v17 forKeyedSubscript:@"delta"];
        v21 = [v11 outputImageGeometry:a5];
        if (!v21)
        {
          v13 = 0;
LABEL_45:

          goto LABEL_46;
        }

        v72 = v21;
        if ([v9 evaluationMode] == 3)
        {
          v70 = v14;
          v22 = [v9 videoMetadataSamples];
          v23 = [v22 objectForKeyedSubscript:NUSourceIdentifierSmartStyleVideoMetadata];

          v24 = [v23 metadataGroup];

          if (!v24)
          {
            v47 = NULogger_30639();
            v14 = v70;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              if (v9)
              {
                [v9 time];
              }

              else
              {
                memset(&buf, 0, sizeof(buf));
              }

              v48 = NUStringFromTime(&buf);
              LODWORD(buf.value) = 138543362;
              *(&buf.value + 4) = v48;
              _os_log_impl(&dword_1C0184000, v47, OS_LOG_TYPE_INFO, "Failed to obtain metadata sample from pipeline state at time %{public}@, ignoring", &buf, 0xCu);
            }

            v13 = v11;
            v27 = 0;
            goto LABEL_44;
          }

          v71 = v17;
          v25 = [v23 metadataGroup];
          v74[0] = 0;
          buf = **&MEMORY[0x1E6960C70];
          v26 = [NUVideoUtilities semanticStylePropertiesFromMetadataGroup:v25 keyTime:&buf error:v74];
          v27 = v74[0];

          if (v26)
          {
            v69 = v27;
            v28 = v23;
            v23 = v26;
            v21 = v72;
            goto LABEL_30;
          }

          [NUError errorWithCode:1 reason:@"Failed to obtain semantic style properties from metadata sample" object:v23 underlyingError:v27];
          *a5 = v13 = 0;
          v14 = v70;
          v17 = v71;
        }

        else
        {
          v71 = v17;
          if ([v9 evaluationMode] != 1)
          {
            v51 = NUAssertLogger_30110();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pipelineState evaluation mode: %@", v9];
              LODWORD(buf.value) = 138543362;
              *(&buf.value + 4) = v52;
              _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
            }

            specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v54 = NUAssertLogger_30110();
            v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
            if (specific)
            {
              if (v55)
              {
                v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
                v59 = MEMORY[0x1E696AF00];
                v60 = v58;
                v61 = [v59 callStackSymbols];
                v62 = [v61 componentsJoinedByString:@"\n"];
                LODWORD(buf.value) = 138543618;
                *(&buf.value + 4) = v58;
                LOWORD(buf.flags) = 2114;
                *(&buf.flags + 2) = v62;
                _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
              }
            }

            else if (v55)
            {
              v56 = [MEMORY[0x1E696AF00] callStackSymbols];
              v57 = [v56 componentsJoinedByString:@"\n"];
              LODWORD(buf.value) = 138543362;
              *(&buf.value + 4) = v57;
              _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
            }

            _NUAssertFailHandler("[NUStyleTransferReverseNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 933, @"Unsupported pipelineState evaluation mode: %@", v63, v64, v65, v66, v9);
          }

          v73 = 0;
          v23 = [v11 imageProperties:&v73];
          v69 = v73;
          if (v23)
          {
            v29 = [v23 semanticStyleProperties];

            if (v29)
            {
              v70 = v14;
              v30 = [v23 semanticStyleProperties];
              v28 = v23;
              v23 = v30;
LABEL_30:

              v31 = [v23 version];
              v32 = [v31 major];

              if (v32 < 3)
              {
                v34 = [v21 size];
                v36 = [NUStyleTransferReverseNode reverseSettingsForSemanticStyleProperties:v23 size:v34, v35];
                v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v38 = [v36 objectForKeyedSubscript:NUStyleTransferNodeConfigurationKey];
                [v37 setObject:v38 forKeyedSubscript:NUStyleTransferNodeConfigurationKey];

                v39 = [v36 objectForKeyedSubscript:NUStyleTransferNodeTuningParametersKey];
                [v37 setObject:v39 forKeyedSubscript:NUStyleTransferNodeTuningParametersKey];

                v67 = v36;
                v40 = [v36 objectForKeyedSubscript:@"useFloat16"];
                [v37 setObject:v40 forKeyedSubscript:@"useFloat16"];

                v68 = v37;
                v41 = [[NUStyleTransferThumbnailNode alloc] initWithInput:v11 settings:v37];
                v42 = [(NURenderNode *)v41 inputs];
                v43 = [(NURenderNode *)v41 resolvedNodeWithCachedInputs:v42 cache:v8 pipelineState:v9 error:a5];

                if (v43)
                {
                  v14 = v70;
                  [v70 setObject:v43 forKeyedSubscript:@"thumbnail"];
                  v44 = [(NUStyleTransferReverseNode *)self resolvedNodeWithCachedInputs:v70 settings:v67 pipelineState:v9 error:a5];
                  v13 = [NURenderNode nodeFromCache:v44 cache:v8];

                  [v13 setEvaluatedForMode:{objc_msgSend(v9, "evaluationMode")}];
                  v45 = v43;
                  v17 = v71;
                  v46 = v67;
                }

                else
                {
                  v13 = 0;
                  v14 = v70;
                  v17 = v71;
                  v46 = v67;
                  v45 = 0;
                }

                v27 = v69;
              }

              else
              {
                v33 = [v23 version];
                *a5 = [NUError unsupportedError:@"Incompatible style metadata version" object:v33];

                v13 = 0;
                v14 = v70;
                v17 = v71;
                v27 = v69;
              }

              goto LABEL_44;
            }
          }

          v27 = v69;
          [NUError errorWithCode:1 reason:@"Failed to obtain semantic style properties from image properties" object:v23 underlyingError:v69];
          *a5 = v13 = 0;
          v17 = v71;
        }

LABEL_44:

        v21 = v72;
        goto LABEL_45;
      }
    }

    else
    {
      v74[1] = 0;
      v75 = 0;
      v76 = 0;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v18 = _NULogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v50 = *a5;
      LODWORD(buf.value) = 138543362;
      *(&buf.value + 4) = v50;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Failed to obtain delta, ignoring. Error: %{public}@", &buf, 0xCu);
    }

    goto LABEL_19;
  }

  v79 = @"input";
  v80[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
  v13 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v12 cache:v8 pipelineState:v9 error:a5];

LABEL_46:
LABEL_47:

  return v13;
}

- (id)_evaluateImage:(id *)a3
{
  v50[2] = *MEMORY[0x1E69E9840];
  v5 = [(NUStyleTransferReverseNode *)self inputNode];
  v6 = [v5 outputImage:a3];

  if (v6)
  {
    v7 = [(NUStyleTransferReverseNode *)self thumbnailNode];
    v8 = [v7 outputImage:a3];

    if (v8)
    {
      v9 = [(NUStyleTransferReverseNode *)self deltaNode];
      v10 = [v9 outputImage:a3];

      if (!v10)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
        }

        v11 = _NULogger;
        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C0184000, v11, OS_LOG_TYPE_INFO, "Missing delta frame - ignoring", buf, 2u);
        }
      }

      [v10 extent];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v6 extent];
      v53.origin.x = v20;
      v53.origin.y = v21;
      v53.size.width = v22;
      v53.size.height = v23;
      v52.origin.x = v13;
      v52.origin.y = v15;
      v52.size.width = v17;
      v52.size.height = v19;
      if (!CGRectEqualToRect(v52, v53))
      {
        v24 = [v10 imageByClampingToExtent];
        [v6 extent];
        v25 = [v24 imageByCroppingToRect:?];

        v10 = v25;
      }

      v47 = [(NUStyleTransferNode *)self tuningParameters];
      v26 = [(NUStyleTransferReverseNode *)self styleData];
      v27 = [(NURenderNode *)self settings];
      v28 = [v27 objectForKeyedSubscript:@"useFloat16"];
      v29 = [v28 BOOLValue];

      v30 = [(NUStyleTransferNode *)self configuration];
      v31 = [v30 mutableCopy];

      v32 = [MEMORY[0x1E696AD98] numberWithBool:v29];
      [v31 setObject:v32 forKeyedSubscript:@"useFloat16"];

      [_NUStyleEngineConfiguration coefficientTextureSizeForConfigurationDictionary:v31];
      v35 = v33;
      v36 = v34;
      v37 = 1;
      if (!v29)
      {
        v37 = 2;
      }

      v38 = v33 << v37;
      v39 = v38 * v34;
      if ([v26 length] == v39)
      {
        v40 = MEMORY[0x1E695F930];
        if (!v29)
        {
          v40 = MEMORY[0x1E695F928];
        }

        v41 = [MEMORY[0x1E695F658] imageWithBitmapData:v26 bytesPerRow:v38 size:*v40 format:0 colorSpace:{v35, v36}];
        if (+[NUGlobalSettings semanticStyleDisableDeltaMap])
        {

          v10 = 0;
        }

        v42 = v47;
        v43 = [(NUStyleTransferNode *)self targetColorSpace];
        v44 = [_NUStyleTransferApplyProcessor applyStyle:v41 toImage:v6 thumbnail:v8 target:0 deltaMap:v10 colorSpace:v43 configuration:v31 tuningParameters:v47 noiseModel:0 error:a3];
      }

      else
      {
        v49[0] = @"expected";
        v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v39];
        v49[1] = @"actual";
        v50[0] = v41;
        v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v26, "length")}];
        v50[1] = v43;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
        *a3 = [NUError invalidError:@"Unexpected style data length" object:v45];

        v44 = 0;
        v42 = v47;
      }
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

+ (id)reverseSettingsForSemanticStyleProperties:(id)a3 size:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (![v7 isVideo])
  {
    if (var1 <= var0)
    {
      [a1 _reverseImageConfiguration_0];
    }

    else
    {
      [a1 _reverseImageConfiguration_0_1_alt];
    }
    v11 = ;
    v12 = [a1 _reverseImageTuningParameters_0];
    goto LABEL_13;
  }

  if (var1 > var0)
  {
    v9 = [a1 _reverseVideoConfiguration_0_10_alt];
LABEL_12:
    v11 = v9;
    v12 = [a1 _reverseVideoTuningParameters_0];
    goto LABEL_13;
  }

  v10 = [v7 version];
  if ([v10 atLeastMajor:0 minor:10])
  {

LABEL_11:
    v9 = [a1 _reverseVideoConfiguration_0];
    goto LABEL_12;
  }

  v13 = [v7 styleData];
  v14 = [v13 length];

  if (v14 == 1152)
  {
    goto LABEL_11;
  }

  v11 = [a1 _reverseVideoConfiguration_0];
  v12 = [a1 _reverseVideoTuningParameters_0];
LABEL_13:
  v15 = v12;
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "styleDataIsFloat16")}];
  [v8 setObject:v16 forKeyedSubscript:@"useFloat16"];

  v17 = [v7 styleData];
  [v8 setObject:v17 forKeyedSubscript:@"styleData"];

  [v8 setObject:v11 forKeyedSubscript:NUStyleTransferNodeConfigurationKey];
  [v8 setObject:v15 forKeyedSubscript:NUStyleTransferNodeTuningParametersKey];

  return v8;
}

@end