@interface EXBorders
+ (id)borderStyleEnumMap;
+ (id)edBorderFromXmlElement:(_xmlNode *)element diagonalType:(int)type state:(id)state;
+ (id)edBordersFromXmlBordersElement:(_xmlNode *)element state:(id)state;
+ (int)edBorderStyleFromXmlBorderStyleString:(id)string;
+ (int)edDiagStyleFromXmlElement:(_xmlNode *)element;
+ (void)borderStyleEnumMap;
@end

@implementation EXBorders

+ (id)borderStyleEnumMap
{
  {
    +[EXBorders borderStyleEnumMap];
  }

  if (+[EXBorders borderStyleEnumMap]::onceToken != -1)
  {
    +[EXBorders borderStyleEnumMap];
  }

  v2 = +[EXBorders borderStyleEnumMap]::sBorderStyleEnumMap;

  return v2;
}

void __31__EXBorders_borderStyleEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXBorders borderStyleEnumMap]::sBorderStyleStructs count:14 caseSensitive:1];
  v1 = +[EXBorders borderStyleEnumMap]::sBorderStyleEnumMap;
  +[EXBorders borderStyleEnumMap]::sBorderStyleEnumMap = v0;
}

+ (id)edBordersFromXmlBordersElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v7 = stateCopy;
  if (element)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v9 = OCXFindChild(element, eXSpreadsheetMLNamespace, "left");

    if (!v9)
    {
      eXSpreadsheetMLNamespace2 = [v7 EXSpreadsheetMLNamespace];
      v9 = OCXFindChild(element, eXSpreadsheetMLNamespace2, "start");
    }

    v34 = [self edBorderFromXmlElement:v9 diagonalType:0 state:v7];
    eXSpreadsheetMLNamespace3 = [v7 EXSpreadsheetMLNamespace];
    v12 = OCXFindChild(element, eXSpreadsheetMLNamespace3, "right");

    if (!v12)
    {
      eXSpreadsheetMLNamespace4 = [v7 EXSpreadsheetMLNamespace];
      v12 = OCXFindChild(element, eXSpreadsheetMLNamespace4, "end");
    }

    v14 = [self edBorderFromXmlElement:v12 diagonalType:0 state:v7];
    eXSpreadsheetMLNamespace5 = [v7 EXSpreadsheetMLNamespace];
    v16 = OCXFindChild(element, eXSpreadsheetMLNamespace5, "top");

    v17 = [self edBorderFromXmlElement:v16 diagonalType:0 state:v7];
    eXSpreadsheetMLNamespace6 = [v7 EXSpreadsheetMLNamespace];
    v19 = OCXFindChild(element, eXSpreadsheetMLNamespace6, "bottom");

    v20 = [self edBorderFromXmlElement:v19 diagonalType:0 state:v7];
    eXSpreadsheetMLNamespace7 = [v7 EXSpreadsheetMLNamespace];
    v22 = OCXFindChild(element, eXSpreadsheetMLNamespace7, "vertical");

    v23 = [self edBorderFromXmlElement:v22 diagonalType:0 state:v7];
    eXSpreadsheetMLNamespace8 = [v7 EXSpreadsheetMLNamespace];
    v25 = OCXFindChild(element, eXSpreadsheetMLNamespace8, "horizontal");

    v26 = [self edBorderFromXmlElement:v25 diagonalType:0 state:v7];
    eXSpreadsheetMLNamespace9 = [v7 EXSpreadsheetMLNamespace];
    v28 = OCXFindChild(element, eXSpreadsheetMLNamespace9, "diagonal");

    if (!v28)
    {
      eXSpreadsheetMLNamespace10 = [v7 EXSpreadsheetMLNamespace];
      v28 = OCXFindChild(element, eXSpreadsheetMLNamespace10, "diag");
    }

    v30 = [self edBorderFromXmlElement:v28 diagonalType:objc_msgSend(self state:{"edDiagStyleFromXmlElement:", element), v7}];
    resources = [v7 resources];
    v32 = [EDBorders bordersWithLeft:v34 right:v14 top:v17 bottom:v20 diagonal:v30 vertical:v23 horizontal:v26 resources:resources];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

+ (id)edBorderFromXmlElement:(_xmlNode *)element diagonalType:(int)type state:(id)state
{
  v5 = *&type;
  stateCopy = state;
  if (element)
  {
    v17 = 0;
    CXOptionalStringAttribute(element, CXNoNamespace, "style", &v17);
    v9 = v17;
    v10 = [self edBorderStyleFromXmlBorderStyleString:v9];
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v12 = OCXFindChild(element, eXSpreadsheetMLNamespace, "color");

    v13 = [EXColorReference edColorReferenceFromXmlColorElement:v12 callerClass:objc_opt_class() state:stateCopy];
    resources = [stateCopy resources];
    v15 = [EDBorder borderWithType:v10 colorReference:v13 diagonalType:v5 resources:resources];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (int)edBorderStyleFromXmlBorderStyleString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    borderStyleEnumMap = [self borderStyleEnumMap];
    v6 = [borderStyleEnumMap valueForString:stringCopy];

    if (v6 == -130883970)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)edDiagStyleFromXmlElement:(_xmlNode *)element
{
  if (!element)
  {
    return 0;
  }

  v7 = 0;
  if (!CXOptionalBoolAttribute(element, CXNoNamespace, "diagonalUp", &v7))
  {
    CXOptionalBoolAttribute(element, CXNoNamespace, "diagUp", &v7);
  }

  v6 = 0;
  if (!CXOptionalBoolAttribute(element, CXNoNamespace, "diagonalDown", &v6))
  {
    CXOptionalBoolAttribute(element, CXNoNamespace, "diagDown", &v6);
  }

  if (v6)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (v7)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

+ (void)borderStyleEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_21, 0, &dword_25D297000);
  }
}

@end