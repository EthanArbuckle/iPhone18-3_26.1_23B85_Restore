@interface EXContentFormatTable
+ (void)readFrom:(_xmlNode *)from state:(id)state;
@end

@implementation EXContentFormatTable

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v12 = stateCopy;
    resources = [stateCopy resources];
    contentFormats = [resources contentFormats];

    eXSpreadsheetMLNamespace = [v12 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "numFmt");

    while (Child)
    {
      v10 = [EXContentFormat edContentFormatFromXmlContentFormatElement:Child];
      [contentFormats addOrEquivalentObject:v10];

      eXSpreadsheetMLNamespace2 = [v12 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "numFmt");
    }

    stateCopy = v12;
  }
}

@end