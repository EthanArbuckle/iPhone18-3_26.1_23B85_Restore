@interface EXStringTable
+ (void)readFromState:(id)a3;
+ (void)readStringsFrom:(_xmlNode *)a3 state:(id)a4;
@end

@implementation EXStringTable

+ (void)readFromState:(id)a3
{
  v10 = a3;
  v4 = [v10 currentPart];
  v5 = [v4 xmlDocument];
  if (!v5)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v6 = OCXGetRootElement(v5);
  v7 = v6;
  if (!v6 || !xmlStrEqual(v6->name, "sst") || ([v10 EXSpreadsheetMLNamespace], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsNode:", v7), v8, (v9 & 1) == 0))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [a1 readStringsFrom:v7 state:v10];
}

+ (void)readStringsFrom:(_xmlNode *)a3 state:(id)a4
{
  v12 = a4;
  v5 = [v12 resources];
  v6 = [v5 strings];

  v7 = [v12 EXSpreadsheetMLNamespace];
  Child = OCXFindChild(a3, v7, "si");

  while (Child)
  {
    v9 = [EXString edTextFromXmlStringElement:Child state:v12];
    if (v9)
    {
      [v6 addObject:v9];
    }

    else
    {
      v10 = [EXString edStringWithRunsFromXmlStringElement:Child state:v12];
      if (v10)
      {
        v9 = v10;
        [v6 addObject:?];
      }

      else
      {
        v9 = 0;
      }
    }

    v11 = [v12 EXSpreadsheetMLNamespace];
    Child = OCXFindNextChild(Child, v11, "si");
  }
}

@end