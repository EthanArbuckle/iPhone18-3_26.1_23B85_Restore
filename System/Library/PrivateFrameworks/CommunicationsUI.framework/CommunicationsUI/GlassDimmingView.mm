@interface GlassDimmingView
+ (Class)layerClass;
- (void)layoutSubviews;
@end

@implementation GlassDimmingView

- (void)layoutSubviews
{
  v2 = self;
  sub_1C2E039E4();
}

+ (Class)layerClass
{
  sub_1C2C6E1B4(0, &qword_1EC05CA98);

  return swift_getObjCClassFromMetadata();
}

@end