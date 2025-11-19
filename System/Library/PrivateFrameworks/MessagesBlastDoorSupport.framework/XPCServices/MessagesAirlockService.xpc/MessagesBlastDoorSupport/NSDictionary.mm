@interface NSDictionary
- (id)_arrayForKey:(id)a3;
- (id)_dataForKey:(id)a3;
- (id)_dictionaryForKey:(id)a3;
- (id)_numberForKey:(id)a3;
- (id)_stringForKey:(id)a3;
@end

@implementation NSDictionary

- (id)_dictionaryForKey:(id)a3
{
  v3 = [(NSDictionary *)self objectForKey:a3];
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

- (id)_arrayForKey:(id)a3
{
  v3 = [(NSDictionary *)self objectForKey:a3];
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

- (id)_numberForKey:(id)a3
{
  v3 = [(NSDictionary *)self objectForKey:a3];
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

- (id)_stringForKey:(id)a3
{
  v3 = [(NSDictionary *)self objectForKey:a3];
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

- (id)_dataForKey:(id)a3
{
  v3 = [(NSDictionary *)self objectForKey:a3];
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