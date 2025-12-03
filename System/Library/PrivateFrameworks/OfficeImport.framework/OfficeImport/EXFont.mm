@interface EXFont
+ (id)edFontFromXmlFontElement:(_xmlNode *)element inConditionalFormat:(BOOL)format returnDefaultIfEmpty:(BOOL)empty state:(id)state;
+ (id)underlineEnumMap;
+ (id)vertAlignEnumMap;
+ (int)edScriptFromXmlVertAlignElement:(_xmlNode *)element;
+ (int)edUnderlineFromXmlUnderlineElement:(_xmlNode *)element;
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

+ (id)edFontFromXmlFontElement:(_xmlNode *)element inConditionalFormat:(BOOL)format returnDefaultIfEmpty:(BOOL)empty state:(id)state
{
  emptyCopy = empty;
  formatCopy = format;
  stateCopy = state;
  if (!element)
  {
    v21 = 0;
    goto LABEL_53;
  }

  v11 = [EDFont alloc];
  resources = [stateCopy resources];
  v13 = [(EDFont *)v11 initWithResources:resources];

  eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
  v15 = OCXFindChild(element, eXSpreadsheetMLNamespace, "name");

  v56 = emptyCopy;
  if (!v15)
  {
    eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
    v15 = OCXFindChild(element, eXSpreadsheetMLNamespace2, "font");

    if (!v15)
    {
      eXSpreadsheetMLNamespace3 = [stateCopy EXSpreadsheetMLNamespace];
      v15 = OCXFindChild(element, eXSpreadsheetMLNamespace3, "rFont");

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
  eXSpreadsheetMLNamespace4 = [stateCopy EXSpreadsheetMLNamespace];
  v23 = OCXFindChild(element, eXSpreadsheetMLNamespace4, "charset");

  if (v23 && CXOptionalLongAttribute(v23, CXNoNamespace, "val", &v64))
  {
    [(EDFont *)v13 setCharSet:v64];
    v20 = 1;
  }

  v63 = 0;
  eXSpreadsheetMLNamespace5 = [stateCopy EXSpreadsheetMLNamespace];
  v25 = OCXFindChild(element, eXSpreadsheetMLNamespace5, "family");

  if (v25 && CXOptionalLongAttribute(v25, CXNoNamespace, "val", &v63))
  {
    [(EDFont *)v13 setFamily:v63];
    v20 = 1;
  }

  v62 = 0;
  eXSpreadsheetMLNamespace6 = [stateCopy EXSpreadsheetMLNamespace];
  v27 = OCXFindChild(element, eXSpreadsheetMLNamespace6, "b");

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
  eXSpreadsheetMLNamespace7 = [stateCopy EXSpreadsheetMLNamespace];
  v30 = OCXFindChild(element, eXSpreadsheetMLNamespace7, "i");

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
  eXSpreadsheetMLNamespace8 = [stateCopy EXSpreadsheetMLNamespace];
  v34 = OCXFindChild(element, eXSpreadsheetMLNamespace8, "strike");

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
  eXSpreadsheetMLNamespace9 = [stateCopy EXSpreadsheetMLNamespace];
  v38 = OCXFindChild(element, eXSpreadsheetMLNamespace9, "shadow");

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
  eXSpreadsheetMLNamespace10 = [stateCopy EXSpreadsheetMLNamespace];
  v42 = OCXFindChild(element, eXSpreadsheetMLNamespace10, "outline");

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

  eXSpreadsheetMLNamespace11 = [stateCopy EXSpreadsheetMLNamespace];
  v46 = OCXFindChild(element, eXSpreadsheetMLNamespace11, "color");

  if (!formatCopy || v46)
  {
    v47 = [EXColorReference edColorReferenceFromXmlColorElement:v46 callerClass:objc_opt_class() state:stateCopy];
    [(EDFont *)v13 setColorReference:v47];

    v20 |= v46 != 0;
  }

  v57 = 0.0;
  eXSpreadsheetMLNamespace12 = [stateCopy EXSpreadsheetMLNamespace];
  v49 = OCXFindChild(element, eXSpreadsheetMLNamespace12, "sz");

  if (v49 && CXOptionalDoubleAttribute(v49, CXNoNamespace, "val", &v57))
  {
    [(EDFont *)v13 setHeight:(v57 * 20.0)];
    v20 = 1;
  }

  eXSpreadsheetMLNamespace13 = [stateCopy EXSpreadsheetMLNamespace];
  v51 = OCXFindChild(element, eXSpreadsheetMLNamespace13, "u");

  v52 = [self edUnderlineFromXmlUnderlineElement:v51];
  if (v52)
  {
    [(EDFont *)v13 setUnderline:v52];
    v20 = 1;
  }

  eXSpreadsheetMLNamespace14 = [stateCopy EXSpreadsheetMLNamespace];
  v54 = OCXFindChild(element, eXSpreadsheetMLNamespace14, "vertAlign");

  if (v54)
  {
    -[EDFont setScript:](v13, "setScript:", [self edScriptFromXmlVertAlignElement:v54]);
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

+ (int)edScriptFromXmlVertAlignElement:(_xmlNode *)element
{
  if (!element)
  {
    return 0;
  }

  v11 = 0;
  v4 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v11);
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
    vertAlignEnumMap = [self vertAlignEnumMap];
    v8 = [vertAlignEnumMap valueForString:v5];

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

+ (int)edUnderlineFromXmlUnderlineElement:(_xmlNode *)element
{
  if (!element)
  {
    return 0;
  }

  v11 = 0;
  v4 = CXOptionalStringAttribute(element, CXNoNamespace, "val", &v11);
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
    underlineEnumMap = [self underlineEnumMap];
    v8 = [underlineEnumMap valueForString:v5];

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