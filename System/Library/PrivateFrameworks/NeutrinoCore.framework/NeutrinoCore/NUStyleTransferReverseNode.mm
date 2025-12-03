@interface NUStyleTransferReverseNode
+ (id)reverseSettingsForSemanticStyleProperties:(id)properties size:(id)size;
- (NUStyleTransferReverseNode)initWithInput:(id)input settings:(id)settings;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateVideo:(id *)video;
- (id)_evaluateVideoComposition:(id *)composition;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (id)styleData;
@end

@implementation NUStyleTransferReverseNode

- (id)_evaluateVideoComposition:(id *)composition
{
  v52 = *MEMORY[0x1E69E9840];
  if (!composition)
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
        callStackSymbols = [v39 callStackSymbols];
        v42 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v38;
        v50 = 2114;
        v51 = v42;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

  inputNode = [(NUStyleTransferReverseNode *)self inputNode];
  v7 = [inputNode outputVideoComposition:composition];

  if (v7)
  {
    instructions = [v7 instructions];
    v9 = [instructions count];

    if (v9 == 1)
    {
      inputNode2 = [(NUStyleTransferReverseNode *)self inputNode];
      v11 = [inputNode2 videoProperties:composition];

      if (v11)
      {
        instructions2 = [v7 instructions];
        firstObject = [instructions2 firstObject];

        v14 = [firstObject copy];
        auxiliaryVideoTrackProperties = [v11 auxiliaryVideoTrackProperties];
        v16 = [auxiliaryVideoTrackProperties objectForKeyedSubscript:@"DeltaImage"];

        if (v16)
        {
          requiredSourceTrackIDs = [v14 requiredSourceTrackIDs];
          v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v16, "trackID")}];
          v19 = [requiredSourceTrackIDs arrayByAddingObject:v18];
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

        requiredSourceSampleDataTrackIDs = [v14 requiredSourceSampleDataTrackIDs];
        [v21 setSourceSampleDataTrackIDs:requiredSourceSampleDataTrackIDs];
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_20;
    }

    instructions3 = [v7 instructions];
    *composition = [NUError unsupportedError:@"Unsupported video configuration" object:instructions3];
  }

  v21 = 0;
LABEL_20:

LABEL_21:

  return v21;
}

- (id)_evaluateVideo:(id *)video
{
  v5.receiver = self;
  v5.super_class = NUStyleTransferReverseNode;
  v3 = [(NURenderNode *)&v5 _evaluateVideo:video];

  return v3;
}

- (id)styleData
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"styleData"];

  return v3;
}

