@interface _NUImageProperties
+ (BOOL)getGainMapHeadroom:(double *)headroom fromMakerNote:(id)note;
+ (BOOL)getGainMapHeadroom:(double *)headroom fromMetadata:(CGImageMetadata *)metadata;
+ (BOOL)setGainMapHeadroom:(double)headroom toMakerNote:(id)note;
+ (BOOL)setGainMapHeadroom:(double)headroom toMetadata:(CGImageMetadata *)metadata;
+ (CGImageMetadata)createGainMapMetadataWithHeadroom:(double)headroom;
+ (id)versionFromFlexRangeMetadata:(CGImageMetadata *)metadata;
+ (id)versionFromMetadataTag:(CGImageMetadataTag *)tag;
+ (id)versionFromMeteorPlusMetadata:(CGImageMetadata *)metadata;
+ (void)_computeMeteorPlusGain:(double *)gain gainMapValue:(double *)value forContentHeadroom:(double)headroom;
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (BOOL)hasGainMap;
- (BOOL)isHDR;
- (NSString)description;
- (NUVersion)meteorPlusGainMapVersion;
- (_NUImageProperties)init;
- (_NUImageProperties)initWithProperties:(id)properties;
- (double)_computeGainMapHeadroom;
- (double)gainMapHeadroom;
- (id)auxiliaryImagePropertiesForType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_updateGainMapHeadroomMetadata:(double)metadata;
- (void)_updateGainMapMetadata:(CGImageMetadata *)metadata;
- (void)_updateMakerNote:(id)note;
- (void)enumerateAuxiliaryImageProperties:(id)properties;
- (void)setAuxiliaryImageProperties:(id)properties forType:(int64_t)type;
- (void)setGainMapHeadroom:(double)headroom;
@end

@implementation _NUImageProperties

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)enumerateAuxiliaryImageProperties:(id)properties
{
  propertiesCopy = properties;
  auxiliaryImagesProperties = self->_auxiliaryImagesProperties;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56___NUImageProperties_enumerateAuxiliaryImageProperties___block_invoke;
  v7[3] = &unk_1E81097F0;
  v8 = propertiesCopy;
  v6 = propertiesCopy;
  [(NSMutableDictionary *)auxiliaryImagesProperties enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)setAuxiliaryImageProperties:(id)properties forType:(int64_t)type
{
  auxiliaryImagesProperties = self->_auxiliaryImagesProperties;
  propertiesCopy = properties;
  if (type > 0xB)
  {
    v7 = @"Invalid";
  }

  else
  {
    v7 = off_1E8109908[type];
  }

  v8 = v7;
  [(NSMutableDictionary *)auxiliaryImagesProperties setObject:propertiesCopy forKeyedSubscript:v8];
}

- (id)auxiliaryImagePropertiesForType:(int64_t)type
{
  auxiliaryImagesProperties = self->_auxiliaryImagesProperties;
  if (type > 0xB)
  {
    v4 = @"Invalid";
  }

  else
  {
    v4 = off_1E8109908[type];
  }

  v5 = v4;
  v6 = [(NSMutableDictionary *)auxiliaryImagesProperties objectForKeyedSubscript:v5];

  return v6;
}

- (_NUImageProperties)initWithProperties:(id)properties
{
  v65 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (!propertiesCopy)
  {
    v28 = NUAssertLogger_3297();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "properties != nil"];
      *buf = 138543362;
      v62 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_3297();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        callStackSymbols = [v43 callStackSymbols];
        v46 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v42;
        v63 = 2114;
        v64 = v46;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageProperties initWithProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 399, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "properties != nil");
  }

  v5 = propertiesCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = NUAssertLogger_3297();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[properties isKindOfClass:_NUImageProperties.class]"];
      *buf = 138543362;
      v62 = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger_3297();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v39)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        callStackSymbols3 = [v52 callStackSymbols];
        v55 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v51;
        v63 = 2114;
        v64 = v55;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageProperties initWithProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 400, @"Invalid parameter not satisfying: %s", v56, v57, v58, v59, "[properties isKindOfClass:_NUImageProperties.class]");
  }

  v60.receiver = self;
  v60.super_class = _NUImageProperties;
  v6 = [(_NUImageProperties *)&v60 init];
  v7 = [v5 url];
  url = v6->_url;
  v6->_url = v7;

  metadata = [v5 metadata];
  v10 = [metadata copy];
  metadata = v6->_metadata;
  v6->_metadata = v10;

  colorSpace = [v5 colorSpace];
  colorSpace = v6->_colorSpace;
  v6->_colorSpace = colorSpace;

  [v5 contentHeadroom];
  v6->_contentHeadroom = v14;
  v6->_size.width = [v5 size];
  v6->_size.height = v15;
  v6->_orientation = [v5 orientation];
  fileUTI = [v5 fileUTI];
  fileUTI = v6->_fileUTI;
  v6->_fileUTI = fileUTI;

  v6->_alphaInfo = [v5 alphaInfo];
  v6->_componentInfo = [v5 componentInfo];
  semanticStyleProperties = [v5 semanticStyleProperties];
  v19 = [semanticStyleProperties copy];
  semanticStyleProperties = v6->_semanticStyleProperties;
  v6->_semanticStyleProperties = v19;

  v21 = [v5[2] mutableCopy];
  auxiliaryImagesProperties = v6->_auxiliaryImagesProperties;
  v6->_auxiliaryImagesProperties = v21;

  v23 = [v5[12] copy];
  flexRangeProperties = v6->_flexRangeProperties;
  v6->_flexRangeProperties = v23;

  rawProperties = [v5 rawProperties];
  rawProperties = v6->_rawProperties;
  v6->_rawProperties = rawProperties;

  return v6;
}

