@interface ODXStyleLabel
+ (void)readNode:(_xmlNode *)node label:(id)label state:(id)state;
@end

@implementation ODXStyleLabel

+ (void)readNode:(_xmlNode *)node label:(id)label state:(id)state
{
  labelCopy = label;
  stateCopy = state;
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  v9 = OCXFindChild(node, oDXDiagramNamespace, "style");

  if (v9)
  {
    v10 = objc_alloc_init(OADShapeStyle);
    officeArtState = [stateCopy officeArtState];
    [OAXShapeStyle readFromNode:v9 shapeStyle:v10 drawingState:officeArtState];

    [labelCopy setShapeStyle:v10];
  }
}

@end