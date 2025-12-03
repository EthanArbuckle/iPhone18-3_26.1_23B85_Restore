@interface NUBrushStroke
+ (id)brushStrokeFromDictionary:(id)dictionary;
+ (id)dictionaryFromBrushStroke:(id)stroke;
- ($41299696D20B6C925B74A5D5E4D5CC87)clipRect;
- ($41299696D20B6C925B74A5D5E4D5CC87)extent;
- ($E2C29196C7A5C696474C6955C5A9CE06)pointAtIndex:(int64_t)index;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBrushStroke:(id)stroke;
- (NUBrushStroke)initWithDictionary:(id)dictionary;
- (id)_createDataFromPointArray:(id)array;
- (id)_createPointArrayFromData:(id)data;
- (id)ciImageTiled:(BOOL)tiled closed:(BOOL)closed pressureMode:(int64_t)mode filled:(BOOL)filled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_initializeWithRadius:(float)radius softness:(float)softness opacity:(float)opacity extent:(id *)extent clipRect:(id *)rect data:(id)data pressureMode:(int64_t)mode;
- (void)_updateExtent;
- (void)nu_updateDigest:(id)digest;
- (void)writeToTIFFAtPath:(id)path closed:(BOOL)closed pressureMode:(int64_t)mode;
@end

@implementation NUBrushStroke

- (BOOL)isEqualToBrushStroke:(id)stroke
{
  strokeCopy = stroke;
  [strokeCopy radius];
  if (v5 == self->_radius && ([strokeCopy softness], v6 == self->_softness) && (objc_msgSend(strokeCopy, "opacity"), v7 == self->_opacity) && (!strokeCopy ? (v12 = 0, v10 = 0, v11 = 0, v16 = 0u, v17 = 0u) : (objc_msgSend(strokeCopy, "extent"), v10 = *(&v16 + 1), v11 = v16, v12 = v17), self->_extent.origin.x == v11 && self->_extent.origin.y == v10 && *&self->_extent.size == __PAIR128__(*(&v17 + 1), v12) && (!strokeCopy ? (v15 = 0, v13 = 0, v14 = 0, v17 = 0u) : (objc_msgSend(strokeCopy, "clipRect"), v13 = *(&v16 + 1), v14 = v16, v15 = v17), self->_clipRect.origin.x == v14 && self->_clipRect.origin.y == v13 && *&self->_clipRect.size == __PAIR128__(*(&v17 + 1), v15))))
  {
    v8 = [strokeCopy[12] isEqualToData:self->_data];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqualToBrushStroke:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)nu_updateDigest:(id)digest
{
  digestCopy = digest;
  [digestCopy addString:@"NUBrushStroke{"];
  [digestCopy addBytes:&self->_radius length:4];
  [digestCopy addBytes:&self->_softness length:4];
  [digestCopy addBytes:&self->_opacity length:4];
  [digestCopy addBytes:&self->_extent length:32];
  [digestCopy addBytes:&self->_clipRect length:32];
  [digestCopy addBytes:-[NSMutableData bytes](self->_data length:{"bytes"), -[NSMutableData length](self->_data, "length")}];
  [digestCopy addString:@"}"];
}

- (void)_updateExtent
{
  pointCount = [(NUBrushStroke *)self pointCount];
  if (pointCount < 1)
  {
    v15 = NUPixelRectNull;
    v16 = unk_1C03C4308;
  }

  else
  {
    v4 = pointCount;
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v9 = ((self->_radius * 2.0) + 1.0);
    bytes = [(NSMutableData *)self->_data bytes];
    v11 = &bytes[3 * v4];
    do
    {
      radius = self->_radius;
      v13 = *bytes;
      v14 = bytes[1];
      bytes += 3;
      v21.origin.x = (v13 - radius);
      v21.origin.y = (v14 - radius);
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v21.size.width = v9;
      v21.size.height = v9;
      v20 = CGRectUnion(v19, v21);
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
    }

    while (bytes != v11);
    v18 = v20;
    NU::RectT<long>::RectT(v17, &v18, 0);
    v15 = v17[0];
    v16 = v17[1];
  }

  self->_extent.origin = v15;
  self->_extent.size = v16;
}

- (id)_createDataFromPointArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy count];
  v20 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:12 * v4];
  mutableBytes = [v20 mutableBytes];
  if (v4)
  {
    v6 = 0;
    v7 = (mutableBytes + 8);
    do
    {
      v8 = [arrayCopy objectAtIndex:v6];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 objectForKey:@"x"];
        v11 = [v9 objectForKey:@"y"];
        v12 = [v9 objectForKey:@"p"];
        v13 = 0;
        v14 = 0;
        if (v10)
        {
          [v10 floatValue];
          v14 = v15;
        }

        if (v11)
        {
          [v11 floatValue];
          v13 = v16;
        }

        if (v12)
        {
          [v12 floatValue];
          v18 = v17;
        }

        else
        {
          v18 = 1.0;
        }
      }

      else
      {
        v18 = 1.0;
        v13 = 0;
        v14 = 0;
      }

      *(v7 - 2) = v14;
      *(v7 - 1) = v13;
      *v7 = v18;
      v7 += 3;

      ++v6;
    }

    while (v4 != v6);
  }

  return v20;
}

