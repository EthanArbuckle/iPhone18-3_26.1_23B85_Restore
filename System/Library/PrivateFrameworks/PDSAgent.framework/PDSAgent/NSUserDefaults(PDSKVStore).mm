@interface NSUserDefaults(PDSKVStore)
- (id)numberForKey:()PDSKVStore;
@end

@implementation NSUserDefaults(PDSKVStore)

- (id)numberForKey:()PDSKVStore
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end