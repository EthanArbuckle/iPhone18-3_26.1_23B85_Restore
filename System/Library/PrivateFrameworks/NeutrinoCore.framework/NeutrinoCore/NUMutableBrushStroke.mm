@interface NUMutableBrushStroke
- (NUMutableBrushStroke)initWithRadius:(float)radius softness:(float)softness opacity:(float)opacity clipRect:(id *)rect pressureMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)points;
- (void)appendPoint:(id)point;
- (void)appendPoints:(id *)points pointCount:(int64_t)count;
- (void)applyTransform:(CGAffineTransform *)transform;
@end

@implementation NUMutableBrushStroke

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(NSMutableData *)self->super._data mutableCopy];
  v6 = [[NUBrushStroke allocWithZone:?]];
  *&v7 = self->super._radius;
  *&v8 = self->super._softness;
  *&v9 = self->super._opacity;
  size = self->super._extent.size;
  v14[0] = self->super._extent.origin;
  v14[1] = size;
  v11 = self->super._clipRect.size;
  v13[0] = self->super._clipRect.origin;
  v13[1] = v11;
  [(NUBrushStroke *)v6 _initializeWithRadius:v14 softness:v13 opacity:v5 extent:self->super._pressureMode clipRect:v7 data:v8 pressureMode:v9];
  if ((!self->super._extent.size.width || !self->super._extent.size.height) && [(NUBrushStroke *)v6 pointCount]>= 1)
  {
    [(NUBrushStroke *)v6 _updateExtent];
  }

  return v6;
}

- (void)applyTransform:(CGAffineTransform *)transform
{
  pointCount = [(NUBrushStroke *)self pointCount];
  v6 = vmlaq_n_f64(vmulq_n_f64(*&transform->c, self->super._radius), *&transform->a, self->super._radius);
  v7 = v6.f64[1];
  if (v6.f64[0] >= v6.f64[1])
  {
    v7 = v6.f64[0];
  }

  v8 = v7;
  self->super._radius = v8;
  if (pointCount >= 1)
  {
    v9 = pointCount;
    v10 = v8 * 2.0 + 1.0;
    mutableBytes = [(NSMutableData *)self->super._data mutableBytes];
    v12 = &mutableBytes[3 * v9];
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = vnegq_f64(v13);
    v15 = 0;
    do
    {
      v17 = v15;
      v18 = v14;
      v16 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, mutableBytes[1]), *&transform->a, *mutableBytes));
      *mutableBytes = vcvt_f32_f64(v16);
      mutableBytes += 3;
      v20.origin = vsubq_f64(v16, vdupq_lane_s64(COERCE__INT64(self->super._radius), 0));
      v20.size.width = v10;
      v20.size.height = v10;
      NU::RectT<long>::RectT(v19, &v20, 0);
      v20.origin = v18;
      v20.size = v17;
      NU::RectT<long>::add(v19, &v20);
      v14 = v19[0];
      v15 = v19[1];
    }

    while (mutableBytes != v12);
    self->super._extent.origin = v19[0];
    self->super._extent.size = v15;
  }
}

- (void)appendPoints:(id *)points pointCount:(int64_t)count
{
  width = self->super._extent.size.width;
  height = self->super._extent.size.height;
  if (width)
  {
    v9 = height == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    y = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0x8000000000000000;
    v12 = 0x8000000000000000;
    x = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    x = self->super._extent.origin.x;
    y = self->super._extent.origin.y;
    v12 = width + x;
    v13 = height + y;
  }

  [(NUBrushStroke *)self radius];
  if (count >= 1)
  {
    v15 = ((*v14.i32 * 2.0) + 1.0);
    v16 = vdup_lane_s32(v14, 0);
    pointsCopy = points;
    countCopy = count;
    do
    {
      v19 = *&pointsCopy->var0;
      ++pointsCopy;
      v22.origin = vcvtq_f64_f32(vsub_f32(v19, v16));
      v22.size.width = v15;
      v22.size.height = v15;
      NU::RectT<long>::RectT(v21, &v22, 0);
      v20 = vaddq_s64(v21[1], v21[0]);
      if (v21[0].i64[0] < x)
      {
        x = v21[0].i64[0];
      }

      if (v12 <= v20.i64[0])
      {
        v12 = v20.i64[0];
      }

      if (v21[0].i64[1] < y)
      {
        y = v21[0].i64[1];
      }

      if (v13 <= v20.i64[1])
      {
        v13 = v20.i64[1];
      }

      --countCopy;
    }

    while (countCopy);
  }

  self->super._extent.origin.x = x;
  self->super._extent.origin.y = y;
  self->super._extent.size.width = v12 - x;
  self->super._extent.size.height = v13 - y;
  [(NSMutableData *)self->super._data appendBytes:points length:12 * count];
}

- (void)appendPoint:(id)point
{
  var1 = point.var1;
  var0 = point.var0;
  pointCopy = point;
  [(NUBrushStroke *)self radius];
  v12.origin.x = (var0 - v6);
  v12.origin.y = (var1 - v6);
  v12.size.width = ((v6 * 2.0) + 1.0);
  v12.size.height = v12.size.width;
  NU::RectT<long>::RectT(&v11, &v12, 0);
  origin = self->super._extent.origin;
  size = self->super._extent.size;
  v12 = v11;
  v11.origin = origin;
  v11.size = size;
  NU::RectT<long>::add(&v11, &v12);
  v9 = v11.size;
  self->super._extent.origin = v11.origin;
  self->super._extent.size = v9;
  [(NSMutableData *)self->super._data appendBytes:&pointCopy length:12];
}

- (id)points
{
  v2 = [(NSMutableData *)self->super._data copy];

  return v2;
}

- (NUMutableBrushStroke)initWithRadius:(float)radius softness:(float)softness opacity:(float)opacity clipRect:(id *)rect pressureMode:(int64_t)mode
{
  v13 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:6000];
  v20.receiver = self;
  v20.super_class = NUMutableBrushStroke;
  v14 = [(NUMutableBrushStroke *)&v20 init];
  memset(v19, 0, sizeof(v19));
  var1 = rect->var1;
  v18[0] = rect->var0;
  v18[1] = var1;
  *&var1.var0 = softness;
  *&v16 = opacity;
  [(NUBrushStroke *)v14 _initializeWithRadius:v19 softness:v18 opacity:v13 extent:mode clipRect:COERCE_DOUBLE(__PAIR64__(DWORD1(v18[0]) data:LODWORD(radius))) pressureMode:*&var1.var0, v16];

  return v14;
}

@end