- (id)_createPointArrayFromData:(id)data
{
  dataCopy = data;
  v3 = [dataCopy length];
  v4 = v3 / 0xC;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3 / 0xC];
  bytes = [dataCopy bytes];
  if (v3 >= 0xC)
  {
    v8 = (bytes + 8);
    do
    {
      LODWORD(v7) = *(v8 - 2);
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
      LODWORD(v12) = v9;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
      LODWORD(v14) = v10;
      v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
      v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v11, @"x", v13, @"y", v15, @"p", 0}];
      [v5 addObject:v16];

      v8 += 3;
      --v4;
    }

    while (v4);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  radius = self->_radius;
  softness = self->_softness;
  opacity = self->_opacity;
  pointCount = [(NUBrushStroke *)self pointCount];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{origin={%ld, %ld} size={%ld, %ld}}]", self->_extent.origin.x, self->_extent.origin.y, self->_extent.size.width, self->_extent.size.height];
  origin = self->_clipRect.origin;
  size = self->_clipRect.size;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = vuzp1q_s32(vceqq_s64(origin, vnegq_f64(v11)), vceqzq_s64(size));
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(v12))))
  {
    v17 = v12;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{origin={%ld, %ld} size={%ld, %ld}}]", origin, size];
    v12 = v17;
  }

  else
  {
    v13 = @"None";
  }

  v14 = vaddvq_s32(vbicq_s8(xmmword_1C03C2790, v12));
  v15 = [v3 stringWithFormat:@"<%@: radius=%f, softness=%f, opacity=%f, pointCount=%lu, extent=%@, clipRect=%@>", @"NUBrushStroke", radius, softness, opacity, pointCount, v8, v13];
  if ((v14 & 0xF) != 0)
  {
  }

  return v15;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)clipRect
{
  var1 = self[2].var1;
  retstr->var0 = self[2].var0;
  retstr->var1 = var1;
  return self;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)extent
{
  var1 = self[1].var1;
  retstr->var0 = self[1].var0;
  retstr->var1 = var1;
  return self;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)pointAtIndex:(int64_t)index
{
  pointCount = [(NUBrushStroke *)self pointCount];
  if (index < 0 || pointCount <= index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:@"Point index out of bounds"];
  }

  else
  {
    v6 = ([(NSMutableData *)self->_data bytes]+ 12 * index);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
  }

  result.var2 = v9;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[NUMutableBrushStroke allocWithZone:?]];
  v5 = [(NSMutableData *)self->_data mutableCopy];
  *&v6 = self->_radius;
  *&v7 = self->_softness;
  *&v8 = self->_opacity;
  size = self->_extent.size;
  v13[0] = self->_extent.origin;
  v13[1] = size;
  v10 = self->_clipRect.size;
  v12[0] = self->_clipRect.origin;
  v12[1] = v10;
  [(NUBrushStroke *)v4 _initializeWithRadius:v13 softness:v12 opacity:v5 extent:self->_pressureMode clipRect:v6 data:v7 pressureMode:v8];
  if ((!self->_extent.size.width || !self->_extent.size.height) && [(NUBrushStroke *)v4 pointCount]>= 1)
  {
    [(NUBrushStroke *)v4 _updateExtent];
  }

  return v4;
}

