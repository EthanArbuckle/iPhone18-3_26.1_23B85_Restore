@interface _NUImageProperties
+ (BOOL)getGainMapHeadroom:(double *)a3 fromMakerNote:(id)a4;
+ (BOOL)getGainMapHeadroom:(double *)a3 fromMetadata:(CGImageMetadata *)a4;
+ (BOOL)setGainMapHeadroom:(double)a3 toMakerNote:(id)a4;
+ (BOOL)setGainMapHeadroom:(double)a3 toMetadata:(CGImageMetadata *)a4;
+ (CGImageMetadata)createGainMapMetadataWithHeadroom:(double)a3;
+ (id)versionFromFlexRangeMetadata:(CGImageMetadata *)a3;
+ (id)versionFromMetadataTag:(CGImageMetadataTag *)a3;
+ (id)versionFromMeteorPlusMetadata:(CGImageMetadata *)a3;
+ (void)_computeMeteorPlusGain:(double *)a3 gainMapValue:(double *)a4 forContentHeadroom:(double)a5;
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (BOOL)hasGainMap;
- (BOOL)isHDR;
- (NSString)description;
- (NUVersion)meteorPlusGainMapVersion;
- (_NUImageProperties)init;
- (_NUImageProperties)initWithProperties:(id)a3;
- (double)_computeGainMapHeadroom;
- (double)gainMapHeadroom;
- (id)auxiliaryImagePropertiesForType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_updateGainMapHeadroomMetadata:(double)a3;
- (void)_updateGainMapMetadata:(CGImageMetadata *)a3;
- (void)_updateMakerNote:(id)a3;
- (void)enumerateAuxiliaryImageProperties:(id)a3;
- (void)setAuxiliaryImageProperties:(id)a3 forType:(int64_t)a4;
- (void)setGainMapHeadroom:(double)a3;
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

- (void)enumerateAuxiliaryImageProperties:(id)a3
{
  v4 = a3;
  auxiliaryImagesProperties = self->_auxiliaryImagesProperties;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56___NUImageProperties_enumerateAuxiliaryImageProperties___block_invoke;
  v7[3] = &unk_1E81097F0;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)auxiliaryImagesProperties enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)setAuxiliaryImageProperties:(id)a3 forType:(int64_t)a4
{
  auxiliaryImagesProperties = self->_auxiliaryImagesProperties;
  v6 = a3;
  if (a4 > 0xB)
  {
    v7 = @"Invalid";
  }

  else
  {
    v7 = off_1E8109908[a4];
  }

  v8 = v7;
  [(NSMutableDictionary *)auxiliaryImagesProperties setObject:v6 forKeyedSubscript:v8];
}

- (id)auxiliaryImagePropertiesForType:(int64_t)a3
{
  auxiliaryImagesProperties = self->_auxiliaryImagesProperties;
  if (a3 > 0xB)
  {
    v4 = @"Invalid";
  }

  else
  {
    v4 = off_1E8109908[a3];
  }

  v5 = v4;
  v6 = [(NSMutableDictionary *)auxiliaryImagesProperties objectForKeyedSubscript:v5];

  return v6;
}

- (_NUImageProperties)initWithProperties:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v45 = [v43 callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v42;
        v63 = 2114;
        v64 = v46;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageProperties initWithProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 399, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "properties != nil");
  }

  v5 = v4;
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
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v51;
        v63 = 2114;
        v64 = v55;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
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

  v9 = [v5 metadata];
  v10 = [v9 copy];
  metadata = v6->_metadata;
  v6->_metadata = v10;

  v12 = [v5 colorSpace];
  colorSpace = v6->_colorSpace;
  v6->_colorSpace = v12;

  [v5 contentHeadroom];
  v6->_contentHeadroom = v14;
  v6->_size.width = [v5 size];
  v6->_size.height = v15;
  v6->_orientation = [v5 orientation];
  v16 = [v5 fileUTI];
  fileUTI = v6->_fileUTI;
  v6->_fileUTI = v16;

  v6->_alphaInfo = [v5 alphaInfo];
  v6->_componentInfo = [v5 componentInfo];
  v18 = [v5 semanticStyleProperties];
  v19 = [v18 copy];
  semanticStyleProperties = v6->_semanticStyleProperties;
  v6->_semanticStyleProperties = v19;

  v21 = [v5[2] mutableCopy];
  auxiliaryImagesProperties = v6->_auxiliaryImagesProperties;
  v6->_auxiliaryImagesProperties = v21;

  v23 = [v5[12] copy];
  flexRangeProperties = v6->_flexRangeProperties;
  v6->_flexRangeProperties = v23;

  v25 = [v5 rawProperties];
  rawProperties = v6->_rawProperties;
  v6->_rawProperties = v25;

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_NUImageProperties alloc];

  return [(_NUImageProperties *)v4 initWithProperties:self];
}