- (_NUImageProperties)init
{
  v6.receiver = self;
  v6.super_class = _NUImageProperties;
  v2 = [(_NUImageProperties *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  auxiliaryImagesProperties = v2->_auxiliaryImagesProperties;
  v2->_auxiliaryImagesProperties = v3;

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_NUImageProperties alloc];

  return [(_NUImageProperties *)v4 initWithProperties:self];
}

- (NSString)description
{
  v20 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(_NUImageProperties *)self url];
  fileUTI = [(_NUImageProperties *)self fileUTI];
  v6 = [(_NUImageProperties *)self size];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", v6, v7];
  orientation = [(_NUImageProperties *)self orientation];
  if ((orientation - 9) >= 0xFFFFFFFFFFFFFFF8)
  {
    v10 = orientation;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&NUOrientationName_names + v10);
  colorSpace = [(_NUImageProperties *)self colorSpace];
  [(_NUImageProperties *)self contentHeadroom];
  v14 = v13;
  rawProperties = [(_NUImageProperties *)self rawProperties];
  auxiliaryImagesProperties = self->_auxiliaryImagesProperties;
  metadata = [(_NUImageProperties *)self metadata];
  v18 = [v20 stringWithFormat:@"<%@:%p> url=%@ fileUTI=%@ size=%@ orientation=%@ colorSpace=%@ headroom=%f raw=%@ aux=%@ metadata=%@", v3, self, v4, fileUTI, v8, v11, colorSpace, *&v14, rawProperties, auxiliaryImagesProperties, metadata];

  return v18;
}

- (NUVersion)meteorPlusGainMapVersion
{
  v2 = [(_NUImageProperties *)self auxiliaryImagePropertiesForType:7];
  v3 = v2;
  if (v2 && (v4 = [v2 auxiliaryDataInfoMetadata]) != 0)
  {
    v5 = [objc_opt_class() versionFromMeteorPlusMetadata:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateGainMapMetadata:(CGImageMetadata *)metadata
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = [(_NUImageProperties *)self auxiliaryImagePropertiesForType:7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = NUAssertLogger_3297();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected gain map properties"];
      *buf = 138543362;
      v25 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_3297();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        callStackSymbols = [v14 callStackSymbols];
        v17 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v13;
        v26 = 2114;
        v27 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageProperties _updateGainMapMetadata:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 200, @"Unexpected gain map properties", v18, v19, v20, v21, v22);
  }

  v5 = [v23 auxiliaryImagePropertiesByUpdatingMetadata:metadata];
  [(_NUImageProperties *)self setAuxiliaryImageProperties:v5 forType:7];
}

- (void)_updateMakerNote:(id)note
{
  noteCopy = note;
  metadata = [(_NUImageProperties *)self metadata];
  v8 = [metadata mutableCopy];

  v6 = [noteCopy copy];
  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696DE30]];

  v7 = [v8 copy];
  [(_NUImageProperties *)self setMetadata:v7];
}

