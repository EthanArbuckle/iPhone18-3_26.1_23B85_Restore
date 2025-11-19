@interface ODXDrawing
+ (id)readDrawingRelationshipIdFromDataNode:(_xmlNode *)a3 state:(id)a4;
+ (void)readNode:(_xmlNode *)a3 toDiagram:(id)a4 state:(id)a5;
@end

@implementation ODXDrawing

+ (id)readDrawingRelationshipIdFromDataNode:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [v5 ODXDiagramNamespace];
  Child = OCXFindChild(a3, v6, "extLst");

  if (Child)
  {
    v8 = [v5 officeArtState];
    v9 = [v8 OAXMainNamespace];
    Child = OCXFindChild(Child, v9, "ext");

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

        v14 = [v5 officeArtState];
        v15 = [v14 OAXMainNamespace];
        Child = OCXFindNextChild(Child, v15, "ext");

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

+ (void)readNode:(_xmlNode *)a3 toDiagram:(id)a4 state:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/drawing/2008/diagram"];
  if (CXNodeHasName(a3, v8, "drawing"))
  {
    v9 = OCXFindChild(a3, v8, "spTree");
    if (v9)
    {
      v10 = [v7 officeArtState];
      v11 = [OAXDrawable readDrawablesFromXmlNode:v9 inNamespace:v8 drawingState:v10];

      [v12 setEquivalentDrawables:v11];
    }
  }
}

@end