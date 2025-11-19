@interface NUVideoSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($41299696D20B6C925B74A5D5E4D5CC87)cleanAperture;
- (BOOL)_load:(id *)a3;
- (BOOL)isHDR;
- (BOOL)load:(id *)a3;
- (BOOL)loadAudioMixParameters:(id *)a3;
- (BOOL)loadAuxiliaryVideoTrackProperties:(id *)a3;
- (BOOL)supportsPipelineState:(id)a3 error:(id *)a4;
- (NUVideoSourceNode)initWithSettings:(id)a3;
- (NUVideoSourceNode)initWithURL:(id)a3 identifier:(id)a4 options:(id)a5;
- (NUVideoSourceNode)initWithVideoData:(id)a3 identifier:(id)a4 options:(id)a5;
- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5;
- (id)_evaluateTimedMetadataSampleWithIdentifier:(id)a3 atTime:(id *)a4 error:(id *)a5;
- (id)_evaluateVideo:(id *)a3;
- (id)_evaluateVideoAttributes:(id *)a3;
- (id)_evaluateVideoCompositionWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_evaluateVideoPropertiesWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_settingsForPipelineState:(id)a3;
- (id)asset:(id *)a3;
- (id)preparedNodeWithSourceContainer:(id)a3 pipelineState:(id)a4 pipelineSettings:(id)a5 sourceSettings:(id)a6 error:(id *)a7;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (id)sourceOptionsForSettings:(id)a3 error:(id *)a4;
- (int64_t)sourceOrientation;
- (void)_initializeQueue;
@end

@implementation NUVideoSourceNode

- (id)_evaluateTimedMetadataSampleWithIdentifier:(id)a3 atTime:(id *)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(NURenderNode *)self outputVideo:a5];
  if (v9)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:v9];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([NUVideoUtilities metadataTrack:v15 containsIdentifier:v8])
          {
            v21 = *&a4->var0;
            var3 = a4->var3;
            v16 = [NUVideoUtilities readTimedMetadataGroupAtTime:&v21 fromTrack:v15 outputSettings:0 videoComposition:0 error:a5];
            if (v16)
            {
              v18 = v16;
              v19 = [NURenderPipelineVideoMetadataSample alloc];
              v21 = *&a4->var0;
              var3 = a4->var3;
              v17 = [(NURenderPipelineVideoMetadataSample *)v19 initWithFrameTime:&v21 metadataGroup:v18];

              goto LABEL_14;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_14:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_evaluateVideoAttributes:(id *)a3
{
  if ([(NUVideoSourceNode *)self load:a3])
  {
    v4 = [NUVideoAttributes alloc];
    [(NUVideoSourceNode *)self duration];
    v5 = [(NUVideoAttributes *)v4 initWithDuration:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_evaluateVideoPropertiesWithSourceOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(NUVideoSourceNode *)self load:a4])
  {
    v7 = objc_alloc_init(_NUVideoProperties);
    [(_NUVideoProperties *)v7 setUrl:self->_URL];
    [(_NUVideoProperties *)v7 setMetadata:self->_metadata];
    [(_NUVideoProperties *)v7 setTrackGroups:self->_trackGroups];
    [(_NUVideoProperties *)v7 setTrackMetadata:self->_trackMetadata];
    v8 = [(NUVideoSourceNode *)self pixelSizeWithSourceOptions:v6];
    [(_NUVideoProperties *)v7 setSize:v8, v9];
    [(_NUVideoProperties *)v7 setOrientation:[(NUVideoSourceNode *)self sourceOrientation]];
    *&v10 = self->_nominalFrameRate;
    [(_NUVideoProperties *)v7 setNominalFrameRate:v10];
    v11 = [v6 objectForKeyedSubscript:@"applyCleanAperture"];
    v12 = v11;
    if (v11)
    {
      [v11 nu_pixelRect];
      v20 = 0uLL;
      v21 = v22;
    }

    else
    {
      [(NUVideoSourceNode *)self cleanAperture];
      v20 = v18;
      v21 = v19;
    }

    [(_NUVideoProperties *)v7 setCleanAperture:&v20];
    [(NUVideoSourceNode *)self cleanAperture];
    v20 = v16;
    v21 = v17;
    [(_NUVideoProperties *)v7 setOriginalCleanAperture:&v20];
    [(_NUVideoProperties *)v7 setOriginalSize:self->_size.width, self->_size.height];
    [(_NUVideoProperties *)v7 setColorProperties:self->_colorProperties];
    v20 = *&self->_livePhotoKeyFrameTime.value;
    *&v21 = self->_livePhotoKeyFrameTime.epoch;
    [(_NUVideoProperties *)v7 setLivePhotoKeyFrameTime:&v20];
    [(NUVideoSourceNode *)self duration];
    v20 = v14;
    *&v21 = v15;
    [(_NUVideoProperties *)v7 setDuration:&v20];
    [(_NUVideoProperties *)v7 setAuxiliaryVideoTrackProperties:self->_auxiliaryVideoTrackProperties];
    [(_NUVideoProperties *)v7 setCinematicAudioMixInputParameters:self->_cinematicAudioMixInputParameters];
    [(_NUVideoProperties *)v7 setVideoCorruptionInfo:self->_corruptionInfo];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v21 = NUAssertLogger_530();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v38 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_530();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v28;
        v39 = 2114;
        v40 = v32;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode _evaluateImagePropertiesWithSourceOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 864, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "error != NULL");
  }

  v7 = v6;
  v8 = [(NUSourceNode *)self originalNode];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 imageProperties:a4];
    if (!v10)
    {
      v12 = 0;
      goto LABEL_16;
    }

    v11 = v10;
    v12 = [[_NUImageProperties alloc] initWithProperties:v10];
    [(_NUImageProperties *)v12 resetAuxiliaryImageProperties];
  }

  else
  {
    v11 = [(NUVideoSourceNode *)self _evaluateVideoPropertiesWithSourceOptions:v7 error:a4];
    if (v11)
    {
      v12 = objc_alloc_init(_NUImageProperties);
      [(_NUImageProperties *)v12 setMetadata:MEMORY[0x1E695E0F8]];
      v13 = [v11 colorProperties];
      v14 = [NUColorSpace colorSpaceFromVideoColorProperties:v13];

      if (!v14)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_417);
        }

        v15 = _NURenderLogger;
        if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = [v11 colorProperties];
          *buf = 138543362;
          v38 = v17;
          _os_log_impl(&dword_1C0184000, v16, OS_LOG_TYPE_DEFAULT, "Invalid video color properties: %{public}@, assuming sRGB.", buf, 0xCu);
        }

        v14 = +[NUColorSpace sRGBColorSpace];
      }

      [(_NUImageProperties *)v12 setColorSpace:v14];
      [v14 headroom];
      [(_NUImageProperties *)v12 setContentHeadroom:?];
      v18 = [v11 size];
      [(_NUImageProperties *)v12 setSize:v18, v19];
      -[_NUImageProperties setOrientation:](v12, "setOrientation:", [v11 orientation]);
      [(_NUImageProperties *)v12 setAlphaInfo:2];
      [(_NUImageProperties *)v12 setComponentInfo:0];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_16:

  return v12;
}

- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!a5)
  {
    v10 = NUAssertLogger_530();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_530();
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

    _NUAssertFailHandler("[NUVideoSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 855, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != nil");
  }

  v8 = v7;
  *a5 = [NUError errorWithCode:5 reason:@"Video node cannot generate a valid CIImage" object:self];

  return 0;
}

- (id)_settingsForPipelineState:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v5;
  URL = self->_URL;
  if (URL)
  {
    [v5 setObject:URL forKeyedSubscript:@"identifier"];
    if (v4)
    {
LABEL_3:
      [v4 time];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [(NURenderNode *)self settings];
    v9 = [v8 objectForKeyedSubscript:@"identifier"];
    [v6 setObject:v9 forKeyedSubscript:@"identifier"];

    if (v4)
    {
      goto LABEL_3;
    }
  }

  origin = 0;
  v18.width = 0;
LABEL_6:
  v10 = CMTimeCopyAsDictionary(&origin, *MEMORY[0x1E695E480]);
  [v6 setObject:v10 forKeyedSubscript:@"time"];

  v11 = [v4 auxiliaryImageType];
  if (v11 > 0xB)
  {
    v12 = @"Invalid";
  }

  else
  {
    v12 = off_1E8109908[v11];
  }

  v13 = v12;
  [v6 setObject:v13 forKeyedSubscript:@"auxiliaryImageType"];

  if (self->_originalExtent.size.width && self->_originalExtent.size.height)
  {
    size = self->_originalExtent.size;
    origin = self->_originalExtent.origin;
    v18 = size;
    v15 = [MEMORY[0x1E696B098] nu_valueWithPixelRect:&origin];
    [v6 setObject:v15 forKeyedSubscript:@"originalExtent"];
  }

  return v6;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v91 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a6)
  {
    v52 = NUAssertLogger_530();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v88 = v53;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v55 = NUAssertLogger_530();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v56)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v88 = v59;
        v89 = 2114;
        v90 = v63;
        _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v56)
    {
      v57 = [MEMORY[0x1E696AF00] callStackSymbols];
      v58 = [v57 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v88 = v58;
      _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode resolvedNodeWithCachedInputs:settings:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 739, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != nil");
  }

  v13 = v12;
  if (![(NUVideoSourceNode *)self load:a6]|| ![(NUVideoSourceNode *)self supportsPipelineState:v13 error:a6])
  {
    goto LABEL_51;
  }

  if (![v13 evaluationMode] || objc_msgSend(v13, "evaluationMode") == 2)
  {
    v14 = self;
    goto LABEL_52;
  }

  if ([v13 evaluationMode] != 3)
  {
    if ([v13 evaluationMode] != 1)
    {
      v68 = NUAssertLogger_530();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pipelineState evaluation mode: %@", v13];
        *buf = 138543362;
        v88 = v69;
        _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v70 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v71 = NUAssertLogger_530();
      v72 = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
      if (v70)
      {
        if (v72)
        {
          v75 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v76 = MEMORY[0x1E696AF00];
          v77 = v75;
          v78 = [v76 callStackSymbols];
          v79 = [v78 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v88 = v75;
          v89 = 2114;
          v90 = v79;
          _os_log_error_impl(&dword_1C0184000, v71, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v72)
      {
        v73 = [MEMORY[0x1E696AF00] callStackSymbols];
        v74 = [v73 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v88 = v74;
        _os_log_error_impl(&dword_1C0184000, v71, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUVideoSourceNode resolvedNodeWithCachedInputs:settings:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 817, @"Unsupported pipelineState evaluation mode: %@", v80, v81, v82, v83, v13);
    }

    if (!v13 || ([v13 time], (v86 & 1) == 0))
    {
      [NUError unsupportedError:@"invalid frame time" object:v13];
      *a6 = v14 = 0;
      goto LABEL_52;
    }

    v17 = [(NUVideoSourceNode *)self _settingsForPipelineState:v13];
    if ([v13 auxiliaryImageType] != 1)
    {
      auxiliaryVideoTrackProperties = self->_auxiliaryVideoTrackProperties;
      v19 = [v13 auxiliaryImageType];
      if (v19 > 0xB)
      {
        v20 = @"Invalid";
      }

      else
      {
        v20 = off_1E8109908[v19];
      }

      v40 = v20;
      v41 = [(NSDictionary *)auxiliaryVideoTrackProperties objectForKeyedSubscript:v40];

      if (!v41)
      {
        v49 = [v13 auxiliaryImageType];
        if (v49 > 0xB)
        {
          v50 = @"Invalid";
        }

        else
        {
          v50 = off_1E8109908[v49];
        }

        v23 = v50;
        v38 = @"Missing video track properties for auxiliary image type ";
        v39 = v23;
LABEL_50:
        *a6 = [NUError missingError:v38 object:v39];

LABEL_51:
        v14 = 0;
        goto LABEL_52;
      }
    }

    v42 = [NUKeyFrameSourceNode alloc];
    [v13 time];
    v24 = [(NUKeyFrameSourceNode *)v42 initWithVideoSource:self time:buf settings:v17 orientation:[(NUVideoSourceNode *)self sourceOrientation]];
    goto LABEL_36;
  }

  if ([v13 auxiliaryImageType] == 1 || !objc_msgSend(v13, "auxiliaryImageType"))
  {
    v17 = @"video";
  }

  else
  {
    v15 = [v13 auxiliaryImageType];
    if (v15 > 0xB)
    {
      v16 = @"Invalid";
    }

    else
    {
      v16 = off_1E8109908[v15];
    }

    v17 = v16;
  }

  v21 = [v13 videoFrames];
  v22 = [v21 objectForKeyedSubscript:v17];

  v23 = [(NUVideoSourceNode *)self _settingsForPipelineState:v13];
  if (!v22)
  {
    v25 = [v13 auxiliaryImageType];
    if (v25 <= 9 && ((1 << v25) & 0x218) != 0)
    {
      v26 = self->_auxiliaryVideoTrackProperties;
      v27 = [v13 auxiliaryImageType];
      v85 = v17;
      if (v27 > 0xB)
      {
        v28 = @"Invalid";
      }

      else
      {
        v28 = off_1E8109908[v27];
      }

      v29 = v28;
      v84 = [(NSDictionary *)v26 objectForKeyedSubscript:v29];

      v30 = [v84 size];
      [v84 size];
      v32 = v31;
      v33 = [NUCISourceNode alloc];
      v34 = MEMORY[0x1E695F658];
      v35 = [MEMORY[0x1E695F610] blackColor];
      v36 = [v34 imageWithColor:v35];
      v37 = [v36 imageByCroppingToRect:{0.0, 0.0, v30, v32}];
      v24 = [(NUCISourceNode *)v33 initWithImage:v37 settings:v23 orientation:[(NUVideoSourceNode *)self sourceOrientation]];

      v17 = v85;
      goto LABEL_30;
    }

    v38 = @"unable to find video frame";
    v39 = v17;
    goto LABEL_50;
  }

  v24 = -[NUPixelBufferSourceNode initWithPixelBuffer:settings:orientation:]([NUPixelBufferSourceNode alloc], "initWithPixelBuffer:settings:orientation:", [v22 pixelBuffer], v23, -[NUVideoSourceNode sourceOrientation](self, "sourceOrientation"));
LABEL_30:

LABEL_36:
  v43 = [(NUSourceNode *)self originalNode];
  if ([v13 auxiliaryImageType] == 2)
  {
    v44 = 0;
  }

  else
  {
    v45 = [v13 auxiliaryImageType];
    v44 = v43;
    if (v45 != 1)
    {
      v46 = [v13 auxiliaryImageType];
      if (v43)
      {
        v47 = v43;
      }

      else
      {
        v47 = self;
      }

      if (v46)
      {
        v44 = v47;
      }

      else
      {
        v44 = v43;
      }
    }
  }

  [(NUSourceNode *)v24 setOriginalNode:v44];
  v48 = [(NUSourceNode *)self sourceDerivation];
  [(NUSourceNode *)v24 setSourceDerivation:v48];

  -[NURenderNode setEvaluatedForMode:](v24, "setEvaluatedForMode:", [v13 evaluationMode]);
  v14 = v24;

LABEL_52:

  return v14;
}

- (id)preparedNodeWithSourceContainer:(id)a3 pipelineState:(id)a4 pipelineSettings:(id)a5 sourceSettings:(id)a6 error:(id *)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!a7)
  {
    v29 = NUAssertLogger_530();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v47 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_530();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v36;
        v48 = 2114;
        v49 = v40;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode preparedNodeWithSourceContainer:pipelineState:pipelineSettings:sourceSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 710, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != nil");
  }

  v16 = v15;
  if ([(NUVideoSourceNode *)self load:a7]&& [(NUVideoSourceNode *)self supportsPipelineState:v13 error:a7])
  {
    v17 = [v13 auxiliaryImageType];
    if (v17 < 2)
    {
LABEL_10:
      v45.receiver = self;
      v45.super_class = NUVideoSourceNode;
      v23 = [(NUSourceNode *)&v45 preparedNodeWithSourceContainer:v12 pipelineState:v13 pipelineSettings:v14 sourceSettings:v16 error:a7];
      goto LABEL_16;
    }

    v18 = v17;
    auxiliaryVideoTrackProperties = self->_auxiliaryVideoTrackProperties;
    if (v17 > 0xB)
    {
      v20 = @"Invalid";
    }

    else
    {
      v20 = off_1E8109908[v17];
    }

    v21 = v20;
    v22 = [(NSDictionary *)auxiliaryVideoTrackProperties objectForKeyedSubscript:v21];

    if (v22)
    {

      goto LABEL_10;
    }

    v24 = MEMORY[0x1E696AEC0];
    if (v18 > 0xB)
    {
      v25 = @"Invalid";
    }

    else
    {
      v25 = off_1E8109908[v18];
    }

    v26 = v25;
    v27 = [v24 stringWithFormat:@"Requested auxiliary track type %@ but no associated track property found", v26];

    *a7 = [NUError invalidError:v27 object:v13];
  }

  v23 = 0;
LABEL_16:

  return v23;
}

- (BOOL)supportsPipelineState:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a4)
  {
    v13 = NUAssertLogger_530();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v30 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_530();
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
        v30 = v20;
        v31 = 2114;
        v32 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode supportsPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 677, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "error != NULL");
  }

  v6 = v5;
  v7 = [v5 auxiliaryImageType];
  if ((v7 - 5) >= 4)
  {
    if (!v7 && ([v6 evaluationMode] == 2 || objc_msgSend(v6, "evaluationMode") == 3))
    {
      [NUError invalidError:@"expected a valid auxiliaryImageType during render" object:v6];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v8 = [v6 auxiliaryImageType];
    if (v8 > 0xB)
    {
      v9 = @"Invalid";
    }

    else
    {
      v9 = off_1E8109908[v8];
    }

    v11 = v9;
    *a4 = [NUError unsupportedError:@"auxiliary image is not supported" object:v11];

    v10 = 0;
  }

  return v10;
}

- (id)_evaluateVideoCompositionWithSourceOptions:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v20 = NUAssertLogger_530();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(time1.value) = 138543362;
      *(&time1.value + 4) = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time1, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_530();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        LODWORD(time1.value) = 138543618;
        *(&time1.value + 4) = v27;
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time1, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      LODWORD(time1.value) = 138543362;
      *(&time1.value + 4) = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time1, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode _evaluateVideoCompositionWithSourceOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 629, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != NULL");
  }

  v7 = v6;
  v8 = [(NURenderNode *)self outputVideo:a4];
  if (v8)
  {
    v9 = [NUVideoUtilities firstEnabledVideoTrackInAsset:v8 error:a4];
    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E6988060]);
      [v9 naturalSize];
      [v10 setRenderSize:?];
      [v10 setSourceTrackIDForFrameTiming:{objc_msgSend(v9, "trackID")}];
      [v9 minFrameDuration];
      if ((v42 & 1) != 0 && ([v9 minFrameDuration], time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2) >= 1))
      {
        [v9 minFrameDuration];
        *&time1.value = v39;
        epoch = v40;
      }

      else
      {
        [v9 nominalFrameRate];
        if (v13 <= 0.0)
        {
          CMTimeMake(&v37, 1, 30);
          *&time1.value = *&v37.value;
          epoch = v37.epoch;
        }

        else
        {
          [v9 nominalFrameRate];
          CMTimeMakeWithSeconds(&v38, 1.0 / v14, 600);
          *&time1.value = *&v38.value;
          epoch = v38.epoch;
        }
      }

      time1.epoch = epoch;
      [v10 setFrameDuration:&time1];
      if (v10 && ([v10 frameDuration], (v36 & 1) != 0) && (objc_msgSend(v10, "frameDuration"), time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2) > 0))
      {
        v15 = [NUVideoCompositionInstruction defaultInstructionForAsset:v8 error:a4];
        v16 = v15;
        if (v15)
        {
          v43 = v15;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
          [v10 setInstructions:v17];

          v18 = [v16 requiredSourceSampleDataTrackIDs];
          [v10 setSourceSampleDataTrackIDs:v18];

          v12 = v10;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        [NUError invalidError:@"Invalid frame duration for video track" object:v9];
        *a4 = v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_evaluateVideo:(id *)a3
{
  v107[9] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v37 = NUAssertLogger_530();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *time1 = 138543362;
      *&time1[4] = v38;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", time1, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_530();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v41)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *time1 = 138543618;
        *&time1[4] = v44;
        *&time1[12] = 2114;
        *&time1[14] = v48;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", time1, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *time1 = 138543362;
      *&time1[4] = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", time1, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode _evaluateVideo:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 471, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != nil");
  }

  if (![(NUVideoSourceNode *)self load:?])
  {
    v10 = a3;
    [NUError errorWithCode:1 reason:@"[NUVideoSourceNode _evaluateVideo] asset failed to load" object:0 underlyingError:*a3];
    *v10 = v11 = 0;
    goto LABEL_73;
  }

  v70 = self;
  v64 = a3;
  v69 = [MEMORY[0x1E6988048] composition];
  if (!v69)
  {
    [NUError errorWithCode:1 reason:@"[NUVideoSourceNode _evaluateVideo] failed to get new composition" object:0];
    *v64 = v11 = 0;
    goto LABEL_72;
  }

  v5 = *MEMORY[0x1E69875B0];
  v107[0] = *MEMORY[0x1E6987608];
  v107[1] = v5;
  v72 = v5;
  v6 = *MEMORY[0x1E69875F0];
  v65 = *MEMORY[0x1E69875A0];
  v107[2] = *MEMORY[0x1E69875A0];
  v107[3] = v6;
  v7 = *MEMORY[0x1E69875E8];
  v107[4] = *MEMORY[0x1E69875B8];
  v107[5] = v7;
  v8 = *MEMORY[0x1E69875D0];
  v107[6] = *MEMORY[0x1E69875F8];
  v107[7] = v8;
  v74 = v8;
  v107[8] = *MEMORY[0x1E69875E0];
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:9];
  v9 = [NUVideoUtilities firstEnabledVideoTrackInAsset:self->_asset error:a3];
  v63 = v9;
  if (!v9)
  {
    v11 = 0;
    goto LABEL_71;
  }

  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  [v9 timeRange];
  v59 = [NUVideoUtilities metadataTrackWithPortraitVideoDataInAsset:self->_asset];
  if (v59 && ![NUVideoUtilities track:v59 hasSamplesForEachSampleInTrack:v63])
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_417);
    }

    v12 = _NURenderLogger;
    if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
    {
      *time1 = 0;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Detected metadata track with missing samples. Cinematic effect will be disabled.", time1, 2u);
    }

    v67 = 1;
  }

  else
  {
    v67 = 0;
  }

  asset = self->_asset;
  v98 = 0;
  v58 = [NUVideoUtilities auxiliaryTrackInAsset:asset ofType:2 error:&v98];
  v55 = v98;
  if (v58 && ![NUVideoUtilities track:v58 hasSamplesForEachSampleInTrack:v63])
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_417);
    }

    v14 = _NURenderLogger;
    if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
    {
      *time1 = 0;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Detected disparity track with missing samples. Cinematic effect will be disabled.", time1, 2u);
    }

    v67 = 1;
  }

  v66 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v61;
  v56 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (!v56)
  {
    goto LABEL_68;
  }

  v15 = *v95;
  v16 = *MEMORY[0x1E6987568];
  v53 = *v95;
  v62 = *MEMORY[0x1E6987568];
  do
  {
    v17 = 0;
    do
    {
      if (*v95 != v15)
      {
        v18 = v17;
        objc_enumerationMutation(obj);
        v17 = v18;
      }

      v54 = v17;
      v19 = *(*(&v94 + 1) + 8 * v17);
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v68 = [MEMORY[0x1E69C0708] tracksWithMediaType:v19 forAsset:v70->_asset];
      v73 = [v68 countByEnumeratingWithState:&v90 objects:v105 count:16];
      if (!v73)
      {
        goto LABEL_66;
      }

      v71 = *v91;
      while (2)
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v91 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v21 = *(*(&v90 + 1) + 8 * i);
          memset(v89, 0, sizeof(v89));
          v88 = 0u;
          if (v21)
          {
            [v21 timeRange];
          }

          else
          {
            v103 = 0uLL;
            memset(time1, 0, sizeof(time1));
          }

          time2 = v99;
          time2_16 = v100;
          v86 = v101;
          [NUVideoUtilities conformRange:time1 inRange:&time2];
          if (BYTE12(v88))
          {
            v22 = 1;
            if ((BYTE4(v89[1]) & 1) != 0 && !*(&v89[1] + 1) && (*(&v89[0] + 1) & 0x8000000000000000) == 0)
            {
              *time1 = *(v89 + 8);
              *&time1[16] = *(&v89[1] + 1);
              time2 = *MEMORY[0x1E6960CC0];
              *&time2_16 = *(MEMORY[0x1E6960CC0] + 16);
              v22 = CMTimeCompare(time1, &time2) != 0;
            }
          }

          else
          {
            v22 = 1;
          }

          if ([v19 isEqualToString:v72])
          {
            v22 &= v67 & [v21 hasMediaCharacteristic:v16] ^ 1;
          }

          if ([v19 isEqualToString:v74] && +[NUVideoUtilities metadataTrackContainsPortraitVideoData:](NUVideoUtilities, "metadataTrackContainsPortraitVideoData:", v21))
          {
            v22 &= v67 ^ 1;
          }

          if (![v19 isEqualToString:v74])
          {
            if (!v22)
            {
              continue;
            }

LABEL_51:
            corruptionInfo = v70->_corruptionInfo;
            if (corruptionInfo && [(NSArray *)corruptionInfo count]>= 2)
            {
              v24 = [(NSDictionary *)v70->_auxiliaryVideoTrackProperties objectForKeyedSubscript:@"DeltaImage"];
              v25 = PFFind();
              if (v25)
              {
                v26 = [v21 trackID];
                if (v26 == [v24 trackID])
                {
                  v27 = [v69 addMutableTrackWithMediaType:v19 preferredTrackID:{objc_msgSend(v21, "trackID")}];
                  *time1 = 0;
                  *&time1[8] = time1;
                  *&time1[16] = 0x3810000000;
                  *&time1[24] = &unk_1C03FE0EF;
                  v60 = *MEMORY[0x1E6960CC0];
                  v103 = *MEMORY[0x1E6960CC0];
                  v28 = *(MEMORY[0x1E6960CC0] + 16);
                  v104 = v28;
                  *&time2 = 0;
                  *(&time2 + 1) = &time2;
                  *&time2_16 = 0x3810000000;
                  *(&time2_16 + 1) = &unk_1C03FE0EF;
                  v86 = *MEMORY[0x1E6960C70];
                  v87 = *(MEMORY[0x1E6960C70] + 16);
                  v29 = [v25 corruptedRanges];
                  v79[0] = MEMORY[0x1E69E9820];
                  v79[1] = 3221225472;
                  v79[2] = __36__NUVideoSourceNode__evaluateVideo___block_invoke_2;
                  v79[3] = &unk_1E81092A8;
                  v82 = time1;
                  v30 = v27;
                  v80 = v30;
                  v81 = v21;
                  p_time2 = &time2;
                  [v29 enumerateObjectsUsingBlock:v79];

                  v16 = v62;
                  if (*(*(&time2 + 1) + 44))
                  {
                    *&v77.start.value = *(*(&time2 + 1) + 32);
                    v77.start.epoch = *(*(&time2 + 1) + 48);
                    *&start.value = v60;
                    start.epoch = v28;
                    v16 = v62;
                    if (CMTimeCompare(&v77.start, &start))
                    {
                      start = *(*&time1[8] + 32);
                      duration = *(*(&time2 + 1) + 32);
                      CMTimeRangeMake(&v77, &start, &duration);
                      start = *(*&time1[8] + 32);
                      [v30 insertTimeRange:&v77 ofTrack:v21 atTime:&start error:0];
                      v16 = v62;
                    }
                  }

                  _Block_object_dispose(&time2, 8);
                  _Block_object_dispose(time1, 8);

LABEL_63:
                  continue;
                }
              }
            }

            v24 = [v69 addMutableTrackWithMediaType:v19 preferredTrackID:{objc_msgSend(v21, "trackID")}];
            v31 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "trackID")}];
            v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v21, "trackID")}];
            [v66 setObject:v31 forKeyedSubscript:v32];

            if ([v19 isEqualToString:v65])
            {
              [v24 setAlternateGroupID:{objc_msgSend(v21, "alternateGroupID")}];
              v33 = [v21 languageCode];
              [v24 setLanguageCode:v33];
            }

            [v24 setEnabled:{objc_msgSend(v21, "isEnabled")}];
            v75 = 0;
            *time1 = v88;
            *&time1[16] = v89[0];
            v103 = v89[1];
            time2 = *MEMORY[0x1E6960CC0];
            *&time2_16 = *(MEMORY[0x1E6960CC0] + 16);
            [v24 insertTimeRange:time1 ofTrack:v21 atTime:&time2 error:&v75];
            v34 = v75;
            if (v34)
            {
              v35 = v34;
              *v64 = [NUError errorWithCode:1 reason:@"unable to insert time range" object:v70 underlyingError:v34];

              v11 = 0;
              goto LABEL_70;
            }

            goto LABEL_63;
          }

          if (![NUVideoUtilities metadataTrackContainsLegacyCinematicAudioData:v21]& v22)
          {
            goto LABEL_51;
          }
        }

        v73 = [v68 countByEnumeratingWithState:&v90 objects:v105 count:16];
        if (v73)
        {
          continue;
        }

        break;
      }

