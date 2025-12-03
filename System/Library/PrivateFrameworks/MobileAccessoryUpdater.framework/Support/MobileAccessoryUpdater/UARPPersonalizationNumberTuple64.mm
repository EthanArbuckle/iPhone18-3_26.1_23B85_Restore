@interface UARPPersonalizationNumberTuple64
- (UARPPersonalizationNumberTuple64)initWithKey:(id)key value:(unint64_t)value;
- (void)dealloc;
@end

@implementation UARPPersonalizationNumberTuple64

- (UARPPersonalizationNumberTuple64)initWithKey:(id)key value:(unint64_t)value
{
  v8.receiver = self;
  v8.super_class = UARPPersonalizationNumberTuple64;
  v6 = [(UARPPersonalizationNumberTuple64 *)&v8 init];
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
  v3.super_class = UARPPersonalizationNumberTuple64;
  [(UARPPersonalizationNumberTuple64 *)&v3 dealloc];
}

@end