@interface OAXTheme
+ (_xmlNode)childNamed:(const char *)named inParent:(_xmlNode *)parent fallbackParent:(_xmlNode *)fallbackParent drawingState:(id)state;
+ (void)readDefaultProperties:(_xmlNode *)properties fallback:(_xmlNode *)fallback defaultProperties:(id)defaultProperties drawingState:(id)state;
+ (void)readFromPackagePart:(id)part toTheme:(id)theme state:(id)state;
+ (void)readFromThemeData:(const char *)data themeDataSize:(unsigned int)size toTheme:(id)theme xmlDrawingState:(id)state;
+ (void)readObjectDefaults:(_xmlNode *)defaults theme:(id)theme drawingState:(id)state;
+ (void)readObjectDefaultsFromParent:(_xmlNode *)parent defaultsName:(const char *)name toObjectDefaults:(id)defaults drawingState:(id)state;
@end

@implementation OAXTheme

+ (void)readFromPackagePart:(id)part toTheme:(id)theme state:(id)state
{
  partCopy = part;
  themeCopy = theme;
  stateCopy = state;
  [stateCopy setPackagePart:partCopy];
  v10 = OCXGetRootElement([partCopy xmlDocument]);
  v11 = CXDefaultStringAttribute(v10, CXNoNamespace, "name", 0);
  [themeCopy setName:v11];

  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v13 = OCXFindChild(v10, oAXMainNamespace, "themeElements");

  if (!v13)
  {
    [TCMessageException raise:OABadFormat];
  }

  baseStyles = [themeCopy baseStyles];
  [OAXBaseStyles readFromXmlNode:v13 toBaseStyles:baseStyles packagePart:partCopy drawingState:stateCopy];
  styleMatrix = [baseStyles styleMatrix];
  [stateCopy setStyleMatrix:styleMatrix];

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v17 = OCXFindChild(v10, oAXMainNamespace2, "objectDefaults");

  [self readObjectDefaults:v17 theme:themeCopy drawingState:stateCopy];
}

+ (void)readFromThemeData:(const char *)data themeDataSize:(unsigned int)size toTheme:(id)theme xmlDrawingState:(id)state
{
  themeCopy = theme;
  stateCopy = state;
  if (data && size)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:data length:size];
    v11 = [[OCPZipPackage alloc] initWithData:v10];
    v12 = v11;
    if (v11)
    {
      mainDocumentPart = [(OCPPackage *)v11 mainDocumentPart];
      v14 = mainDocumentPart;
      if (mainDocumentPart)
      {
        v15 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(mainDocumentPart, stateCopy, sel_OCXThemeRelationshipType);
        if (v15)
        {
          [OAXTheme readFromPackagePart:v15 toTheme:themeCopy state:stateCopy];
        }
      }
    }
  }
}

+ (void)readObjectDefaultsFromParent:(_xmlNode *)parent defaultsName:(const char *)name toObjectDefaults:(id)defaults drawingState:(id)state
{
  defaultsCopy = defaults;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v12 = OCXFindChild(parent, oAXMainNamespace, name);

  v13 = [[OAXDrawingState alloc] initWithClient:0];
  v14 = [TCXmlUtilities bundlePathForXmlResource:@"DefaultObjectDefaults"];
  v15 = sfaxmlParseFile([v14 fileSystemRepresentation]);
  v16 = OCXGetRootElement(v15);
  oAXMainNamespace2 = [(OAXDrawingState *)v13 OAXMainNamespace];
  v18 = OCXFindChild(v16, oAXMainNamespace2, name);

  [self readDefaultProperties:v12 fallback:v18 defaultProperties:defaultsCopy drawingState:stateCopy];
  xmlFreeDoc(v15);
}

+ (void)readObjectDefaults:(_xmlNode *)defaults theme:(id)theme drawingState:(id)state
{
  themeCopy = theme;
  stateCopy = state;
  drawableDefaults = [themeCopy drawableDefaults];
  addShapeDefaults = [drawableDefaults addShapeDefaults];
  [self readObjectDefaultsFromParent:defaults defaultsName:"spDef" toObjectDefaults:addShapeDefaults drawingState:stateCopy];

  drawableDefaults2 = [themeCopy drawableDefaults];
  addLineDefaults = [drawableDefaults2 addLineDefaults];
  [self readObjectDefaultsFromParent:defaults defaultsName:"lnDef" toObjectDefaults:addLineDefaults drawingState:stateCopy];

  drawableDefaults3 = [themeCopy drawableDefaults];
  addTextDefaults = [drawableDefaults3 addTextDefaults];
  [self readObjectDefaultsFromParent:defaults defaultsName:"txDef" toObjectDefaults:addTextDefaults drawingState:stateCopy];
}

+ (_xmlNode)childNamed:(const char *)named inParent:(_xmlNode *)parent fallbackParent:(_xmlNode *)fallbackParent drawingState:(id)state
{
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v11 = OCXFindChild(parent, oAXMainNamespace, named);

  if (!v11 || !OCXFirstChild(v11) && !v11->properties)
  {
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    v11 = OCXFindChild(fallbackParent, oAXMainNamespace2, named);
  }

  return v11;
}

+ (void)readDefaultProperties:(_xmlNode *)properties fallback:(_xmlNode *)fallback defaultProperties:(id)defaultProperties drawingState:(id)state
{
  defaultPropertiesCopy = defaultProperties;
  stateCopy = state;
  if (properties)
  {
    fallbackCopy = properties;
  }

  else
  {
    fallbackCopy = fallback;
  }

  v12 = [self childNamed:"spPr" inParent:fallbackCopy fallbackParent:fallback drawingState:stateCopy];
  shapeProperties = [defaultPropertiesCopy shapeProperties];
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v15 = OCXFindChild(fallbackCopy, oAXMainNamespace, "style");

  if (v15)
  {
    v16 = objc_alloc_init(OADShapeStyle);
    [OAXShapeStyle readFromNode:v15 shapeStyle:v16 drawingState:stateCopy];
    styleMatrix = [stateCopy styleMatrix];
    [(OADShapeStyle *)v16 applyToGraphicProperties:shapeProperties styleMatrix:styleMatrix];

    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  [OAXGraphic readPropertiesFromXmlNode:v12 graphicProperties:shapeProperties drawingState:stateCopy];
  v19 = [self childNamed:"bodyPr" inParent:fallbackCopy fallbackParent:fallback drawingState:stateCopy];
  textBodyProperties = [defaultPropertiesCopy textBodyProperties];
  [OAXTextBody readTextBodyProperties:v19 textBodyProperties:textBodyProperties drawingState:stateCopy];
  v21 = [self childNamed:"lstStyle" inParent:fallbackCopy fallbackParent:fallback drawingState:stateCopy];
  textListStyle = [defaultPropertiesCopy textListStyle];
  [OAXTextListStyle readNode:v21 textListStyle:textListStyle state:stateCopy];
  if (v18)
  {
    [(OADShapeStyle *)v18 applyToTextListStyle:textListStyle];
  }
}

@end