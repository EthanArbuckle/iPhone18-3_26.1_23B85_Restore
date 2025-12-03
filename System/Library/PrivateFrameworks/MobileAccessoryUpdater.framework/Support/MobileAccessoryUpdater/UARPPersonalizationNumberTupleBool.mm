@interface UARPPersonalizationNumberTupleBool
- (UARPPersonalizationNumberTupleBool)initWithKey:(id)key value:(BOOL)value;
- (id)description;
- (void)dealloc;
@end

@implementation UARPPersonalizationNumberTupleBool

- (UARPPersonalizationNumberTupleBool)initWithKey:(id)key value:(BOOL)value
{
  v8.receiver = self;
  v8.super_class = UARPPersonalizationNumberTupleBool;
  v6 = [(UARPPersonalizationNumberTupleBool *)&v8 init];
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
  v3.super_class = UARPPersonalizationNumberTupleBool;
  [(UARPPersonalizationNumberTupleBool *)&v3 dealloc];
}

- (id)description
{
  if (self->_value)
  {
    v2 = "YES";
  }

  else
  {
    v2 = "NO";
  }

  return [NSString stringWithFormat:@"<%@ : %s>", self->_key, v2];
}

@end