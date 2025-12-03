@interface WXListTable
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXListTable

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  Child = OCXFindChild(from, wXMainNamespace, "num");

  while (Child)
  {
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v11 = CXRequiredLongAttribute(Child, wXMainNamespace2, "numId");

    wXMainNamespace3 = [stateCopy WXMainNamespace];
    v13 = OCXFindChild(Child, wXMainNamespace3, "abstractNumId");

    wXMainNamespace4 = [stateCopy WXMainNamespace];
    v15 = CXRequiredLongAttribute(v13, wXMainNamespace4, "val");

    v16 = [toCopy addListWithListId:v11 listDefinitionId:v15];
    [WXList readFrom:Child to:v16 state:stateCopy];
    wXMainNamespace5 = [stateCopy WXMainNamespace];
    Child = OCXFindNextChild(Child, wXMainNamespace5, "num");
  }
}

@end