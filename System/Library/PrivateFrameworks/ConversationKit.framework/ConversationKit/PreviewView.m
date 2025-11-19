@interface PreviewView
+ (Class)layerClass;
@end

@implementation PreviewView

+ (Class)layerClass
{
  swift_getObjCClassMetadata();
  static PreviewView.layerClass.getter();

  return swift_getObjCClassFromMetadata();
}

@end