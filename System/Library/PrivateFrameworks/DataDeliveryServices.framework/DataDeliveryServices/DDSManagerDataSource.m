@interface DDSManagerDataSource
- (id)dateForPreferenceKey:(id)a3;
@end

@implementation DDSManagerDataSource

- (id)dateForPreferenceKey:(id)a3
{
  v3 = DDSGetPreferenceObjectForKey(a3);
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