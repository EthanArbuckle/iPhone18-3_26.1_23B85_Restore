@interface DBIconImage
+ (SBIconImageInfo)iconImageInfoForScale:(SEL)scale;
- (_TtC9DashBoard11DBIconImage)init;
@end

@implementation DBIconImage

+ (SBIconImageInfo)iconImageInfoForScale:(SEL)scale
{
  imageDescriptorNamed_ = [objc_opt_self() imageDescriptorNamed_];
  [imageDescriptorNamed_ size];

  return result;
}

- (_TtC9DashBoard11DBIconImage)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DBIconImage *)&v3 init];
}

@end