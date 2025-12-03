@interface EXFill
+ (id)edFillFromXmlFillElement:(_xmlNode *)element differentialFill:(BOOL)fill state:(id)state;
+ (id)edFillFromXmlFillElement:(_xmlNode *)element state:(id)state;
+ (id)edGradientFillFromXmlElement:(_xmlNode *)element state:(id)state;
+ (id)edPatternFillFromXmlElement:(_xmlNode *)element differentialFill:(BOOL)fill state:(id)state;
+ (id)edStopFromXmlGradientElement:(_xmlNode *)element state:(id)state;
+ (id)gradientFillTypeEnumMap;
+ (id)patternFillTypeEnumMap;
+ (int)edGradientTypeFromXmlGradientTypeString:(id)string state:(id)state;
+ (int)edPatternTypeFromXmlPatternTypeString:(id)string;
+ (void)gradientFillTypeEnumMap;
+ (void)patternFillTypeEnumMap;
@end

@implementation EXFill

+ (id)patternFillTypeEnumMap
{
  {
    +[EXFill patternFillTypeEnumMap];
  }

  if (+[EXFill patternFillTypeEnumMap]::once != -1)
  {
    +[EXFill patternFillTypeEnumMap];
  }

  v2 = +[EXFill patternFillTypeEnumMap]::sPatternFillTypeEnumMap;

  return v2;
}

void __32__EXFill_patternFillTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXFill patternFillTypeEnumMap]::sPatternFillTypeStructs count:19 caseSensitive:1];
  v1 = +[EXFill patternFillTypeEnumMap]::sPatternFillTypeEnumMap;
  +[EXFill patternFillTypeEnumMap]::sPatternFillTypeEnumMap = v0;
}

+ (id)gradientFillTypeEnumMap
{
  {
    +[EXFill gradientFillTypeEnumMap];
  }

  if (+[EXFill gradientFillTypeEnumMap]::once != -1)
  {
    +[EXFill gradientFillTypeEnumMap];
  }

  v2 = +[EXFill gradientFillTypeEnumMap]::sGradientFillTypeEnumMap;

  return v2;
}

void __33__EXFill_gradientFillTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXFill gradientFillTypeEnumMap]::sGradientFillTypeStructs count:2 caseSensitive:1];
  v1 = +[EXFill gradientFillTypeEnumMap]::sGradientFillTypeEnumMap;
  +[EXFill gradientFillTypeEnumMap]::sGradientFillTypeEnumMap = v0;
}

+ (id)edFillFromXmlFillElement:(_xmlNode *)element state:(id)state
{
  v4 = [self edFillFromXmlFillElement:element differentialFill:0 state:state];

  return v4;
}

+ (id)edFillFromXmlFillElement:(_xmlNode *)element differentialFill:(BOOL)fill state:(id)state
{
  fillCopy = fill;
  stateCopy = state;
  v9 = stateCopy;
  if (element)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v11 = OCXFindChild(element, eXSpreadsheetMLNamespace, "patternFill");

    if (v11)
    {
      v12 = [self edPatternFillFromXmlElement:v11 differentialFill:fillCopy state:v9];
LABEL_6:
      element = v12;
      goto LABEL_7;
    }

    eXSpreadsheetMLNamespace2 = [v9 EXSpreadsheetMLNamespace];
    v14 = OCXFindChild(element, eXSpreadsheetMLNamespace2, "gradientFill");

    if (v14)
    {
      v12 = [self edGradientFillFromXmlElement:v14 state:v9];
      goto LABEL_6;
    }

    eXSpreadsheetMLNamespace3 = [v9 EXSpreadsheetMLNamespace];
    element = OCXFindChild(element, eXSpreadsheetMLNamespace3, "imageFill");

    if (element)
    {
      v17 = [EDFill alloc];
      resources = [v9 resources];
      element = [(EDFill *)v17 initWithResources:resources];
    }
  }

LABEL_7:

  return element;
}

