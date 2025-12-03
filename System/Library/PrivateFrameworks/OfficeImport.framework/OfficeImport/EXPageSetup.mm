@interface EXPageSetup
+ (id)edPageMarginsFrom:(_xmlNode *)from state:(id)state;
+ (id)edPageSetupFrom:(_xmlNode *)from state:(id)state;
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

+ (id)edPageSetupFrom:(_xmlNode *)from state:(id)state
{
  currentSheet = [state currentSheet];
  pageSetup = [currentSheet pageSetup];

  if (pageSetup)
  {
    if (!from)
    {
      goto LABEL_20;
    }
  }

  else
  {
    pageSetup = +[EDPageSetup pageSetup];
    if (!from)
    {
      goto LABEL_20;
    }
  }

  v19 = 0;
  if (CXOptionalLongAttribute(from, CXNoNamespace, "firstPageNumber", &v19))
  {
    [pageSetup setFirstPageNumber:v19];
  }

  v18 = 0;
  if (CXOptionalLongAttribute(from, CXNoNamespace, "fitToHeight", &v18))
  {
    [pageSetup setFitToHeight:v18];
  }

  v17 = 0;
  if (CXOptionalLongAttribute(from, CXNoNamespace, "fitToWidth", &v17))
  {
    [pageSetup setFitToWidth:v17];
  }

  v16 = 0;
  if (CXOptionalLongAttribute(from, CXNoNamespace, "scale", &v16))
  {
    [pageSetup setScale:v16];
  }

  v15 = 0;
  if (CXOptionalBoolAttribute(from, CXNoNamespace, "useFirstPageNumber", &v15))
  {
    [pageSetup setCustomFirstPageNumber:v15];
  }

  v14 = 0;
  v8 = CXOptionalStringAttribute(from, CXNoNamespace, "orientation", &v14);
  v9 = v14;
  if (v8)
  {
    [pageSetup setOrientation:{objc_msgSend(self, "edPageOrientationFromPageOrientationString:", v9)}];
  }

  v13 = 0;
  v10 = CXOptionalStringAttribute(from, CXNoNamespace, "pageOrder", &v13);
  v11 = v13;
  if (v10)
  {
    [pageSetup setOrder:{objc_msgSend(self, "edPageOrderFromPageOrderString:", v11)}];
  }

LABEL_20:

  return pageSetup;
}

+ (id)edPageMarginsFrom:(_xmlNode *)from state:(id)state
{
  currentSheet = [state currentSheet];
  pageSetup = [currentSheet pageSetup];

  if (pageSetup)
  {
    if (!from)
    {
      goto LABEL_17;
    }
  }

  else
  {
    pageSetup = +[EDPageSetup pageSetup];
    if (!from)
    {
      goto LABEL_17;
    }
  }

  v14 = 0.0;
  if (CXOptionalDoubleAttribute(from, CXNoNamespace, "left", &v14))
  {
    HIDWORD(v7) = HIDWORD(v14);
    *&v7 = v14;
    [pageSetup setLeftMargin:v7];
  }

  if (CXOptionalDoubleAttribute(from, CXNoNamespace, "right", &v14))
  {
    HIDWORD(v8) = HIDWORD(v14);
    *&v8 = v14;
    [pageSetup setRightMargin:v8];
  }

  if (CXOptionalDoubleAttribute(from, CXNoNamespace, "top", &v14))
  {
    HIDWORD(v9) = HIDWORD(v14);
    *&v9 = v14;
    [pageSetup setTopMargin:v9];
  }

  if (CXOptionalDoubleAttribute(from, CXNoNamespace, "bottom", &v14))
  {
    HIDWORD(v10) = HIDWORD(v14);
    *&v10 = v14;
    [pageSetup setBottomMargin:v10];
  }

  if (CXOptionalDoubleAttribute(from, CXNoNamespace, "header", &v14))
  {
    HIDWORD(v11) = HIDWORD(v14);
    *&v11 = v14;
    [pageSetup setHeaderMargin:v11];
  }

  if (CXOptionalDoubleAttribute(from, CXNoNamespace, "footer", &v14))
  {
    HIDWORD(v12) = HIDWORD(v14);
    *&v12 = v14;
    [pageSetup setFooterMargin:v12];
  }

LABEL_17:

  return pageSetup;
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