- (NSString)description
{
  v20 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(_NUImageProperties *)self url];
  v5 = [(_NUImageProperties *)self fileUTI];
  v6 = [(_NUImageProperties *)self size];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", v6, v7];
  v9 = [(_NUImageProperties *)self orientation];
  if ((v9 - 9) >= 0xFFFFFFFFFFFFFFF8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&NUOrientationName_names + v10);
  v12 = [(_NUImageProperties *)self colorSpace];
  [(_NUImageProperties *)self contentHeadroom];
  v14 = v13;
  v15 = [(_NUImageProperties *)self rawProperties];
  auxiliaryImagesProperties = self->_auxiliaryImagesProperties;
  v17 = [(_NUImageProperties *)self metadata];
  v18 = [v20 stringWithFormat:@"<%@:%p> url=%@ fileUTI=%@ size=%@ orientation=%@ colorSpace=%@ headroom=%f raw=%@ aux=%@ metadata=%@", v3, self, v4, v5, v8, v11, v12, *&v14, v15, auxiliaryImagesProperties, v17];

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

- (void)_updateGainMapMetadata:(CGImageMetadata *)a3
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
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v13;
        v26 = 2114;
        v27 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageProperties _updateGainMapMetadata:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 200, @"Unexpected gain map properties", v18, v19, v20, v21, v22);
  }

  v5 = [v23 auxiliaryImagePropertiesByUpdatingMetadata:a3];
  [(_NUImageProperties *)self setAuxiliaryImageProperties:v5 forType:7];
}

- (void)_updateMakerNote:(id)a3
{
  v4 = a3;
  v5 = [(_NUImageProperties *)self metadata];
  v8 = [v5 mutableCopy];

  v6 = [v4 copy];
  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696DE30]];

  v7 = [v8 copy];
  [(_NUImageProperties *)self setMetadata:v7];
}

- (void)_updateGainMapHeadroomMetadata:(double)a3
{
  v5 = [(_NUImageProperties *)self auxiliaryImagePropertiesForType:7];
  if (v5)
  {
    v12 = v5;
    v6 = [v5 auxiliaryDataInfoMetadata];
    v5 = v12;
    if (v6)
    {
      v7 = [objc_opt_class() versionFromMeteorPlusMetadata:v6];
      if ([v7 major] >= 2)
      {
        MutableCopy = CGImageMetadataCreateMutableCopy(v6);
        if ([objc_opt_class() setGainMapHeadroom:MutableCopy toMetadata:a3])
        {
          [(_NUImageProperties *)self _updateGainMapMetadata:MutableCopy];
        }

        CFRelease(MutableCopy);
      }

      v9 = [(_NUImageProperties *)self metadata];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
      v11 = [v10 mutableCopy];

      if (v11 && [objc_opt_class() setGainMapHeadroom:v11 toMakerNote:a3])
      {
        [(_NUImageProperties *)self _updateMakerNote:v11];
      }

      v5 = v12;
    }
  }
}

- (double)_computeGainMapHeadroom
{
  v3 = [(_NUImageProperties *)self flexRangeProperties];
  v4 = v3;
  if (!v3)
  {
    *&v17 = 1.0;
    v9 = [(_NUImageProperties *)self auxiliaryImagePropertiesForType:7];
    v10 = v9;
    v8 = 1.0;
    if (!v9)
    {
      goto LABEL_13;
    }

    v11 = [v9 auxiliaryDataInfoMetadata];
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v11;
    v13 = [objc_opt_class() versionFromMeteorPlusMetadata:v11];
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

    v14 = [(_NUImageProperties *)self metadata];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    if (v15)
    {
      [objc_opt_class() getGainMapHeadroom:&v17 fromMakerNote:v15];
    }

    goto LABEL_12;
  }

  [v3 baseHeadroom];
  v6 = v5;
  [v4 alternateHeadroom];
  v8 = exp2f(fmaxf(v6, v7));
LABEL_14:

  return v8;
}

- (void)setGainMapHeadroom:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  gainMapHeadroomValue = obj->_gainMapHeadroomValue;
  obj->_gainMapHeadroomValue = v4;

  [(_NUImageProperties *)obj _updateGainMapHeadroomMetadata:a3];
  objc_sync_exit(obj);
}

- (double)gainMapHeadroom
{
  v2 = self;
  objc_sync_enter(v2);
  gainMapHeadroomValue = v2->_gainMapHeadroomValue;
  if (!gainMapHeadroomValue)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_NUImageProperties *)v2 _computeGainMapHeadroom];
    v5 = [v4 numberWithDouble:?];
    v6 = v2->_gainMapHeadroomValue;
    v2->_gainMapHeadroomValue = v5;

    gainMapHeadroomValue = v2->_gainMapHeadroomValue;
  }

  [(NSNumber *)gainMapHeadroomValue doubleValue];
  v8 = v7;
  objc_sync_exit(v2);

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
  v3 = [(_NUImageProperties *)self colorSpace];
  v4 = [v3 isHDR];

  if (v4)
  {
    return 1;
  }

  v5 = [(_NUImageProperties *)self colorSpace];
  v6 = [v5 isExtended];

  if (v6)
  {
    return 1;
  }

  return +[NUGlobalSettings allAssetsCanUseHDRPipeline];
}

