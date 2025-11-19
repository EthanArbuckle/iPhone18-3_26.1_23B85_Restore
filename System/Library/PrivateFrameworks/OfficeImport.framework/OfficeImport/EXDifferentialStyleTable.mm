@interface EXDifferentialStyleTable
+ (void)readFrom:(_xmlNode *)a3 state:(id)a4;
@end

@implementation EXDifferentialStyleTable

+ (void)readFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v12 = v5;
    v6 = [v5 resources];
    v7 = [v6 differentialStyles];

    v8 = [v12 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v8, "dxf");

    while (Child)
    {
      v10 = [EXDifferentialStyle edDifferentialStyleFromXmlDifferentialStyleElement:Child state:v12];
      [v7 addObject:v10];

      v11 = [v12 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v11, "dxf");
    }

    v5 = v12;
  }
}

@end