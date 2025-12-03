@interface WMParagraphStyleMapper
- (BOOL)checkListId:(int64_t)id level:(unsigned __int8)level;
- (BOOL)getListLevel:(char *)level andListIndex:(int *)index fromStyleOnly:(BOOL)only;
- (WMParagraphStyleMapper)initWithWDParagraph:(id)paragraph parent:(id)parent isInTextFrame:(BOOL)frame;
- (id)bulletLabelForIndex:(int)index inLevelDescription:(id)description listState:(id)state;
- (id)labelStringWithGap:(id)gap;
- (void)destyleEmptyParagraph;
- (void)getListLevel:(char *)level andListIndex:(int *)index foundListLevel:(BOOL *)listLevel foundListIndex:(BOOL *)listIndex fromParagraphProperties:(id)properties;
- (void)getListLevel:(char *)level andListIndex:(int *)index foundListLevel:(BOOL *)listLevel foundListIndex:(BOOL *)listIndex fromStyle:(id)style;
- (void)mapBulletAt:(id)at forIndex:(int)index inLevelDescription:(id)description listState:(id)state;
- (void)mapBulletFromListId:(int)id listLevel:(unsigned __int8)level at:(id)at document:(id)document state:(id)state;
- (void)mapListStyleAt:(id)at state:(id)state;
- (void)mapListStyleFromParagraphStyleWithState:(id)state;
- (void)mapStyleFromListId:(int)id listLevel:(unsigned __int8)level document:(id)document state:(id)state;
- (void)updateOutlineStateWithListId:(int)id listLevel:(unsigned __int8)level document:(id)document state:(id)state;
@end

@implementation WMParagraphStyleMapper

- (void)destyleEmptyParagraph
{
  properties = [(CMStyle *)self->mStyle properties];
  [properties removeObjectForKey:0x286F07E50];
}

- (WMParagraphStyleMapper)initWithWDParagraph:(id)paragraph parent:(id)parent isInTextFrame:(BOOL)frame
{
  frameCopy = frame;
  paragraphCopy = paragraph;
  parentCopy = parent;
  v26.receiver = self;
  v26.super_class = WMParagraphStyleMapper;
  v11 = [(CMMapper *)&v26 initWithParent:parentCopy];
  v12 = v11;
  if (v11)
  {
    mStyle = v11->mStyle;
    v11->mStyle = 0;

    objc_storeStrong(&v12->wdParagraph, paragraph);
    properties = [(WDParagraph *)v12->wdParagraph properties];
    wdParaProperties = v12->wdParaProperties;
    v12->wdParaProperties = properties;

    if ([(WDParagraphProperties *)v12->wdParaProperties isBaseStyleOverridden])
    {
      v16 = [WMParagraphStyle alloc];
      document = [(WDParagraphProperties *)v12->wdParaProperties document];
      styleSheet = [document styleSheet];
      defaultParagraphProperties = [styleSheet defaultParagraphProperties];
      baseStyle = [(WDParagraphProperties *)v12->wdParaProperties baseStyle];
      v21 = [(WMParagraphStyle *)v16 initWithDefaultProperties:defaultParagraphProperties style:baseStyle isInTextFrame:frameCopy];
      v22 = v12->mStyle;
      v12->mStyle = v21;
    }

    else
    {
      v23 = [WMParagraphStyle alloc];
      document = [(WDParagraphProperties *)v12->wdParaProperties document];
      styleSheet = [document styleSheet];
      defaultParagraphProperties = [styleSheet defaultParagraphProperties];
      v24 = [(WMParagraphStyle *)v23 initWithDefaultProperties:defaultParagraphProperties isInTextFrame:frameCopy];
      baseStyle = v12->mStyle;
      v12->mStyle = v24;
    }
  }

  return v12;
}

- (void)updateOutlineStateWithListId:(int)id listLevel:(unsigned __int8)level document:(id)document state:(id)state
{
  levelCopy = level;
  v8 = *&id;
  documentCopy = document;
  stateCopy = state;
  if ([(WMParagraphStyleMapper *)self checkListId:v8 level:levelCopy])
  {
    v11 = [documentCopy listWithListId:v8];
    listDefinitionId = [v11 listDefinitionId];
    if (([stateCopy isCurrentListDefinitionId:listDefinitionId] & 1) == 0)
    {
      v13 = [stateCopy listStateForListDefinitionWithId:listDefinitionId settingUpStateIfNeededWithDocument:documentCopy];
      [stateCopy setCurrentListState:v13];
    }

    currentListState = [stateCopy currentListState];
    [currentListState setCurrentList:v11];
  }
}

