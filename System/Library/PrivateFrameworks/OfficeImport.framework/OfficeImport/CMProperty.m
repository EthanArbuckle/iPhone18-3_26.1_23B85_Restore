@interface CMProperty
- (CMProperty)initWithCssString:(id)a3;
- (id)cachedCssStringForName:(id)a3;
@end

@implementation CMProperty

- (CMProperty)initWithCssString:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CMProperty;
  v6 = [(CMProperty *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->cachedCssString, a3);
    v8 = v7;
  }

  return v7;
}

- (id)cachedCssStringForName:(id)a3
{
  v4 = a3;
  cachedCssString = self->cachedCssString;
  if (cachedCssString)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v4, cachedCssString];;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end