LABEL_66:

      v15 = v53;
      v17 = v54 + 1;
    }

    while (v54 + 1 != v56);
    v56 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
    v15 = v53;
  }

  while (v56);
LABEL_68:

  [MEMORY[0x1E69C0708] preserveTrackAssociations:0 ofAsset:v70->_asset forMutableComposition:v69 assetToCompositionTrackID:v66];
  v11 = v69;
LABEL_70:

  v9 = v63;
LABEL_71:

LABEL_72:
LABEL_73:

  return v11;
}

double __36__NUVideoSourceNode__evaluateVideo___block_invoke_2(void *a1, CFDictionaryRef dictionaryRepresentation)
{
  memset(&v16, 0, sizeof(v16));
  CMTimeRangeMakeFromDictionary(&v16, dictionaryRepresentation);
  memset(&v15, 0, sizeof(v15));
  range = v16;
  CMTimeRangeGetEnd(&v15, &range);
  memset(&range, 0, sizeof(range));
  v3 = *(a1[6] + 8);
  lhs = v16.start;
  rhs = *(v3 + 32);
  CMTimeSubtract(&duration.start, &lhs, &rhs);
  lhs = *(v3 + 32);
  CMTimeRangeMake(&range, &lhs, &duration.start);
  duration.start = range.duration;
  lhs = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&duration.start, &lhs))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = *(a1[6] + 8);
    duration = range;
    lhs = *(v6 + 32);
    [v4 insertTimeRange:&duration ofTrack:v5 atTime:&lhs error:0];
  }

  v7 = a1[5];
  if (v7)
  {
    [v7 timeRange];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  *&duration.start.value = *(v9 + 8);
  duration.start.epoch = *(&v9[1] + 1);
  lhs = v15;
  CMTimeSubtract(&v10, &duration.start, &lhs);
  *(*(a1[7] + 8) + 32) = v10;
  result = *&v15.value;
  *(*(a1[6] + 8) + 32) = v15;
  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)cleanAperture
{
  v3 = self;
  v25 = *MEMORY[0x1E69E9840];
  if ((self[6].var0.var0 & 1) == 0)
  {
    v5 = NUAssertLogger_530();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not loaded", v3];
      *buf = 138543362;
      v22 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_530();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v12;
        v23 = 2114;
        v24 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode cleanAperture]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 465, @"%@ not loaded", v17, v18, v19, v20, v3);
  }

  v4 = *&self[8].var1.var1;
  retstr->var0 = *&self[8].var0.var1;
  retstr->var1 = v4;
  return self;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_loaded)
  {
    v16 = NUAssertLogger_530();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not loaded", self];
      *buf = 138543362;
      v35 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_530();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v23;
        v36 = 2114;
        v37 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode pixelSizeWithSourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 442, @"%@ not loaded", v28, v29, v30, v31, self);
  }

  v5 = v4;
  v6 = [v4 objectForKeyedSubscript:@"imageType"];
  if (NUAuxiliaryImageTypeFromString(v6) && NUAuxiliaryImageTypeFromString(v6) != 1)
  {
    v8 = [(NSDictionary *)self->_auxiliaryVideoTrackProperties objectForKeyedSubscript:v6];
    width = [v8 size];
    v12 = v11;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"applyCleanAperture"];
    v8 = v7;
    if (v7)
    {
      [v7 nu_pixelRect];
      width = v32;
      p_height = &v33;
    }

    else
    {
      p_height = &self->_originalExtent.size.height;
      width = self->_originalExtent.size.width;
      if (width)
      {
        v13 = self->_originalExtent.size.height == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        p_height = &self->_size.height;
        width = self->_size.width;
      }
    }

    v12 = *p_height;
  }

  v14 = width;
  v15 = v12;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (BOOL)isHDR
{
  v2 = [(NSDictionary *)self->_colorProperties objectForKeyedSubscript:*MEMORY[0x1E6987DE8]];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6987DF0]];

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  v3 = self;
  v24 = *MEMORY[0x1E69E9840];
  if ((self[8].var0 & 1) == 0)
  {
    v4 = NUAssertLogger_530();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not loaded", v3];
      *buf = 138543362;
      v21 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_530();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v12 = MEMORY[0x1E696AF00];
        v13 = v11;
        v14 = [v12 callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v11;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode duration]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 431, @"%@ not loaded", v16, v17, v18, v19, v3);
  }

  *retstr = *(self + 224);
  return self;
}

