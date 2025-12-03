@interface EXCellFormatTable
+ (void)readCellFormatsFrom:(_xmlNode *)from isStyle:(BOOL)style state:(id)state;
+ (void)readFromCellStylesElement:(_xmlNode *)element state:(id)state;
+ (void)readFromCellXfsElement:(_xmlNode *)element state:(id)state;
+ (void)setDefaultWithState:(id)state;
@end

@implementation EXCellFormatTable

+ (void)readFromCellXfsElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v7 = CXCountChildren(element, eXSpreadsheetMLNamespace, "xf");

    [stateCopy setCellStyleXfsOffset:v7];
    [self readCellFormatsFrom:element isStyle:0 state:stateCopy];
  }
}

+ (void)readFromCellStylesElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  if (element)
  {
    cellStyleXfsOffset = [stateCopy cellStyleXfsOffset];
    resources = [v6 resources];
    styles = [resources styles];

    eXSpreadsheetMLNamespace = [v6 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(element, eXSpreadsheetMLNamespace, "cellStyle");

    while (Child)
    {
      v16 = 0;
      CXOptionalStringAttribute(Child, CXNoNamespace, "name", &v16);
      v12 = v16;
      if (v12)
      {
        v15 = 0;
        CXOptionalLongAttribute(Child, CXNoNamespace, "xfId", &v15);
        v13 = [styles objectAtIndex:v15 + cellStyleXfsOffset];
        [v13 setName:v12];
      }

      eXSpreadsheetMLNamespace2 = [v6 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "cellStyle");
    }
  }
}

+ (void)setDefaultWithState:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  styles = [resources styles];

  [styles setDefaultWorkbookStyleIndex:0];
  resources2 = [stateCopy resources];
  v6 = [EDStyle styleWithResources:resources2];

  [v6 setContentFormatId:0];
  [v6 setFontIndex:0];
  [v6 setFillIndex:0];
  [v6 setBordersIndex:0];
  [v6 setParentIndex:0];
  [styles addObject:v6];
  resources3 = [stateCopy resources];
  v8 = [(EDStyle *)EDNamedStyle styleWithResources:resources3];

  [v8 setContentFormatId:0];
  [v8 setFontIndex:0];
  [v8 setFillIndex:0];
  [v8 setBordersIndex:0];
  [v8 setName:@"Normal"];
  [styles addObject:v8];
}

+ (void)readCellFormatsFrom:(_xmlNode *)from isStyle:(BOOL)style state:(id)state
{
  styleCopy = style;
  stateCopy = state;
  if (from)
  {
    v14 = stateCopy;
    resources = [stateCopy resources];
    styles = [resources styles];

    [styles setDefaultWorkbookStyleIndex:0];
    eXSpreadsheetMLNamespace = [v14 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "xf");

    while (Child)
    {
      v12 = [EXCellFormat edCellFormatFromXmlCellFormatElement:Child isStyle:styleCopy state:v14];
      [styles addObject:v12];

      eXSpreadsheetMLNamespace2 = [v14 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "xf");
    }

    stateCopy = v14;
  }
}

@end