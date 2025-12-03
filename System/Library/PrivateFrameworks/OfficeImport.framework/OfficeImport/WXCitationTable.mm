@interface WXCitationTable
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXCitationTable

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXOOBibliographyNamespace = [stateCopy WXOOBibliographyNamespace];
  Child = OCXFindChild(from, wXOOBibliographyNamespace, "Source");

  while (Child)
  {
    wXOOBibliographyNamespace2 = [stateCopy WXOOBibliographyNamespace];
    v11 = CXChildDefaultStringContent(Child, wXOOBibliographyNamespace2, "Tag", 0);

    if (v11)
    {
      v12 = [[WDCitation alloc] initWithDocument:toCopy];
      [WXCitation readFrom:Child to:v12 state:stateCopy];
      [toCopy addCitation:v12 forID:v11];
    }

    wXOOBibliographyNamespace3 = [stateCopy WXOOBibliographyNamespace];
    Child = OCXFindNextChild(Child, wXOOBibliographyNamespace3, "Source");
  }
}

@end