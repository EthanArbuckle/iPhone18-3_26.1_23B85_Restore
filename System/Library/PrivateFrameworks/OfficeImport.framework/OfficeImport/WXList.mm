@interface WXList
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXList

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  Child = OCXFindChild(from, wXMainNamespace, "lvlOverride");

  while (Child)
  {
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v11 = CXRequiredLongAttribute(Child, wXMainNamespace2, "ilvl");

    v12 = [toCopy addLevelOverrideWithLevel:v11];
    [WXListLevelOverride readFrom:Child to:v12 state:stateCopy];
    wXMainNamespace3 = [stateCopy WXMainNamespace];
    Child = OCXFindNextChild(Child, wXMainNamespace3, "lvlOverride");
  }
}

@end