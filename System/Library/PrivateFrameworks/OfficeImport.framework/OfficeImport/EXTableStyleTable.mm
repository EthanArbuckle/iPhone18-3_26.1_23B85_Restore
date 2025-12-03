@interface EXTableStyleTable
+ (void)readFrom:(_xmlNode *)from state:(id)state;
+ (void)readPredefinedTableStylesFrom:(_xmlNode *)from state:(id)state;
+ (void)readPredefinedTableStylesWithState:(id)state;
@end

@implementation EXTableStyleTable

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  if (from)
  {
    resources = [stateCopy resources];
    tableStyles = [resources tableStyles];

    eXSpreadsheetMLNamespace = [v6 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "tableStyle");

    while (Child)
    {
      v11 = [EXTableStyle edTableStyleFromXmlTableStyleElement:Child state:v6];
      [tableStyles addObject:v11];

      eXSpreadsheetMLNamespace2 = [v6 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "tableStyle");
    }

    v18 = 0;
    v13 = CXOptionalStringAttribute(from, CXNoNamespace, "defaultTableStyle", &v18);
    v14 = v18;
    if (v13)
    {
      [tableStyles setDefaultTableStyleName:v14];
    }

    v17 = 0;
    v15 = CXOptionalStringAttribute(from, CXNoNamespace, "defaultPivotStyle", &v17);
    v16 = v17;
    if (v15)
    {
      [tableStyles setDefaultPivotStyleName:v16];
    }
  }
}

+ (void)readPredefinedTableStylesWithState:(id)state
{
  stateCopy = state;
  if (([stateCopy isPredefinedTableStylesRead] & 1) == 0)
  {
    v4 = [TCXmlUtilities bundlePathForXmlResource:@"EXPredefinedTableStyleSheet"];
    v5 = sfaxmlParseFile([v4 fileSystemRepresentation]);
    if (!v5)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v6 = OCXGetRootElement(v5);
    v7 = v6;
    if (!v6 || !xmlStrEqual(v6->name, "predefinedTableStyleSheet"))
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [self readPredefinedTableStylesFrom:v7 state:stateCopy];
    [stateCopy setPredefinedTableStylesRead:1];
    xmlFreeDoc(v5);
  }
}

+ (void)readPredefinedTableStylesFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  workbook = [stateCopy workbook];
  resources = [stateCopy resources];
  tableStyles = [resources tableStyles];

  v8 = OCXFirstChild(from);
  if (v8)
  {
    do
    {
      v9 = objc_alloc_init(EXReadState);
      v10 = [[EDResources alloc] initWithStringOptimization:0];
      resources2 = [stateCopy resources];
      colors = [resources2 colors];
      [(EDResources *)v10 setColors:colors];

      resources3 = [stateCopy resources];
      themes = [resources3 themes];
      [(EDResources *)v10 setThemes:themes];

      [(EXReadState *)v9 setResources:v10];
      [(EXReadState *)v9 setPredefinedDxfsBeingRead:1];
      eXSpreadsheetMLNamespace = [(EXReadState *)v9 EXSpreadsheetMLNamespace];
      v16 = OCXFindChild(v8, eXSpreadsheetMLNamespace, "dxfs");

      [EXDifferentialStyleTable readFrom:v16 state:v9];
      eXSpreadsheetMLNamespace2 = [(EXReadState *)v9 EXSpreadsheetMLNamespace];
      v18 = OCXFindChild(v8, eXSpreadsheetMLNamespace2, "tableStyles");

      if (!v18)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      eXSpreadsheetMLNamespace3 = [(EXReadState *)v9 EXSpreadsheetMLNamespace];
      v20 = OCXFindChild(v18, eXSpreadsheetMLNamespace3, "tableStyle");

      v21 = [EXTableStyle edTableStyleFromXmlTableStyleElement:v20 state:v9];
      [tableStyles addObject:v21];

      [workbook addOtherResources:v10];
      v8 = OCXNextSibling(v8);
    }

    while (v8);
  }

  else
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }
}

@end