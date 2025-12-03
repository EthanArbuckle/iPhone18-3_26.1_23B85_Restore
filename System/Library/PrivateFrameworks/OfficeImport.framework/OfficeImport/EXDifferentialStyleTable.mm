@interface EXDifferentialStyleTable
+ (void)readFrom:(_xmlNode *)from state:(id)state;
@end

@implementation EXDifferentialStyleTable

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v12 = stateCopy;
    resources = [stateCopy resources];
    differentialStyles = [resources differentialStyles];

    eXSpreadsheetMLNamespace = [v12 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "dxf");

    while (Child)
    {
      v10 = [EXDifferentialStyle edDifferentialStyleFromXmlDifferentialStyleElement:Child state:v12];
      [differentialStyles addObject:v10];

      eXSpreadsheetMLNamespace2 = [v12 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "dxf");
    }

    stateCopy = v12;
  }
}

@end