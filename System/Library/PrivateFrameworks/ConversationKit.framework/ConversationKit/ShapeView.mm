@interface ShapeView
+ (Class)layerClass;
@end

@implementation ShapeView

+ (Class)layerClass
{
  static ShapeView.layerClass.getter();

  return swift_getObjCClassFromMetadata();
}

@end