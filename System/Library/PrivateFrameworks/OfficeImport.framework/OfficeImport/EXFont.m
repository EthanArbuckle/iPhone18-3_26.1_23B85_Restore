@interface EXFont
+ (id)edFontFromXmlFontElement:(_xmlNode *)a3 inConditionalFormat:(BOOL)a4 returnDefaultIfEmpty:(BOOL)a5 state:(id)a6;
+ (id)underlineEnumMap;
+ (id)vertAlignEnumMap;
+ (int)edScriptFromXmlVertAlignElement:(_xmlNode *)a3;
+ (int)edUnderlineFromXmlUnderlineElement:(_xmlNode *)a3;
+ (void)underlineEnumMap;
+ (void)vertAlignEnumMap;
@end

@implementation EXFont

+ (id)underlineEnumMap
{
  {
    +[EXFont underlineEnumMap];
  }

  if (+[EXFont underlineEnumMap]::once != -1)
  {
    +[EXFont underlineEnumMap];
  }

  v2 = +[EXFont underlineEnumMap]::sUnderlineEnumMap;

  return v2;
}

void __26__EXFont_underlineEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXFont underlineEnumMap]::sUnderlineStructs count:5 caseSensitive:1];
  v1 = +[EXFont underlineEnumMap]::sUnderlineEnumMap;
  +[EXFont underlineEnumMap]::sUnderlineEnumMap = v0;
}

+ (id)vertAlignEnumMap
{
  {
    +[EXFont vertAlignEnumMap];
  }

  if (+[EXFont vertAlignEnumMap]::once != -1)
  {
    +[EXFont vertAlignEnumMap];
  }

  v2 = +[EXFont vertAlignEnumMap]::sVertAlignEnumMap;

  return v2;
}

void __26__EXFont_vertAlignEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXFont vertAlignEnumMap]::sVertAlignStructs count:3 caseSensitive:1];
  v1 = +[EXFont vertAlignEnumMap]::sVertAlignEnumMap;
  +[EXFont vertAlignEnumMap]::sVertAlignEnumMap = v0;
}

+ (id)edFontFromXmlFontElement:(_xmlNode *)a3 inConditionalFormat:(BOOL)a4 returnDefaultIfEmpty:(BOOL)a5 state:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  if (!a3)
  {
    v21 = 0;
    goto LABEL_53;
  }

  v11 = [EDFont alloc];
  v12 = [v10 resources];
  v13 = [(EDFont *)v11 initWithResources:v12];

  v14 = [v10 EXSpreadsheetMLNamespace];
  v15 = OCXFindChild(a3, v14, "name");

  v56 = v6;
  if (!v15)
  {
    v16 = [v10 EXSpreadsheetMLNamespace];
    v15 = OCXFindChild(a3, v16, "font");

    if (!v15)
    {
      v17 = [v10 EXSpreadsheetMLNamespace];
      v15 = OCXFindChild(a3, v17, "rFont");

      if (!v15)
      {
        v19 = 0;
        goto LABEL_9;
      }
    }
  }

  v65 = 0;
  v18 = CXOptionalStringAttribute(v15, CXNoNamespace, "val", &v65);
  v19 = v65;
  if (!v18)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  [(EDFont *)v13 setName:v19];
  v20 = 1;
