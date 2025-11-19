@interface ODXStyleLabel
+ (void)readNode:(_xmlNode *)a3 label:(id)a4 state:(id)a5;
@end

@implementation ODXStyleLabel

+ (void)readNode:(_xmlNode *)a3 label:(id)a4 state:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [v7 ODXDiagramNamespace];
  v9 = OCXFindChild(a3, v8, "style");

  if (v9)
  {
    v10 = objc_alloc_init(OADShapeStyle);
    v11 = [v7 officeArtState];
    [OAXShapeStyle readFromNode:v9 shapeStyle:v10 drawingState:v11];

    [v12 setShapeStyle:v10];
  }
}

@end