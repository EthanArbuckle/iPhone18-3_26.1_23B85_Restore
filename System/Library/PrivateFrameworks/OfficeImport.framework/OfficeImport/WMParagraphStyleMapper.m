@interface WMParagraphStyleMapper
- (BOOL)checkListId:(int64_t)a3 level:(unsigned __int8)a4;
- (BOOL)getListLevel:(char *)a3 andListIndex:(int *)a4 fromStyleOnly:(BOOL)a5;
- (WMParagraphStyleMapper)initWithWDParagraph:(id)a3 parent:(id)a4 isInTextFrame:(BOOL)a5;
- (id)bulletLabelForIndex:(int)a3 inLevelDescription:(id)a4 listState:(id)a5;
- (id)labelStringWithGap:(id)a3;
- (void)destyleEmptyParagraph;
- (void)getListLevel:(char *)a3 andListIndex:(int *)a4 foundListLevel:(BOOL *)a5 foundListIndex:(BOOL *)a6 fromParagraphProperties:(id)a7;
- (void)getListLevel:(char *)a3 andListIndex:(int *)a4 foundListLevel:(BOOL *)a5 foundListIndex:(BOOL *)a6 fromStyle:(id)a7;
- (void)mapBulletAt:(id)a3 forIndex:(int)a4 inLevelDescription:(id)a5 listState:(id)a6;
- (void)mapBulletFromListId:(int)a3 listLevel:(unsigned __int8)a4 at:(id)a5 document:(id)a6 state:(id)a7;
- (void)mapListStyleAt:(id)a3 state:(id)a4;
- (void)mapListStyleFromParagraphStyleWithState:(id)a3;
- (void)mapStyleFromListId:(int)a3 listLevel:(unsigned __int8)a4 document:(id)a5 state:(id)a6;
- (void)updateOutlineStateWithListId:(int)a3 listLevel:(unsigned __int8)a4 document:(id)a5 state:(id)a6;
@end

@implementation WMParagraphStyleMapper

- (void)destyleEmptyParagraph
{
  v2 = [(CMStyle *)self->mStyle properties];
  [v2 removeObjectForKey:0x286F07E50];
}

- (WMParagraphStyleMapper)initWithWDParagraph:(id)a3 parent:(id)a4 isInTextFrame:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v26.receiver = self;
  v26.super_class = WMParagraphStyleMapper;
  v11 = [(CMMapper *)&v26 initWithParent:v10];
  v12 = v11;
  if (v11)
  {
    mStyle = v11->mStyle;
    v11->mStyle = 0;

    objc_storeStrong(&v12->wdParagraph, a3);
    v14 = [(WDParagraph *)v12->wdParagraph properties];
    wdParaProperties = v12->wdParaProperties;
    v12->wdParaProperties = v14;

    if ([(WDParagraphProperties *)v12->wdParaProperties isBaseStyleOverridden])
    {
      v16 = [WMParagraphStyle alloc];
      v17 = [(WDParagraphProperties *)v12->wdParaProperties document];
      v18 = [v17 styleSheet];
      v19 = [v18 defaultParagraphProperties];
      v20 = [(WDParagraphProperties *)v12->wdParaProperties baseStyle];
      v21 = [(WMParagraphStyle *)v16 initWithDefaultProperties:v19 style:v20 isInTextFrame:v5];
      v22 = v12->mStyle;
      v12->mStyle = v21;
    }

    else
    {
      v23 = [WMParagraphStyle alloc];
      v17 = [(WDParagraphProperties *)v12->wdParaProperties document];
      v18 = [v17 styleSheet];
      v19 = [v18 defaultParagraphProperties];
      v24 = [(WMParagraphStyle *)v23 initWithDefaultProperties:v19 isInTextFrame:v5];
      v20 = v12->mStyle;
      v12->mStyle = v24;
    }
  }

  return v12;
}

- (void)updateOutlineStateWithListId:(int)a3 listLevel:(unsigned __int8)a4 document:(id)a5 state:(id)a6
{
  v7 = a4;
  v8 = *&a3;
  v15 = a5;
  v10 = a6;
  if ([(WMParagraphStyleMapper *)self checkListId:v8 level:v7])
  {
    v11 = [v15 listWithListId:v8];
    v12 = [v11 listDefinitionId];
    if (([v10 isCurrentListDefinitionId:v12] & 1) == 0)
    {
      v13 = [v10 listStateForListDefinitionWithId:v12 settingUpStateIfNeededWithDocument:v15];
      [v10 setCurrentListState:v13];
    }

    v14 = [v10 currentListState];
    [v14 setCurrentList:v11];
  }
}

