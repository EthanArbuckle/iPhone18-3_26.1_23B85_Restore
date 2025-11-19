@interface WXSpecialCharacter
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXSpecialCharacter

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [v7 WXMainNamespace];
  v9 = OCXFindChild(a3, v8, "separator");

  if (v9)
  {
    v10 = 3;
  }

  else
  {
    v11 = [v7 WXMainNamespace];
    v12 = OCXFindChild(a3, v11, "continuationSeparator");

    if (v12)
    {
      v10 = 4;
    }

    else
    {
      v10 = 0xFFFFLL;
    }
  }

  [v13 setCharacterType:v10];
}

@end