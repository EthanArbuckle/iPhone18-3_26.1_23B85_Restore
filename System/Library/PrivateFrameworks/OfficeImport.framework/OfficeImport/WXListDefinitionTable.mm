@interface WXListDefinitionTable
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXListDefinitionTable

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  Child = OCXFindChild(from, wXMainNamespace, "abstractNum");

  while (Child)
  {
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v11 = CXRequiredLongAttribute(Child, wXMainNamespace2, "abstractNumId");

    wXMainNamespace3 = [stateCopy WXMainNamespace];
    v13 = OCXFindChild(Child, wXMainNamespace3, "styleLink");

    if (v13)
    {
      wXMainNamespace4 = [stateCopy WXMainNamespace];
      v15 = CXDefaultStringAttribute(v13, wXMainNamespace4, "val", 0);
    }

    else
    {
      v15 = 0;
    }

    v16 = [toCopy addDefinitionWithDefinitionId:v11 styleId:v15];
    [WXListDefinition readFrom:Child to:v16 state:stateCopy];
    wXMainNamespace5 = [stateCopy WXMainNamespace];
    Child = OCXFindNextChild(Child, wXMainNamespace5, "abstractNum");
  }
}

@end