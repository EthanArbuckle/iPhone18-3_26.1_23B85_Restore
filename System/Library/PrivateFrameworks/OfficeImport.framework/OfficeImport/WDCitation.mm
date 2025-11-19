@interface WDCitation
+ (_xmlNode)nodeAtPath:(id)a3 nodePtr:(_xmlNode *)a4;
+ (_xmlNode)trimStyle:(_xmlNode *)a3;
+ (id)endNoteStringForRefType:(int)a3;
+ (id)refTypeEnumMap;
+ (id)stringValueForNodeAtPath:(id)a3 nodePtr:(_xmlNode *)a4 trimStyle:(BOOL)a5;
+ (id)stringValuesForNodesAtPath:(id)a3 nodePtr:(_xmlNode *)a4 trimStyle:(BOOL)a5;
+ (id)subStringOf:(_xmlNode *)a3 forPath:(id)a4;
+ (id)wordRefTypeEnumMap;
+ (id)wordStringForRefType:(int)a3;
+ (int)refTypeForWordString:(id)a3;
+ (void)refTypeEnumMap;
+ (void)wordRefTypeEnumMap;
- (WDCitation)initWithDocument:(id)a3;
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

- (WDCitation)initWithDocument:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WDCitation;
  v5 = [(WDCitation *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, v4);
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    mAuthors = v6->mAuthors;
    v6->mAuthors = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    mTitles = v6->mTitles;
    v6->mTitles = v9;
  }

  return v6;
}

+ (id)endNoteStringForRefType:(int)a3
{
  v3 = *&a3;
  v4 = [a1 refTypeEnumMap];
  v5 = [v4 stringForValue:v3];

  return v5;
}

+ (int)refTypeForWordString:(id)a3
{
  v4 = a3;
  v5 = [a1 wordRefTypeEnumMap];
  v6 = [v5 valueForString:v4];

  return v6;
}

+ (id)wordStringForRefType:(int)a3
{
  v3 = *&a3;
  v5 = [a1 wordRefTypeEnumMap];
  v6 = [v5 stringForValue:v3];

  if (!v6)
  {
    if (v3 > 47)
    {
      if (v3 > 55)
      {
        switch(v3)
        {
          case '8':
            v7 = [a1 wordRefTypeEnumMap];
            v8 = [v7 stringForValue:12];
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
          v7 = [a1 wordRefTypeEnumMap];
          v8 = [v7 stringForValue:6];
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
        v7 = [a1 wordRefTypeEnumMap];
        v8 = [v7 stringForValue:19];
        goto LABEL_21;
      }

      if ((v3 - 43) < 3)
      {
LABEL_12:
        v7 = [a1 wordRefTypeEnumMap];
        v8 = [v7 stringForValue:202];
        goto LABEL_21;
      }
    }

LABEL_16:
    v7 = [a1 wordRefTypeEnumMap];
    v8 = [v7 stringForValue:13];
    goto LABEL_21;
  }

LABEL_22:

  return v6;
}

+ (_xmlNode)nodeAtPath:(id)a3 nodePtr:(_xmlNode *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  [a3 componentsSeparatedByString:@"/"];
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

        a4 = CXFirstChildNamed(a4, [*(*(&v10 + 1) + 8 * v8++) tc_xmlString]);
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return a4;
}

+ (_xmlNode)trimStyle:(_xmlNode *)a3
{
  children = a3->children;
  if (!children || !xmlStrEqual("style", children->name))
  {
    return a3;
  }

  return children;
}

+ (id)subStringOf:(_xmlNode *)a3 forPath:(id)a4
{
  v5 = [a1 nodeAtPath:a4 nodePtr:a3];
  xmlSetBufferAllocationScheme(XML_BUFFER_ALLOC_EXACT);
  v6 = xmlBufferCreate();
  xmlNodeDump(v6, a3->doc, v5, 0, 0);
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

+ (id)stringValueForNodeAtPath:(id)a3 nodePtr:(_xmlNode *)a4 trimStyle:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [a1 nodeAtPath:v8 nodePtr:a4];
  if (!v9)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v9 = [a1 trimStyle:v9];
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

+ (id)stringValuesForNodesAtPath:(id)a3 nodePtr:(_xmlNode *)a4 trimStyle:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [v8 stringByDeletingLastPathComponent];
  v10 = [a1 nodeAtPath:v9 nodePtr:a4];

  if (v10)
  {
    v11 = [v8 lastPathComponent];
    v12 = [v11 tc_xmlString];
    v13 = CXFirstChildNamed(v10, v12);
    v10 = [MEMORY[0x277CBEB18] array];
    while (v13)
    {
      if (v5)
      {
        v13 = [a1 trimStyle:v13];
      }

      children = v13->children;
      if (children->type != XML_ELEMENT_NODE)
      {
        if (children->content)
        {
          v15 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:?];
          [(_xmlNode *)v10 addObject:v15];
        }
      }

      v13 = CXNextSiblingNamed(v13, v12);
    }
  }

  return v10;
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