@interface _HKLineSeriesBlockCoordinate
- (CGPoint)coordinate;
- (NSString)description;
- (_HKLineSeriesBlockCoordinate)initWithCoordinate:(CGPoint)coordinate userInfo:(id)info;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation _HKLineSeriesBlockCoordinate

- (_HKLineSeriesBlockCoordinate)initWithCoordinate:(CGPoint)coordinate userInfo:(id)info
{
  y = coordinate.y;
  x = coordinate.x;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = _HKLineSeriesBlockCoordinate;
  v9 = [(_HKLineSeriesBlockCoordinate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_coordinate.x = x;
    v9->_coordinate.y = y;
    objc_storeStrong(&v9->_userInfo, info);
  }

  return v10;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  v5 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, self->_coordinate.y), *&transform->a, self->_coordinate.x));
  v6 = v5.f64[1];
  if (scale)
  {
    v11 = HKUIFloorCGPointToScreenScale(v5.f64[0], v5.f64[1]);
    v6 = v7;
  }

  else
  {
    v11 = v5.f64[0];
  }

  v8 = objc_alloc(objc_opt_class());
  userInfo = self->_userInfo;

  return [v8 initWithCoordinate:userInfo userInfo:{v11, v6}];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _HKLineSeriesBlockCoordinate;
  v4 = [(_HKLineSeriesBlockCoordinate *)&v8 description];
  v5 = NSStringFromCGPoint(self->_coordinate);
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (CGPoint)coordinate
{
  x = self->_coordinate.x;
  y = self->_coordinate.y;
  result.y = y;
  result.x = x;
  return result;
}

@end