- (void)mapStyleFromListId:(int)a3 listLevel:(unsigned __int8)a4 document:(id)a5 state:(id)a6
{
  v7 = a4;
  v8 = *&a3;
  v15 = a5;
  v10 = a6;
  if ([(WMParagraphStyleMapper *)self checkListId:v8 level:v7])
  {
    [(WMParagraphStyleMapper *)self updateOutlineStateWithListId:v8 listLevel:v7 document:v15 state:v10];
    v11 = [v10 currentListState];
    v12 = [v11 levelDescriptionAtIndex:v7];
    mStyle = self->mStyle;
    v14 = [v12 paragraphProperties];
    [(WMParagraphStyle *)mStyle addParagraphProperties:v14];
  }
}

- (void)mapBulletFromListId:(int)a3 listLevel:(unsigned __int8)a4 at:(id)a5 document:(id)a6 state:(id)a7
{
  v9 = a4;
  v10 = *&a3;
  v16 = a5;
  v12 = a6;
  v13 = a7;
  if ([(WMParagraphStyleMapper *)self checkListId:v10 level:v9])
  {
    [(WMParagraphStyleMapper *)self updateOutlineStateWithListId:v10 listLevel:v9 document:v12 state:v13];
    v14 = [v13 currentListState];
    v15 = [v14 levelDescriptionAtIndex:v9];
    [v14 increaseCounterAtLevel:v9];
    [(WMParagraphStyleMapper *)self mapBulletAt:v16 forIndex:v9 inLevelDescription:v15 listState:v14];
  }
}

- (void)getListLevel:(char *)a3 andListIndex:(int *)a4 foundListLevel:(BOOL *)a5 foundListIndex:(BOOL *)a6 fromParagraphProperties:(id)a7
{
  v11 = a7;
  if ([v11 isListIndexOverridden])
  {
    *a6 = 1;
    if (a4)
    {
      *a4 = [v11 listIndex];
    }
  }

  if ([v11 isListLevelOverridden])
  {
    *a5 = 1;
    if (a3)
    {
      *a3 = [v11 listLevel];
    }
  }
}

- (void)getListLevel:(char *)a3 andListIndex:(int *)a4 foundListLevel:(BOOL *)a5 foundListIndex:(BOOL *)a6 fromStyle:(id)a7
{
  v12 = a7;
  if (v12)
  {
    v17 = v12;
    v13 = [v12 baseStyle];

    v14 = v17;
    if (v13 != v17)
    {
      v15 = [v17 baseStyle];
      [(WMParagraphStyleMapper *)self getListLevel:a3 andListIndex:a4 foundListLevel:a5 foundListIndex:a6 fromStyle:v15];

      v14 = v17;
    }

    v16 = [v14 paragraphProperties];
    [(WMParagraphStyleMapper *)self getListLevel:a3 andListIndex:a4 foundListLevel:a5 foundListIndex:a6 fromParagraphProperties:v16];

    v12 = v17;
  }
}

- (BOOL)getListLevel:(char *)a3 andListIndex:(int *)a4 fromStyleOnly:(BOOL)a5
{
  v11 = 0;
  if ([(WDParagraphProperties *)self->wdParaProperties isBaseStyleOverridden])
  {
    v9 = [(WDParagraphProperties *)self->wdParaProperties baseStyle];
    [(WMParagraphStyleMapper *)self getListLevel:a3 andListIndex:a4 foundListLevel:&v11 + 1 foundListIndex:&v11 fromStyle:v9];
  }

  if (!a5)
  {
    [(WMParagraphStyleMapper *)self getListLevel:a3 andListIndex:a4 foundListLevel:&v11 + 1 foundListIndex:&v11 fromParagraphProperties:self->wdParaProperties];
  }

  return v11;
}

- (void)mapListStyleFromParagraphStyleWithState:(id)a3
{
  v4 = a3;
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
    v7 = [(WDParagraphProperties *)self->wdParaProperties document];
    [(WMParagraphStyleMapper *)self mapStyleFromListId:v6 listLevel:v5 document:v7 state:v4];
  }
}

