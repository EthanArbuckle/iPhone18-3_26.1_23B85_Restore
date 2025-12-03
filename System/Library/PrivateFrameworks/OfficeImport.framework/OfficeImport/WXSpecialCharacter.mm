@interface WXSpecialCharacter
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXSpecialCharacter

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v9 = OCXFindChild(from, wXMainNamespace, "separator");

  if (v9)
  {
    v10 = 3;
  }

  else
  {
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v12 = OCXFindChild(from, wXMainNamespace2, "continuationSeparator");

    if (v12)
    {
      v10 = 4;
    }

    else
    {
      v10 = 0xFFFFLL;
    }
  }

  [toCopy setCharacterType:v10];
}

@end