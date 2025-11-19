@interface _HKGraphViewYAxisTransform
- (HKLinearTransform)endingTransform;
- (HKLinearTransform)startingTransform;
- (_HKGraphViewYAxisTransform)initWithYAxis:(id)a3 seriesForTransform:(id)a4 startingTransform:(HKLinearTransform)a5 endingTransform:(HKLinearTransform)a6 endingRange:(id)a7;
@end

@implementation _HKGraphViewYAxisTransform

- (_HKGraphViewYAxisTransform)initWithYAxis:(id)a3 seriesForTransform:(id)a4 startingTransform:(HKLinearTransform)a5 endingTransform:(HKLinearTransform)a6 endingRange:(id)a7
{
  scale = a6.scale;
  offset = a6.offset;
  v10 = a5.scale;
  v11 = a5.offset;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = _HKGraphViewYAxisTransform;
  v18 = [(_HKGraphViewYAxisTransform *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_yAxisForTransform, a3);
    objc_storeStrong(&v19->_seriesForTransform, a4);
    v19->_startingTransform.offset = v11;
    v19->_startingTransform.scale = v10;
    v19->_endingTransform.offset = offset;
    v19->_endingTransform.scale = scale;
    objc_storeStrong(&v19->_endingRange, a7);
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