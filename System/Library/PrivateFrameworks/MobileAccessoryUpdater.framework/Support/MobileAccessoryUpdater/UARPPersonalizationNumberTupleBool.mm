@interface UARPPersonalizationNumberTupleBool
- (UARPPersonalizationNumberTupleBool)initWithKey:(id)a3 value:(BOOL)a4;
- (id)description;
- (void)dealloc;
@end

@implementation UARPPersonalizationNumberTupleBool

- (UARPPersonalizationNumberTupleBool)initWithKey:(id)a3 value:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = UARPPersonalizationNumberTupleBool;
  v6 = [(UARPPersonalizationNumberTupleBool *)&v8 init];
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