@interface NSDictionary
- (id)_arrayForKey:(id)key;
- (id)_dataForKey:(id)key;
- (id)_dictionaryForKey:(id)key;
- (id)_numberForKey:(id)key;
- (id)_stringForKey:(id)key;
@end

@implementation NSDictionary

- (id)_dictionaryForKey:(id)key
{
  v3 = [(NSDictionary *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_arrayForKey:(id)key
{
  v3 = [(NSDictionary *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_numberForKey:(id)key
{
  v3 = [(NSDictionary *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_stringForKey:(id)key
{
  v3 = [(NSDictionary *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_dataForKey:(id)key
{
  v3 = [(NSDictionary *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end