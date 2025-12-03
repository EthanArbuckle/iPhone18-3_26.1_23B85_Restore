@interface WDStyleSheet
- (WDDocument)document;
- (WDStyleSheet)initWithDocument:(id)document;
- (id)allAliasesForStyleId:(id)id name:(id)name;
- (id)createStyleWithId:(id)id type:(int)type;
- (id)createStyleWithName:(id)name type:(int)type;
- (id)description;
- (id)paragraphStyleWithStartingName:(id)name;
- (id)styleIdForName:(id)name;
- (id)styleIdToName:(id)name;
- (id)styleNameToUniqueId:(id)id;
- (id)styleWithId:(id)id;
- (id)styleWithName:(id)name;
- (void)addStyle:(id)style name:(id)name;
- (void)createDefaultStyles;
- (void)initializeDefaultProperties;
- (void)removeStyleWithId:(id)id;
- (void)setName:(id)name forId:(id)id;
@end

@implementation WDStyleSheet

- (void)initializeDefaultProperties
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);
  fontTable = [WeakRetained fontTable];
  v31 = [fontTable fontWithName:@"Times New Roman" create:1];

  v5 = objc_loadWeakRetained(&self->mDocument);
  fontTable2 = [v5 fontTable];
  v7 = [fontTable2 fontWithName:@"Times New Roman" create:1];

  v8 = objc_loadWeakRetained(&self->mDocument);
  fontTable3 = [v8 fontTable];
  v10 = [fontTable3 fontWithName:@"Arial Unicode MS" create:1];

  v11 = [WDCharacterProperties alloc];
  document = [(WDStyleSheet *)self document];
  v13 = [(WDCharacterProperties *)v11 initWithDocument:document];
  mDefaultCharacterProperties = self->mDefaultCharacterProperties;
  self->mDefaultCharacterProperties = v13;

  [(WDCharacterProperties *)self->mDefaultCharacterProperties setResolveMode:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setBold:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setBoldForBiText:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setItalic:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setItalicForBiText:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setOutline:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setShadow:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setEmbossed:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setImprint:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setUnderline:0];
  v15 = self->mDefaultCharacterProperties;
  v16 = +[OITSUColor clearColor];
  [(WDCharacterProperties *)v15 setUnderlineColor:v16];

  [(WDCharacterProperties *)self->mDefaultCharacterProperties setStrikeThrough:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setDoubleStrikeThrough:0];
  mutableBorder = [(WDCharacterProperties *)self->mDefaultCharacterProperties mutableBorder];
  v18 = self->mDefaultCharacterProperties;
  v19 = +[OITSUColor clearColor];
  [(WDCharacterProperties *)v18 setColor:v19];

  [(WDCharacterProperties *)self->mDefaultCharacterProperties setHighlightColor:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setSmallCaps:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setCaps:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setHidden:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setSpacing:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setTextScale:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setPosition:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setVerticalAlign:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setFontSize:20];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setFontSizeForBiText:20];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setKerning:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setTextScale:100];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setRightToLeft:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setFont:v31];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setFarEastFont:v10];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setExtendedFont:v7];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setSymbolFont:v31];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setLanguageForDefaultText:0xFFFFLL];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setLanguageForFarEast:0xFFFFLL];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setLanguageForBiText:0xFFFFLL];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setDeleted:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setEdited:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setFormattingChanged:0];
  [(WDCharacterProperties *)self->mDefaultCharacterProperties setResolveMode:2];
  v20 = [WDParagraphProperties alloc];
  document2 = [(WDStyleSheet *)self document];
  v22 = [(WDParagraphProperties *)v20 initWithDocument:document2];
  mDefaultParagraphProperties = self->mDefaultParagraphProperties;
  self->mDefaultParagraphProperties = v22;

  [(WDParagraphProperties *)self->mDefaultParagraphProperties setResolveMode:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setPageBreakBefore:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setListLevel:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setListIndex:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setDropCap:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setWidth:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setHeight:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setHeightRule:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setVerticalSpace:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setHorizontalSpace:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setWrap:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setVerticalAnchor:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setHorizontalPosition:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setVerticalPosition:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setAnchorLock:0];
  mutableTopBorder = [(WDParagraphProperties *)self->mDefaultParagraphProperties mutableTopBorder];
  mutableLeftBorder = [(WDParagraphProperties *)self->mDefaultParagraphProperties mutableLeftBorder];
  mutableBottomBorder = [(WDParagraphProperties *)self->mDefaultParagraphProperties mutableBottomBorder];
  mutableRightBorder = [(WDParagraphProperties *)self->mDefaultParagraphProperties mutableRightBorder];
  mutableBetweenBorder = [(WDParagraphProperties *)self->mDefaultParagraphProperties mutableBetweenBorder];
  mutableBarBorder = [(WDParagraphProperties *)self->mDefaultParagraphProperties mutableBarBorder];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setSpaceBefore:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setSpaceBeforeAuto:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setSpaceAfter:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setSpaceAfterAuto:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setLineSpacing:240];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setLineSpacingRule:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setLeftIndent:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setRightIndent:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setFirstLineIndent:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setJustification:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setOutlineLevel:9];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setSuppressLineNumbers:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setSuppressAutoHyphens:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setWidowControl:1];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setKeepLinesTogether:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setKeepNextParagraphTogether:0];
  mutableShading = [(WDParagraphProperties *)self->mDefaultParagraphProperties mutableShading];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setTabStopAddedCount:0];
  [(WDParagraphProperties *)self->mDefaultParagraphProperties setTabStopDeletedPositionCount:0];
}

