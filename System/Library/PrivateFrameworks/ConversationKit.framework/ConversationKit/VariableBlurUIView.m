@interface VariableBlurUIView
+ (Class)layerClass;
- (void)layoutSubviews;
@end

@implementation VariableBlurUIView

+ (Class)layerClass
{
  static VariableBlurUIView.layerClass.getter();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v2 = self;
  VariableBlurUIView.layoutSubviews()();
}

@end