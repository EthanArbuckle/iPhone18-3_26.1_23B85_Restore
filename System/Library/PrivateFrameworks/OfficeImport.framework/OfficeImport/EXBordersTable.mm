@interface EXBordersTable
+ (void)readFrom:(_xmlNode *)from state:(id)state;
+ (void)setDefaultWithState:(id)state;
@end

@implementation EXBordersTable

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v12 = stateCopy;
    resources = [stateCopy resources];
    borders = [resources borders];

    eXSpreadsheetMLNamespace = [v12 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "border");

    while (Child)
    {
      v10 = [EXBorders edBordersFromXmlBordersElement:Child state:v12];
      [borders addObject:v10];

      eXSpreadsheetMLNamespace2 = [v12 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "border");
    }

    stateCopy = v12;
  }
}

+ (void)setDefaultWithState:(id)state
{
  resources = [state resources];
  v3 = [EDBorder borderWithType:0 resources:?];
  v4 = [EDBorder borderWithType:0 resources:resources];
  v5 = [EDBorder borderWithType:0 resources:resources];
  v6 = [EDBorder borderWithType:0 resources:resources];
  v7 = [EDBorder borderWithType:0 resources:resources];
  v8 = [EDBorders bordersWithLeft:v3 right:v4 top:v5 bottom:v6 diagonal:v7 resources:resources];
  borders = [resources borders];
  [borders addObject:v8];
}

@end