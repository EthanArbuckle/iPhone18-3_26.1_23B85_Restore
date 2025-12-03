@interface _HKJulianIndexedSevenDayQuantitySeriesBlockCoordinate
- (CGPoint)end;
- (CGPoint)start;
- (NSString)description;
- (_HKJulianIndexedSevenDayQuantitySeriesBlockCoordinate)initWithStart:(CGPoint)start end:(CGPoint)end userInfo:(id)info;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation _HKJulianIndexedSevenDayQuantitySeriesBlockCoordinate

- (_HKJulianIndexedSevenDayQuantitySeriesBlockCoordinate)initWithStart:(CGPoint)start end:(CGPoint)end userInfo:(id)info
{
  y = end.y;
  x = end.x;
  v8 = start.y;
  v9 = start.x;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = _HKJulianIndexedSevenDayQuantitySeriesBlockCoordinate;
  v12 = [(_HKJulianIndexedSevenDayQuantitySeriesBlockCoordinate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_start.x = v9;
    v12->_start.y = v8;
    v12->_end.x = x;
    v12->_end.y = y;
    objc_storeStrong(&v12->_userInfo, info);
  }

  return v13;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  x = self->_start.x;
  y = self->_start.y;
  b = transform->b;
  c = transform->c;
  d = transform->d;
  tx = transform->tx;
  ty = transform->ty;
  v12 = tx + y * c + transform->a * x;
  v13 = ty + y * d + b * x;
  v14 = self->_end.x;
  v15 = self->_end.y;
  v16 = tx + c * v15 + transform->a * v14;
  v17 = ty + d * v15 + b * v14;
  if (scale)
  {
    v12 = HKUIFloorCGPointToScreenScale(v12, v13);
    v13 = v18;
    v16 = HKUIFloorCGPointToScreenScale(v16, v17);
    v17 = v19;
  }

  v20 = objc_alloc(objc_opt_class());
  userInfo = self->_userInfo;

  return [v20 initWithStart:userInfo end:v12 userInfo:{v13, v16, v17}];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = _HKJulianIndexedSevenDayQuantitySeriesBlockCoordinate;
  v4 = [(_HKJulianIndexedSevenDayQuantitySeriesBlockCoordinate *)&v9 description];
  v5 = NSStringFromCGPoint(self->_start);
  v6 = NSStringFromCGPoint(self->_end);
  v7 = [v3 stringWithFormat:@"%@ %@ %@", v4, v5, v6];

  return v7;
}

- (CGPoint)start
{
  x = self->_start.x;
  y = self->_start.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)end
{
  x = self->_end.x;
  y = self->_end.y;
  result.y = y;
  result.x = x;
  return result;
}

@end