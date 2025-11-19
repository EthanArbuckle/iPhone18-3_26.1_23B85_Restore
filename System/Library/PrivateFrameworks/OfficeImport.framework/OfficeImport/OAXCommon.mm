@interface OAXCommon
+ (void)initialize;
@end

@implementation OAXCommon

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/compatibility"];
    v3 = OAXCompatNamespace;
    OAXCompatNamespace = v2;

    v4 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/drawing/2010/main"];
    v5 = OAXDrawing2010Namespace;
    OAXDrawing2010Namespace = v4;

    v6 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/mac/drawingml/2008/main"];
    v7 = OAXDrawingMac2008Namespace;
    OAXDrawingMac2008Namespace = v6;

    v8 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/drawing/2012/chart"];
    v9 = OAXChart2012Namespace;
    OAXChart2012Namespace = v8;
  }
}

@end