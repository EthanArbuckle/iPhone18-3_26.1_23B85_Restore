@interface WXCitationTable
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXCitationTable

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [v7 WXOOBibliographyNamespace];
  Child = OCXFindChild(a3, v8, "Source");

  while (Child)
  {
    v10 = [v7 WXOOBibliographyNamespace];
    v11 = CXChildDefaultStringContent(Child, v10, "Tag", 0);

    if (v11)
    {
      v12 = [[WDCitation alloc] initWithDocument:v14];
      [WXCitation readFrom:Child to:v12 state:v7];
      [v14 addCitation:v12 forID:v11];
    }

    v13 = [v7 WXOOBibliographyNamespace];
    Child = OCXFindNextChild(Child, v13, "Source");
  }
}

@end