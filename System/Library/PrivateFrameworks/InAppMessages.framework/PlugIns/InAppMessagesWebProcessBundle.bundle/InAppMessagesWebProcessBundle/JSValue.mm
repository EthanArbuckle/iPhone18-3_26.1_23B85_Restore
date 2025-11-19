@interface JSValue
- (void)_IAM_setConstantValue:(id)a3 forProperty:(id)a4;
@end

@implementation JSValue

- (void)_IAM_setConstantValue:(id)a3 forProperty:(id)a4
{
  v9[0] = JSPropertyDescriptorValueKey;
  v9[1] = JSPropertyDescriptorWritableKey;
  v10[0] = a3;
  v10[1] = &__kCFBooleanFalse;
  v9[2] = JSPropertyDescriptorEnumerableKey;
  v9[3] = JSPropertyDescriptorConfigurableKey;
  v10[2] = &__kCFBooleanFalse;
  v10[3] = &__kCFBooleanFalse;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  [(JSValue *)self defineProperty:v6 descriptor:v8];
}

@end