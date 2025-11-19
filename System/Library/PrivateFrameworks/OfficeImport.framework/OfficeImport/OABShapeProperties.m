@interface OABShapeProperties
+ (id)targetColorWithSourceColor:(EshColor)a3 alpha:(float)a4 colorPropertiesManager:(id)a5 state:(id)a6;
@end

@implementation OABShapeProperties

+ (id)targetColorWithSourceColor:(EshColor)a3 alpha:(float)a4 colorPropertiesManager:(id)a5 state:(id)a6
{
  v7 = [OABColor readColor:a3 colorPropertiesManager:a5 state:a6];
  if (a4 != 1.0)
  {
    v8 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:6];
    *&v9 = a4;
    [(OADValueColorTransform *)v8 setValue:v9];
    [v7 addTransform:v8];
  }

  return v7;
}

@end