- (id)asset:(id *)a3
{
  if ([(NUVideoSourceNode *)self load:a3])
  {
    v4 = self->_asset;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)load:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  if (self->_loaded)
  {
    v3 = 1;
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_417);
    }

    v6 = _NURenderLogger;
    v7 = os_signpost_id_make_with_pointer(v6, self);
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0184000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "NUVideoSourceNode.load", "", buf, 2u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __26__NUVideoSourceNode_load___block_invoke;
    v14[3] = &unk_1E810B3E8;
    v14[4] = self;
    v14[5] = &v16;
    v14[6] = a3;
    v10 = MEMORY[0x1C68D98A0](v14);
    v10[2]();
    v11 = v9;
    v12 = v11;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0184000, v12, OS_SIGNPOST_INTERVAL_END, v7, "NUVideoSourceNode.load", "", buf, 2u);
    }

    v3 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);
  return v3 & 1;
}

__n128 __26__NUVideoSourceNode_load___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__NUVideoSourceNode_load___block_invoke_2;
  block[3] = &unk_1E810B3E8;
  v5 = v1;
  v6 = *(a1 + 48);
  dispatch_sync(v2, block);
  return result;
}

uint64_t __26__NUVideoSourceNode_load___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _load:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)loadAuxiliaryVideoTrackProperties:(id *)a3
{
  v66 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v29 = NUAssertLogger_530();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v63 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_530();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v36;
        v64 = 2114;
        v65 = v40;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode loadAuxiliaryVideoTrackProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 347, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = [&unk_1F3F82D00 arrayByAddingObjectsFromArray:&unk_1F3F82D18];
  v51 = self;
  [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875B0] forAsset:self->_asset];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v4 = v59 = 0u;
  v49 = [(NSDictionary *)v4 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (!v49)
  {
    goto LABEL_38;
  }

  v48 = *v57;
  v5 = off_1E8108000;
  obj = v4;
LABEL_4:
  v6 = 0;
  while (1)
  {
    if (*v57 != v48)
    {
      objc_enumerationMutation(obj);
    }

    v7 = *(*(&v56 + 1) + 8 * v6);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v8 = v50;
    v9 = [(__CFString *)v8 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v9)
    {
      break;
    }

LABEL_36:

    if (++v6 == v49)
    {
      v4 = obj;
      v49 = [(NSDictionary *)obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (!v49)
      {
LABEL_38:

        v25 = v46;
        v26 = v46;
        auxiliaryVideoTrackProperties = v51->_auxiliaryVideoTrackProperties;
        v51->_auxiliaryVideoTrackProperties = v26;
        LOBYTE(v21) = 1;
        goto LABEL_40;
      }

      goto LABEL_4;
    }
  }

  v10 = v9;
  v11 = v5;
  v12 = *v53;
LABEL_9:
  v13 = 0;
  while (1)
  {
    if (*v53 != v12)
    {
      objc_enumerationMutation(v8);
    }

    v14 = [*(*(&v52 + 1) + 8 * v13) integerValue];
    v15 = NUMediaCharacteristicForAuxiliaryImageType(v14);
    if (v15 && [v7 hasMediaCharacteristic:v15])
    {
      v16 = @"Invalid";
      if (v14 <= 0xB)
      {
        v16 = off_1E8109908[v14];
      }

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v14 != 2)
    {
      if (v17)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

    if (v17)
    {
      goto LABEL_26;
    }

    v18 = [(__objc2_class *)v11[36] metadataTrackWithPortraitVideoDataInAsset:v51->_asset];
    if (v18)
    {
      break;
    }

LABEL_23:

    if (v10 == ++v13)
    {
      v10 = [(__CFString *)v8 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v10)
      {
        goto LABEL_9;
      }

      v5 = v11;
      goto LABEL_36;
    }
  }

  v19 = v18;
  v17 = @"Disparity";
  v20 = @"Disparity";

LABEL_26:
  v5 = v11;
  v21 = [(__objc2_class *)v11[36] firstEnabledVideoTrackInAsset:v51->_asset error:a3];
  if (v21)
  {
    if (([(__objc2_class *)v11[36] track:v7 hasSamplesForEachSampleInTrack:v21]& 1) != 0)
    {

LABEL_29:
      v15 = objc_alloc_init(_NUAVAssetTrackAuxiliaryVideoTrackProperties);
      -[_NUAVAssetTrackAuxiliaryVideoTrackProperties setTrackID:](v15, "setTrackID:", [v7 trackID]);
      v5 = v11;
      v22 = [(__objc2_class *)v11[36] naturalSizeOfTrack:v7 oriented:0];
      [(_NUAVAssetTrackAuxiliaryVideoTrackProperties *)v15 setSize:v22, v23];
      [v46 setObject:v15 forKeyedSubscript:v17];
      v8 = v17;
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_417);
      }

      v24 = _NURenderLogger;
      if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v63 = v7;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Detected disparity track with missing samples. Cinematic effect will be disabled. %@", buf, 0xCu);
      }
    }

    goto LABEL_36;
  }

  v25 = v46;
  v4 = obj;
  auxiliaryVideoTrackProperties = obj;
