@interface UARPPersonalizationNumberTuple64
- (UARPPersonalizationNumberTuple64)initWithKey:(id)a3 value:(unint64_t)a4;
- (void)dealloc;
@end

@implementation UARPPersonalizationNumberTuple64

- (UARPPersonalizationNumberTuple64)initWithKey:(id)a3 value:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = UARPPersonalizationNumberTuple64;
  v6 = [(UARPPersonalizationNumberTuple64 *)&v8 init];
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
  v3.super_class = UARPPersonalizationNumberTuple64;
  [(UARPPersonalizationNumberTuple64 *)&v3 dealloc];
}

@end