- (void)_updateGainMapHeadroomMetadata:(double)metadata
{
  v5 = [(_NUImageProperties *)self auxiliaryImagePropertiesForType:7];
  if (v5)
  {
    v12 = v5;
    auxiliaryDataInfoMetadata = [v5 auxiliaryDataInfoMetadata];
    v5 = v12;
    if (auxiliaryDataInfoMetadata)
    {
      v7 = [objc_opt_class() versionFromMeteorPlusMetadata:auxiliaryDataInfoMetadata];
      if ([v7 major] >= 2)
      {
        MutableCopy = CGImageMetadataCreateMutableCopy(auxiliaryDataInfoMetadata);
        if ([objc_opt_class() setGainMapHeadroom:MutableCopy toMetadata:metadata])
        {
          [(_NUImageProperties *)self _updateGainMapMetadata:MutableCopy];
        }

        CFRelease(MutableCopy);
      }

      metadata = [(_NUImageProperties *)self metadata];
      v10 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
      v11 = [v10 mutableCopy];

      if (v11 && [objc_opt_class() setGainMapHeadroom:v11 toMakerNote:metadata])
      {
        [(_NUImageProperties *)self _updateMakerNote:v11];
      }

      v5 = v12;
    }
  }
}

- (double)_computeGainMapHeadroom
{
  flexRangeProperties = [(_NUImageProperties *)self flexRangeProperties];
  v4 = flexRangeProperties;
  if (!flexRangeProperties)
  {
    *&v17 = 1.0;
    v9 = [(_NUImageProperties *)self auxiliaryImagePropertiesForType:7];
    v10 = v9;
    v8 = 1.0;
    if (!v9)
    {
      goto LABEL_13;
    }

    auxiliaryDataInfoMetadata = [v9 auxiliaryDataInfoMetadata];
    if (!auxiliaryDataInfoMetadata)
    {
      goto LABEL_13;
    }

    v12 = auxiliaryDataInfoMetadata;
    v13 = [objc_opt_class() versionFromMeteorPlusMetadata:auxiliaryDataInfoMetadata];
    if ([v13 major] <= 1)
    {
      if ([v13 major] < 1)
      {
LABEL_12:

        v8 = *&v17;
LABEL_13:

        goto LABEL_14;
      }
    }

    else if ([objc_opt_class() getGainMapHeadroom:&v17 fromMetadata:v12])
    {
      goto LABEL_12;
    }

    metadata = [(_NUImageProperties *)self metadata];
    v15 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    if (v15)
    {
      [objc_opt_class() getGainMapHeadroom:&v17 fromMakerNote:v15];
    }

    goto LABEL_12;
  }

  [flexRangeProperties baseHeadroom];
  v6 = v5;
  [v4 alternateHeadroom];
  v8 = exp2f(fmaxf(v6, v7));
LABEL_14:

  return v8;
}

- (void)setGainMapHeadroom:(double)headroom
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:headroom];
  gainMapHeadroomValue = obj->_gainMapHeadroomValue;
  obj->_gainMapHeadroomValue = v4;

  [(_NUImageProperties *)obj _updateGainMapHeadroomMetadata:headroom];
  objc_sync_exit(obj);
}

