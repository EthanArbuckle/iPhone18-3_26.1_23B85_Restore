@interface EXPageSetup
+ (id)edPageMarginsFrom:(_xmlNode *)a3 state:(id)a4;
+ (id)edPageSetupFrom:(_xmlNode *)a3 state:(id)a4;
+ (id)pageOrderEnumMap;
+ (id)pageOrientationEnumMap;
+ (void)pageOrderEnumMap;
+ (void)pageOrientationEnumMap;
@end

@implementation EXPageSetup

+ (id)pageOrderEnumMap
{
  {
    +[EXPageSetup pageOrderEnumMap];
  }

  if (+[EXPageSetup pageOrderEnumMap]::onceToken != -1)
  {
    +[EXPageSetup pageOrderEnumMap];
  }

  v2 = +[EXPageSetup pageOrderEnumMap]::sPageOrderEnumMap;

  return v2;
}

void __31__EXPageSetup_pageOrderEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXPageSetup pageOrderEnumMap]::sPageOrderStructs count:2 caseSensitive:1];
  v1 = +[EXPageSetup pageOrderEnumMap]::sPageOrderEnumMap;
  +[EXPageSetup pageOrderEnumMap]::sPageOrderEnumMap = v0;
}

+ (id)pageOrientationEnumMap
{
  {
    +[EXPageSetup pageOrientationEnumMap];
  }

  if (+[EXPageSetup pageOrientationEnumMap]::onceToken != -1)
  {
    +[EXPageSetup pageOrientationEnumMap];
  }

  v2 = +[EXPageSetup pageOrientationEnumMap]::sPageOrientationEnumMap;

  return v2;
}

void __37__EXPageSetup_pageOrientationEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXPageSetup pageOrientationEnumMap]::sPageOrientationStructs count:2 caseSensitive:1];
  v1 = +[EXPageSetup pageOrientationEnumMap]::sPageOrientationEnumMap;
  +[EXPageSetup pageOrientationEnumMap]::sPageOrientationEnumMap = v0;
}

+ (id)edPageSetupFrom:(_xmlNode *)a3 state:(id)a4
{
  v6 = [a4 currentSheet];
  v7 = [v6 pageSetup];

  if (v7)
  {
    if (!a3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = +[EDPageSetup pageSetup];
    if (!a3)
    {
      goto LABEL_20;
    }
  }

  v19 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "firstPageNumber", &v19))
  {
    [v7 setFirstPageNumber:v19];
  }

  v18 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "fitToHeight", &v18))
  {
    [v7 setFitToHeight:v18];
  }

  v17 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "fitToWidth", &v17))
  {
    [v7 setFitToWidth:v17];
  }

  v16 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "scale", &v16))
  {
    [v7 setScale:v16];
  }

  v15 = 0;
  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "useFirstPageNumber", &v15))
  {
    [v7 setCustomFirstPageNumber:v15];
  }

  v14 = 0;
  v8 = CXOptionalStringAttribute(a3, CXNoNamespace, "orientation", &v14);
  v9 = v14;
  if (v8)
  {
    [v7 setOrientation:{objc_msgSend(a1, "edPageOrientationFromPageOrientationString:", v9)}];
  }

  v13 = 0;
  v10 = CXOptionalStringAttribute(a3, CXNoNamespace, "pageOrder", &v13);
  v11 = v13;
  if (v10)
  {
    [v7 setOrder:{objc_msgSend(a1, "edPageOrderFromPageOrderString:", v11)}];
  }

LABEL_20:

  return v7;
}

+ (id)edPageMarginsFrom:(_xmlNode *)a3 state:(id)a4
{
  v5 = [a4 currentSheet];
  v6 = [v5 pageSetup];

  if (v6)
  {
    if (!a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = +[EDPageSetup pageSetup];
    if (!a3)
    {
      goto LABEL_17;
    }
  }

  v14 = 0.0;
  if (CXOptionalDoubleAttribute(a3, CXNoNamespace, "left", &v14))
  {
    HIDWORD(v7) = HIDWORD(v14);
    *&v7 = v14;
    [v6 setLeftMargin:v7];
  }

  if (CXOptionalDoubleAttribute(a3, CXNoNamespace, "right", &v14))
  {
    HIDWORD(v8) = HIDWORD(v14);
    *&v8 = v14;
    [v6 setRightMargin:v8];
  }

  if (CXOptionalDoubleAttribute(a3, CXNoNamespace, "top", &v14))
  {
    HIDWORD(v9) = HIDWORD(v14);
    *&v9 = v14;
    [v6 setTopMargin:v9];
  }

  if (CXOptionalDoubleAttribute(a3, CXNoNamespace, "bottom", &v14))
  {
    HIDWORD(v10) = HIDWORD(v14);
    *&v10 = v14;
    [v6 setBottomMargin:v10];
  }

  if (CXOptionalDoubleAttribute(a3, CXNoNamespace, "header", &v14))
  {
    HIDWORD(v11) = HIDWORD(v14);
    *&v11 = v14;
    [v6 setHeaderMargin:v11];
  }

  if (CXOptionalDoubleAttribute(a3, CXNoNamespace, "footer", &v14))
  {
    HIDWORD(v12) = HIDWORD(v14);
    *&v12 = v14;
    [v6 setFooterMargin:v12];
  }

LABEL_17:

  return v6;
}

+ (void)pageOrderEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_26, 0, &dword_25D297000);
  }
}

+ (void)pageOrientationEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_11_0, 0, &dword_25D297000);
  }
}

@end