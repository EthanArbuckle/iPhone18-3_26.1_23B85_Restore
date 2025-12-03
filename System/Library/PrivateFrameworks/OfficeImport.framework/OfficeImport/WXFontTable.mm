@interface WXFontTable
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXFontTable

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  Child = OCXFindChild(from, wXMainNamespace, "font");

  while (Child)
  {
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v11 = CXRequiredStringAttribute(Child, wXMainNamespace2, "name");

    if (v11 && [v11 length])
    {
      v12 = [toCopy fontWithName:v11 create:1];
      [WXFont readFrom:Child to:v12 state:stateCopy];
    }

    wXMainNamespace3 = [stateCopy WXMainNamespace];
    Child = OCXFindNextChild(Child, wXMainNamespace3, "font");
  }
}

@end