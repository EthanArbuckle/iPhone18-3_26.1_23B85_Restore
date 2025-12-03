@interface WDCitation
+ (_xmlNode)nodeAtPath:(id)path nodePtr:(_xmlNode *)ptr;
+ (_xmlNode)trimStyle:(_xmlNode *)style;
+ (id)endNoteStringForRefType:(int)type;
+ (id)refTypeEnumMap;
+ (id)stringValueForNodeAtPath:(id)path nodePtr:(_xmlNode *)ptr trimStyle:(BOOL)style;
+ (id)stringValuesForNodesAtPath:(id)path nodePtr:(_xmlNode *)ptr trimStyle:(BOOL)style;
+ (id)subStringOf:(_xmlNode *)of forPath:(id)path;
+ (id)wordRefTypeEnumMap;
+ (id)wordStringForRefType:(int)type;
+ (int)refTypeForWordString:(id)string;
+ (void)refTypeEnumMap;
+ (void)wordRefTypeEnumMap;
- (WDCitation)initWithDocument:(id)document;
- (WDDocument)document;
- (id)description;
@end

@implementation WDCitation

+ (id)wordRefTypeEnumMap
{
  {
    +[WDCitation wordRefTypeEnumMap];
  }

  if (+[WDCitation wordRefTypeEnumMap]::onceToken != -1)
  {
    +[WDCitation wordRefTypeEnumMap];
  }

  v2 = +[WDCitation wordRefTypeEnumMap]::sWordRefTypeEnumMap;

  return v2;
}

void __32__WDCitation_wordRefTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WDCitation wordRefTypeEnumMap]::sWordRefTypeEnumStructs count:17 caseSensitive:1];
  v1 = +[WDCitation wordRefTypeEnumMap]::sWordRefTypeEnumMap;
  +[WDCitation wordRefTypeEnumMap]::sWordRefTypeEnumMap = v0;
}

+ (id)refTypeEnumMap
{
  {
    +[WDCitation refTypeEnumMap];
  }

  if (+[WDCitation refTypeEnumMap]::onceToken != -1)
  {
    +[WDCitation refTypeEnumMap];
  }

  v2 = +[WDCitation refTypeEnumMap]::sRefTypeEnumMap;

  return v2;
}

void __28__WDCitation_refTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WDCitation refTypeEnumMap]::sRefTypeEnumStructs count:47 caseSensitive:1];
  v1 = +[WDCitation refTypeEnumMap]::sRefTypeEnumMap;
  +[WDCitation refTypeEnumMap]::sRefTypeEnumMap = v0;
}

- (WDCitation)initWithDocument:(id)document
{
  documentCopy = document;
  v12.receiver = self;
  v12.super_class = WDCitation;
  v5 = [(WDCitation *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, documentCopy);
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    mAuthors = v6->mAuthors;
    v6->mAuthors = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    mTitles = v6->mTitles;
    v6->mTitles = v9;
  }

  return v6;
}

+ (id)endNoteStringForRefType:(int)type
{
  v3 = *&type;
  refTypeEnumMap = [self refTypeEnumMap];
  v5 = [refTypeEnumMap stringForValue:v3];

  return v5;
}

+ (int)refTypeForWordString:(id)string
{
  stringCopy = string;
  wordRefTypeEnumMap = [self wordRefTypeEnumMap];
  v6 = [wordRefTypeEnumMap valueForString:stringCopy];

  return v6;
}

