@interface DDSManagerDataSource
- (id)dateForPreferenceKey:(id)key;
@end

@implementation DDSManagerDataSource

- (id)dateForPreferenceKey:(id)key
{
  v3 = DDSGetPreferenceObjectForKey(key);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end