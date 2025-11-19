@interface ODXLayout
+ (void)readNode:(_xmlNode *)a3 toDiagram:(id)a4 state:(id)a5;
@end

@implementation ODXLayout

+ (void)readNode:(_xmlNode *)a3 toDiagram:(id)a4 state:(id)a5
{
  v9 = a5;
  v6 = [v9 ODXDiagramNamespace];
  v7 = OCXFindRequiredChild(a3, v6, "layoutNode");

  v8 = [0 rootNode];
  [ODXLayoutNode readNode:v7 toLayoutNode:v8 state:v9];
}

@end