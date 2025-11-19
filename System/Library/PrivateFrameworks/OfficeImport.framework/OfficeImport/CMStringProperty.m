@interface CMStringProperty
- (CMStringProperty)initWithString:(id)a3;
- (id)cssStringForName:(id)a3;
@end

@implementation CMStringProperty

- (CMStringProperty)initWithString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CMStringProperty;
  v6 = [(CMStringProperty *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->wdValue, a3);
  }

  return v7;
}

- (id)cssStringForName:(id)a3
{
  v4 = a3;
  v5 = [v4 compare:0x286EF73B0];
  v6 = MEMORY[0x277CCACA8];
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, self->wdValue];;
  }

  else
  {
    v8 = [(NSString *)self->wdValue CM_stringByAddingCSSEscapes];
    v7 = [v6 stringWithFormat:@"font-family:%@", v8];;
  }

  return v7;
}

@end