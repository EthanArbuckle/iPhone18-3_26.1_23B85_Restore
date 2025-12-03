@interface HKOverlayPillValue
- (HKOverlayPillValue)initWithAttributedValue:(id)value;
- (HKOverlayPillValue)initWithValueString:(id)string unitString:(id)unitString;
@end

@implementation HKOverlayPillValue

- (HKOverlayPillValue)initWithValueString:(id)string unitString:(id)unitString
{
  stringCopy = string;
  unitStringCopy = unitString;
  v13.receiver = self;
  v13.super_class = HKOverlayPillValue;
  v9 = [(HKOverlayPillValue *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_valueString, string);
    objc_storeStrong(&v10->_unitString, unitString);
    attributedValue = v10->_attributedValue;
    v10->_attributedValue = 0;
  }

  return v10;
}

- (HKOverlayPillValue)initWithAttributedValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = HKOverlayPillValue;
  v6 = [(HKOverlayPillValue *)&v11 init];
  v7 = v6;
  if (v6)
  {
    valueString = v6->_valueString;
    v6->_valueString = 0;

    unitString = v7->_unitString;
    v7->_unitString = 0;

    objc_storeStrong(&v7->_attributedValue, value);
  }

  return v7;
}

@end