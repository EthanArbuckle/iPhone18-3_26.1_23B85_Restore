@interface EXFillTable
+ (void)readFrom:(_xmlNode *)a3 state:(id)a4;
+ (void)setDefaultWithState:(id)a3;
@end

@implementation EXFillTable

+ (void)readFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v12 = v5;
    v6 = [v5 resources];
    v7 = [v6 fills];

    v8 = [v12 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v8, "fill");

    while (Child)
    {
      v10 = [EXFill edFillFromXmlFillElement:Child state:v12];
      [v7 addObject:v10];

      v11 = [v12 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, v11, "fill");
    }

    v5 = v12;
  }
}

+ (void)setDefaultWithState:(id)a3
{
  v9 = a3;
  v3 = [v9 resources];
  v4 = [EDPatternFill patternFillWithType:0 foreColorReference:0 backColorReference:0 resources:v3];

  v5 = [v9 resources];
  v6 = [v5 fills];

  [v6 addObject:v4];
  v7 = [v9 resources];
  v8 = [EDPatternFill patternFillWithType:17 foreColorReference:0 backColorReference:0 resources:v7];

  [v6 addObject:v8];
}

@end