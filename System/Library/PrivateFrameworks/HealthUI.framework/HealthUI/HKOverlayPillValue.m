@interface HKOverlayPillValue
- (HKOverlayPillValue)initWithAttributedValue:(id)a3;
- (HKOverlayPillValue)initWithValueString:(id)a3 unitString:(id)a4;
@end

@implementation HKOverlayPillValue

- (HKOverlayPillValue)initWithValueString:(id)a3 unitString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HKOverlayPillValue;
  v9 = [(HKOverlayPillValue *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_valueString, a3);
    objc_storeStrong(&v10->_unitString, a4);
    attributedValue = v10->_attributedValue;
    v10->_attributedValue = 0;
  }

  return v10;
}

- (HKOverlayPillValue)initWithAttributedValue:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v7->_attributedValue, a3);
  }

  return v7;
}

@end