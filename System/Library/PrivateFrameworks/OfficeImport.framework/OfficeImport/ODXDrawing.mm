@interface ODXDrawing
+ (id)readDrawingRelationshipIdFromDataNode:(_xmlNode *)node state:(id)state;
+ (void)readNode:(_xmlNode *)node toDiagram:(id)diagram state:(id)state;
@end

@implementation ODXDrawing

+ (id)readDrawingRelationshipIdFromDataNode:(_xmlNode *)node state:(id)state
{
  stateCopy = state;
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  Child = OCXFindChild(node, oDXDiagramNamespace, "extLst");

  if (Child)
  {
    officeArtState = [stateCopy officeArtState];
    oAXMainNamespace = [officeArtState OAXMainNamespace];
    Child = OCXFindChild(Child, oAXMainNamespace, "ext");

    if (Child)
    {
      while (1)
      {
        v10 = CXDefaultStringAttribute(Child, CXNoNamespace, "uri", 0);
        v11 = v10;
        if (v10)
        {
          if (!strcmp([v10 UTF8String], "http://schemas.microsoft.com/office/drawing/2008/diagram"))
          {
            v12 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/drawing/2008/diagram"];
            v13 = OCXFindChild(Child, v12, "dataModelExt");

            if (v13)
            {
              break;
            }
          }
        }

        officeArtState2 = [stateCopy officeArtState];
        oAXMainNamespace2 = [officeArtState2 OAXMainNamespace];
        Child = OCXFindNextChild(Child, oAXMainNamespace2, "ext");

        if (!Child)
        {
          goto LABEL_7;
        }
      }

      Child = CXDefaultStringAttribute(v13, CXNoNamespace, "relId", 0);
    }
  }

LABEL_7:

  return Child;
}

+ (void)readNode:(_xmlNode *)node toDiagram:(id)diagram state:(id)state
{
  diagramCopy = diagram;
  stateCopy = state;
  v8 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/drawing/2008/diagram"];
  if (CXNodeHasName(node, v8, "drawing"))
  {
    v9 = OCXFindChild(node, v8, "spTree");
    if (v9)
    {
      officeArtState = [stateCopy officeArtState];
      v11 = [OAXDrawable readDrawablesFromXmlNode:v9 inNamespace:v8 drawingState:officeArtState];

      [diagramCopy setEquivalentDrawables:v11];
    }
  }
}

@end