- (void)mapListStyleAt:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WDParagraphProperties *)self->wdParaProperties isCharacterPropertiesOverridden])
  {
    v8 = [(WDParagraphProperties *)self->wdParaProperties characterProperties];
  }

  else
  {
    v8 = 0;
  }

  if (![v8 isDeletedOverridden] || (objc_msgSend(v8, "deleted") & 0xFFFFFF7F) != 1)
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
        v11 = [(WDParagraphProperties *)self->wdParaProperties document];
        [(WMParagraphStyleMapper *)self mapStyleFromListId:v9 listLevel:v10 document:v11 state:v7];
      }

      v12 = v15;
      v13 = v16;
      v14 = [(WDParagraphProperties *)self->wdParaProperties document];
      [(WMParagraphStyleMapper *)self mapBulletFromListId:v12 listLevel:v13 at:v6 document:v14 state:v7];
    }
  }
}

- (BOOL)checkListId:(int64_t)a3 level:(unsigned __int8)a4
{
  v4 = 0;
  if (a3 >= 1 && a4 <= 9u)
  {
    v6 = [(WDParagraphProperties *)self->wdParaProperties document];
    v7 = [v6 listTable];

    if (v7)
    {
      v8 = [v7 lists];
      v4 = [v8 count] >= a3;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)labelStringWithGap:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", a3];

  return v3;
}

- (id)bulletLabelForIndex:(int)a3 inLevelDescription:(id)a4 listState:(id)a5
{
  v29 = a4;
  v7 = a5;
  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = [v7 listDefinition];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "levelCount")}];

  for (i = 0; ; ++i)
  {
    v12 = [v7 listDefinition];
    v13 = [v12 levelCount];

    if (v13 <= i)
    {
      break;
    }

    v14 = [v7 levelDescriptionAtIndex:i];
    [v10 addObject:v14];
  }

  v15 = [WMListLevelTextMapper alloc];
  v16 = [v29 text];
  v17 = [(WDParagraphProperties *)self->wdParaProperties document];
  v18 = [v17 styleSheet];
  v19 = [v18 defaultCharacterProperties];
  v20 = -[WMListLevelTextMapper initWithText:levelDescriptions:language:](v15, "initWithText:levelDescriptions:language:", v16, v10, [v19 languageForDefaultText]);

  v21 = [(WMListLevelTextMapper *)v20 listLevelTextForOutline:v7];
  v22 = [v29 characterProperties];
  if ([v22 isFontOverridden])
  {
    v23 = [v22 fontForFontType:0];
    v24 = [v23 name];
    v25 = [v22 fontForFontType:3];
    v26 = [v25 name];
    v27 = [TCFontUtils stringByFixingString:v21 latinFontFamilyName:v24 symbolFontFamilyName:v26];

    v21 = v27;
  }

  return v21;
}

- (void)mapBulletAt:(id)a3 forIndex:(int)a4 inLevelDescription:(id)a5 listState:(id)a6
{
  v8 = *&a4;
  v19 = a3;
  v10 = a5;
  v11 = [(WMParagraphStyleMapper *)self bulletLabelForIndex:v8 inLevelDescription:v10 listState:a6];
  v12 = [v11 stringByAppendingString:@" "];
  v13 = [OIXMLElement elementWithType:16];
  v14 = objc_alloc_init(WMParagraphStyle);
  [v19 addChild:v13];
  v15 = [OIXMLTextNode textNodeWithStringValue:v12];
  [v13 addChild:v15];

  if ([(WDParagraphProperties *)self->wdParaProperties isFirstLineIndentOverridden])
  {
    v16 = [[CMLengthProperty alloc] initWithNumber:2 unit:[(WDParagraphProperties *)self->wdParaProperties firstLineIndent]];
    [(CMStyle *)v14 addProperty:v16 forKey:0x286F08130];
  }

  if ([(WDParagraphProperties *)self->wdParaProperties isBaseStyleOverridden])
  {
    v17 = [(WDParagraphProperties *)self->wdParaProperties baseStyle];
    [(WMParagraphStyle *)v14 addParagraphStyleCharacterProperties:v17];
  }

  v18 = [v10 characterProperties];
  [(WMStyle *)v14 addCharacterProperties:v18];

  [(CMMapper *)self addStyleUsingGlobalCacheTo:v13 style:v14];
}

@end