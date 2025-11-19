@interface HIDAnalyticsEventField
- (HIDAnalyticsEventField)initWithName:(id)a3;
- (id)value;
@end

@implementation HIDAnalyticsEventField

- (HIDAnalyticsEventField)initWithName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HIDAnalyticsEventField;
  v6 = [(HIDAnalyticsEventField *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fieldName, a3);
    v8 = v7;
  }

  return v7;
}

- (id)value
{
  stringValue = self->stringValue;
  if (stringValue)
  {
    v3 = stringValue;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->integerValue];
  }

  return v3;
}

@end