LABEL_40:

  return v21;
}

- (BOOL)loadAudioMixParameters:(id *)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = [NUVideoUtilities cinematicAudioTrackInAsset:self->_asset];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [MEMORY[0x1E6988040] audioMixInputParametersWithTrack:v5];
  objc_storeStrong(&self->_cinematicAudioMixInputParameters, v6);
  v7 = [NUVideoUtilities metadataTrackWithCinematicAudioDataInAsset:self->_asset];
  v8 = v7;
  if (!v7)
  {
    v30 = [NUError missingError:@"Missing cinematic audio metadata track" object:self->_asset];
LABEL_22:
    *a3 = v30;
LABEL_27:

    v29 = 0;
    goto LABEL_28;
  }

  if (![v7 totalSampleDataLength])
  {
    v30 = [NUError invalidError:@"Invalid cinematic audio metadata track" object:v8];
    goto LABEL_22;
  }

  v42 = *MEMORY[0x1E6960CC0];
  v43 = *(MEMORY[0x1E6960CC0] + 16);
  v44 = 0;
  v9 = [NUVideoUtilities readTimedMetadataGroupAtTime:&v42 fromTrack:v8 outputSettings:0 videoComposition:0 error:&v44];
  v10 = v44;
  if (!v9)
  {
    v31 = [NUError errorWithCode:1 reason:@"Could not read timed metadata group at time zero from cinematic audio metadata track" object:v8 underlyingError:v10];
LABEL_25:
    *a3 = v31;
LABEL_26:

    goto LABEL_27;
  }

  v11 = [v9 items];
  if (!v11 || (v12 = v11, [v9 items], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, !v14))
  {
    v31 = [NUError missingError:@"Missing metadata group items" object:v9];
    goto LABEL_25;
  }

  v35 = v9;
  v36 = v10;
  v34 = a3;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [v9 items];
  v15 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = *v39;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v39 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v38 + 1) + 8 * i);
      v20 = [v19 identifier];
      v21 = [v20 isEqualToString:kCinematicAudioMetadataIdentifier];

      if (v21)
      {
        v22 = [v19 dataType];
        v23 = [v22 isEqualToString:@"com.apple.metadata.datatype.raw-data"];

        if (v23)
        {
          v24 = [v19 dataValue];
          if (v24)
          {
            v25 = v24;
            v26 = [MEMORY[0x1E6987F20] cinematicAudioEffectWithData:v24];
            [(AVAudioMixInputParameters *)v6 addEffect:v26];

            continue;
          }

          *v34 = [NUError errorWithCode:3 reason:@"Missing cinematic audio metadata data value" object:v19];
        }

        else
        {
          v33 = [v19 dataType];
          *v34 = [NUError errorWithCode:2 reason:@"Expected cinematic audio metadata as raw data" object:v33];
        }

        v9 = v35;
        v10 = v36;
        goto LABEL_26;
      }
    }

    v16 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_18:

  cinematicAudioMixInputParameters = self->_cinematicAudioMixInputParameters;
  self->_cinematicAudioMixInputParameters = v6;
  v28 = v6;

