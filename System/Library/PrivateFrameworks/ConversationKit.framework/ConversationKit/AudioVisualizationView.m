@interface AudioVisualizationView
+ (Class)layerClass;
@end

@implementation AudioVisualizationView

+ (Class)layerClass
{
  static AudioVisualizationView.layerClass.getter();

  return swift_getObjCClassFromMetadata();
}

@end