@interface WXStyle
+ (id)styleTypeEnumMap;
+ (id)tableStyleOverrideTypeEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 defaults:(_xmlNode *)a5 state:(id)a6;
+ (void)styleTypeEnumMap;
+ (void)tableStyleOverrideTypeEnumMap;
@end

@implementation WXStyle

+ (id)styleTypeEnumMap
{
  {
    +[WXStyle styleTypeEnumMap];
  }

  if (+[WXStyle styleTypeEnumMap]::onceToken != -1)
  {
    +[WXStyle styleTypeEnumMap];
  }

  v2 = +[WXStyle styleTypeEnumMap]::sStyleTypeEnumMap;

  return v2;
}

void __27__WXStyle_styleTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXStyle styleTypeEnumMap]::sStyleTypeEnumStructs count:4];
  v1 = +[WXStyle styleTypeEnumMap]::sStyleTypeEnumMap;
  +[WXStyle styleTypeEnumMap]::sStyleTypeEnumMap = v0;
}

+ (id)tableStyleOverrideTypeEnumMap
{
  {
    +[WXStyle tableStyleOverrideTypeEnumMap];
  }

  if (+[WXStyle tableStyleOverrideTypeEnumMap]::onceToken != -1)
  {
    +[WXStyle tableStyleOverrideTypeEnumMap];
  }

  v2 = +[WXStyle tableStyleOverrideTypeEnumMap]::sTableStyleOverrideTypeEnumMap;

  return v2;
}

void __40__WXStyle_tableStyleOverrideTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXStyle tableStyleOverrideTypeEnumMap]::sTableStyleOverrideTypeEnumStructs count:12 caseSensitive:1];
  v1 = +[WXStyle tableStyleOverrideTypeEnumMap]::sTableStyleOverrideTypeEnumMap;
  +[WXStyle tableStyleOverrideTypeEnumMap]::sTableStyleOverrideTypeEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 defaults:(_xmlNode *)a5 state:(id)a6
{
  v10 = a4;
  v11 = a6;
  v62 = [v10 styleSheet];
  v66 = 0;
  v12 = [v11 WXMainNamespace];
  v13 = CXOptionalBoolAttribute(a3, v12, "default", &v66);
  v14 = v13 && v66;

  if (v14 == 1)
  {
    v65 = 1;
    v15 = [a1 styleTypeEnumMap];
    v16 = readEnumProperty<WDStyleType>(a3, "type", v15, &v65);

    if (v16)
    {
      if (v65 > 2)
      {
        if (v65 == 3)
        {
          [v62 setDefaultTableStyle:v10];
        }

        else if (v65 == 4)
        {
          [v62 setDefaultListStyle:v10];
        }
      }

      else if (v65 == 1)
      {
        [v62 setDefaultParagraphStyle:v10];
      }

      else if (v65 == 2)
      {
        [v62 setDefaultCharacterStyle:v10];
      }
    }
  }

  v17 = [v11 WXMainNamespace];
  v18 = OCXFindChild(a3, v17, "uiName");

  if (v18 || ([v11 WXMainNamespace], v19 = objc_claimAutoreleasedReturnValue(), v18 = OCXFindChild(a3, v19, "name"), v19, v18))
  {
    v20 = [v11 WXMainNamespace];
    v64 = 0;
    v21 = CXOptionalStringAttribute(v18, v20, "val", &v64);
    v22 = v64;

    if (v21)
    {
      [v10 setName:v22];
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = [v11 WXMainNamespace];
  v24 = OCXFindChild(a3, v23, "aliases");

  if (!v24)
  {
    v27 = v22;
    if (!a5)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  v25 = [v11 WXMainNamespace];
  v63 = v22;
  v26 = CXOptionalStringAttribute(v24, v25, "val", &v63);
  v27 = v63;

  if (v26)
  {
    v28 = [v27 componentsSeparatedByString:{@", "}];
    v29 = [v28 count];
    if (v29)
    {
      for (i = 0; i != v29; ++i)
      {
        v31 = [v28 objectAtIndex:i];
        if ([v31 length])
        {
          [v62 addStyle:v10 name:v31];
        }
      }
    }
  }

  if (a5)
  {
LABEL_28:
    if (v66)
    {
      v32 = [v11 WXMainNamespace];
      v33 = OCXFindChild(a5, v32, "rPrDefault");

      if (v33)
      {
        v34 = [v11 WXMainNamespace];
        v35 = OCXFindChild(v33, v34, "rPr");

        if (v35)
        {
          v36 = [v62 defaultCharacterProperties];
          [WXCharacterProperties readFrom:v35 to:v36 state:v11];
        }
      }

      v37 = [v11 WXMainNamespace];
      v38 = OCXFindChild(a5, v37, "pPrDefault");

      if (v38)
      {
        v39 = [v11 WXMainNamespace];
        v40 = OCXFindChild(v38, v39, "pPr");

        if (v40)
        {
          v41 = [v62 defaultParagraphProperties];
          [WXParagraphProperties readFrom:v40 to:v41 readBaseStyle:0 state:v11];
        }
      }
    }
  }

LABEL_35:
  v42 = [v11 WXMainNamespace];
  v43 = OCXFindChild(a3, v42, "rPr");

  if (v43)
  {
    v44 = [v10 characterProperties];
    [WXCharacterProperties readFrom:v43 to:v44 state:v11];
  }

  v45 = [v11 WXMainNamespace];
  v46 = OCXFindChild(a3, v45, "pPr");

  if (v46)
  {
    v47 = [v10 paragraphProperties];
    [WXParagraphProperties readFrom:v46 to:v47 readBaseStyle:0 state:v11];
  }

  if ([v10 type] == 3)
  {
    v48 = [v11 WXMainNamespace];
    v49 = OCXFindChild(a3, v48, "tblPr");

    if (v49)
    {
      v50 = [v10 tableProperties];
      [WXTableProperties readFrom:v49 to:v50 state:v11];
    }

    v51 = [v11 WXMainNamespace];
    v52 = OCXFindChild(a3, v51, "trPr");

    if (v52)
    {
      v53 = [v10 tableRowProperties];
      [WXTableRowProperties readFrom:v52 to:v53 state:v11];
    }

    v54 = [v11 WXMainNamespace];
    v55 = OCXFindChild(a3, v54, "tcPr");

    if (v55)
    {
      v56 = [v10 tableCellProperties];
      [WXTableCellProperties readFrom:v55 to:v56 state:v11];
    }

    v57 = [v11 WXMainNamespace];
    Child = OCXFindChild(a3, v57, "tblStylePr");

    while (Child)
    {
      v65 = 0;
      v59 = [a1 tableStyleOverrideTypeEnumMap];
      readEnumProperty<WDTableStylePart>(Child, "type", v59, &v65);

      v60 = [v10 tableStyleOverrideForPart:v65];
      [WXTableStyleOverride readFrom:Child to:v60 state:v11];
      v61 = [v11 WXMainNamespace];
      Child = OCXFindNextChild(Child, v61, "tblStylePr");
    }
  }
}

+ (void)styleTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_42, 0, &dword_25D297000);
  }
}

+ (void)tableStyleOverrideTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_47_1, 0, &dword_25D297000);
  }
}

@end