@interface UARPPersonalizationNumberTuple32
- (UARPPersonalizationNumberTuple32)initWithKey:(id)key value:(unsigned int)value;
- (void)dealloc;
@end

@implementation UARPPersonalizationNumberTuple32

- (UARPPersonalizationNumberTuple32)initWithKey:(id)key value:(unsigned int)value
{
  v8.receiver = self;
  v8.super_class = UARPPersonalizationNumberTuple32;
  v6 = [(UARPPersonalizationNumberTuple32 *)&v8 init];
  if (v6)
  {
    v6->_key = [key copy];
    v6->_value = value;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPPersonalizationNumberTuple32;
  [(UARPPersonalizationNumberTuple32 *)&v3 dealloc];
}

@end