LABEL_19:
  v29 = 1;
LABEL_28:

  return v29;
}

- (BOOL)_load:(id *)a3
{
  v110 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v74 = NUAssertLogger_530();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v75;
      _os_log_error_impl(&dword_1C0184000, v74, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v77 = NUAssertLogger_530();
    v78 = os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v78)
      {
        v81 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v82 = MEMORY[0x1E696AF00];
        v83 = v81;
        v84 = [v82 callStackSymbols];
        v85 = [v84 componentsJoinedByString:@"\n"];
        LODWORD(buf.origin.x) = 138543618;
        *(&buf.origin.x + 4) = v81;
        WORD2(buf.origin.y) = 2114;
        *(&buf.origin.y + 6) = v85;
        _os_log_error_impl(&dword_1C0184000, v77, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v78)
    {
      v79 = [MEMORY[0x1E696AF00] callStackSymbols];
      v80 = [v79 componentsJoinedByString:@"\n"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v80;
      _os_log_error_impl(&dword_1C0184000, v77, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode _load:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 175, @"Invalid parameter not satisfying: %s", v86, v87, v88, v89, "error != NULL");
  }

  if (self->_loaded)
  {
    return 1;
  }

  if (self->_URL)
  {
    [MEMORY[0x1E6987E28] assetWithURL:?];
  }

  else
  {
    [MEMORY[0x1E6987E28] assetWithData:self->_videoData contentType:*MEMORY[0x1E69874C0] options:MEMORY[0x1E695E0F8]];
  }
  v5 = ;
  asset = self->_asset;
  self->_asset = v5;

  v7 = [(AVAsset *)self->_asset metadata];
  v8 = [v7 copy];
  metadata = self->_metadata;
  self->_metadata = v8;

  v10 = [(AVAsset *)self->_asset trackGroups];
  v11 = [v10 copy];
  trackGroups = self->_trackGroups;
  self->_trackGroups = v11;

  v13 = [MEMORY[0x1E695DF90] dictionary];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v96 = self;
  v14 = [(AVAsset *)self->_asset tracks];
  v15 = [v14 countByEnumeratingWithState:&v100 objects:v109 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v101;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v101 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v100 + 1) + 8 * i);
        v20 = [v19 metadata];
        v21 = [v20 copy];
        v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "trackID")}];
        [v13 setObject:v21 forKeyedSubscript:v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v100 objects:v109 count:16];
    }

    while (v16);
  }

  v23 = [v13 copy];
  trackMetadata = v96->_trackMetadata;
  v96->_trackMetadata = v23;

  v25 = [NUVideoUtilities firstEnabledVideoTrackInAsset:v96->_asset error:a3];
  v26 = v25;
  if (v25)
  {
    if ([v25 isDecodable])
    {
      v27 = v96->_asset;
      v99 = 0;
      v28 = [NUVideoUtilities validateAsset:v27 error:&v99];
      v29 = v99;
      if ([v28 count])
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_417);
        }

        v30 = _NURenderLogger;
        if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_FAULT))
        {
          v72 = v30;
          v73 = [v28 componentsJoinedByString:@"\n"];
          LODWORD(buf.origin.x) = 138543362;
          *(&buf.origin.x + 4) = v73;
          _os_log_fault_impl(&dword_1C0184000, v72, OS_LOG_TYPE_FAULT, "Detected invalid video asset for:\n%{public}@", &buf, 0xCu);
        }

        v31 = [v28 copy];
        corruptionInfo = v96->_corruptionInfo;
        v96->_corruptionInfo = v31;
      }

      [v26 preferredTransform];
      v96->_orientation = [NUVideoUtilities videoOrientationForAssetPreferredTransform:&buf];
      [v26 nominalFrameRate];
      v96->_nominalFrameRate = v33;
      v34 = [v26 formatDescriptions];
      if ([v34 count])
      {
        v93 = v29;
        v94 = v28;
        v35 = [v34 firstObject];

        Dimensions = CMVideoFormatDescriptionGetDimensions(v35);
        p_size = &v96->_size;
        v38 = Dimensions;
        v39 = Dimensions >> 32;
        if (((Dimensions | (Dimensions >> 32)) & 0x8000000000000000) != 0)
        {
          v90 = [MEMORY[0x1E696AAA8] currentHandler];
          v91 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
          [v90 handleFailureInFunction:v91 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];

          p_size = &v96->_size;
        }

        p_size->width = v38;
        p_size->height = v39;
        buf = CMVideoFormatDescriptionGetCleanAperture(v35, 0);
        NU::RectT<long>::RectT(&v104, &buf, 3);
        v40 = v105;
        v96->_cleanAperture.origin = v104;
        v96->_cleanAperture.size = v40;
        v41 = CMFormatDescriptionGetExtension(v35, *MEMORY[0x1E6965D88]);
        v42 = CMFormatDescriptionGetExtension(v35, *MEMORY[0x1E6965F30]);
        v43 = CMFormatDescriptionGetExtension(v35, *MEMORY[0x1E6965F98]);
        v44 = v43;
        v92 = v34;
        if (v41 && v42 && v43)
        {
          v45 = v41;
          v46 = v42;
          v47 = v43;
        }

        else
        {
          v48 = *MEMORY[0x1E6987D10];
          if (v41)
          {
            v48 = v41;
          }

          v45 = v48;

          v49 = *MEMORY[0x1E6987DF8];
          if (v42)
          {
            v49 = v42;
          }

          v46 = v49;

          v50 = *MEMORY[0x1E6987E18];
          if (v44)
          {
            v50 = v44;
          }

          v47 = v50;

          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_417);
          }

          v51 = _NURenderLogger;
          if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_INFO))
          {
            v52 = v51;
            v53 = [v34 firstObject];
            LODWORD(buf.origin.x) = 138412290;
            *(&buf.origin.x + 4) = v53;
            _os_log_impl(&dword_1C0184000, v52, OS_LOG_TYPE_INFO, "Invalid color properties in format description: %@", &buf, 0xCu);
          }
        }

        v54 = *MEMORY[0x1E6987DE8];
        v106[0] = *MEMORY[0x1E6987D08];
        v106[1] = v54;
        v107[0] = v45;
        v107[1] = v46;
        v106[2] = *MEMORY[0x1E6987E10];
        v107[2] = v47;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:3];
        colorProperties = v96->_colorProperties;
        v96->_colorProperties = v55;

        v57 = [(NUSourceNode *)v96 originalNode];

        if (v57)
        {
          [NUVideoUtilities readStillImageTimeFromVideoAsset:v96->_asset];
          *&v96->_livePhotoKeyFrameTime.value = buf.origin;
          v96->_livePhotoKeyFrameTime.epoch = *&buf.size.width;
        }

        v58 = v96->_asset;
        if (v58)
        {
          [(AVAsset *)v58 duration];
        }

        else
        {
          memset(&buf, 0, 24);
        }

        *&v96->_duration.value = buf.origin;
        v96->_duration.epoch = *&buf.size.width;

        v59 = [(NURenderNode *)v96 settings];
        v60 = [v59 objectForKeyedSubscript:@"appliedCropRect"];

        if (v60)
        {
          [v60 nu_CGRect];
          v62.f64[1] = v61;
          v63 = vdivq_f64(vcvtq_f64_s64(v96->_size), v62);
          v65.f64[1] = v64;
          buf.origin = vmlsq_f64(*MEMORY[0x1E695EFF8], v63, v65);
          buf.size = v63;
          NU::RectT<long>::RectT(&v104, &buf, 2);
          v66 = v105;
          v96->_originalExtent.origin = v104;
          v96->_originalExtent.size = v66;
        }

        v98 = 0;
        v4 = [(NUVideoSourceNode *)v96 loadAuxiliaryVideoTrackProperties:&v98];
        v67 = v98;
        if (v4)
        {
          v97 = 0;
          v68 = [(NUVideoSourceNode *)v96 loadAudioMixParameters:&v97];
          v69 = v97;

          if (!v68)
          {
            if (_NULogOnceToken != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_417);
            }

            v70 = _NURenderLogger;
            if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.origin.x) = 138412290;
              *(&buf.origin.x + 4) = v69;
              _os_log_error_impl(&dword_1C0184000, v70, OS_LOG_TYPE_ERROR, "Failed to load audio mix parameters (%@), audio mix effects may be disabled", &buf, 0xCu);
            }
          }

          v96->_loaded = 1;
        }

        else
        {
          *a3 = [NUError errorWithCode:1 reason:@"Failed to load auxiliary video track properties" object:v96->_asset underlyingError:v67];
          v69 = v67;
        }

        v34 = v92;

        v29 = v93;
        v28 = v94;
      }

      else
      {
        [NUError unknownError:@"no format descriptions available" object:v26];
        *a3 = v4 = 0;
      }
    }

    else
    {
      [NUError unsupportedError:@"asset is unplayable" object:v96];
      *a3 = v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sourceOptionsForSettings:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = [v6 initWithDictionary:MEMORY[0x1E695E0F8]];
  v8 = [v5 objectForKeyedSubscript:@"auxiliaryImageType"];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"auxiliaryImageType"];
    v10 = [v9 isEqualToString:@"Disparity"];

    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = @"Disparity";
  }

  else
  {
    v11 = @"None";
  }

  v12 = v11;
  [v7 setObject:v11 forKeyedSubscript:@"imageType"];

