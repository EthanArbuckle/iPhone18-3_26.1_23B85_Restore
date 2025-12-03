@interface OCXCommon
+ (void)initialize;
@end

@implementation OCXCommon

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/markup-compatibility/2006"];
    v3 = OCXMarkupCompatibilityNamespace;
    OCXMarkupCompatibilityNamespace = v2;

    v4 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/main"];
    v5 = OCXDrawingNamespace;
    OCXDrawingNamespace = v4;
  }
}

@end