LABEL_10:
  v64 = 0;
  v22 = [v10 EXSpreadsheetMLNamespace];
  v23 = OCXFindChild(a3, v22, "charset");

  if (v23 && CXOptionalLongAttribute(v23, CXNoNamespace, "val", &v64))
  {
    [(EDFont *)v13 setCharSet:v64];
    v20 = 1;
  }

  v63 = 0;
  v24 = [v10 EXSpreadsheetMLNamespace];
  v25 = OCXFindChild(a3, v24, "family");

  if (v25 && CXOptionalLongAttribute(v25, CXNoNamespace, "val", &v63))
  {
    [(EDFont *)v13 setFamily:v63];
    v20 = 1;
  }

  v62 = 0;
  v26 = [v10 EXSpreadsheetMLNamespace];
  v27 = OCXFindChild(a3, v26, "b");

  if (v27)
  {
    v28 = CXOptionalBoolAttribute(v27, CXNoNamespace, "val", &v62);
    [(EDFont *)v13 setBold:v62 | !v28];
    v20 = 1;
  }

  if ([(EDFont *)v13 isBold])
  {
    [(EDFont *)v13 setWeight:700];
    v20 = 1;
  }

  v61 = 0;
  v29 = [v10 EXSpreadsheetMLNamespace];
  v30 = OCXFindChild(a3, v29, "i");

  if (v30)
  {
    v31 = !CXOptionalLongAttribute(v30, CXNoNamespace, "val", &v61);
    if (v61)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31;
    }

    [(EDFont *)v13 setItalic:v32];
    v20 = 1;
  }

  v60 = 0;
  v33 = [v10 EXSpreadsheetMLNamespace];
  v34 = OCXFindChild(a3, v33, "strike");

  if (v34)
  {
    v35 = !CXOptionalLongAttribute(v34, CXNoNamespace, "val", &v60);
    if (v60)
    {
      v36 = 1;
    }

    else
    {
      v36 = v35;
    }

    [(EDFont *)v13 setStrike:v36];
    v20 = 1;
  }

  v59 = 0;
  v37 = [v10 EXSpreadsheetMLNamespace];
  v38 = OCXFindChild(a3, v37, "shadow");

  if (v38)
  {
    v39 = !CXOptionalLongAttribute(v38, CXNoNamespace, "val", &v59);
    if (v59)
    {
      v40 = 1;
    }

    else
    {
      v40 = v39;
    }

    [(EDFont *)v13 setShadow:v40];
    v20 = 1;
  }

  v58 = 0;
  v41 = [v10 EXSpreadsheetMLNamespace];
  v42 = OCXFindChild(a3, v41, "outline");

  if (v42)
  {
    v43 = !CXOptionalLongAttribute(v42, CXNoNamespace, "val", &v58);
    if (v58)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    [(EDFont *)v13 setOutline:v44];
    v20 = 1;
  }

  v45 = [v10 EXSpreadsheetMLNamespace];
  v46 = OCXFindChild(a3, v45, "color");

  if (!v7 || v46)
  {
    v47 = [EXColorReference edColorReferenceFromXmlColorElement:v46 callerClass:objc_opt_class() state:v10];
    [(EDFont *)v13 setColorReference:v47];

    v20 |= v46 != 0;
  }

  v57 = 0.0;
  v48 = [v10 EXSpreadsheetMLNamespace];
  v49 = OCXFindChild(a3, v48, "sz");

  if (v49 && CXOptionalDoubleAttribute(v49, CXNoNamespace, "val", &v57))
  {
    [(EDFont *)v13 setHeight:(v57 * 20.0)];
    v20 = 1;
  }

  v50 = [v10 EXSpreadsheetMLNamespace];
  v51 = OCXFindChild(a3, v50, "u");

  v52 = [a1 edUnderlineFromXmlUnderlineElement:v51];
  if (v52)
  {
    [(EDFont *)v13 setUnderline:v52];
    v20 = 1;
  }

  v53 = [v10 EXSpreadsheetMLNamespace];
  v54 = OCXFindChild(a3, v53, "vertAlign");

  if (v54)
  {
    -[EDFont setScript:](v13, "setScript:", [a1 edScriptFromXmlVertAlignElement:v54]);
  }

  else if (((v20 | v56) & 1) == 0)
  {
    v21 = 0;
    goto LABEL_52;
  }

  v21 = v13;
LABEL_52:

LABEL_53:

  return v21;
}

+ (int)edScriptFromXmlVertAlignElement:(_xmlNode *)a3
{
  if (!a3)
  {
    return 0;
  }

  v11 = 0;
  v4 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v11);
  v5 = v11;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [a1 vertAlignEnumMap];
    v8 = [v7 valueForString:v5];

    if (v8 == -130883970)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int)edUnderlineFromXmlUnderlineElement:(_xmlNode *)a3
{
  if (!a3)
  {
    return 0;
  }

  v11 = 0;
  v4 = CXOptionalStringAttribute(a3, CXNoNamespace, "val", &v11);
  v5 = v11;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [a1 underlineEnumMap];
    v8 = [v7 valueForString:v5];

    if (v8 == -130883970)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (void)underlineEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_25, 0, &dword_25D297000);
  }
}

+ (void)vertAlignEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_23_0, 0, &dword_25D297000);
  }
}

@end