- (void)mapStyleFromListId:(int)id listLevel:(unsigned __int8)level document:(id)document state:(id)state
{
  levelCopy = level;
  v8 = *&id;
  documentCopy = document;
  stateCopy = state;
  if ([(WMParagraphStyleMapper *)self checkListId:v8 level:levelCopy])
  {
    [(WMParagraphStyleMapper *)self updateOutlineStateWithListId:v8 listLevel:levelCopy document:documentCopy state:stateCopy];
    currentListState = [stateCopy currentListState];
    v12 = [currentListState levelDescriptionAtIndex:levelCopy];
    mStyle = self->mStyle;
    paragraphProperties = [v12 paragraphProperties];
    [(WMParagraphStyle *)mStyle addParagraphProperties:paragraphProperties];
  }
}

- (void)mapBulletFromListId:(int)id listLevel:(unsigned __int8)level at:(id)at document:(id)document state:(id)state
{
  levelCopy = level;
  v10 = *&id;
  atCopy = at;
  documentCopy = document;
  stateCopy = state;
  if ([(WMParagraphStyleMapper *)self checkListId:v10 level:levelCopy])
  {
    [(WMParagraphStyleMapper *)self updateOutlineStateWithListId:v10 listLevel:levelCopy document:documentCopy state:stateCopy];
    currentListState = [stateCopy currentListState];
    v15 = [currentListState levelDescriptionAtIndex:levelCopy];
    [currentListState increaseCounterAtLevel:levelCopy];
    [(WMParagraphStyleMapper *)self mapBulletAt:atCopy forIndex:levelCopy inLevelDescription:v15 listState:currentListState];
  }
}

- (void)getListLevel:(char *)level andListIndex:(int *)index foundListLevel:(BOOL *)listLevel foundListIndex:(BOOL *)listIndex fromParagraphProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy isListIndexOverridden])
  {
    *listIndex = 1;
    if (index)
    {
      *index = [propertiesCopy listIndex];
    }
  }

  if ([propertiesCopy isListLevelOverridden])
  {
    *listLevel = 1;
    if (level)
    {
      *level = [propertiesCopy listLevel];
    }
  }
}

- (void)getListLevel:(char *)level andListIndex:(int *)index foundListLevel:(BOOL *)listLevel foundListIndex:(BOOL *)listIndex fromStyle:(id)style
{
  styleCopy = style;
  if (styleCopy)
  {
    v17 = styleCopy;
    baseStyle = [styleCopy baseStyle];

    v14 = v17;
    if (baseStyle != v17)
    {
      baseStyle2 = [v17 baseStyle];
      [(WMParagraphStyleMapper *)self getListLevel:level andListIndex:index foundListLevel:listLevel foundListIndex:listIndex fromStyle:baseStyle2];

      v14 = v17;
    }

    paragraphProperties = [v14 paragraphProperties];
    [(WMParagraphStyleMapper *)self getListLevel:level andListIndex:index foundListLevel:listLevel foundListIndex:listIndex fromParagraphProperties:paragraphProperties];

    styleCopy = v17;
  }
}

- (BOOL)getListLevel:(char *)level andListIndex:(int *)index fromStyleOnly:(BOOL)only
{
  v11 = 0;
  if ([(WDParagraphProperties *)self->wdParaProperties isBaseStyleOverridden])
  {
    baseStyle = [(WDParagraphProperties *)self->wdParaProperties baseStyle];
    [(WMParagraphStyleMapper *)self getListLevel:level andListIndex:index foundListLevel:&v11 + 1 foundListIndex:&v11 fromStyle:baseStyle];
  }

  if (!only)
  {
    [(WMParagraphStyleMapper *)self getListLevel:level andListIndex:index foundListLevel:&v11 + 1 foundListIndex:&v11 fromParagraphProperties:self->wdParaProperties];
  }

  return v11;
}

- (void)mapListStyleFromParagraphStyleWithState:(id)state
{
  stateCopy = state;
  v9 = -1;
  v8 = -1;
  if ([(WMParagraphStyleMapper *)self getListLevel:&v9 andListIndex:&v8 fromStyleOnly:1])
  {
    v5 = v9;
    if (v9 == 255)
    {
      v5 = 0;
      v9 = 0;
    }

    v6 = v8;
    document = [(WDParagraphProperties *)self->wdParaProperties document];
    [(WMParagraphStyleMapper *)self mapStyleFromListId:v6 listLevel:v5 document:document state:stateCopy];
  }
}

