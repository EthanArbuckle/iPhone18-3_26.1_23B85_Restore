@interface EXPane
+ (id)activePaneTypeEnumMap;
+ (id)edPaneFromXMLPaneElement:(_xmlNode *)element;
+ (id)paneStateEnumMap;
+ (int)edActivePaneEnumFromString:(id)string;
+ (void)activePaneTypeEnumMap;
+ (void)paneStateEnumMap;
@end

@implementation EXPane

+ (id)activePaneTypeEnumMap
{
  {
    +[EXPane activePaneTypeEnumMap];
  }

  if (+[EXPane activePaneTypeEnumMap]::onceToken != -1)
  {
    +[EXPane activePaneTypeEnumMap];
  }

  v2 = +[EXPane activePaneTypeEnumMap]::sActivePaneTypeEnumMap;

  return v2;
}

void __31__EXPane_activePaneTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXPane activePaneTypeEnumMap]::sActivePaneTypeStructs count:4 caseSensitive:1];
  v1 = +[EXPane activePaneTypeEnumMap]::sActivePaneTypeEnumMap;
  +[EXPane activePaneTypeEnumMap]::sActivePaneTypeEnumMap = v0;
}

+ (id)paneStateEnumMap
{
  {
    +[EXPane paneStateEnumMap];
  }

  if (+[EXPane paneStateEnumMap]::onceToken != -1)
  {
    +[EXPane paneStateEnumMap];
  }

  v2 = +[EXPane paneStateEnumMap]::sPaneStateEnumMap;

  return v2;
}

void __26__EXPane_paneStateEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXPane paneStateEnumMap]::sPaneStateStructs count:3 caseSensitive:1];
  v1 = +[EXPane paneStateEnumMap]::sPaneStateEnumMap;
  +[EXPane paneStateEnumMap]::sPaneStateEnumMap = v0;
}

+ (id)edPaneFromXMLPaneElement:(_xmlNode *)element
{
  v5 = +[EDPane pane];
  v20 = 0;
  v6 = CXOptionalStringAttribute(element, CXNoNamespace, "topLeftCell", &v20);
  v7 = v20;
  if (v6)
  {
    v8 = [EXReference edReferenceFromXmlReference:v7];
    [v5 setTopLeftCell:v8];
  }

  v19 = 0.0;
  if (CXOptionalDoubleAttribute(element, CXNoNamespace, "xSplit", &v19))
  {
    [v5 setXSplitPosition:v19];
  }

  v18 = 0.0;
  if (CXOptionalDoubleAttribute(element, CXNoNamespace, "ySplit", &v18))
  {
    [v5 setYSplitPosition:v18];
  }

  v17 = 0;
  v9 = CXOptionalStringAttribute(element, CXNoNamespace, "activePane", &v17);
  v10 = v17;
  if (v9)
  {
    v11 = [self edActivePaneEnumFromString:v10];
  }

  else
  {
    v11 = 3;
  }

  [v5 setActivePane:v11];
  v16 = 0;
  v12 = CXOptionalStringAttribute(element, CXNoNamespace, "state", &v16);
  v13 = v16;
  if (v12)
  {
    paneStateEnumMap = [self paneStateEnumMap];
    [v5 setPaneState:{objc_msgSend(paneStateEnumMap, "valueForString:", v13)}];
  }

  else
  {
    [v5 setPaneState:0];
  }

  return v5;
}

+ (int)edActivePaneEnumFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if (![stringCopy caseInsensitiveCompare:@"bottomRight"])
    {
      v5 = 0;
      goto LABEL_10;
    }

    if (![v4 caseInsensitiveCompare:@"topRight"])
    {
      v5 = 1;
      goto LABEL_10;
    }

    if (![v4 caseInsensitiveCompare:@"bottomLeft"])
    {
      v5 = 2;
      goto LABEL_10;
    }

    [v4 caseInsensitiveCompare:@"topLeft"];
  }

  v5 = 3;
LABEL_10:

  return v5;
}

+ (void)activePaneTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_27, 0, &dword_25D297000);
  }
}

+ (void)paneStateEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_20_0, 0, &dword_25D297000);
  }
}

@end