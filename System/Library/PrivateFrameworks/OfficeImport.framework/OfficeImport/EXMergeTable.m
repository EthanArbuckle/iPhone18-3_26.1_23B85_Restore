@interface EXMergeTable
+ (void)readFrom:(_xmlNode *)a3 state:(id)a4;
@end

@implementation EXMergeTable

+ (void)readFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 EXSpreadsheetMLNamespace];
    Child = OCXFindChild(a3, v7, "mergeCell");

    if (Child)
    {
      v9 = 0;
      do
      {
        if (!v9)
        {
          v10 = [v6 currentSheet];
          v9 = [v10 mergedCells];
        }

        v14 = 0;
        CXOptionalStringAttribute(Child, CXNoNamespace, "ref", &v14);
        v11 = v14;
        v12 = [EXReference edReferenceFromXmlReference:v11];
        [v9 addOrEquivalentObject:v12];

        v13 = [v6 EXSpreadsheetMLNamespace];
        Child = OCXFindNextChild(Child, v13, "mergeCell");
      }

      while (Child);
    }
  }
}

@end