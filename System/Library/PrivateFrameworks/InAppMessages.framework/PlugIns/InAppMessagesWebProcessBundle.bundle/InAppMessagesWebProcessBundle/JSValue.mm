@interface JSValue
- (void)_IAM_setConstantValue:(id)value forProperty:(id)property;
@end

@implementation JSValue

- (void)_IAM_setConstantValue:(id)value forProperty:(id)property
{
  v9[0] = JSPropertyDescriptorValueKey;
  v9[1] = JSPropertyDescriptorWritableKey;
  v10[0] = value;
  v10[1] = &__kCFBooleanFalse;
  v9[2] = JSPropertyDescriptorEnumerableKey;
  v9[3] = JSPropertyDescriptorConfigurableKey;
  v10[2] = &__kCFBooleanFalse;
  v10[3] = &__kCFBooleanFalse;
  propertyCopy = property;
  valueCopy = value;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  [(JSValue *)self defineProperty:propertyCopy descriptor:v8];
}

@end