@interface MTChange
- (MTChange)initWithProperty:(id)property changedValue:(id)value originalValue:(id)originalValue;
@end

@implementation MTChange

- (MTChange)initWithProperty:(id)property changedValue:(id)value originalValue:(id)originalValue
{
  propertyCopy = property;
  valueCopy = value;
  originalValueCopy = originalValue;
  v15.receiver = self;
  v15.super_class = MTChange;
  v11 = [(MTChange *)&v15 init];
  if (v11)
  {
    v12 = [propertyCopy copy];
    property = v11->_property;
    v11->_property = v12;

    objc_storeStrong(&v11->_changedValue, value);
    objc_storeStrong(&v11->_originalValue, originalValue);
  }

  return v11;
}

@end