+ (id)dictionaryFromBrushStroke:(id)stroke
{
  v21[7] = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  v4 = strokeCopy[3];
  v5 = @"none";
  if (v4 == 2)
  {
    v5 = @"opacity";
  }

  if (v4 == 1)
  {
    v6 = @"radius";
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = [strokeCopy _createPointArrayFromData:strokeCopy[12]];
  v21[0] = &unk_1F3F82398;
  v20[0] = @"version";
  v20[1] = @"radius";
  LODWORD(v9) = *(strokeCopy + 2);
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v21[1] = v10;
  v20[2] = @"softness";
  LODWORD(v11) = *(strokeCopy + 3);
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v21[2] = v12;
  v20[3] = @"opacity";
  LODWORD(v13) = *(strokeCopy + 4);
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v21[3] = v14;
  v21[4] = v8;
  v20[4] = @"points";
  v20[5] = @"pressureMode";
  v21[5] = v7;
  v20[6] = @"clipRect";
  v15 = *(strokeCopy + 5);
  v19[0] = *(strokeCopy + 4);
  v19[1] = v15;
  v16 = NSArrayFromNUPixelRect(v19);
  v21[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:7];

  return v17;
}

+ (id)brushStrokeFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NUBrushStroke allocWithZone:?]];
  *&v5 = self->_radius;
  *&v6 = self->_softness;
  *&v7 = self->_opacity;
  size = self->_extent.size;
  v12[0] = self->_extent.origin;
  v12[1] = size;
  v9 = self->_clipRect.size;
  v11[0] = self->_clipRect.origin;
  v11[1] = v9;
  [(NUBrushStroke *)v4 _initializeWithRadius:v12 softness:v11 opacity:self->_data extent:self->_pressureMode clipRect:v5 data:v6 pressureMode:v7];
  if ((!self->_extent.size.width || !self->_extent.size.height) && [(NUBrushStroke *)v4 pointCount]>= 1)
  {
    [(NUBrushStroke *)v4 _updateExtent];
  }

  return v4;
}

- (void)_initializeWithRadius:(float)radius softness:(float)softness opacity:(float)opacity extent:(id *)extent clipRect:(id *)rect data:(id)data pressureMode:(int64_t)mode
{
  self->_radius = radius;
  self->_softness = softness;
  self->_opacity = opacity;
  var1 = extent->var1;
  self->_extent.origin = extent->var0;
  self->_extent.size = var1;
  v12 = rect->var1;
  self->_clipRect.origin = rect->var0;
  self->_clipRect.size = v12;
  objc_storeStrong(&self->_data, data);
  self->_pressureMode = mode;
}

- (NUBrushStroke)initWithDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  integerValue = [v5 integerValue];

  if (integerValue != 1)
  {
    v24 = NUAssertLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown brush stroke version. %ld", integerValue];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2114;
        *&buf[14] = v33;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUBrushStroke initWithDictionary:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUBrushStroke.mm", 75, @"Unknown brush stroke version. %ld", v34, v35, v36, v37, integerValue);
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"radius"];
  [v7 floatValue];
  v9 = v8;

  v10 = [dictionaryCopy objectForKeyedSubscript:@"softness"];
  [v10 floatValue];
  v12 = v11;

  v13 = [dictionaryCopy objectForKeyedSubscript:@"opacity"];
  [v13 floatValue];
  v15 = v14;

  v16 = [dictionaryCopy objectForKeyedSubscript:@"points"];
  v17 = [(NUBrushStroke *)self _createDataFromPointArray:v16];
  v18 = [dictionaryCopy objectForKeyedSubscript:@"pressureMode"];
  if ([v18 isEqualToString:@"radius"])
  {
    v19 = 1;
  }

  else if ([v18 isEqualToString:@"opacity"])
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  memset(buf, 0, 32);
  v20 = [dictionaryCopy objectForKeyedSubscript:@"clipRect"];
  NUPixelRectFromArray(v20, buf);

  v40.receiver = self;
  v40.super_class = NUBrushStroke;
  v21 = [(NUBrushStroke *)&v40 init];
  memset(v39, 0, sizeof(v39));
  v38[0] = *buf;
  v38[1] = *&buf[16];
  LODWORD(v22) = v15;
  [(NUBrushStroke *)v21 _initializeWithRadius:v39 softness:v38 opacity:v17 extent:v19 clipRect:COERCE_DOUBLE(__PAIR64__(*&buf[4] data:v9)) pressureMode:COERCE_DOUBLE(__PAIR64__(*&buf[20], v12)), v22];
  [(NUBrushStroke *)v21 _updateExtent];

  return v21;
}

- (void)writeToTIFFAtPath:(id)path closed:(BOOL)closed pressureMode:(int64_t)mode
{
  closedCopy = closed;
  pathCopy = path;
  v9 = [(NUBrushStroke *)self ciImageTiled:1 closed:closedCopy pressureMode:mode];
  [v9 extent];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v14 = -CGRectGetMinX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MinY = CGRectGetMinY(v19);
  CGAffineTransformMakeTranslation(&v17, v14, -MinY);
  v16 = [v9 imageByApplyingTransform:&v17];

  [v16 writeToTIFF:pathCopy];
}

- (id)ciImageTiled:(BOOL)tiled closed:(BOOL)closed pressureMode:(int64_t)mode filled:(BOOL)filled
{
  [(NUBrushStroke *)self extent];

  return 0;
}

@end