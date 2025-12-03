@interface EXMergeTable
+ (void)readFrom:(_xmlNode *)from state:(id)state;
@end

@implementation EXMergeTable

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "mergeCell");

    if (Child)
    {
      mergedCells = 0;
      do
      {
        if (!mergedCells)
        {
          currentSheet = [v6 currentSheet];
          mergedCells = [currentSheet mergedCells];
        }

        v14 = 0;
        CXOptionalStringAttribute(Child, CXNoNamespace, "ref", &v14);
        v11 = v14;
        v12 = [EXReference edReferenceFromXmlReference:v11];
        [mergedCells addOrEquivalentObject:v12];

        eXSpreadsheetMLNamespace2 = [v6 EXSpreadsheetMLNamespace];
        Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "mergeCell");
      }

      while (Child);
    }
  }
}

@end