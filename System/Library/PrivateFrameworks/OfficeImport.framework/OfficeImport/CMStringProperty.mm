@interface CMStringProperty
- (CMStringProperty)initWithString:(id)string;
- (id)cssStringForName:(id)name;
@end

@implementation CMStringProperty

- (CMStringProperty)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = CMStringProperty;
  v6 = [(CMStringProperty *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->wdValue, string);
  }

  return v7;
}

- (id)cssStringForName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy compare:0x286EF73B0];
  v6 = MEMORY[0x277CCACA8];
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", nameCopy, self->wdValue];;
  }

  else
  {
    cM_stringByAddingCSSEscapes = [(NSString *)self->wdValue CM_stringByAddingCSSEscapes];
    v7 = [v6 stringWithFormat:@"font-family:%@", cM_stringByAddingCSSEscapes];;
  }

  return v7;
}

@end