@interface UARPPersonalizationDataTuple
- (UARPPersonalizationDataTuple)initWithKey:(id)a3 value:(id)a4;
- (void)dealloc;
@end

@implementation UARPPersonalizationDataTuple

- (UARPPersonalizationDataTuple)initWithKey:(id)a3 value:(id)a4
{
  v8.receiver = self;
  v8.super_class = UARPPersonalizationDataTuple;
  v6 = [(UARPPersonalizationDataTuple *)&v8 init];
  if (v6)
  {
    v6->_key = [a3 copy];
    v6->_value = [a4 copy];
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