LABEL_6:
  v13 = [v5 objectForKeyedSubscript:@"hardCropCleanAperture"];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v17 = 0u;
    v18 = 0u;
    [(NUVideoSourceNode *)self cleanAperture];
  }

  v15 = [v7 copy];

  return v15;
}

- (int64_t)sourceOrientation
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_loaded)
  {
    v4 = NUAssertLogger_530();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not loaded", self];
      *buf = 138543362;
      v21 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_530();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v12 = MEMORY[0x1E696AF00];
        v13 = v11;
        v14 = [v12 callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v11;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode sourceOrientation]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 144, @"%@ not loaded", v16, v17, v18, v19, self);
  }

  return self->_orientation;
}

- (void)_initializeQueue
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("NUVideoSourceNode", v5);
  queue = self->_queue;
  self->_queue = v3;
}

- (NUVideoSourceNode)initWithSettings:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
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
  _NUAssertFailHandler("[NUVideoSourceNode initWithSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 135, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUVideoSourceNode)initWithVideoData:(id)a3 identifier:(id)a4 options:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v17 = NUAssertLogger_530();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v51 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_530();
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
        v51 = v31;
        v52 = 2114;
        v53 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode initWithVideoData:identifier:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 119, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "data != nil");
  }

  if (!v9)
  {
    v24 = NUAssertLogger_530();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v51 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_530();
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
        v51 = v40;
        v52 = 2114;
        v53 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode initWithVideoData:identifier:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 120, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "identifier != nil");
  }

  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v12 setObject:v9 forKeyedSubscript:@"identifier"];
  v13 = [v11 objectForKeyedSubscript:@"appliedCropRect"];
  [v12 setObject:v13 forKeyedSubscript:@"appliedCropRect"];

  v49.receiver = self;
  v49.super_class = NUVideoSourceNode;
  v14 = [(NUSourceNode *)&v49 initWithSettings:v12];
  videoData = v14->_videoData;
  v14->_videoData = v8;

  [(NUVideoSourceNode *)v14 _initializeQueue];
  return v14;
}

- (NUVideoSourceNode)initWithURL:(id)a3 identifier:(id)a4 options:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v17 = NUAssertLogger_530();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "URL != nil"];
      *buf = 138543362;
      v51 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_530();
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
        v51 = v31;
        v52 = 2114;
        v53 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode initWithURL:identifier:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 102, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "URL != nil");
  }

  if (!v9)
  {
    v24 = NUAssertLogger_530();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v51 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_530();
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
        v51 = v40;
        v52 = 2114;
        v53 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoSourceNode initWithURL:identifier:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 103, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "identifier != nil");
  }

  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v12 setObject:v8 forKeyedSubscript:@"url"];
  [v12 setObject:v9 forKeyedSubscript:@"identifier"];
  v13 = [v11 objectForKeyedSubscript:@"appliedCropRect"];
  [v12 setObject:v13 forKeyedSubscript:@"appliedCropRect"];

  v49.receiver = self;
  v49.super_class = NUVideoSourceNode;
  v14 = [(NUSourceNode *)&v49 initWithSettings:v12];
  URL = v14->_URL;
  v14->_URL = v8;

  [(NUVideoSourceNode *)v14 _initializeQueue];
  return v14;
}

@end