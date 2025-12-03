@interface EXFillTable
+ (void)readFrom:(_xmlNode *)from state:(id)state;
+ (void)setDefaultWithState:(id)state;
@end

@implementation EXFillTable

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v12 = stateCopy;
    resources = [stateCopy resources];
    fills = [resources fills];

    eXSpreadsheetMLNamespace = [v12 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "fill");

    while (Child)
    {
      v10 = [EXFill edFillFromXmlFillElement:Child state:v12];
      [fills addObject:v10];

      eXSpreadsheetMLNamespace2 = [v12 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "fill");
    }

    stateCopy = v12;
  }
}

+ (void)setDefaultWithState:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  v4 = [EDPatternFill patternFillWithType:0 foreColorReference:0 backColorReference:0 resources:resources];

  resources2 = [stateCopy resources];
  fills = [resources2 fills];

  [fills addObject:v4];
  resources3 = [stateCopy resources];
  v8 = [EDPatternFill patternFillWithType:17 foreColorReference:0 backColorReference:0 resources:resources3];

  [fills addObject:v8];
}

@end