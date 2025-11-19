@interface HKJulianIndexedSevenDayQuantitySeriesAxisLabel
- (HKJulianIndexedSevenDayQuantitySeriesAxisLabel)initWithText:(id)a3 location:(double)a4 type:(int64_t)a5;
@end

@implementation HKJulianIndexedSevenDayQuantitySeriesAxisLabel

- (HKJulianIndexedSevenDayQuantitySeriesAxisLabel)initWithText:(id)a3 location:(double)a4 type:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HKJulianIndexedSevenDayQuantitySeriesAxisLabel;
  v10 = [(HKJulianIndexedSevenDayQuantitySeriesAxisLabel *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_text, a3);
    v11->_location = a4;
    v11->_type = a5;
  }

  return v11;
}

@end