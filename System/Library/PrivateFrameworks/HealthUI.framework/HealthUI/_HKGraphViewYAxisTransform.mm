@interface _HKGraphViewYAxisTransform
- (HKLinearTransform)endingTransform;
- (HKLinearTransform)startingTransform;
- (_HKGraphViewYAxisTransform)initWithYAxis:(id)axis seriesForTransform:(id)transform startingTransform:(HKLinearTransform)startingTransform endingTransform:(HKLinearTransform)endingTransform endingRange:(id)range;
@end

@implementation _HKGraphViewYAxisTransform

- (_HKGraphViewYAxisTransform)initWithYAxis:(id)axis seriesForTransform:(id)transform startingTransform:(HKLinearTransform)startingTransform endingTransform:(HKLinearTransform)endingTransform endingRange:(id)range
{
  scale = endingTransform.scale;
  offset = endingTransform.offset;
  v10 = startingTransform.scale;
  v11 = startingTransform.offset;
  axisCopy = axis;
  transformCopy = transform;
  rangeCopy = range;
  v21.receiver = self;
  v21.super_class = _HKGraphViewYAxisTransform;
  v18 = [(_HKGraphViewYAxisTransform *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_yAxisForTransform, axis);
    objc_storeStrong(&v19->_seriesForTransform, transform);
    v19->_startingTransform.offset = v11;
    v19->_startingTransform.scale = v10;
    v19->_endingTransform.offset = offset;
    v19->_endingTransform.scale = scale;
    objc_storeStrong(&v19->_endingRange, range);
  }

  return v19;
}

- (HKLinearTransform)startingTransform
{
  offset = self->_startingTransform.offset;
  scale = self->_startingTransform.scale;
  result.scale = scale;
  result.offset = offset;
  return result;
}

- (HKLinearTransform)endingTransform
{
  offset = self->_endingTransform.offset;
  scale = self->_endingTransform.scale;
  result.scale = scale;
  result.offset = offset;
  return result;
}

@end