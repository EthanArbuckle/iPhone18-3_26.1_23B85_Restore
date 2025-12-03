@interface EXStringTable
+ (void)readFromState:(id)state;
+ (void)readStringsFrom:(_xmlNode *)from state:(id)state;
@end

@implementation EXStringTable

+ (void)readFromState:(id)state
{
  stateCopy = state;
  currentPart = [stateCopy currentPart];
  xmlDocument = [currentPart xmlDocument];
  if (!xmlDocument)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v6 = OCXGetRootElement(xmlDocument);
  v7 = v6;
  if (!v6 || !xmlStrEqual(v6->name, "sst") || ([stateCopy EXSpreadsheetMLNamespace], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsNode:", v7), v8, (v9 & 1) == 0))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [self readStringsFrom:v7 state:stateCopy];
}

+ (void)readStringsFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  strings = [resources strings];

  eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
  Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "si");

  while (Child)
  {
    v9 = [EXString edTextFromXmlStringElement:Child state:stateCopy];
    if (v9)
    {
      [strings addObject:v9];
    }

    else
    {
      v10 = [EXString edStringWithRunsFromXmlStringElement:Child state:stateCopy];
      if (v10)
      {
        v9 = v10;
        [strings addObject:?];
      }

      else
      {
        v9 = 0;
      }
    }

    eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "si");
  }
}

@end