@interface HKJulianIndexedSevenDayQuantitySeriesAxisLabel
- (HKJulianIndexedSevenDayQuantitySeriesAxisLabel)initWithText:(id)text location:(double)location type:(int64_t)type;
@end

@implementation HKJulianIndexedSevenDayQuantitySeriesAxisLabel

- (HKJulianIndexedSevenDayQuantitySeriesAxisLabel)initWithText:(id)text location:(double)location type:(int64_t)type
{
  textCopy = text;
  v13.receiver = self;
  v13.super_class = HKJulianIndexedSevenDayQuantitySeriesAxisLabel;
  v10 = [(HKJulianIndexedSevenDayQuantitySeriesAxisLabel *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_text, text);
    v11->_location = location;
    v11->_type = type;
  }

  return v11;
}

@end