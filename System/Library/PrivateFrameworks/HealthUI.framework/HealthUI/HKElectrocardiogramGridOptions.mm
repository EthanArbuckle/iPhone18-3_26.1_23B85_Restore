@interface HKElectrocardiogramGridOptions
- (CGAffineTransform)scale;
- (HKElectrocardiogramGridOptions)initWithUnitMultiple:(int64_t)multiple axis:(unint64_t)axis lineColor:(id)color lineWidth:(double)width;
@end

@implementation HKElectrocardiogramGridOptions

- (HKElectrocardiogramGridOptions)initWithUnitMultiple:(int64_t)multiple axis:(unint64_t)axis lineColor:(id)color lineWidth:(double)width
{
  colorCopy = color;
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramGridOptions;
  v12 = [(HKElectrocardiogramGridOptions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_unitMultiple = multiple;
    v12->_axis = axis;
    objc_storeStrong(&v12->_lineColor, color);
    v13->_lineWidth = width;
  }

  return v13;
}

- (CGAffineTransform)scale
{
  unitMultiple = [(HKElectrocardiogramGridOptions *)self unitMultiple];
  unitMultiple2 = [(HKElectrocardiogramGridOptions *)self unitMultiple];

  return CGAffineTransformMakeScale(retstr, unitMultiple, unitMultiple2);
}

@end