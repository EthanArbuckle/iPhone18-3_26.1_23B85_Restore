@interface ODXLayout
+ (void)readNode:(_xmlNode *)node toDiagram:(id)diagram state:(id)state;
@end

@implementation ODXLayout

+ (void)readNode:(_xmlNode *)node toDiagram:(id)diagram state:(id)state
{
  stateCopy = state;
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  v7 = OCXFindRequiredChild(node, oDXDiagramNamespace, "layoutNode");

  rootNode = [0 rootNode];
  [ODXLayoutNode readNode:v7 toLayoutNode:rootNode state:stateCopy];
}

@end