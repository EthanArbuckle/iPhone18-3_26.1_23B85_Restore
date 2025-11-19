@interface WXFontTable
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXFontTable

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [v7 WXMainNamespace];
  Child = OCXFindChild(a3, v8, "font");

  while (Child)
  {
    v10 = [v7 WXMainNamespace];
    v11 = CXRequiredStringAttribute(Child, v10, "name");

    if (v11 && [v11 length])
    {
      v12 = [v14 fontWithName:v11 create:1];
      [WXFont readFrom:Child to:v12 state:v7];
    }

    v13 = [v7 WXMainNamespace];
    Child = OCXFindNextChild(Child, v13, "font");
  }
}

@end