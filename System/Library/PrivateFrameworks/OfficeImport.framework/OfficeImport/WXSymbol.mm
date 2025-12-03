@interface WXSymbol
+ (void)readFrom:(_xmlNode *)from parentRElement:(_xmlNode *)element to:(id)to state:(id)state;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXSymbol

+ (void)readFrom:(_xmlNode *)from parentRElement:(_xmlNode *)element to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  paragraph = [toCopy paragraph];
  document = [paragraph document];

  wXMainNamespace = [stateCopy WXMainNamespace];
  v14 = CXDefaultStringAttribute(from, wXMainNamespace, "font", 0);

  fontTable = [document fontTable];
  v16 = [fontTable fontWithName:v14];
  [toCopy setFont:v16];

  Prop = xmlGetProp(from, "char");
  if (!Prop)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v22 = 0;
  if (sscanf(Prop, "%04x", &v22) == 1)
  {
    v18 = v22;
  }

  else
  {
    v18 = -3;
    v22 = 65533;
  }

  [toCopy setCharacter:v18];
  free(Prop);
  wXMainNamespace2 = [stateCopy WXMainNamespace];
  v20 = OCXFindChild(element, wXMainNamespace2, "rPr");

  if (v20)
  {
    properties = [toCopy properties];
    [WXCharacterProperties readFrom:v20 to:properties state:stateCopy];
  }
}

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  paragraph = [toCopy paragraph];
  document = [paragraph document];

  properties = [toCopy properties];
  wXMainNamespace = [stateCopy WXMainNamespace];
  v13 = CXDefaultStringAttribute(from, wXMainNamespace, "font", 0);

  fontTable = [document fontTable];
  v15 = [fontTable fontWithName:v13];
  [properties setSymbolFont:v15];

  Prop = xmlGetProp(from, "char");
  v17 = Prop;
  if (Prop)
  {
    v19 = 0;
    if (sscanf(Prop, "%04x", &v19) == 1)
    {
      v18 = v19;
    }

    else
    {
      v18 = -3;
      v19 = 65533;
    }

    [properties setSymbolCharacter:v18];
    free(v17);
  }
}

@end