- (WDDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);

  return WeakRetained;
}

- (WDStyleSheet)initWithDocument:(id)document
{
  documentCopy = document;
  v14.receiver = self;
  v14.super_class = WDStyleSheet;
  v5 = [(WDStyleSheet *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, documentCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mStyleDictionary = v6->mStyleDictionary;
    v6->mStyleDictionary = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mStylesInOrder = v6->mStylesInOrder;
    v6->mStylesInOrder = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mIdDictionaryForName = v6->mIdDictionaryForName;
    v6->mIdDictionaryForName = v11;

    [(WDStyleSheet *)v6 initializeDefaultProperties];
  }

  return v6;
}

- (id)styleWithId:(id)id
{
  v3 = [(NSMutableDictionary *)self->mStyleDictionary objectForKey:id];

  return v3;
}

- (id)styleWithName:(id)name
{
  v4 = [(WDStyleSheet *)self styleIdForName:name];
  v5 = [(WDStyleSheet *)self styleWithId:v4];

  return v5;
}

- (id)paragraphStyleWithStartingName:(id)name
{
  nameCopy = name;
  lowercaseString = [nameCopy lowercaseString];
  keyEnumerator = [(NSMutableDictionary *)self->mIdDictionaryForName keyEnumerator];
  while (1)
  {
    nextObject = [keyEnumerator nextObject];
    v8 = nextObject;
    if (!nextObject)
    {
      v9 = 0;
      goto LABEL_10;
    }

    if ([nextObject tc_startsWithString:lowercaseString])
    {
      break;
    }

LABEL_7:
  }

  v9 = [(WDStyleSheet *)self styleWithName:v8];
  if ([v9 type] != 1 && objc_msgSend(v9, "type") != 3)
  {

    goto LABEL_7;
  }

LABEL_10:

  return v9;
}

- (id)createStyleWithId:(id)id type:(int)type
{
  v4 = *&type;
  idCopy = id;
  v7 = [[WDStyle alloc] initWithStyleSheet:self id:idCopy type:v4];
  [(NSMutableDictionary *)self->mStyleDictionary setObject:v7 forKey:idCopy];
  [(NSMutableArray *)self->mStylesInOrder addObject:v7];

  return v7;
}

- (id)createStyleWithName:(id)name type:(int)type
{
  v4 = *&type;
  v6 = [(WDStyleSheet *)self styleNameToUniqueId:name];
  v7 = [(WDStyleSheet *)self createStyleWithId:v6 type:v4];

  return v7;
}

- (void)addStyle:(id)style name:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [style id];
  [(NSMutableDictionary *)self->mIdDictionaryForName setObject:v7 forKey:nameCopy];
  [nameCopy componentsSeparatedByString:{@", "}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v8 = v15 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        mIdDictionaryForName = self->mIdDictionaryForName;
        lowercaseString = [*(*(&v14 + 1) + 8 * v11) lowercaseString];
        [(NSMutableDictionary *)mIdDictionaryForName setObject:v7 forKey:lowercaseString];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)setName:(id)name forId:(id)id
{
  idCopy = id;
  mIdDictionaryForName = self->mIdDictionaryForName;
  lowercaseString = [name lowercaseString];
  [(NSMutableDictionary *)mIdDictionaryForName setObject:idCopy forKey:lowercaseString];
}

- (void)removeStyleWithId:(id)id
{
  idCopy = id;
  mStylesInOrder = self->mStylesInOrder;
  v8 = idCopy;
  v6 = [(NSMutableDictionary *)self->mStyleDictionary objectForKey:?];
  [(NSMutableArray *)mStylesInOrder removeObject:v6];

  v7 = [(NSMutableDictionary *)self->mIdDictionaryForName allKeysForObject:v8];
  [(NSMutableDictionary *)self->mIdDictionaryForName removeObjectsForKeys:v7];
  [(NSMutableDictionary *)self->mStyleDictionary removeObjectForKey:v8];
}

- (void)createDefaultStyles
{
  v20 = [(WDStyleSheet *)self createStyleWithName:@"Normal" type:1];
  [v20 setNextStyle:v20];
  [v20 setName:@"Normal"];
  paragraphProperties = [v20 paragraphProperties];
  [paragraphProperties setResolveMode:0];

  paragraphProperties2 = [v20 paragraphProperties];
  [paragraphProperties2 setBaseStyle:v20];

  paragraphProperties3 = [v20 paragraphProperties];
  [paragraphProperties3 setResolveMode:2];

  characterProperties = [v20 characterProperties];
  [characterProperties setResolveMode:0];
  [characterProperties setFontSize:24];
  [characterProperties setLanguageForDefaultText:1033];
  [characterProperties setLanguageForFarEast:1033];
  [characterProperties setLanguageForBiText:1025];
  [characterProperties setFontSizeForBiText:24];
  [(WDStyleSheet *)self setDefaultParagraphStyle:v20];
  v7 = [(WDStyleSheet *)self styleNameToUniqueId:@"Default Paragraph Font"];
  v8 = [(WDStyleSheet *)self createStyleWithId:v7 type:2];

  [v8 setNextStyle:v8];
  [v8 setHidden:1];
  [v8 setName:@"Default Paragraph Font"];
  [(WDStyleSheet *)self setDefaultCharacterStyle:v8];
  v9 = [(WDStyleSheet *)self createStyleWithName:@"Hyperlink" type:2];

  [v9 setName:@"Hyperlink"];
  characterProperties2 = [v9 characterProperties];
  [characterProperties2 setUnderline:1];

  v11 = [(WDStyleSheet *)self createStyleWithName:@"Table Normal" type:3];

  [v11 setNextStyle:v11];
  [v11 setHidden:1];
  [v11 setName:@"Table Normal"];
  paragraphProperties4 = [v11 paragraphProperties];
  [paragraphProperties4 setResolveMode:0];

  paragraphProperties5 = [v11 paragraphProperties];
  [paragraphProperties5 setBaseStyle:v11];

  paragraphProperties6 = [v11 paragraphProperties];
  [paragraphProperties6 setResolveMode:2];

  tableProperties = [v11 tableProperties];
  [tableProperties setResolveMode:0];
  [tableProperties setIndentType:3];
  [tableProperties setIndent:0];
  [tableProperties setResolveMode:2];
  [(WDStyleSheet *)self setDefaultTableStyle:v11];
  v21 = [(WDStyleSheet *)self createStyleWithName:@"No List" type:4];

  [v21 setNextStyle:v21];
  [v21 setHidden:1];
  [v21 setName:@"No List"];
  paragraphProperties7 = [v21 paragraphProperties];
  [paragraphProperties7 setResolveMode:0];

  paragraphProperties8 = [v21 paragraphProperties];
  defaultParagraphStyle = [(WDStyleSheet *)self defaultParagraphStyle];
  [paragraphProperties8 setBaseStyle:defaultParagraphStyle];

  paragraphProperties9 = [v21 paragraphProperties];
  [paragraphProperties9 setResolveMode:2];

  [(WDStyleSheet *)self setDefaultListStyle:?];
}

- (id)styleIdForName:(id)name
{
  mIdDictionaryForName = self->mIdDictionaryForName;
  lowercaseString = [name lowercaseString];
  v5 = [(NSMutableDictionary *)mIdDictionaryForName objectForKey:lowercaseString];

  return v5;
}

- (id)styleNameToUniqueId:(id)id
{
  idCopy = id;
  v5 = 0;
  for (i = idCopy; ; i = v8)
  {
    v7 = [(WDStyleSheet *)self styleIdForName:i];

    if (!v7)
    {
      break;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%d", idCopy, v5];

    v5 = (v5 + 1);
  }

  return i;
}

- (id)styleIdToName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy rangeOfString:@"." options:4];
  if (v5)
  {
    v6 = [nameCopy substringToIndex:v4];

    nameCopy = v6;
  }

  return nameCopy;
}

- (id)allAliasesForStyleId:(id)id name:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->mIdDictionaryForName;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->mIdDictionaryForName objectForKey:v12];
        if ([v13 isEqualToString:idCopy])
        {
          v14 = [v12 isEqualToString:nameCopy];

          if ((v14 & 1) == 0)
          {
            [array addObject:v12];
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return array;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDStyleSheet;
  v2 = [(WDStyleSheet *)&v4 description];

  return v2;
}

@end