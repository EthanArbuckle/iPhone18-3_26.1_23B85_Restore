@interface WXSymbol
+ (void)readFrom:(_xmlNode *)a3 parentRElement:(_xmlNode *)a4 to:(id)a5 state:(id)a6;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXSymbol

+ (void)readFrom:(_xmlNode *)a3 parentRElement:(_xmlNode *)a4 to:(id)a5 state:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [v9 paragraph];
  v12 = [v11 document];

  v13 = [v10 WXMainNamespace];
  v14 = CXDefaultStringAttribute(a3, v13, "font", 0);

  v15 = [v12 fontTable];
  v16 = [v15 fontWithName:v14];
  [v9 setFont:v16];

  Prop = xmlGetProp(a3, "char");
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

  [v9 setCharacter:v18];
  free(Prop);
  v19 = [v10 WXMainNamespace];
  v20 = OCXFindChild(a4, v19, "rPr");

  if (v20)
  {
    v21 = [v9 properties];
    [WXCharacterProperties readFrom:v20 to:v21 state:v10];
  }
}

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 paragraph];
  v10 = [v9 document];

  v11 = [v7 properties];
  v12 = [v8 WXMainNamespace];
  v13 = CXDefaultStringAttribute(a3, v12, "font", 0);

  v14 = [v10 fontTable];
  v15 = [v14 fontWithName:v13];
  [v11 setSymbolFont:v15];

  Prop = xmlGetProp(a3, "char");
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

    [v11 setSymbolCharacter:v18];
    free(v17);
  }
}

@end