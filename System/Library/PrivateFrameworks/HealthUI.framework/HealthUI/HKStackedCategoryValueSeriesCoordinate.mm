@interface HKStackedCategoryValueSeriesCoordinate
- (CGPoint)end;
- (CGPoint)start;
- (HKStackedCategoryValueSeriesCoordinate)initWithStart:(CGPoint)start end:(CGPoint)end pointStyle:(int64_t)style userInfo:(id)info;
- (NSString)description;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation HKStackedCategoryValueSeriesCoordinate

- (HKStackedCategoryValueSeriesCoordinate)initWithStart:(CGPoint)start end:(CGPoint)end pointStyle:(int64_t)style userInfo:(id)info
{
  y = end.y;
  x = end.x;
  v10 = start.y;
  v11 = start.x;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = HKStackedCategoryValueSeriesCoordinate;
  v14 = [(HKStackedCategoryValueSeriesCoordinate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_start.x = v11;
    v14->_start.y = v10;
    v14->_end.x = x;
    v14->_end.y = y;
    v14->_pointStyle = style;
    objc_storeStrong(&v14->_userInfo, info);
  }

  return v15;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  x = self->_start.x;
  y = self->_start.y;
  c = transform->c;
  tx = transform->tx;
  v9 = tx + y * c + transform->a * x;
  v10 = self->_end.x;
  v11 = self->_end.y;
  v12 = tx + v11 * c + transform->a * v10;
  if (scale)
  {
    ty = transform->ty;
    b = transform->b;
    d = transform->d;
    v16 = ty + v11 * d + b * v10;
    v9 = HKUIFloorCGPointToScreenScale(v9, ty + y * d + b * x);
    v12 = HKUIFloorCGPointToScreenScale(v12, v16);
  }

  v17 = objc_alloc(objc_opt_class());
  pointStyle = self->_pointStyle;
  userInfo = self->_userInfo;

  return [v17 initWithStart:pointStyle end:userInfo pointStyle:v9 userInfo:{y, v12, v11}];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = HKStackedCategoryValueSeriesCoordinate;
  v4 = [(HKStackedCategoryValueSeriesCoordinate *)&v9 description];
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