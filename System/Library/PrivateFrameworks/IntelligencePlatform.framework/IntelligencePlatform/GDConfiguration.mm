@interface GDConfiguration
- (GDConfiguration)init;
@end

@implementation GDConfiguration

- (GDConfiguration)init
{
  v6.receiver = self;
  v6.super_class = GDConfiguration;
  v2 = [(GDConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(GDEntityTagConfigurationInner);
    inner = v2->inner;
    v2->inner = v3;
  }

  return v2;
}

@end