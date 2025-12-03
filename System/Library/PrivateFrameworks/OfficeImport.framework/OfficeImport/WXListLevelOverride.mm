@interface WXListLevelOverride
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXListLevelOverride

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  v15 = 0;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v10 = OCXFindChild(from, wXMainNamespace, "startOverride");

  wXMainNamespace2 = [stateCopy WXMainNamespace];
  LODWORD(v10) = CXOptionalLongAttribute(v10, wXMainNamespace2, "val", &v15);

  if (v10)
  {
    [toCopy setStartNumber:v15];
  }

  wXMainNamespace3 = [stateCopy WXMainNamespace];
  v13 = OCXFindChild(from, wXMainNamespace3, "lvl");

  if (v13)
  {
    mutableListLevel = [toCopy mutableListLevel];
    [WXListLevel readFrom:v13 to:mutableListLevel state:stateCopy];
  }
}

@end