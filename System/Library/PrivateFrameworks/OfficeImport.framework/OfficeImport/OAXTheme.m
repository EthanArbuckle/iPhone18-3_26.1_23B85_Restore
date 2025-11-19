@interface OAXTheme
+ (_xmlNode)childNamed:(const char *)a3 inParent:(_xmlNode *)a4 fallbackParent:(_xmlNode *)a5 drawingState:(id)a6;
+ (void)readDefaultProperties:(_xmlNode *)a3 fallback:(_xmlNode *)a4 defaultProperties:(id)a5 drawingState:(id)a6;
+ (void)readFromPackagePart:(id)a3 toTheme:(id)a4 state:(id)a5;
+ (void)readFromThemeData:(const char *)a3 themeDataSize:(unsigned int)a4 toTheme:(id)a5 xmlDrawingState:(id)a6;
+ (void)readObjectDefaults:(_xmlNode *)a3 theme:(id)a4 drawingState:(id)a5;
+ (void)readObjectDefaultsFromParent:(_xmlNode *)a3 defaultsName:(const char *)a4 toObjectDefaults:(id)a5 drawingState:(id)a6;
@end

@implementation OAXTheme

+ (void)readFromPackagePart:(id)a3 toTheme:(id)a4 state:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  [v9 setPackagePart:v18];
  v10 = OCXGetRootElement([v18 xmlDocument]);
  v11 = CXDefaultStringAttribute(v10, CXNoNamespace, "name", 0);
  [v8 setName:v11];

  v12 = [v9 OAXMainNamespace];
  v13 = OCXFindChild(v10, v12, "themeElements");

  if (!v13)
  {
    [TCMessageException raise:OABadFormat];
  }

  v14 = [v8 baseStyles];
  [OAXBaseStyles readFromXmlNode:v13 toBaseStyles:v14 packagePart:v18 drawingState:v9];
  v15 = [v14 styleMatrix];
  [v9 setStyleMatrix:v15];

  v16 = [v9 OAXMainNamespace];
  v17 = OCXFindChild(v10, v16, "objectDefaults");

  [a1 readObjectDefaults:v17 theme:v8 drawingState:v9];
}

+ (void)readFromThemeData:(const char *)a3 themeDataSize:(unsigned int)a4 toTheme:(id)a5 xmlDrawingState:(id)a6
{
  v16 = a5;
  v9 = a6;
  if (a3 && a4)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
    v11 = [[OCPZipPackage alloc] initWithData:v10];
    v12 = v11;
    if (v11)
    {
      v13 = [(OCPPackage *)v11 mainDocumentPart];
      v14 = v13;
      if (v13)
      {
        v15 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(v13, v9, sel_OCXThemeRelationshipType);
        if (v15)
        {
          [OAXTheme readFromPackagePart:v15 toTheme:v16 state:v9];
        }
      }
    }
  }
}

+ (void)readObjectDefaultsFromParent:(_xmlNode *)a3 defaultsName:(const char *)a4 toObjectDefaults:(id)a5 drawingState:(id)a6
{
  v19 = a5;
  v10 = a6;
  v11 = [v10 OAXMainNamespace];
  v12 = OCXFindChild(a3, v11, a4);

  v13 = [[OAXDrawingState alloc] initWithClient:0];
  v14 = [TCXmlUtilities bundlePathForXmlResource:@"DefaultObjectDefaults"];
  v15 = sfaxmlParseFile([v14 fileSystemRepresentation]);
  v16 = OCXGetRootElement(v15);
  v17 = [(OAXDrawingState *)v13 OAXMainNamespace];
  v18 = OCXFindChild(v16, v17, a4);

  [a1 readDefaultProperties:v12 fallback:v18 defaultProperties:v19 drawingState:v10];
  xmlFreeDoc(v15);
}

+ (void)readObjectDefaults:(_xmlNode *)a3 theme:(id)a4 drawingState:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = [v15 drawableDefaults];
  v10 = [v9 addShapeDefaults];
  [a1 readObjectDefaultsFromParent:a3 defaultsName:"spDef" toObjectDefaults:v10 drawingState:v8];

  v11 = [v15 drawableDefaults];
  v12 = [v11 addLineDefaults];
  [a1 readObjectDefaultsFromParent:a3 defaultsName:"lnDef" toObjectDefaults:v12 drawingState:v8];

  v13 = [v15 drawableDefaults];
  v14 = [v13 addTextDefaults];
  [a1 readObjectDefaultsFromParent:a3 defaultsName:"txDef" toObjectDefaults:v14 drawingState:v8];
}

+ (_xmlNode)childNamed:(const char *)a3 inParent:(_xmlNode *)a4 fallbackParent:(_xmlNode *)a5 drawingState:(id)a6
{
  v9 = a6;
  v10 = [v9 OAXMainNamespace];
  v11 = OCXFindChild(a4, v10, a3);

  if (!v11 || !OCXFirstChild(v11) && !v11->properties)
  {
    v12 = [v9 OAXMainNamespace];
    v11 = OCXFindChild(a5, v12, a3);
  }

  return v11;
}

+ (void)readDefaultProperties:(_xmlNode *)a3 fallback:(_xmlNode *)a4 defaultProperties:(id)a5 drawingState:(id)a6
{
  v23 = a5;
  v10 = a6;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a4;
  }

  v12 = [a1 childNamed:"spPr" inParent:v11 fallbackParent:a4 drawingState:v10];
  v13 = [v23 shapeProperties];
  v14 = [v10 OAXMainNamespace];
  v15 = OCXFindChild(v11, v14, "style");

  if (v15)
  {
    v16 = objc_alloc_init(OADShapeStyle);
    [OAXShapeStyle readFromNode:v15 shapeStyle:v16 drawingState:v10];
    v17 = [v10 styleMatrix];
    [(OADShapeStyle *)v16 applyToGraphicProperties:v13 styleMatrix:v17];

    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  [OAXGraphic readPropertiesFromXmlNode:v12 graphicProperties:v13 drawingState:v10];
  v19 = [a1 childNamed:"bodyPr" inParent:v11 fallbackParent:a4 drawingState:v10];
  v20 = [v23 textBodyProperties];
  [OAXTextBody readTextBodyProperties:v19 textBodyProperties:v20 drawingState:v10];
  v21 = [a1 childNamed:"lstStyle" inParent:v11 fallbackParent:a4 drawingState:v10];
  v22 = [v23 textListStyle];
  [OAXTextListStyle readNode:v21 textListStyle:v22 state:v10];
  if (v18)
  {
    [(OADShapeStyle *)v18 applyToTextListStyle:v22];
  }
}

@end