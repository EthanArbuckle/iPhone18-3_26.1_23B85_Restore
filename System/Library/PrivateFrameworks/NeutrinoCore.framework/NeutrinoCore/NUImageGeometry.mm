@interface NUImageGeometry
- ($0AC6E346AE4835514AAA8AC86D8F4844)renderScale;
- ($0AC6E346AE4835514AAA8AC86D8F4844)scaledSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- ($41299696D20B6C925B74A5D5E4D5CC87)extent;
- ($41299696D20B6C925B74A5D5E4D5CC87)physicalScaledExtent;
- (CGRect)scaledExtent;
- (NUImageGeometry)init;
- (NUImageGeometry)initWithExtent:(id *)extent renderScale:(id)scale;
- (NUImageGeometry)initWithExtent:(id *)extent renderScale:(id)scale orientation:(int64_t)orientation;
- (NUImageGeometry)initWithExtent:(id *)extent renderScale:(id)scale orientation:(int64_t)orientation spaceMap:(id)map;
- (NUImageGeometry)initWithExtent:(id *)extent renderScale:(id)scale orientation:(int64_t)orientation spaceMap:(id)map roundingPolicy:(int64_t)policy;
- (id)description;
- (id)mediaGeometry;
- (id)transformWithSourceSpace:(id)space destinationSpace:(id)destinationSpace error:(id *)error;
@end

@implementation NUImageGeometry

- (id)mediaGeometry
{
  v3 = [_NUMediaGeometry alloc];
  scaledSize = [(NUImageGeometry *)self scaledSize];
  v6 = [(_NUMediaGeometry *)v3 initWithSize:scaledSize orientation:v5, [(NUImageGeometry *)self orientation]];

  return v6;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)renderScale
{
  denominator = self->_renderScale.denominator;
  numerator = self->_renderScale.numerator;
  result.var1 = denominator;
  result.var0 = numerator;
  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)extent
{
  var0 = self[2].var0;
  retstr->var0 = self[1].var1;
  retstr->var1 = var0;
  return self;
}

- (id)description
{
  [(NUImageGeometry *)self scaledExtent];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f, %f  %f, %f", v3, v4, v5, v6];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld, %ld  %ld, %ld", self->_extent.origin.x, self->_extent.origin.y, self->_extent.size.width, self->_extent.size.height];
  orientation = [(NUImageGeometry *)self orientation];
  if ((orientation - 9) >= 0xFFFFFFFFFFFFFFF8)
  {
    v10 = orientation;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&NUOrientationName_names + v10);
  roundingPolicy = [(NUImageGeometry *)self roundingPolicy];
  if ((roundingPolicy - 1) > 3)
  {
    v13 = @"Out";
  }

  else
  {
    v13 = *(&off_1E8109788 + roundingPolicy - 1);
  }

  v14 = v13;
  v15 = MEMORY[0x1E696AEC0];
  scaledSize = [(NUImageGeometry *)self scaledSize];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", scaledSize, v17];
  v19 = [v15 stringWithFormat:@"scaledImageSize : %@   scaledExtent : %@   extent, : %@   scale : %f   orientation : %@   rounding: %@", v18, v7, v8, NUScaleToDouble(self->_renderScale.numerator, self->_renderScale.denominator), v11, v14];

  return v19;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  height = self->_extent.size.height;
  width = self->_extent.size.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)scaledSize
{
  v4 = 0u;
  [(NUImageGeometry *)self physicalScaledExtent:0];
  v3 = *(&v4 + 1);
  v2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)physicalScaledExtent
{
  [(NUImageGeometry *)self scaledExtent];
  v12.origin.x = v5;
  v12.origin.y = v6;
  v12.size.width = v7;
  v12.size.height = v8;
  result = NU::RectT<long>::RectT(v11, &v12, [(NUImageGeometry *)self roundingPolicy]);
  v10 = v11[1];
  retstr->var0 = v11[0];
  retstr->var1 = v10;
  return result;
}

- (CGRect)scaledExtent
{
  renderScale = [(NUImageGeometry *)self renderScale];
  v5 = NUScaleToDouble(renderScale, v4);
  [(NUImageGeometry *)self extent];
  v10.origin.x = v5 * v6;
  v10.origin.y = v5 * v7;
  v10.size.width = v5 * v8;
  v10.size.height = v5 * v9;
  return CGRectStandardize(v10);
}

- (id)transformWithSourceSpace:(id)space destinationSpace:(id)destinationSpace error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  destinationSpaceCopy = destinationSpace;
  if (!error)
  {
    v14 = NUAssertLogger_21877();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_21877();
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
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageGeometry transformWithSourceSpace:destinationSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUImageGeometry.m", 64, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "error != NULL");
  }

  v10 = destinationSpaceCopy;
  spaceMap = self->_spaceMap;
  if (spaceMap)
  {
    v12 = [(NUTaggedSpaceMapping *)spaceMap transformWithSourceSpace:spaceCopy destinationSpace:v10 error:error];
  }

  else
  {
    [NUError errorWithCode:3 reason:@"no space map present" object:0];
    *error = v12 = 0;
  }

  return v12;
}

- (NUImageGeometry)initWithExtent:(id *)extent renderScale:(id)scale orientation:(int64_t)orientation spaceMap:(id)map roundingPolicy:(int64_t)policy
{
  var1 = scale.var1;
  var0 = scale.var0;
  v41 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if (var0 < 1 || var1 <= 0)
  {
    v20 = NUAssertLogger_21877();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(renderScale)"];
      *buf = 138543362;
      v38 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_21877();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v27;
        v39 = 2114;
        v40 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageGeometry initWithExtent:renderScale:orientation:spaceMap:roundingPolicy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUImageGeometry.m", 49, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "NUScaleIsValid(renderScale)");
  }

  v15 = mapCopy;
  v36.receiver = self;
  v36.super_class = NUImageGeometry;
  v16 = [(NUImageGeometry *)&v36 init];
  v17 = v16;
  if (v16)
  {
    v18 = extent->var1;
    v16->_extent.origin = extent->var0;
    v16->_extent.size = v18;
    v16->_renderScale.numerator = var0;
    v16->_renderScale.denominator = var1;
    objc_storeStrong(&v16->_spaceMap, map);
    v17->_orientation = orientation;
    v17->_roundingPolicy = policy;
  }

  return v17;
}

- (NUImageGeometry)initWithExtent:(id *)extent renderScale:(id)scale orientation:(int64_t)orientation spaceMap:(id)map
{
  var1 = extent->var1;
  v8[0] = extent->var0;
  v8[1] = var1;
  return [(NUImageGeometry *)self initWithExtent:v8 renderScale:scale.var0 orientation:scale.var1 spaceMap:orientation roundingPolicy:map, 0];
}

- (NUImageGeometry)initWithExtent:(id *)extent renderScale:(id)scale orientation:(int64_t)orientation
{
  var1 = extent->var1;
  v7[0] = extent->var0;
  v7[1] = var1;
  return [(NUImageGeometry *)self initWithExtent:v7 renderScale:scale.var0 orientation:scale.var1 spaceMap:orientation roundingPolicy:0, 0];
}

- (NUImageGeometry)initWithExtent:(id *)extent renderScale:(id)scale
{
  var1 = extent->var1;
  v6[0] = extent->var0;
  v6[1] = var1;
  return [(NUImageGeometry *)self initWithExtent:v6 renderScale:scale.var0 orientation:scale.var1 spaceMap:1 roundingPolicy:0, 0];
}

- (NUImageGeometry)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_21894);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_21894);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_21894);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUImageGeometry init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUImageGeometry.m", 29, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end