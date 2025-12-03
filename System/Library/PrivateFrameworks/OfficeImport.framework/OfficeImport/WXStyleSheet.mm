@interface WXStyleSheet
+ (id)styleTypeEnumMap;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
+ (void)styleTypeEnumMap;
@end

@implementation WXStyleSheet

+ (id)styleTypeEnumMap
{
  {
    +[WXStyleSheet styleTypeEnumMap];
  }

  if (+[WXStyleSheet styleTypeEnumMap]::onceToken != -1)
  {
    +[WXStyleSheet styleTypeEnumMap];
  }

  v2 = +[WXStyleSheet styleTypeEnumMap]::sStyleTypeEnumMap;

  return v2;
}

void __32__WXStyleSheet_styleTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXStyleSheet styleTypeEnumMap]::sStyleTypeEnumStructs count:4];
  v1 = +[WXStyleSheet styleTypeEnumMap]::sStyleTypeEnumMap;
  +[WXStyleSheet styleTypeEnumMap]::sStyleTypeEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v10 = OCXFindChild(from, wXMainNamespace, "docDefaults");

  wXMainNamespace2 = [stateCopy WXMainNamespace];
  Child = OCXFindChild(from, wXMainNamespace2, "style");

  while (Child)
  {
    wXMainNamespace3 = [stateCopy WXMainNamespace];
    v14 = CXDefaultStringAttribute(Child, wXMainNamespace3, "styleId", 0);

    if (v14)
    {
      v48 = 1;
      styleTypeEnumMap = [self styleTypeEnumMap];
      readEnumProperty<WDStyleType>(Child, "type", styleTypeEnumMap, &v48);

      v16 = [toCopy createStyleWithId:v14 type:v48];
      [WXStyle readFrom:Child to:v16 defaults:v10 state:stateCopy];
    }

    wXMainNamespace4 = [stateCopy WXMainNamespace];
    Child = OCXFindNextChild(Child, wXMainNamespace4, "style");
  }

  wXMainNamespace5 = [stateCopy WXMainNamespace];
  v19 = OCXFindChild(from, wXMainNamespace5, "style");

  if (v19)
  {
    while (1)
    {
      wXMainNamespace6 = [stateCopy WXMainNamespace];
      v21 = CXDefaultStringAttribute(v19, wXMainNamespace6, "styleId", 0);

      if (v21)
      {
        break;
      }

LABEL_28:
      wXMainNamespace7 = [stateCopy WXMainNamespace];
      v19 = OCXFindNextChild(v19, wXMainNamespace7, "style");

      if (!v19)
      {
        goto LABEL_29;
      }
    }

    v22 = [toCopy styleWithId:v21];
    wXMainNamespace8 = [stateCopy WXMainNamespace];
    v24 = OCXFindChild(v19, wXMainNamespace8, "basedOn");

    if (!v24)
    {
LABEL_17:
      v34 = v22;
      wXMainNamespace9 = [stateCopy WXMainNamespace];
      v36 = OCXFindChild(v19, wXMainNamespace9, "next");

      v37 = v34;
      if (!v36)
      {
LABEL_27:
        [v34 setNextStyle:v37];

        goto LABEL_28;
      }

      wXMainNamespace10 = [stateCopy WXMainNamespace];
      v46 = 0;
      v39 = CXOptionalStringAttribute(v36, wXMainNamespace10, "val", &v46);
      v40 = v46;
      v41 = v40;
      if (v40)
      {
        v42 = v39;
      }

      else
      {
        v42 = 0;
      }

      if (v42)
      {
        v43 = [v40 length];

        v37 = v34;
        if (!v43)
        {
LABEL_26:

          goto LABEL_27;
        }

        v37 = [toCopy styleWithId:v41];
        wXMainNamespace10 = v34;
      }

      else
      {
        v37 = v34;
      }

      goto LABEL_26;
    }

    wXMainNamespace11 = [stateCopy WXMainNamespace];
    v47 = 0;
    v26 = CXOptionalStringAttribute(v24, wXMainNamespace11, "val", &v47);
    v27 = v47;
    v28 = v27;
    if (v27)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      v30 = [v27 length];

      if (!v30)
      {
LABEL_16:

        goto LABEL_17;
      }

      wXMainNamespace11 = [toCopy styleWithId:v28];
      [v22 setBaseStyle:wXMainNamespace11];
      wXMainNamespace12 = [stateCopy WXMainNamespace];
      v32 = OCXFindChild(from, wXMainNamespace12, "tblPr");

      if (v32)
      {
        tableProperties = [v22 tableProperties];
        [tableProperties setBaseStyle:wXMainNamespace11];
      }
    }

    goto LABEL_16;
  }

LABEL_29:
}

+ (void)styleTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_43, 0, &dword_25D297000);
  }
}

@end