@interface UARPPersonalizationDataTuple
- (UARPPersonalizationDataTuple)initWithKey:(id)key value:(id)value;
- (void)dealloc;
@end

@implementation UARPPersonalizationDataTuple

- (UARPPersonalizationDataTuple)initWithKey:(id)key value:(id)value
{
  v8.receiver = self;
  v8.super_class = UARPPersonalizationDataTuple;
  v6 = [(UARPPersonalizationDataTuple *)&v8 init];
  if (v6)
  {
    v6->_key = [key copy];
    v6->_value = [value copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPPersonalizationDataTuple;
  [(UARPPersonalizationDataTuple *)&v3 dealloc];
}

@end