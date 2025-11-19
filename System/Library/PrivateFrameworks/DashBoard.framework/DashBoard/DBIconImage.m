@interface DBIconImage
+ (SBIconImageInfo)iconImageInfoForScale:(SEL)a3;
- (_TtC9DashBoard11DBIconImage)init;
@end

@implementation DBIconImage

+ (SBIconImageInfo)iconImageInfoForScale:(SEL)a3
{
  v4 = [objc_opt_self() imageDescriptorNamed_];
  [v4 size];

  return result;
}

- (_TtC9DashBoard11DBIconImage)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DBIconImage *)&v3 init];
}

@end