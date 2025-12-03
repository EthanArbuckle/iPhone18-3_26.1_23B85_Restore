@interface PMParagraphMapper
- (PMParagraphMapper)initWithOadParagraph:(id)paragraph parent:(id)parent;
- (id)copyParagraphStyleWithState:(id)state isFirstParagraph:(BOOL)paragraph;
- (id)fontScheme;
- (int)firstTextRunFontSize;
- (void)addEndCharacterStyleToStyle:(id)style;
- (void)mapAt:(id)at withState:(id)state isFirstParagraph:(BOOL)paragraph;
@end

@implementation PMParagraphMapper

- (id)fontScheme
{
  parent = [(CMMapper *)self parent];
  if (parent)
  {
    v3 = parent;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parent2 = [v3 parent];

      v3 = parent2;
      if (!parent2)
      {
        goto LABEL_5;
      }
    }

    defaultTheme = [v3 defaultTheme];
    v7 = defaultTheme;
    if (defaultTheme)
    {
      baseStyles = [defaultTheme baseStyles];
      fontScheme = [baseStyles fontScheme];
    }

    else
    {
      fontScheme = 0;
    }
  }

  else
  {
LABEL_5:
    fontScheme = 0;
  }

  return fontScheme;
}

- (int)firstTextRunFontSize
{
  if (![(OADParagraph *)self->mParagraph textRunCount])
  {
    return 0;
  }

  v3 = [(OADParagraph *)self->mParagraph textRunAtIndex:0];
  v4 = v3;
  if (v3)
  {
    properties = [v3 properties];
    if ([properties hasSize])
    {
      [properties size];
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PMParagraphMapper)initWithOadParagraph:(id)paragraph parent:(id)parent
{
  paragraphCopy = paragraph;
  v11.receiver = self;
  v11.super_class = PMParagraphMapper;
  v8 = [(CMMapper *)&v11 initWithParent:parent];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mParagraph, paragraph);
  }

  return v9;
}

- (void)mapAt:(id)at withState:(id)state isFirstParagraph:(BOOL)paragraph
{
  paragraphCopy = paragraph;
  atCopy = at;
  stateCopy = state;
  if (!self->mParagraph)
  {
    goto LABEL_14;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [OIXMLElement elementWithType:14];
  [atCopy addChild:v10];
  v21 = [(PMParagraphMapper *)self copyParagraphStyleWithState:stateCopy isFirstParagraph:paragraphCopy];
  if (![v10 childrenCount])
  {
    [(PMParagraphMapper *)self addEndCharacterStyleToStyle:v21];
  }

  [(CMMapper *)self addStyleUsingGlobalCacheTo:v10 style:v21];
  v11 = v10;

  properties = [(OADParagraph *)self->mParagraph properties];
  if ([(PMBulletMapper *)properties hasBulletProperties])
  {
    isEmpty = [(OADParagraph *)self->mParagraph isEmpty];

    if (isEmpty)
    {
      goto LABEL_8;
    }

    v14 = [PMBulletMapper alloc];
    properties2 = [(OADParagraph *)self->mParagraph properties];
    properties = [(PMBulletMapper *)v14 initWithOadProperties:properties2 fontSize:[(PMParagraphMapper *)self firstTextRunFontSize] parent:self];

    [(PMBulletMapper *)properties mapAt:v11 withState:stateCopy];
  }

LABEL_8:
  for (i = 0; i < [(OADParagraph *)self->mParagraph textRunCount]; ++i)
  {
    v17 = [PMTextRunMapper alloc];
    v18 = [(OADParagraph *)self->mParagraph textRunAtIndex:i];
    v19 = [(PMTextRunMapper *)v17 initWithOadTextRun:v18 parent:self];

    [(PMTextRunMapper *)v19 mapAt:v11 withState:stateCopy];
  }

  if (![v11 childrenCount])
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 160];
    [v11 setStringValue:v20];
  }

  objc_autoreleasePoolPop(v9);
  atCopy = v11;
LABEL_14:
}

- (id)copyParagraphStyleWithState:(id)state isFirstParagraph:(BOOL)paragraph
{
  properties = [(OADParagraph *)self->mParagraph properties];
  v7 = objc_alloc_init(CMStyle);
  if ([properties hasAlign])
  {
    if ([properties align])
    {
      v8 = [properties align] - 1;
      if (v8 < 3)
      {
        [(CMStyle *)v7 appendPropertyForName:0x286F08230 stringValue:*(&off_2799CE240)[v8]];
      }
    }
  }

  if ([properties hasLeftMargin])
  {
    [properties leftMargin];
    if (v9 != 0.0)
    {
      [properties leftMargin];
      [(CMStyle *)v7 appendPropertyForName:0x286EF67B0 length:1 unit:v10];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->super.mParent);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_loadWeakRetained(&self->super.mParent);
    isTableCellContent = [v12 isTableCellContent];

    if (isTableCellContent)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ([properties hasIndent])
  {
    [properties indent];
    if (v14 != 0.0)
    {
      [properties indent];
      [(CMStyle *)v7 appendPropertyForName:0x286F08250 length:1 unit:v15];
    }
  }

LABEL_15:
  if ([properties hasLineSpacing])
  {
    lineSpacing = [properties lineSpacing];
    [(CMStyle *)v7 appendPropertyForName:0x286F08090 oadTextSpacing:lineSpacing];
  }

  if ([properties hasBeforeSpacing] && !paragraph)
  {
    beforeSpacing = [properties beforeSpacing];
    [properties size];
    [(CMStyle *)v7 appendPropertyForName:0x286F081F0 oadTextSpacing:beforeSpacing lineHeight:1 unit:?];
  }

  if ([properties hasAfterSpacing])
  {
    afterSpacing = [properties afterSpacing];
    [properties size];
    [(CMStyle *)v7 appendPropertyForName:0x286F08190 oadTextSpacing:afterSpacing lineHeight:1 unit:?];
  }

  return v7;
}

- (void)addEndCharacterStyleToStyle:(id)style
{
  styleCopy = style;
  paragraphEndCharacterProperties = [(OADParagraph *)self->mParagraph paragraphEndCharacterProperties];
  fontScheme = [(PMParagraphMapper *)self fontScheme];
  if ([paragraphEndCharacterProperties hasLatinFont])
  {
    latinFont = [paragraphEndCharacterProperties latinFont];

    if (latinFont)
    {
      latinFont2 = [paragraphEndCharacterProperties latinFont];
      v9 = OADSchemeFontReference::schemeFontReferenceWithString(latinFont2, v8);
      v10 = HIDWORD(v9);
      if (v9 != -1 && v10 != 0xFFFFFFFF)
      {
        v12 = [fontScheme fontForId:?];
        v13 = [v12 baseFontForId:v10];

        latinFont2 = v13;
      }

      v14 = [[CMStringProperty alloc] initWithString:latinFont2];
      [styleCopy addProperty:v14 forKey:0x286EF73B0];
    }
  }

  if ([paragraphEndCharacterProperties hasSize])
  {
    v15 = [CMLengthProperty alloc];
    [paragraphEndCharacterProperties size];
    v17 = [(CMLengthProperty *)v15 initWithNumber:1 unit:v16];
    [styleCopy addProperty:v17 forKey:0x286EF73D0];
  }
}

@end