@interface WXListTable
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXListTable

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v18 = a4;
  v7 = a5;
  v8 = [v7 WXMainNamespace];
  Child = OCXFindChild(a3, v8, "num");

  while (Child)
  {
    v10 = [v7 WXMainNamespace];
    v11 = CXRequiredLongAttribute(Child, v10, "numId");

    v12 = [v7 WXMainNamespace];
    v13 = OCXFindChild(Child, v12, "abstractNumId");

    v14 = [v7 WXMainNamespace];
    v15 = CXRequiredLongAttribute(v13, v14, "val");

    v16 = [v18 addListWithListId:v11 listDefinitionId:v15];
    [WXList readFrom:Child to:v16 state:v7];
    v17 = [v7 WXMainNamespace];
    Child = OCXFindNextChild(Child, v17, "num");
  }
}

@end