- (NUStyleTransferReverseNode)initWithInput:(id)input settings:(id)settings
{
  v36 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  settingsCopy = settings;
  if (!inputCopy)
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
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v20;
        v34 = 2114;
        v35 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferReverseNode initWithInput:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 979, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "input != nil");
  }

  v8 = settingsCopy;
  v9 = [settingsCopy mutableCopy];
  [v9 setObject:@"input" forKeyedSubscript:@"__dominantInputSettingsKey"];
  v30 = @"input";
  v31 = inputCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v29.receiver = self;
  v29.super_class = NUStyleTransferReverseNode;
  v11 = [(NURenderNode *)&v29 initWithSettings:v9 inputs:v10];

  return v11;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NUStyleTransferReverseNode;
  v6 = [(NUStyleTransferNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v80[1] = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (![stateCopy evaluationMode])
  {
    v77.receiver = self;
    v77.super_class = NUStyleTransferReverseNode;
    v13 = [(NUStyleTransferNode *)&v77 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
    goto LABEL_47;
  }

  inputNode = [(NUStyleTransferReverseNode *)self inputNode];
  v11 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

  if (!v11)
  {
    v13 = 0;
    goto LABEL_46;
  }

  if ([stateCopy auxiliaryImageType] != 1)
  {
    v13 = v11;
    goto LABEL_46;
  }

  if ([stateCopy evaluationMode] != 2)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    [v14 setObject:v11 forKeyedSubscript:@"input"];
    v15 = [stateCopy copy];
    [v15 setAuxiliaryImageType:11];
    [v15 setSampleMode:2];
    inputNode2 = [(NUStyleTransferReverseNode *)self inputNode];
    v17 = [inputNode2 nodeByReplayingAgainstCache:cacheCopy pipelineState:v15 error:error];

    if (v17)
    {
      goto LABEL_20;
    }

    if (stateCopy)
    {
      [stateCopy time];
      if ((v75 & 0x100000000) != 0)
      {
        v18 = NULogger_30639();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [stateCopy time];
          v19 = NUStringFromTime(&buf);
          v20 = *error;
          LODWORD(buf.value) = 138543618;
          *(&buf.value + 4) = v19;
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = v20;
          _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Failed to obtain delta at time %{public}@, ignoring. Error: %{public}@", &buf, 0x16u);
        }

LABEL_19:

LABEL_20:
        [v14 setObject:v17 forKeyedSubscript:@"delta"];
        v21 = [v11 outputImageGeometry:error];
        if (!v21)
        {
          v13 = 0;
LABEL_45:

          goto LABEL_46;
        }

        v72 = v21;
        if ([stateCopy evaluationMode] == 3)
        {
          v70 = v14;
          videoMetadataSamples = [stateCopy videoMetadataSamples];
          v23 = [videoMetadataSamples objectForKeyedSubscript:NUSourceIdentifierSmartStyleVideoMetadata];

          metadataGroup = [v23 metadataGroup];

          if (!metadataGroup)
          {
            v47 = NULogger_30639();
            v14 = v70;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              if (stateCopy)
              {
                [stateCopy time];
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
          metadataGroup2 = [v23 metadataGroup];
          v74[0] = 0;
          buf = **&MEMORY[0x1E6960C70];
          v26 = [NUVideoUtilities semanticStylePropertiesFromMetadataGroup:metadataGroup2 keyTime:&buf error:v74];
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
          *error = v13 = 0;
          v14 = v70;
          v17 = v71;
        }

        else
        {
          v71 = v17;
          if ([stateCopy evaluationMode] != 1)
          {
            v51 = NUAssertLogger_30110();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              stateCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pipelineState evaluation mode: %@", stateCopy];
              LODWORD(buf.value) = 138543362;
              *(&buf.value + 4) = stateCopy;
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
                callStackSymbols = [v59 callStackSymbols];
                v62 = [callStackSymbols componentsJoinedByString:@"\n"];
                LODWORD(buf.value) = 138543618;
                *(&buf.value + 4) = v58;
                LOWORD(buf.flags) = 2114;
                *(&buf.flags + 2) = v62;
                _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
              }
            }

            else if (v55)
            {
              callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
              v57 = [callStackSymbols2 componentsJoinedByString:@"\n"];
              LODWORD(buf.value) = 138543362;
              *(&buf.value + 4) = v57;
              _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
            }

            _NUAssertFailHandler("[NUStyleTransferReverseNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 933, @"Unsupported pipelineState evaluation mode: %@", v63, v64, v65, v66, stateCopy);
          }

          v73 = 0;
          v23 = [v11 imageProperties:&v73];
          v69 = v73;
          if (v23)
          {
            semanticStyleProperties = [v23 semanticStyleProperties];

            if (semanticStyleProperties)
            {
              v70 = v14;
              semanticStyleProperties2 = [v23 semanticStyleProperties];
              v28 = v23;
              v23 = semanticStyleProperties2;
LABEL_30:

              version = [v23 version];
              major = [version major];

              if (major < 3)
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
                inputs = [(NURenderNode *)v41 inputs];
                v43 = [(NURenderNode *)v41 resolvedNodeWithCachedInputs:inputs cache:cacheCopy pipelineState:stateCopy error:error];

                if (v43)
                {
                  v14 = v70;
                  [v70 setObject:v43 forKeyedSubscript:@"thumbnail"];
                  v44 = [(NUStyleTransferReverseNode *)self resolvedNodeWithCachedInputs:v70 settings:v67 pipelineState:stateCopy error:error];
                  v13 = [NURenderNode nodeFromCache:v44 cache:cacheCopy];

                  [v13 setEvaluatedForMode:{objc_msgSend(stateCopy, "evaluationMode")}];
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
                version2 = [v23 version];
                *error = [NUError unsupportedError:@"Incompatible style metadata version" object:version2];

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
          *error = v13 = 0;
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
      v50 = *error;
      LODWORD(buf.value) = 138543362;
      *(&buf.value + 4) = v50;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Failed to obtain delta, ignoring. Error: %{public}@", &buf, 0xCu);
    }

    goto LABEL_19;
  }

  v79 = @"input";
  v80[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
  v13 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v12 cache:cacheCopy pipelineState:stateCopy error:error];

LABEL_46:
LABEL_47:

  return v13;
}

- (id)_evaluateImage:(id *)image
{
  v50[2] = *MEMORY[0x1E69E9840];
  inputNode = [(NUStyleTransferReverseNode *)self inputNode];
  v6 = [inputNode outputImage:image];

  if (v6)
  {
    thumbnailNode = [(NUStyleTransferReverseNode *)self thumbnailNode];
    v8 = [thumbnailNode outputImage:image];

    if (v8)
    {
      deltaNode = [(NUStyleTransferReverseNode *)self deltaNode];
      v10 = [deltaNode outputImage:image];

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
        imageByClampingToExtent = [v10 imageByClampingToExtent];
        [v6 extent];
        v25 = [imageByClampingToExtent imageByCroppingToRect:?];

        v10 = v25;
      }

      tuningParameters = [(NUStyleTransferNode *)self tuningParameters];
      styleData = [(NUStyleTransferReverseNode *)self styleData];
      settings = [(NURenderNode *)self settings];
      v28 = [settings objectForKeyedSubscript:@"useFloat16"];
      bOOLValue = [v28 BOOLValue];

      configuration = [(NUStyleTransferNode *)self configuration];
      v31 = [configuration mutableCopy];

      v32 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
      [v31 setObject:v32 forKeyedSubscript:@"useFloat16"];

      [_NUStyleEngineConfiguration coefficientTextureSizeForConfigurationDictionary:v31];
      v35 = v33;
      v36 = v34;
      v37 = 1;
      if (!bOOLValue)
      {
        v37 = 2;
      }

      v38 = v33 << v37;
      v39 = v38 * v34;
      if ([styleData length] == v39)
      {
        v40 = MEMORY[0x1E695F930];
        if (!bOOLValue)
        {
          v40 = MEMORY[0x1E695F928];
        }

        v41 = [MEMORY[0x1E695F658] imageWithBitmapData:styleData bytesPerRow:v38 size:*v40 format:0 colorSpace:{v35, v36}];
        if (+[NUGlobalSettings semanticStyleDisableDeltaMap])
        {

          v10 = 0;
        }

        v42 = tuningParameters;
        targetColorSpace = [(NUStyleTransferNode *)self targetColorSpace];
        v44 = [_NUStyleTransferApplyProcessor applyStyle:v41 toImage:v6 thumbnail:v8 target:0 deltaMap:v10 colorSpace:targetColorSpace configuration:v31 tuningParameters:tuningParameters noiseModel:0 error:image];
      }

      else
      {
        v49[0] = @"expected";
        v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v39];
        v49[1] = @"actual";
        v50[0] = v41;
        targetColorSpace = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(styleData, "length")}];
        v50[1] = targetColorSpace;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
        *image = [NUError invalidError:@"Unexpected style data length" object:v45];

        v44 = 0;
        v42 = tuningParameters;
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

+ (id)reverseSettingsForSemanticStyleProperties:(id)properties size:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  propertiesCopy = properties;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (![propertiesCopy isVideo])
  {
    if (var1 <= var0)
    {
      [self _reverseImageConfiguration_0];
    }

    else
    {
      [self _reverseImageConfiguration_0_1_alt];
    }
    _reverseVideoConfiguration_0 = ;
    _reverseImageTuningParameters_0 = [self _reverseImageTuningParameters_0];
    goto LABEL_13;
  }

  if (var1 > var0)
  {
    _reverseVideoConfiguration_0_10_alt = [self _reverseVideoConfiguration_0_10_alt];
LABEL_12:
    _reverseVideoConfiguration_0 = _reverseVideoConfiguration_0_10_alt;
    _reverseImageTuningParameters_0 = [self _reverseVideoTuningParameters_0];
    goto LABEL_13;
  }

  version = [propertiesCopy version];
  if ([version atLeastMajor:0 minor:10])
  {

LABEL_11:
    _reverseVideoConfiguration_0_10_alt = [self _reverseVideoConfiguration_0];
    goto LABEL_12;
  }

  styleData = [propertiesCopy styleData];
  v14 = [styleData length];

  if (v14 == 1152)
  {
    goto LABEL_11;
  }

  _reverseVideoConfiguration_0 = [self _reverseVideoConfiguration_0];
  _reverseImageTuningParameters_0 = [self _reverseVideoTuningParameters_0];
LABEL_13:
  v15 = _reverseImageTuningParameters_0;
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(propertiesCopy, "styleDataIsFloat16")}];
  [v8 setObject:v16 forKeyedSubscript:@"useFloat16"];

  styleData2 = [propertiesCopy styleData];
  [v8 setObject:styleData2 forKeyedSubscript:@"styleData"];

  [v8 setObject:_reverseVideoConfiguration_0 forKeyedSubscript:NUStyleTransferNodeConfigurationKey];
  [v8 setObject:v15 forKeyedSubscript:NUStyleTransferNodeTuningParametersKey];

  return v8;
}

@end