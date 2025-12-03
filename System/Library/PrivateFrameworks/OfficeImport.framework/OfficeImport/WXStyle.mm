@interface WXStyle
+ (id)styleTypeEnumMap;
+ (id)tableStyleOverrideTypeEnumMap;
+ (void)readFrom:(_xmlNode *)from to:(id)to defaults:(_xmlNode *)defaults state:(id)state;
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

+ (void)readFrom:(_xmlNode *)from to:(id)to defaults:(_xmlNode *)defaults state:(id)state
{
  toCopy = to;
  stateCopy = state;
  styleSheet = [toCopy styleSheet];
  v66 = 0;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v13 = CXOptionalBoolAttribute(from, wXMainNamespace, "default", &v66);
  v14 = v13 && v66;

  if (v14 == 1)
  {
    v65 = 1;
    styleTypeEnumMap = [self styleTypeEnumMap];
    v16 = readEnumProperty<WDStyleType>(from, "type", styleTypeEnumMap, &v65);

    if (v16)
    {
      if (v65 > 2)
      {
        if (v65 == 3)
        {
          [styleSheet setDefaultTableStyle:toCopy];
        }

        else if (v65 == 4)
        {
          [styleSheet setDefaultListStyle:toCopy];
        }
      }

      else if (v65 == 1)
      {
        [styleSheet setDefaultParagraphStyle:toCopy];
      }

      else if (v65 == 2)
      {
        [styleSheet setDefaultCharacterStyle:toCopy];
      }
    }
  }

  wXMainNamespace2 = [stateCopy WXMainNamespace];
  v18 = OCXFindChild(from, wXMainNamespace2, "uiName");

  if (v18 || ([stateCopy WXMainNamespace], v19 = objc_claimAutoreleasedReturnValue(), v18 = OCXFindChild(from, v19, "name"), v19, v18))
  {
    wXMainNamespace3 = [stateCopy WXMainNamespace];
    v64 = 0;
    v21 = CXOptionalStringAttribute(v18, wXMainNamespace3, "val", &v64);
    v22 = v64;

    if (v21)
    {
      [toCopy setName:v22];
    }
  }

  else
  {
    v22 = 0;
  }

  wXMainNamespace4 = [stateCopy WXMainNamespace];
  v24 = OCXFindChild(from, wXMainNamespace4, "aliases");

  if (!v24)
  {
    v27 = v22;
    if (!defaults)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  wXMainNamespace5 = [stateCopy WXMainNamespace];
  v63 = v22;
  v26 = CXOptionalStringAttribute(v24, wXMainNamespace5, "val", &v63);
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
          [styleSheet addStyle:toCopy name:v31];
        }
      }
    }
  }

  if (defaults)
  {
LABEL_28:
    if (v66)
    {
      wXMainNamespace6 = [stateCopy WXMainNamespace];
      v33 = OCXFindChild(defaults, wXMainNamespace6, "rPrDefault");

      if (v33)
      {
        wXMainNamespace7 = [stateCopy WXMainNamespace];
        v35 = OCXFindChild(v33, wXMainNamespace7, "rPr");

        if (v35)
        {
          defaultCharacterProperties = [styleSheet defaultCharacterProperties];
          [WXCharacterProperties readFrom:v35 to:defaultCharacterProperties state:stateCopy];
        }
      }

      wXMainNamespace8 = [stateCopy WXMainNamespace];
      v38 = OCXFindChild(defaults, wXMainNamespace8, "pPrDefault");

      if (v38)
      {
        wXMainNamespace9 = [stateCopy WXMainNamespace];
        v40 = OCXFindChild(v38, wXMainNamespace9, "pPr");

        if (v40)
        {
          defaultParagraphProperties = [styleSheet defaultParagraphProperties];
          [WXParagraphProperties readFrom:v40 to:defaultParagraphProperties readBaseStyle:0 state:stateCopy];
        }
      }
    }
  }

LABEL_35:
  wXMainNamespace10 = [stateCopy WXMainNamespace];
  v43 = OCXFindChild(from, wXMainNamespace10, "rPr");

  if (v43)
  {
    characterProperties = [toCopy characterProperties];
    [WXCharacterProperties readFrom:v43 to:characterProperties state:stateCopy];
  }

  wXMainNamespace11 = [stateCopy WXMainNamespace];
  v46 = OCXFindChild(from, wXMainNamespace11, "pPr");

  if (v46)
  {
    paragraphProperties = [toCopy paragraphProperties];
    [WXParagraphProperties readFrom:v46 to:paragraphProperties readBaseStyle:0 state:stateCopy];
  }

  if ([toCopy type] == 3)
  {
    wXMainNamespace12 = [stateCopy WXMainNamespace];
    v49 = OCXFindChild(from, wXMainNamespace12, "tblPr");

    if (v49)
    {
      tableProperties = [toCopy tableProperties];
      [WXTableProperties readFrom:v49 to:tableProperties state:stateCopy];
    }

    wXMainNamespace13 = [stateCopy WXMainNamespace];
    v52 = OCXFindChild(from, wXMainNamespace13, "trPr");

    if (v52)
    {
      tableRowProperties = [toCopy tableRowProperties];
      [WXTableRowProperties readFrom:v52 to:tableRowProperties state:stateCopy];
    }

    wXMainNamespace14 = [stateCopy WXMainNamespace];
    v55 = OCXFindChild(from, wXMainNamespace14, "tcPr");

    if (v55)
    {
      tableCellProperties = [toCopy tableCellProperties];
      [WXTableCellProperties readFrom:v55 to:tableCellProperties state:stateCopy];
    }

    wXMainNamespace15 = [stateCopy WXMainNamespace];
    Child = OCXFindChild(from, wXMainNamespace15, "tblStylePr");

    while (Child)
    {
      v65 = 0;
      tableStyleOverrideTypeEnumMap = [self tableStyleOverrideTypeEnumMap];
      readEnumProperty<WDTableStylePart>(Child, "type", tableStyleOverrideTypeEnumMap, &v65);

      v60 = [toCopy tableStyleOverrideForPart:v65];
      [WXTableStyleOverride readFrom:Child to:v60 state:stateCopy];
      wXMainNamespace16 = [stateCopy WXMainNamespace];
      Child = OCXFindNextChild(Child, wXMainNamespace16, "tblStylePr");
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