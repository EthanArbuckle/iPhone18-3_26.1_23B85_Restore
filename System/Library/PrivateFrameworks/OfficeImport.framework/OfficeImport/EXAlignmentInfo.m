@interface EXAlignmentInfo
+ (id)edAlignmentInfoFromVmlAlignmentInfoElement:(_xmlNode *)a3 state:(id)a4;
+ (id)edAlignmentInfoFromXmlAlignmentInfoElement:(_xmlNode *)a3 state:(id)a4;
+ (id)horizontalAlignmentEnumMap;
+ (id)verticalAlignmentEnumMap;
+ (int)edHorizontalAlignFromHorizontalAlignString:(id)a3;
+ (int)edVerticalAlignFromVerticalAlignString:(id)a3;
+ (void)horizontalAlignmentEnumMap;
+ (void)verticalAlignmentEnumMap;
@end

@implementation EXAlignmentInfo

+ (id)horizontalAlignmentEnumMap
{
  {
    +[EXAlignmentInfo horizontalAlignmentEnumMap];
  }

  if (+[EXAlignmentInfo horizontalAlignmentEnumMap]::once != -1)
  {
    +[EXAlignmentInfo horizontalAlignmentEnumMap];
  }

  v2 = +[EXAlignmentInfo horizontalAlignmentEnumMap]::sHorizontalAlignmentEnumMap;

  return v2;
}

void __45__EXAlignmentInfo_horizontalAlignmentEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXAlignmentInfo horizontalAlignmentEnumMap]::sHorizontalAlignmentStructs count:7 caseSensitive:1];
  v1 = +[EXAlignmentInfo horizontalAlignmentEnumMap]::sHorizontalAlignmentEnumMap;
  +[EXAlignmentInfo horizontalAlignmentEnumMap]::sHorizontalAlignmentEnumMap = v0;
}

+ (id)verticalAlignmentEnumMap
{
  {
    +[EXAlignmentInfo verticalAlignmentEnumMap];
  }

  if (+[EXAlignmentInfo verticalAlignmentEnumMap]::once != -1)
  {
    +[EXAlignmentInfo verticalAlignmentEnumMap];
  }

  v2 = +[EXAlignmentInfo verticalAlignmentEnumMap]::sVerticalAlignmentEnumMap;

  return v2;
}

void __43__EXAlignmentInfo_verticalAlignmentEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXAlignmentInfo verticalAlignmentEnumMap]::sVerticalAlignmentStructs count:5 caseSensitive:1];
  v1 = +[EXAlignmentInfo verticalAlignmentEnumMap]::sVerticalAlignmentEnumMap;
  +[EXAlignmentInfo verticalAlignmentEnumMap]::sVerticalAlignmentEnumMap = v0;
}

+ (id)edAlignmentInfoFromXmlAlignmentInfoElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = [EDAlignmentInfo alignmentInfo:a3];
  if (a3)
  {
    v16 = 0;
    v7 = CXOptionalStringAttribute(a3, CXNoNamespace, "horizontal", &v16);
    v8 = v16;
    if (v7)
    {
      [v6 setHorizontalAlignment:{objc_msgSend(a1, "edHorizontalAlignFromHorizontalAlignString:", v8)}];
    }

    v15 = 0;
    v9 = CXOptionalStringAttribute(a3, CXNoNamespace, "vertical", &v15);
    v10 = v15;
    if (v9)
    {
      [v6 setVerticalAlignment:{objc_msgSend(a1, "edVerticalAlignFromVerticalAlignString:", v10)}];
    }

    v14 = 0;
    if (CXOptionalUnsignedLongAttribute(a3, CXNoNamespace, "indent", &v14))
    {
      [v6 setIndent:v14];
    }

    v13 = 0;
    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "wrapText", &v13))
    {
      [v6 setTextWrapped:v13];
    }

    v12 = 0;
    if (CXOptionalUnsignedLongAttribute(a3, CXNoNamespace, "textRotation", &v12))
    {
      [v6 setTextRotation:v12];
    }
  }

  return v6;
}

+ (id)edAlignmentInfoFromVmlAlignmentInfoElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = [EDAlignmentInfo alignmentInfo:a3];
  if (a3)
  {
    v7 = OCXFindChild(a3, EXVmlNamespace, "TextHAlign");
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v7];
      [v6 setHorizontalAlignment:{objc_msgSend(a1, "edHorizontalAlignFromHorizontalAlignString:", v8)}];
    }

    v9 = OCXFindChild(a3, EXVmlNamespace, "TextVAlign");
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v9];
      [v6 setVerticalAlignment:{objc_msgSend(a1, "edVerticalAlignFromVerticalAlignString:", v10)}];
    }
  }

  return v6;
}

+ (int)edHorizontalAlignFromHorizontalAlignString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 caseInsensitiveCompare:@"general"])
  {
    if (![v4 caseInsensitiveCompare:@"left"])
    {
      v5 = 1;
      goto LABEL_10;
    }

    if (![v4 caseInsensitiveCompare:@"center"])
    {
      v5 = 2;
      goto LABEL_10;
    }

    if (![v4 caseInsensitiveCompare:@"centerContinuous"])
    {
      v5 = 6;
      goto LABEL_10;
    }

    if (![v4 caseInsensitiveCompare:@"right"])
    {
      v5 = 3;
      goto LABEL_10;
    }

    if (![v4 caseInsensitiveCompare:@"justify"])
    {
      v5 = 5;
      goto LABEL_10;
    }

    if (![v4 caseInsensitiveCompare:@"distributed"])
    {
      v5 = 7;
      goto LABEL_10;
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (int)edVerticalAlignFromVerticalAlignString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 caseInsensitiveCompare:@"top"])
  {
    if (![v4 caseInsensitiveCompare:@"center"])
    {
      v5 = 1;
      goto LABEL_8;
    }

    if (![v4 caseInsensitiveCompare:@"bottom"])
    {
      v5 = 2;
      goto LABEL_8;
    }

    if (![v4 caseInsensitiveCompare:@"justify"])
    {
      v5 = 3;
      goto LABEL_8;
    }

    if (![v4 caseInsensitiveCompare:@"distributed"])
    {
      v5 = 4;
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (void)horizontalAlignmentEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_20, 0, &dword_25D297000);
  }
}

+ (void)verticalAlignmentEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_26_0, 0, &dword_25D297000);
  }
}

@end