@interface CMProperty
- (CMProperty)initWithCssString:(id)string;
- (id)cachedCssStringForName:(id)name;
@end

@implementation CMProperty

- (CMProperty)initWithCssString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = CMProperty;
  v6 = [(CMProperty *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->cachedCssString, string);
    v8 = v7;
  }

  return v7;
}

- (id)cachedCssStringForName:(id)name
{
  nameCopy = name;
  cachedCssString = self->cachedCssString;
  if (cachedCssString)
  {
    cachedCssString = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", nameCopy, cachedCssString];;
  }

  else
  {
    cachedCssString = 0;
  }

  return cachedCssString;
}

@end