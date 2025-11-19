@interface HKElectrocardiogramGridOptions
- (CGAffineTransform)scale;
- (HKElectrocardiogramGridOptions)initWithUnitMultiple:(int64_t)a3 axis:(unint64_t)a4 lineColor:(id)a5 lineWidth:(double)a6;
@end

@implementation HKElectrocardiogramGridOptions

- (HKElectrocardiogramGridOptions)initWithUnitMultiple:(int64_t)a3 axis:(unint64_t)a4 lineColor:(id)a5 lineWidth:(double)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramGridOptions;
  v12 = [(HKElectrocardiogramGridOptions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_unitMultiple = a3;
    v12->_axis = a4;
    objc_storeStrong(&v12->_lineColor, a5);
    v13->_lineWidth = a6;
  }

  return v13;
}

- (CGAffineTransform)scale
{
  v5 = [(HKElectrocardiogramGridOptions *)self unitMultiple];
  v6 = [(HKElectrocardiogramGridOptions *)self unitMultiple];

  return CGAffineTransformMakeScale(retstr, v5, v6);
}

@end