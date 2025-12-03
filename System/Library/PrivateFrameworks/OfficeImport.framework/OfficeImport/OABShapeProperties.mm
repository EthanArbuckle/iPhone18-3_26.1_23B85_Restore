@interface OABShapeProperties
+ (id)targetColorWithSourceColor:(EshColor)color alpha:(float)alpha colorPropertiesManager:(id)manager state:(id)state;
@end

@implementation OABShapeProperties

+ (id)targetColorWithSourceColor:(EshColor)color alpha:(float)alpha colorPropertiesManager:(id)manager state:(id)state
{
  v7 = [OABColor readColor:color colorPropertiesManager:manager state:state];
  if (alpha != 1.0)
  {
    v8 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:6];
    *&v9 = alpha;
    [(OADValueColorTransform *)v8 setValue:v9];
    [v7 addTransform:v8];
  }

  return v7;
}

@end