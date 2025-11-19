@interface EXFill
+ (id)edFillFromXmlFillElement:(_xmlNode *)a3 differentialFill:(BOOL)a4 state:(id)a5;
+ (id)edFillFromXmlFillElement:(_xmlNode *)a3 state:(id)a4;
+ (id)edGradientFillFromXmlElement:(_xmlNode *)a3 state:(id)a4;
+ (id)edPatternFillFromXmlElement:(_xmlNode *)a3 differentialFill:(BOOL)a4 state:(id)a5;
+ (id)edStopFromXmlGradientElement:(_xmlNode *)a3 state:(id)a4;
+ (id)gradientFillTypeEnumMap;
+ (id)patternFillTypeEnumMap;
+ (int)edGradientTypeFromXmlGradientTypeString:(id)a3 state:(id)a4;
+ (int)edPatternTypeFromXmlPatternTypeString:(id)a3;
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

+ (id)edFillFromXmlFillElement:(_xmlNode *)a3 state:(id)a4
{
  v4 = [a1 edFillFromXmlFillElement:a3 differentialFill:0 state:a4];

  return v4;
}

+ (id)edFillFromXmlFillElement:(_xmlNode *)a3 differentialFill:(BOOL)a4 state:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = [v8 EXSpreadsheetMLNamespace];
    v11 = OCXFindChild(a3, v10, "patternFill");

    if (v11)
    {
      v12 = [a1 edPatternFillFromXmlElement:v11 differentialFill:v5 state:v9];
LABEL_6:
      a3 = v12;
      goto LABEL_7;
    }

    v13 = [v9 EXSpreadsheetMLNamespace];
    v14 = OCXFindChild(a3, v13, "gradientFill");

    if (v14)
    {
      v12 = [a1 edGradientFillFromXmlElement:v14 state:v9];
      goto LABEL_6;
    }

    v16 = [v9 EXSpreadsheetMLNamespace];
    a3 = OCXFindChild(a3, v16, "imageFill");

    if (a3)
    {
      v17 = [EDFill alloc];
      v18 = [v9 resources];
      a3 = [(EDFill *)v17 initWithResources:v18];
    }
  }

LABEL_7:

  return a3;
}

+ (id)edPatternFillFromXmlElement:(_xmlNode *)a3 differentialFill:(BOOL)a4 state:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v23 = 0;
    CXOptionalStringAttribute(a3, CXNoNamespace, "patternType", &v23);
    v9 = v23;
    v10 = [a1 edPatternTypeFromXmlPatternTypeString:v9];
    v11 = [v8 EXSpreadsheetMLNamespace];
    v12 = OCXFindChild(a3, v11, "fgColor");

    if (v12)
    {
      v13 = [EXColorReference edColorReferenceFromXmlColorElement:v12 callerClass:objc_opt_class() state:v8];
    }

    else if (a4)
    {
      v13 = 0;
    }

    else
    {
      v15 = [v8 resources];
      v13 = [EDColorReference colorReferenceWithSystemColorID:11 resources:v15];
    }

    v16 = [v8 EXSpreadsheetMLNamespace];
    v17 = OCXFindChild(a3, v16, "bgColor");

    if (v17)
    {
      v18 = [EXColorReference edColorReferenceFromXmlColorElement:v17 callerClass:objc_opt_class() state:v8];
      if (a4 && v9 == 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = v10;
      }

      v19 = v18;
    }

    else if (a4)
    {
      v19 = 0;
    }

    else
    {
      v20 = [v8 resources];
      v19 = [EDColorReference colorReferenceWithSystemColorID:7 resources:v20];
    }

    v21 = [v8 resources];
    v14 = [EDPatternFill patternFillWithType:v10 foreColorReference:v13 backColorReference:v19 resources:v21];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (int)edPatternTypeFromXmlPatternTypeString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 patternFillTypeEnumMap];
    v6 = [v5 valueForString:v4];

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

+ (id)edGradientFillFromXmlElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v23 = 0;
    CXOptionalStringAttribute(a3, CXNoNamespace, "type", &v23);
    v7 = v23;
    v8 = [a1 edGradientTypeFromXmlGradientTypeString:v7 state:v6];
    v22 = 0.0;
    CXOptionalDoubleAttribute(a3, CXNoNamespace, "top", &v22);
    v21 = 0.0;
    CXOptionalDoubleAttribute(a3, CXNoNamespace, "bottom", &v21);
    v20 = 0.0;
    CXOptionalDoubleAttribute(a3, CXNoNamespace, "right", &v20);
    v19 = 0.0;
    CXOptionalDoubleAttribute(a3, CXNoNamespace, "left", &v19);
    v18 = 0.0;
    CXOptionalDoubleAttribute(a3, CXNoNamespace, "degree", &v18);
    v9 = [a1 edStopFromXmlGradientElement:a3 state:v6];
    v10 = v18;
    v11 = v19;
    v13 = v21;
    v12 = v22;
    v14 = v20;
    v15 = [v6 resources];
    v16 = [EDGradientFill gradientWithType:v8 degree:v9 top:v15 bottom:v10 right:v12 left:v13 stops:v14 resources:v11];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (int)edGradientTypeFromXmlGradientTypeString:(id)a3 state:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [a1 gradientFillTypeEnumMap];
    v7 = [v6 valueForString:v5];

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

+ (id)edStopFromXmlGradientElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [v5 EXSpreadsheetMLNamespace];
  Child = OCXFindChild(a3, v7, "stop");

  while (Child)
  {
    v16 = 0.0;
    CXOptionalDoubleAttribute(Child, CXNoNamespace, "position", &v16);
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v10 = [v5 EXSpreadsheetMLNamespace];
    v11 = OCXFindChild(Child, v10, "color");

    v12 = [EXColorReference edColorReferenceFromXmlColorElement:v11 callerClass:objc_opt_class() state:v5];
    v13 = [v12 color];

    [v6 setObject:v13 forKey:v9];
    v14 = [v5 EXSpreadsheetMLNamespace];
    Child = OCXFindNextChild(Child, v14, "stop");
  }

  return v6;
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