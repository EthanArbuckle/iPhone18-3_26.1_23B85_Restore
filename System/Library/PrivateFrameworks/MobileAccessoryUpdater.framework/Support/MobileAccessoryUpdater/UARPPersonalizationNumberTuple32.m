@interface UARPPersonalizationNumberTuple32
- (UARPPersonalizationNumberTuple32)initWithKey:(id)a3 value:(unsigned int)a4;
- (void)dealloc;
@end

@implementation UARPPersonalizationNumberTuple32

- (UARPPersonalizationNumberTuple32)initWithKey:(id)a3 value:(unsigned int)a4
{
  v8.receiver = self;
  v8.super_class = UARPPersonalizationNumberTuple32;
  v6 = [(UARPPersonalizationNumberTuple32 *)&v8 init];
  if (v6)
  {
    v6->_key = [a3 copy];
    v6->_value = a4;
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