- (void)mapListStyleAt:(id)at state:(id)state
{
  atCopy = at;
  stateCopy = state;
  if ([(WDParagraphProperties *)self->wdParaProperties isCharacterPropertiesOverridden])
  {
    characterProperties = [(WDParagraphProperties *)self->wdParaProperties characterProperties];
  }

  else
  {
    characterProperties = 0;
  }

  if (![characterProperties isDeletedOverridden] || (objc_msgSend(characterProperties, "deleted") & 0xFFFFFF7F) != 1)
  {
    v16 = -1;
    v15 = -1;
    if ([(WMParagraphStyleMapper *)self getListLevel:&v16 andListIndex:&v15 fromStyleOnly:0])
    {
      if (v16 == 255)
      {
        v16 = 0;
      }

      if ([(WDParagraphProperties *)self->wdParaProperties isListIndexOverridden])
      {
        v9 = v15;
        v10 = v16;
        document = [(WDParagraphProperties *)self->wdParaProperties document];
        [(WMParagraphStyleMapper *)self mapStyleFromListId:v9 listLevel:v10 document:document state:stateCopy];
      }

      v12 = v15;
      v13 = v16;
      document2 = [(WDParagraphProperties *)self->wdParaProperties document];
      [(WMParagraphStyleMapper *)self mapBulletFromListId:v12 listLevel:v13 at:atCopy document:document2 state:stateCopy];
    }
  }
}

- (BOOL)checkListId:(int64_t)id level:(unsigned __int8)level
{
  v4 = 0;
  if (id >= 1 && level <= 9u)
  {
    document = [(WDParagraphProperties *)self->wdParaProperties document];
    listTable = [document listTable];

    if (listTable)
    {
      lists = [listTable lists];
      v4 = [lists count] >= id;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)labelStringWithGap:(id)gap
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", gap];

  return v3;
}

- (id)bulletLabelForIndex:(int)index inLevelDescription:(id)description listState:(id)state
{
  descriptionCopy = description;
  stateCopy = state;
  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  listDefinition = [stateCopy listDefinition];
  v10 = [v8 initWithCapacity:{objc_msgSend(listDefinition, "levelCount")}];

  for (i = 0; ; ++i)
  {
    listDefinition2 = [stateCopy listDefinition];
    levelCount = [listDefinition2 levelCount];

    if (levelCount <= i)
    {
      break;
    }

    v14 = [stateCopy levelDescriptionAtIndex:i];
    [v10 addObject:v14];
  }

  v15 = [WMListLevelTextMapper alloc];
  text = [descriptionCopy text];
  document = [(WDParagraphProperties *)self->wdParaProperties document];
  styleSheet = [document styleSheet];
  defaultCharacterProperties = [styleSheet defaultCharacterProperties];
  v20 = -[WMListLevelTextMapper initWithText:levelDescriptions:language:](v15, "initWithText:levelDescriptions:language:", text, v10, [defaultCharacterProperties languageForDefaultText]);

  v21 = [(WMListLevelTextMapper *)v20 listLevelTextForOutline:stateCopy];
  characterProperties = [descriptionCopy characterProperties];
  if ([characterProperties isFontOverridden])
  {
    v23 = [characterProperties fontForFontType:0];
    name = [v23 name];
    v25 = [characterProperties fontForFontType:3];
    name2 = [v25 name];
    v27 = [TCFontUtils stringByFixingString:v21 latinFontFamilyName:name symbolFontFamilyName:name2];

    v21 = v27;
  }

  return v21;
}

- (void)mapBulletAt:(id)at forIndex:(int)index inLevelDescription:(id)description listState:(id)state
{
  v8 = *&index;
  atCopy = at;
  descriptionCopy = description;
  v11 = [(WMParagraphStyleMapper *)self bulletLabelForIndex:v8 inLevelDescription:descriptionCopy listState:state];
  v12 = [v11 stringByAppendingString:@" "];
  v13 = [OIXMLElement elementWithType:16];
  v14 = objc_alloc_init(WMParagraphStyle);
  [atCopy addChild:v13];
  v15 = [OIXMLTextNode textNodeWithStringValue:v12];
  [v13 addChild:v15];

  if ([(WDParagraphProperties *)self->wdParaProperties isFirstLineIndentOverridden])
  {
    v16 = [[CMLengthProperty alloc] initWithNumber:2 unit:[(WDParagraphProperties *)self->wdParaProperties firstLineIndent]];
    [(CMStyle *)v14 addProperty:v16 forKey:0x286F08130];
  }

  if ([(WDParagraphProperties *)self->wdParaProperties isBaseStyleOverridden])
  {
    baseStyle = [(WDParagraphProperties *)self->wdParaProperties baseStyle];
    [(WMParagraphStyle *)v14 addParagraphStyleCharacterProperties:baseStyle];
  }

  characterProperties = [descriptionCopy characterProperties];
  [(WMStyle *)v14 addCharacterProperties:characterProperties];

  [(CMMapper *)self addStyleUsingGlobalCacheTo:v13 style:v14];
}

@end