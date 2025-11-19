@interface _HKHorizontalSingleLineSeriesCoordinate
- (_HKHorizontalSingleLineSeriesCoordinate)initWithXValue:(double)a3 yValue:(int64_t)a4 groupToPrevious:(BOOL)a5 markStyle:(int64_t)a6 userInfo:(id)a7;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation _HKHorizontalSingleLineSeriesCoordinate

- (_HKHorizontalSingleLineSeriesCoordinate)initWithXValue:(double)a3 yValue:(int64_t)a4 groupToPrevious:(BOOL)a5 markStyle:(int64_t)a6 userInfo:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = _HKHorizontalSingleLineSeriesCoordinate;
  v14 = [(_HKHorizontalSingleLineSeriesCoordinate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_xValue = a3;
    v14->_groupToPrevious = a5;
    v14->_yValue = a4;
    v14->_markStyle = a6;
    objc_storeStrong(&v14->_userInfo, a7);
  }

  return v15;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v4 = a4;
  [(_HKHorizontalSingleLineSeriesCoordinate *)self xValue];
  v8 = a3->tx + a3->c * 0.0 + a3->a * v7;
  if (v4)
  {
    v8 = HKUIFloorCGPointToScreenScale(v8, a3->ty + a3->d * 0.0 + a3->b * v7);
  }

  v9 = objc_alloc(objc_opt_class());
  groupToPrevious = self->_groupToPrevious;
  yValue = self->_yValue;
  markStyle = self->_markStyle;
  userInfo = self->_userInfo;

  return [v9 initWithXValue:yValue yValue:groupToPrevious groupToPrevious:markStyle markStyle:userInfo userInfo:v8];
}

@end