- (double)gainMapHeadroom
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  gainMapHeadroomValue = selfCopy->_gainMapHeadroomValue;
  if (!gainMapHeadroomValue)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_NUImageProperties *)selfCopy _computeGainMapHeadroom];
    v5 = [v4 numberWithDouble:?];
    v6 = selfCopy->_gainMapHeadroomValue;
    selfCopy->_gainMapHeadroomValue = v5;

    gainMapHeadroomValue = selfCopy->_gainMapHeadroomValue;
  }

  [(NSNumber *)gainMapHeadroomValue doubleValue];
  v8 = v7;
  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)hasGainMap
{
  v2 = [(_NUImageProperties *)self auxiliaryImagePropertiesForType:7];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isHDR
{
  colorSpace = [(_NUImageProperties *)self colorSpace];
  isHDR = [colorSpace isHDR];

  if (isHDR)
  {
    return 1;
  }

  colorSpace2 = [(_NUImageProperties *)self colorSpace];
  isExtended = [colorSpace2 isExtended];

  if (isExtended)
  {
    return 1;
  }

  return +[NUGlobalSettings allAssetsCanUseHDRPipeline];
}

+ (CGImageMetadata)createGainMapMetadataWithHeadroom:(double)headroom
{
  Mutable = CGImageMetadataCreateMutable();
  if (CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", 0))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0x20000];
    v6 = CGImageMetadataTagCreate(@"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", @"HDRGainMapVersion", kCGImageMetadataTypeDefault, v5);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapVersion"];
    if (CGImageMetadataSetTagWithPath(Mutable, 0, v7, v6))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:headroom];
      v9 = CGImageMetadataTagCreate(@"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", @"HDRGainMapHeadroom", kCGImageMetadataTypeDefault, v8);
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapHeadroom"];
      if (CGImageMetadataSetTagWithPath(Mutable, 0, v10, v9))
      {
        v11 = Mutable;
      }

      else
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
        }

        v14 = _NULogger;
        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
        {
          *v16 = 0;
          _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Failed to set HDRGainMap metadata headroom tag!", v16, 2u);
        }

        v11 = 0;
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
      }

      v13 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Failed to set HDRGainMap metadata version tag!", v17, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
    }

    v12 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Failed to register HDRGainMap metadata tag!", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (void)_computeMeteorPlusGain:(double *)gain gainMapValue:(double *)value forContentHeadroom:(double)headroom
{
  v62 = *MEMORY[0x1E69E9840];
  if (!gain)
  {
    v10 = NUAssertLogger_3297();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outGain != NULL"];
      *buf = 138543362;
      v59 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_3297();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v31;
        v60 = 2114;
        v61 = v35;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUImageProperties _computeMeteorPlusGain:gainMapValue:forContentHeadroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 335, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "outGain != NULL");
  }

  if (!value)
  {
    v17 = NUAssertLogger_3297();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outValue != NULL"];
      *buf = 138543362;
      v59 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_3297();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v40;
        v60 = 2114;
        v61 = v44;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUImageProperties _computeMeteorPlusGain:gainMapValue:forContentHeadroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 336, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "outValue != NULL");
  }

  if (headroom < 1.0)
  {
    v24 = NUAssertLogger_3297();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "headroom >= 1.0"];
      *buf = 138543362;
      v59 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_3297();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        callStackSymbols5 = [v50 callStackSymbols];
        v53 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v49;
        v60 = 2114;
        v61 = v53;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUImageProperties _computeMeteorPlusGain:gainMapValue:forContentHeadroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 337, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "headroom >= 1.0");
  }

  v8 = log2(headroom);
  *gain = headroom;
  if (v8 <= 2.3)
  {
    v9 = (2.3 - v8) * 0.99 / 0.3;
  }

  else
  {
    v9 = (v8 + -2.3) * 0.01 / -0.7;
  }

  *value = v9 + 0.01;
}

+ (BOOL)setGainMapHeadroom:(double)headroom toMakerNote:(id)note
{
  v31 = *MEMORY[0x1E69E9840];
  noteCopy = note;
  if (!noteCopy)
  {
    v11 = NUAssertLogger_3297();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "makerNote != NULL"];
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_3297();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUImageProperties setGainMapHeadroom:toMakerNote:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 319, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "makerNote != NULL");
  }

  v7 = noteCopy;
  v27 = 0.0;
  *buf = 0;
  [self _computeMeteorPlusGain:buf gainMapValue:&v27 forContentHeadroom:headroom];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*buf];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69867D8]];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69867E0]];

  return 1;
}