+ (id)wordStringForRefType:(int)type
{
  v3 = *&type;
  wordRefTypeEnumMap = [self wordRefTypeEnumMap];
  v6 = [wordRefTypeEnumMap stringForValue:v3];

  if (!v6)
  {
    if (v3 > 47)
    {
      if (v3 > 55)
      {
        switch(v3)
        {
          case '8':
            wordRefTypeEnumMap2 = [self wordRefTypeEnumMap];
            v8 = [wordRefTypeEnumMap2 stringForValue:12];
            goto LABEL_21;
          case '9':
            goto LABEL_17;
          case '<':
            goto LABEL_12;
        }
      }

      else
      {
        if ((v3 - 52) < 2)
        {
LABEL_10:
          wordRefTypeEnumMap2 = [self wordRefTypeEnumMap];
          v8 = [wordRefTypeEnumMap2 stringForValue:6];
LABEL_21:
          v6 = v8;

          goto LABEL_22;
        }

        if (v3 == 48)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      if (v3 <= 42)
      {
        if (v3 != 23)
        {
          if (v3 != 28 && v3 != 36)
          {
            goto LABEL_16;
          }

          goto LABEL_10;
        }

LABEL_17:
        wordRefTypeEnumMap2 = [self wordRefTypeEnumMap];
        v8 = [wordRefTypeEnumMap2 stringForValue:19];
        goto LABEL_21;
      }

      if ((v3 - 43) < 3)
      {
LABEL_12:
        wordRefTypeEnumMap2 = [self wordRefTypeEnumMap];
        v8 = [wordRefTypeEnumMap2 stringForValue:202];
        goto LABEL_21;
      }
    }

LABEL_16:
    wordRefTypeEnumMap2 = [self wordRefTypeEnumMap];
    v8 = [wordRefTypeEnumMap2 stringForValue:13];
    goto LABEL_21;
  }

LABEL_22:

  return v6;
}

+ (_xmlNode)nodeAtPath:(id)path nodePtr:(_xmlNode *)ptr
{
  v15 = *MEMORY[0x277D85DE8];
  [path componentsSeparatedByString:@"/"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v5 = v11 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        ptr = CXFirstChildNamed(ptr, [*(*(&v10 + 1) + 8 * v8++) tc_xmlString]);
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return ptr;
}

+ (_xmlNode)trimStyle:(_xmlNode *)style
{
  children = style->children;
  if (!children || !xmlStrEqual("style", children->name))
  {
    return style;
  }

  return children;
}

+ (id)subStringOf:(_xmlNode *)of forPath:(id)path
{
  v5 = [self nodeAtPath:path nodePtr:of];
  xmlSetBufferAllocationScheme(XML_BUFFER_ALLOC_EXACT);
  v6 = xmlBufferCreate();
  xmlNodeDump(v6, of->doc, v5, 0, 0);
  if (xmlBufferLength(v6))
  {
    v7 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:xmlBufferContent(v6)];
  }

  else
  {
    v7 = 0;
  }

  xmlBufferFree(v6);

  return v7;
}

+ (id)stringValueForNodeAtPath:(id)path nodePtr:(_xmlNode *)ptr trimStyle:(BOOL)style
{
  styleCopy = style;
  pathCopy = path;
  v9 = [self nodeAtPath:pathCopy nodePtr:ptr];
  if (!v9)
  {
    goto LABEL_7;
  }

  if (styleCopy)
  {
    v9 = [self trimStyle:v9];
  }

  v10 = *(v9 + 24);
  if (v10)
  {
    if (*(v10 + 8) == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 80);
    }

    v12 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:v11];
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  return v12;
}

+ (id)stringValuesForNodesAtPath:(id)path nodePtr:(_xmlNode *)ptr trimStyle:(BOOL)style
{
  styleCopy = style;
  pathCopy = path;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  array = [self nodeAtPath:stringByDeletingLastPathComponent nodePtr:ptr];

  if (array)
  {
    lastPathComponent = [pathCopy lastPathComponent];
    tc_xmlString = [lastPathComponent tc_xmlString];
    v13 = CXFirstChildNamed(array, tc_xmlString);
    array = [MEMORY[0x277CBEB18] array];
    while (v13)
    {
      if (styleCopy)
      {
        v13 = [self trimStyle:v13];
      }

      children = v13->children;
      if (children->type != XML_ELEMENT_NODE)
      {
        if (children->content)
        {
          v15 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:?];
          [(_xmlNode *)array addObject:v15];
        }
      }

      v13 = CXNextSiblingNamed(v13, tc_xmlString);
    }
  }

  return array;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDCitation;
  v2 = [(WDCitation *)&v4 description];

  return v2;
}

- (WDDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);

  return WeakRetained;
}

+ (void)wordRefTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_47, 0, &dword_25D297000);
  }
}

+ (void)refTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_196_0, 0, &dword_25D297000);
  }
}

@end