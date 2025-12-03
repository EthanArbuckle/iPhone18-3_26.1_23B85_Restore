@interface _HKHorizontalSingleLineSeriesCoordinate
- (_HKHorizontalSingleLineSeriesCoordinate)initWithXValue:(double)value yValue:(int64_t)yValue groupToPrevious:(BOOL)previous markStyle:(int64_t)style userInfo:(id)info;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation _HKHorizontalSingleLineSeriesCoordinate

- (_HKHorizontalSingleLineSeriesCoordinate)initWithXValue:(double)value yValue:(int64_t)yValue groupToPrevious:(BOOL)previous markStyle:(int64_t)style userInfo:(id)info
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = _HKHorizontalSingleLineSeriesCoordinate;
  v14 = [(_HKHorizontalSingleLineSeriesCoordinate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_xValue = value;
    v14->_groupToPrevious = previous;
    v14->_yValue = yValue;
    v14->_markStyle = style;
    objc_storeStrong(&v14->_userInfo, info);
  }

  return v15;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  scaleCopy = scale;
  [(_HKHorizontalSingleLineSeriesCoordinate *)self xValue];
  v8 = transform->tx + transform->c * 0.0 + transform->a * v7;
  if (scaleCopy)
  {
    v8 = HKUIFloorCGPointToScreenScale(v8, transform->ty + transform->d * 0.0 + transform->b * v7);
  }

  v9 = objc_alloc(objc_opt_class());
  groupToPrevious = self->_groupToPrevious;
  yValue = self->_yValue;
  markStyle = self->_markStyle;
  userInfo = self->_userInfo;

  return [v9 initWithXValue:yValue yValue:groupToPrevious groupToPrevious:markStyle markStyle:userInfo userInfo:v8];
}

@end