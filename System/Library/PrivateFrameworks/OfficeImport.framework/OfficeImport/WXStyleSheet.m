@interface WXStyleSheet
+ (id)styleTypeEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
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

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v45 = a4;
  v8 = a5;
  v9 = [v8 WXMainNamespace];
  v10 = OCXFindChild(a3, v9, "docDefaults");

  v11 = [v8 WXMainNamespace];
  Child = OCXFindChild(a3, v11, "style");

  while (Child)
  {
    v13 = [v8 WXMainNamespace];
    v14 = CXDefaultStringAttribute(Child, v13, "styleId", 0);

    if (v14)
    {
      v48 = 1;
      v15 = [a1 styleTypeEnumMap];
      readEnumProperty<WDStyleType>(Child, "type", v15, &v48);

      v16 = [v45 createStyleWithId:v14 type:v48];
      [WXStyle readFrom:Child to:v16 defaults:v10 state:v8];
    }

    v17 = [v8 WXMainNamespace];
    Child = OCXFindNextChild(Child, v17, "style");
  }

  v18 = [v8 WXMainNamespace];
  v19 = OCXFindChild(a3, v18, "style");

  if (v19)
  {
    while (1)
    {
      v20 = [v8 WXMainNamespace];
      v21 = CXDefaultStringAttribute(v19, v20, "styleId", 0);

      if (v21)
      {
        break;
      }

LABEL_28:
      v44 = [v8 WXMainNamespace];
      v19 = OCXFindNextChild(v19, v44, "style");

      if (!v19)
      {
        goto LABEL_29;
      }
    }

    v22 = [v45 styleWithId:v21];
    v23 = [v8 WXMainNamespace];
    v24 = OCXFindChild(v19, v23, "basedOn");

    if (!v24)
    {
LABEL_17:
      v34 = v22;
      v35 = [v8 WXMainNamespace];
      v36 = OCXFindChild(v19, v35, "next");

      v37 = v34;
      if (!v36)
      {
LABEL_27:
        [v34 setNextStyle:v37];

        goto LABEL_28;
      }

      v38 = [v8 WXMainNamespace];
      v46 = 0;
      v39 = CXOptionalStringAttribute(v36, v38, "val", &v46);
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

        v37 = [v45 styleWithId:v41];
        v38 = v34;
      }

      else
      {
        v37 = v34;
      }

      goto LABEL_26;
    }

    v25 = [v8 WXMainNamespace];
    v47 = 0;
    v26 = CXOptionalStringAttribute(v24, v25, "val", &v47);
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

      v25 = [v45 styleWithId:v28];
      [v22 setBaseStyle:v25];
      v31 = [v8 WXMainNamespace];
      v32 = OCXFindChild(a3, v31, "tblPr");

      if (v32)
      {
        v33 = [v22 tableProperties];
        [v33 setBaseStyle:v25];
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