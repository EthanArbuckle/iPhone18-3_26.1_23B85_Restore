@interface EXTableStyleTable
+ (void)readFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)readPredefinedTableStylesFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)readPredefinedTableStylesWithState:(id)a3;
@end

@implementation EXTableStyleTable

+ (void)readFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 resources];
    v8 = [v7 tableStyles];

    v9 = [v6 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v9, "tableStyle");

    while (Child)
    {
      v11 = [EXTableStyle edTableStyleFromXmlTableStyleElement:Child state:v6];
      [v8 addObject:v11];

      v12 = [v6 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v12, "tableStyle");
    }

    v18 = 0;
    v13 = CXOptionalStringAttribute(a3, CXNoNamespace, "defaultTableStyle", &v18);
    v14 = v18;
    if (v13)
    {
      [v8 setDefaultTableStyleName:v14];
    }

    v17 = 0;
    v15 = CXOptionalStringAttribute(a3, CXNoNamespace, "defaultPivotStyle", &v17);
    v16 = v17;
    if (v15)
    {
      [v8 setDefaultPivotStyleName:v16];
    }
  }
}

+ (void)readPredefinedTableStylesWithState:(id)a3
{
  v8 = a3;
  if (([v8 isPredefinedTableStylesRead] & 1) == 0)
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

    [a1 readPredefinedTableStylesFrom:v7 state:v8];
    [v8 setPredefinedTableStylesRead:1];
    xmlFreeDoc(v5);
  }
}

+ (void)readPredefinedTableStylesFrom:(_xmlNode *)a3 state:(id)a4
{
  v22 = a4;
  v5 = [v22 workbook];
  v6 = [v22 resources];
  v7 = [v6 tableStyles];

  v8 = OCXFirstChild(a3);
  if (v8)
  {
    do
    {
      v9 = objc_alloc_init(EXReadState);
      v10 = [[EDResources alloc] initWithStringOptimization:0];
      v11 = [v22 resources];
      v12 = [v11 colors];
      [(EDResources *)v10 setColors:v12];

      v13 = [v22 resources];
      v14 = [v13 themes];
      [(EDResources *)v10 setThemes:v14];

      [(EXReadState *)v9 setResources:v10];
      [(EXReadState *)v9 setPredefinedDxfsBeingRead:1];
      v15 = [(EXReadState *)v9 EXSpreadsheetMLNamespace];
      v16 = OCXFindChild(v8, v15, "dxfs");

      [EXDifferentialStyleTable readFrom:v16 state:v9];
      v17 = [(EXReadState *)v9 EXSpreadsheetMLNamespace];
      v18 = OCXFindChild(v8, v17, "tableStyles");

      if (!v18)
      {
        [TCMessageException raise:TCInvalidFileFormatMessage];
      }

      v19 = [(EXReadState *)v9 EXSpreadsheetMLNamespace];
      v20 = OCXFindChild(v18, v19, "tableStyle");

      v21 = [EXTableStyle edTableStyleFromXmlTableStyleElement:v20 state:v9];
      [v7 addObject:v21];

      [v5 addOtherResources:v10];
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