+ (CGImageMetadata)createGainMapMetadataWithHeadroom:(double)a3
{
  Mutable = CGImageMetadataCreateMutable();
  if (CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", 0))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0x20000];
    v6 = CGImageMetadataTagCreate(@"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", @"HDRGainMapVersion", kCGImageMetadataTypeDefault, v5);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapVersion"];
    if (CGImageMetadataSetTagWithPath(Mutable, 0, v7, v6))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
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

+ (void)_computeMeteorPlusGain:(double *)a3 gainMapValue:(double *)a4 forContentHeadroom:(double)a5
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v31;
        v60 = 2114;
        v61 = v35;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUImageProperties _computeMeteorPlusGain:gainMapValue:forContentHeadroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 335, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "outGain != NULL");
  }

  if (!a4)
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
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v40;
        v60 = 2114;
        v61 = v44;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUImageProperties _computeMeteorPlusGain:gainMapValue:forContentHeadroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 336, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "outValue != NULL");
  }

  if (a5 < 1.0)
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
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v49;
        v60 = 2114;
        v61 = v53;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUImageProperties _computeMeteorPlusGain:gainMapValue:forContentHeadroom:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 337, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "headroom >= 1.0");
  }

  v8 = log2(a5);
  *a3 = a5;
  if (v8 <= 2.3)
  {
    v9 = (2.3 - v8) * 0.99 / 0.3;
  }

  else
  {
    v9 = (v8 + -2.3) * 0.01 / -0.7;
  }

  *a4 = v9 + 0.01;
}

+ (BOOL)setGainMapHeadroom:(double)a3 toMakerNote:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!v6)
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
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUImageProperties setGainMapHeadroom:toMakerNote:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 319, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "makerNote != NULL");
  }

  v7 = v6;
  v27 = 0.0;
  *buf = 0;
  [a1 _computeMeteorPlusGain:buf gainMapValue:&v27 forContentHeadroom:a3];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*buf];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69867D8]];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69867E0]];

  return 1;
}

+ (BOOL)getGainMapHeadroom:(double *)a3 fromMakerNote:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (!v5)
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

    _NUAssertFailHandler("+[_NUImageProperties getGainMapHeadroom:fromMakerNote:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 299, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "makerNote != NULL");
  }

  v6 = v5;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69867D8]];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69867E0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v7 doubleValue];
    v10 = v9;
    [v8 doubleValue];
    [MEMORY[0x1E69C0708] gainMapHeadroomForHDRGain:v10 gainMapValue:v11];
    if (a3)
    {
      *a3 = v12;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)setGainMapHeadroom:(double)a3 toMetadata:(CGImageMetadata *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a4)
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
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUImageProperties setGainMapHeadroom:toMetadata:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 279, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "metadata != NULL");
  }

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
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

  if (!CGImageMetadataSetTagWithPath(a4, 0, v6, v7))
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

+ (BOOL)getGainMapHeadroom:(double *)a3 fromMetadata:(CGImageMetadata *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a4)
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

    _NUAssertFailHandler("+[_NUImageProperties getGainMapHeadroom:fromMetadata:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 253, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "metadata != NULL");
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapHeadroom"];
  v7 = CGImageMetadataCopyTagWithPath(a4, 0, v6);
  v8 = v7;
  if (v7)
  {
    v9 = CGImageMetadataTagCopyValue(v7);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [(__CFString *)v9 doubleValue];
      if (a3)
      {
        *a3 = v11;
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
      v34 = a4;
      _os_log_impl(&dword_1C0184000, v12, OS_LOG_TYPE_DEFAULT, "Failed to get metadata tag %{public}@ from metadata: %{public}@", buf, 0x16u);
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

+ (id)versionFromMetadataTag:(CGImageMetadataTag *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CGImageMetadataTagCopyValue(a3);
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

+ (id)versionFromMeteorPlusMetadata:(CGImageMetadata *)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRGainMap", @"HDRGainMapVersion"];
    v6 = CGImageMetadataCopyTagWithPath(a3, 0, v5);
    if (v6)
    {
      v7 = [a1 versionFromMetadataTag:v6];
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

+ (id)versionFromFlexRangeMetadata:(CGImageMetadata *)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRToneMap", @"Version"];
    v6 = CGImageMetadataCopyTagWithPath(a3, 0, v5);
    if (v6)
    {
      v7 = [a1 versionFromMetadataTag:v6];
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