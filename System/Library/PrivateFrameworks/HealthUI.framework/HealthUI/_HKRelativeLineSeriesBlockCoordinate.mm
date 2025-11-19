@interface _HKRelativeLineSeriesBlockCoordinate
- (CGPoint)end;
- (CGPoint)midpoint;
- (CGPoint)start;
- (_HKRelativeLineSeriesBlockCoordinate)initWithStart:(CGPoint)a3 end:(CGPoint)a4 userInfo:(id)a5;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
- (id)description;
@end

@implementation _HKRelativeLineSeriesBlockCoordinate

- (_HKRelativeLineSeriesBlockCoordinate)initWithStart:(CGPoint)a3 end:(CGPoint)a4 userInfo:(id)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  v10.receiver = self;
  v10.super_class = _HKRelativeLineSeriesBlockCoordinate;
  result = [(_HKLineSeriesBlockCoordinate *)&v10 initWithCoordinate:a5 userInfo:?];
  if (result)
  {
    result->_start.x = v8;
    result->_start.y = v7;
    result->_end.x = x;
    result->_end.y = y;
  }

  return result;
}

- (CGPoint)midpoint
{
  MEMORY[0x1EEE4DF90](self->_start.x, self->_start.y, self->_end.x, self->_end.y);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  x = self->_start.x;
  y = self->_start.y;
  b = a3->b;
  c = a3->c;
  d = a3->d;
  tx = a3->tx;
  ty = a3->ty;
  v12 = tx + y * c + a3->a * x;
  v13 = ty + y * d + b * x;
  v14 = self->_end.x;
  v15 = self->_end.y;
  v16 = tx + c * v15 + a3->a * v14;
  v17 = ty + d * v15 + b * v14;
  if (a4)
  {
    v12 = HKUIFloorCGPointToScreenScale(v12, v13);
    v13 = v18;
    v16 = HKUIFloorCGPointToScreenScale(v16, v17);
    v17 = v19;
  }

  v20 = objc_alloc(objc_opt_class());
  v21 = [(_HKLineSeriesBlockCoordinate *)self userInfo];
  v22 = [v20 initWithStart:v21 end:v12 userInfo:{v13, v16, v17}];

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = _HKRelativeLineSeriesBlockCoordinate;
  v4 = [(_HKLineSeriesBlockCoordinate *)&v9 description];
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