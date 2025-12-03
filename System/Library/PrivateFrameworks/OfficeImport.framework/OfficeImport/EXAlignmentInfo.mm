@interface EXAlignmentInfo
+ (id)edAlignmentInfoFromVmlAlignmentInfoElement:(_xmlNode *)element state:(id)state;
+ (id)edAlignmentInfoFromXmlAlignmentInfoElement:(_xmlNode *)element state:(id)state;
+ (id)horizontalAlignmentEnumMap;
+ (id)verticalAlignmentEnumMap;
+ (int)edHorizontalAlignFromHorizontalAlignString:(id)string;
+ (int)edVerticalAlignFromVerticalAlignString:(id)string;
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

+ (id)edAlignmentInfoFromXmlAlignmentInfoElement:(_xmlNode *)element state:(id)state
{
  v6 = [EDAlignmentInfo alignmentInfo:element];
  if (element)
  {
    v16 = 0;
    v7 = CXOptionalStringAttribute(element, CXNoNamespace, "horizontal", &v16);
    v8 = v16;
    if (v7)
    {
      [v6 setHorizontalAlignment:{objc_msgSend(self, "edHorizontalAlignFromHorizontalAlignString:", v8)}];
    }

    v15 = 0;
    v9 = CXOptionalStringAttribute(element, CXNoNamespace, "vertical", &v15);
    v10 = v15;
    if (v9)
    {
      [v6 setVerticalAlignment:{objc_msgSend(self, "edVerticalAlignFromVerticalAlignString:", v10)}];
    }

    v14 = 0;
    if (CXOptionalUnsignedLongAttribute(element, CXNoNamespace, "indent", &v14))
    {
      [v6 setIndent:v14];
    }

    v13 = 0;
    if (CXOptionalBoolAttribute(element, CXNoNamespace, "wrapText", &v13))
    {
      [v6 setTextWrapped:v13];
    }

    v12 = 0;
    if (CXOptionalUnsignedLongAttribute(element, CXNoNamespace, "textRotation", &v12))
    {
      [v6 setTextRotation:v12];
    }
  }

  return v6;
}

+ (id)edAlignmentInfoFromVmlAlignmentInfoElement:(_xmlNode *)element state:(id)state
{
  v6 = [EDAlignmentInfo alignmentInfo:element];
  if (element)
  {
    v7 = OCXFindChild(element, EXVmlNamespace, "TextHAlign");
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v7];
      [v6 setHorizontalAlignment:{objc_msgSend(self, "edHorizontalAlignFromHorizontalAlignString:", v8)}];
    }

    v9 = OCXFindChild(element, EXVmlNamespace, "TextVAlign");
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v9];
      [v6 setVerticalAlignment:{objc_msgSend(self, "edVerticalAlignFromVerticalAlignString:", v10)}];
    }
  }

  return v6;
}

+ (int)edHorizontalAlignFromHorizontalAlignString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && [stringCopy caseInsensitiveCompare:@"general"])
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

+ (int)edVerticalAlignFromVerticalAlignString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && [stringCopy caseInsensitiveCompare:@"top"])
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