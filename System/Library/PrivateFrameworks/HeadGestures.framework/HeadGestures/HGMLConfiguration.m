@interface HGMLConfiguration
- (HGMLConfiguration)init;
@end

@implementation HGMLConfiguration

- (HGMLConfiguration)init
{
  v5.receiver = self;
  v5.super_class = HGMLConfiguration;
  v2 = [(HGMLConfiguration *)&v5 init];
  if (v2)
  {
    v3 = +[HGMLConfigurationInternal defaultMLConfiguration];
    [(HGMLConfiguration *)v2 setInternal:v3];
  }

  return v2;
}

@end