+ (id)edPatternFillFromXmlElement:(_xmlNode *)element differentialFill:(BOOL)fill state:(id)state
{
  stateCopy = state;
  if (element)
  {
    v23 = 0;
    CXOptionalStringAttribute(element, CXNoNamespace, "patternType", &v23);
    v9 = v23;
    v10 = [self edPatternTypeFromXmlPatternTypeString:v9];
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v12 = OCXFindChild(element, eXSpreadsheetMLNamespace, "fgColor");

    if (v12)
    {
      v13 = [EXColorReference edColorReferenceFromXmlColorElement:v12 callerClass:objc_opt_class() state:stateCopy];
    }

    else if (fill)
    {
      v13 = 0;
    }

    else
    {
      resources = [stateCopy resources];
      v13 = [EDColorReference colorReferenceWithSystemColorID:11 resources:resources];
    }

    eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
    v17 = OCXFindChild(element, eXSpreadsheetMLNamespace2, "bgColor");

    if (v17)
    {
      v18 = [EXColorReference edColorReferenceFromXmlColorElement:v17 callerClass:objc_opt_class() state:stateCopy];
      if (fill && v9 == 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = v10;
      }

      v19 = v18;
    }

    else if (fill)
    {
      v19 = 0;
    }

    else
    {
      resources2 = [stateCopy resources];
      v19 = [EDColorReference colorReferenceWithSystemColorID:7 resources:resources2];
    }

    resources3 = [stateCopy resources];
    v14 = [EDPatternFill patternFillWithType:v10 foreColorReference:v13 backColorReference:v19 resources:resources3];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (int)edPatternTypeFromXmlPatternTypeString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    patternFillTypeEnumMap = [self patternFillTypeEnumMap];
    v6 = [patternFillTypeEnumMap valueForString:stringCopy];

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

+ (id)edGradientFillFromXmlElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    v23 = 0;
    CXOptionalStringAttribute(element, CXNoNamespace, "type", &v23);
    v7 = v23;
    v8 = [self edGradientTypeFromXmlGradientTypeString:v7 state:stateCopy];
    v22 = 0.0;
    CXOptionalDoubleAttribute(element, CXNoNamespace, "top", &v22);
    v21 = 0.0;
    CXOptionalDoubleAttribute(element, CXNoNamespace, "bottom", &v21);
    v20 = 0.0;
    CXOptionalDoubleAttribute(element, CXNoNamespace, "right", &v20);
    v19 = 0.0;
    CXOptionalDoubleAttribute(element, CXNoNamespace, "left", &v19);
    v18 = 0.0;
    CXOptionalDoubleAttribute(element, CXNoNamespace, "degree", &v18);
    v9 = [self edStopFromXmlGradientElement:element state:stateCopy];
    v10 = v18;
    v11 = v19;
    v13 = v21;
    v12 = v22;
    v14 = v20;
    resources = [stateCopy resources];
    v16 = [EDGradientFill gradientWithType:v8 degree:v9 top:resources bottom:v10 right:v12 left:v13 stops:v14 resources:v11];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (int)edGradientTypeFromXmlGradientTypeString:(id)string state:(id)state
{
  stringCopy = string;
  if (stringCopy)
  {
    gradientFillTypeEnumMap = [self gradientFillTypeEnumMap];
    v7 = [gradientFillTypeEnumMap valueForString:stringCopy];

    if (v7 == -130883970)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)edStopFromXmlGradientElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
  Child = OCXFindChild(element, eXSpreadsheetMLNamespace, "stop");

  while (Child)
  {
    v16 = 0.0;
    CXOptionalDoubleAttribute(Child, CXNoNamespace, "position", &v16);
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
    v11 = OCXFindChild(Child, eXSpreadsheetMLNamespace2, "color");

    v12 = [EXColorReference edColorReferenceFromXmlColorElement:v11 callerClass:objc_opt_class() state:stateCopy];
    color = [v12 color];

    [dictionary setObject:color forKey:v9];
    eXSpreadsheetMLNamespace3 = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace3, "stop");
  }

  return dictionary;
}

+ (void)patternFillTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_24, 0, &dword_25D297000);
  }
}

+ (void)gradientFillTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_62_0, 0, &dword_25D297000);
  }
}

@end