+ (BOOL)getGainMapHeadroom:(double *)headroom fromMakerNote:(id)note
{
  v35 = *MEMORY[0x1E69E9840];
  noteCopy = note;
  if (!noteCopy)
  {
    v15 = NUAssertLogger_3297();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "makerNote != NULL"];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_3297();
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

    _NUAssertFailHandler("+[_NUImageProperties getGainMapHeadroom:fromMakerNote:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 299, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "makerNote != NULL");
  }

  v6 = noteCopy;
  v7 = [noteCopy objectForKeyedSubscript:*MEMORY[0x1E69867D8]];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69867E0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v7 doubleValue];
    v10 = v9;
    [v8 doubleValue];
    [MEMORY[0x1E69C0708] gainMapHeadroomForHDRGain:v10 gainMapValue:v11];
    if (headroom)
    {
      *headroom = v12;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)setGainMapHeadroom:(double)headroom toMetadata:(CGImageMetadata *)metadata
{
  v32 = *MEMORY[0x1E69E9840];
  if (!metadata)
  {
    v12 = NUAssertLogger_3297();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "metadata != NULL"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_3297();
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
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUImageProperties setGainMapHeadroom:toMetadata:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 279, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "metadata != NULL");
  }

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:headroom];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapHeadroom"];
  v7 = CGImageMetadataTagCreate(@"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", @"HDRGainMapHeadroom", kCGImageMetadataTypeDefault, v5);
  if (!v7)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
    }

    v9 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v10 = "Failed to make HDRGainMap metadata headroom tag!";
    goto LABEL_13;
  }

  if (!CGImageMetadataSetTagWithPath(metadata, 0, v6, v7))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
    }

    v9 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v10 = "Failed to set HDRGainMap metadata headroom tag!";
LABEL_13:
    _os_log_impl(&dword_1C0184000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

+ (BOOL)getGainMapHeadroom:(double *)headroom fromMetadata:(CGImageMetadata *)metadata
{
  v35 = *MEMORY[0x1E69E9840];
  if (!metadata)
  {
    v15 = NUAssertLogger_3297();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "metadata != NULL"];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_3297();
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
        metadataCopy = v26;
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

    _NUAssertFailHandler("+[_NUImageProperties getGainMapHeadroom:fromMetadata:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 253, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "metadata != NULL");
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapHeadroom"];
  v7 = CGImageMetadataCopyTagWithPath(metadata, 0, v6);
  v8 = v7;
  if (v7)
  {
    v9 = CGImageMetadataTagCopyValue(v7);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [(__CFString *)v9 doubleValue];
      if (headroom)
      {
        *headroom = v11;
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
      }

      v13 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v32 = v9;
        _os_log_impl(&dword_1C0184000, v13, OS_LOG_TYPE_DEFAULT, "Invalid gain map headroom tag value: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
    }

    v12 = _NULogger;
    isKindOfClass = 0;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = v6;
      v33 = 2114;
      metadataCopy = metadata;
      _os_log_impl(&dword_1C0184000, v12, OS_LOG_TYPE_DEFAULT, "Failed to get metadata tag %{public}@ from metadata: %{public}@", buf, 0x16u);
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

+ (id)versionFromMetadataTag:(CGImageMetadataTag *)tag
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CGImageMetadataTagCopyValue(tag);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[NUVersion versionWithPackedUInt32:](NUVersion, "versionWithPackedUInt32:", [v3 integerValue]);
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
    }

    v5 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_1C0184000, v5, OS_LOG_TYPE_DEFAULT, "Invalid HDRGainMap version tag value: %{public}@", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)versionFromMeteorPlusMetadata:(CGImageMetadata *)metadata
{
  if (metadata)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapVersion"];
    v6 = CGImageMetadataCopyTagWithPath(metadata, 0, v5);
    if (v6)
    {
      v7 = [self versionFromMetadataTag:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)versionFromFlexRangeMetadata:(CGImageMetadata *)metadata
{
  if (metadata)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRToneMap", @"Version"];
    v6 = CGImageMetadataCopyTagWithPath(metadata, 0, v5);
    if (v6)
    {
      v7 = [self versionFromMetadataTag:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end