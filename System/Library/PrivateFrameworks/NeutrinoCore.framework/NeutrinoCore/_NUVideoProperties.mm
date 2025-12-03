@interface _NUVideoProperties
- ($0AC6E346AE4835514AAA8AC86D8F4844)originalSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- ($41299696D20B6C925B74A5D5E4D5CC87)cleanAperture;
- ($41299696D20B6C925B74A5D5E4D5CC87)originalCleanAperture;
- (BOOL)isHDR;
- (NSString)description;
- (_NUVideoProperties)initWithProperties:(id)properties;
- (id)metadataItemForKey:(id)key;
- (void)setCleanAperture:(id *)aperture;
- (void)setDuration:(id *)duration;
- (void)setLivePhotoKeyFrameTime:(id *)time;
- (void)setOriginalCleanAperture:(id *)aperture;
@end

@implementation _NUVideoProperties

- (void)setDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_duration.epoch = duration->var3;
  *&self->_duration.value = v3;
}

- (void)setLivePhotoKeyFrameTime:(id *)time
{
  v3 = *&time->var0;
  self->_livePhotoKeyFrameTime.epoch = time->var3;
  *&self->_livePhotoKeyFrameTime.value = v3;
}

- (void)setOriginalCleanAperture:(id *)aperture
{
  var0 = aperture->var0;
  self->_originalCleanAperture.size = aperture->var1;
  self->_originalCleanAperture.origin = var0;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)originalCleanAperture
{
  v3 = *&self[6].var1.var1;
  retstr->var0 = *&self[6].var0.var1;
  retstr->var1 = v3;
  return self;
}

- (void)setCleanAperture:(id *)aperture
{
  var0 = aperture->var0;
  self->_cleanAperture.size = aperture->var1;
  self->_cleanAperture.origin = var0;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)cleanAperture
{
  v3 = *&self[5].var1.var1;
  retstr->var0 = *&self[5].var0.var1;
  retstr->var1 = v3;
  return self;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)originalSize
{
  height = self->_originalSize.height;
  width = self->_originalSize.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (BOOL)isHDR
{
  v3 = +[NUGlobalSettings enableHDRSupport];
  if (v3)
  {
    if (+[NUGlobalSettings allAssetsCanUseHDRPipeline])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      colorProperties = [(_NUVideoProperties *)self colorProperties];

      if (colorProperties)
      {
        colorProperties2 = [(_NUVideoProperties *)self colorProperties];
        v6 = [NUColorSpace colorSpaceFromVideoColorProperties:colorProperties2];

        LOBYTE(colorProperties2) = [v6 isHDR];
        LOBYTE(v3) = colorProperties2;
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  return v3;
}

- (id)metadataItemForKey:(id)key
{
  v34 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!keyCopy)
  {
    v12 = NUAssertLogger_20452();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v31 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_20452();
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
        v31 = v19;
        v32 = 2114;
        v33 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUVideoProperties metadataItemForKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoProperties.m", 44, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "key != nil");
  }

  v5 = keyCopy;
  metadata = [(_NUVideoProperties *)self metadata];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __41___NUVideoProperties_metadataItemForKey___block_invoke;
  v28[3] = &unk_1E810AC58;
  v7 = v5;
  v29 = v7;
  v8 = [metadata indexOfObjectPassingTest:v28];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    metadata2 = [(_NUVideoProperties *)self metadata];
    v9 = [metadata2 objectAtIndexedSubscript:v8];
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_NUVideoProperties *)self url];
  metadata = [(_NUVideoProperties *)self metadata];
  v7 = [(_NUVideoProperties *)self size];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", v7, v8];
  orientation = [(_NUVideoProperties *)self orientation];
  if ((orientation - 9) >= 0xFFFFFFFFFFFFFFF8)
  {
    v11 = orientation;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(&NUOrientationName_names + v11);
  colorProperties = [(_NUVideoProperties *)self colorProperties];
  v14 = [v3 stringWithFormat:@"<%@:%p> url=%@ metadata=%@ size=%@ orientation=%@ color=%@", v4, self, v5, metadata, v9, v12, colorProperties];

  return v14;
}

- (_NUVideoProperties)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v29.receiver = self;
  v29.super_class = _NUVideoProperties;
  v5 = [(_NUVideoProperties *)&v29 init];
  v6 = [propertiesCopy url];
  [(_NUVideoProperties *)v5 setUrl:v6];

  metadata = [propertiesCopy metadata];
  [(_NUVideoProperties *)v5 setMetadata:metadata];

  v8 = [propertiesCopy size];
  [(_NUVideoProperties *)v5 setSize:v8, v9];
  originalSize = [propertiesCopy originalSize];
  [(_NUVideoProperties *)v5 setOriginalSize:originalSize, v11];
  if (propertiesCopy)
  {
    [propertiesCopy cleanAperture];
    v25 = v27;
    v26 = v28;
    [(_NUVideoProperties *)v5 setCleanAperture:&v25];
    [propertiesCopy originalCleanAperture];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    [(_NUVideoProperties *)v5 setCleanAperture:&v25];
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  [(_NUVideoProperties *)v5 setOriginalCleanAperture:&v25];
  -[_NUVideoProperties setOrientation:](v5, "setOrientation:", [propertiesCopy orientation]);
  [propertiesCopy nominalFrameRate];
  [(_NUVideoProperties *)v5 setNominalFrameRate:?];
  colorProperties = [propertiesCopy colorProperties];
  [(_NUVideoProperties *)v5 setColorProperties:colorProperties];

  if (propertiesCopy)
  {
    [propertiesCopy livePhotoKeyFrameTime];
    v25 = v21;
    *&v26 = v22;
    [(_NUVideoProperties *)v5 setLivePhotoKeyFrameTime:&v25];
    [propertiesCopy duration];
  }

  else
  {
    v25 = 0uLL;
    *&v26 = 0;
    [(_NUVideoProperties *)v5 setLivePhotoKeyFrameTime:&v25];
    v20 = 0;
    v19 = 0uLL;
  }

  v25 = v19;
  *&v26 = v20;
  [(_NUVideoProperties *)v5 setDuration:&v25, v19, v20];
  trackGroups = [propertiesCopy trackGroups];
  [(_NUVideoProperties *)v5 setTrackGroups:trackGroups];

  trackMetadata = [propertiesCopy trackMetadata];
  [(_NUVideoProperties *)v5 setTrackMetadata:trackMetadata];

  auxiliaryVideoTrackProperties = [propertiesCopy auxiliaryVideoTrackProperties];
  [(_NUVideoProperties *)v5 setAuxiliaryVideoTrackProperties:auxiliaryVideoTrackProperties];

  cinematicAudioMixInputParameters = [propertiesCopy cinematicAudioMixInputParameters];
  [(_NUVideoProperties *)v5 setCinematicAudioMixInputParameters:cinematicAudioMixInputParameters];

  videoCorruptionInfo = [propertiesCopy videoCorruptionInfo];
  [(_NUVideoProperties *)v5 setVideoCorruptionInfo:videoCorruptionInfo];

  return v5;
}

@end