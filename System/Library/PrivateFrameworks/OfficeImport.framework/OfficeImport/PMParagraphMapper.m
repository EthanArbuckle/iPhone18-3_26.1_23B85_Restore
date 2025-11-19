@interface PMParagraphMapper
- (PMParagraphMapper)initWithOadParagraph:(id)a3 parent:(id)a4;
- (id)copyParagraphStyleWithState:(id)a3 isFirstParagraph:(BOOL)a4;
- (id)fontScheme;
- (int)firstTextRunFontSize;
- (void)addEndCharacterStyleToStyle:(id)a3;
- (void)mapAt:(id)a3 withState:(id)a4 isFirstParagraph:(BOOL)a5;
@end

@implementation PMParagraphMapper

- (id)fontScheme
{
  v2 = [(CMMapper *)self parent];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 parent];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v6 = [v3 defaultTheme];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 baseStyles];
      v5 = [v8 fontScheme];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
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
    v5 = [v3 properties];
    if ([v5 hasSize])
    {
      [v5 size];
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

- (PMParagraphMapper)initWithOadParagraph:(id)a3 parent:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PMParagraphMapper;
  v8 = [(CMMapper *)&v11 initWithParent:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mParagraph, a3);
  }

  return v9;
}

- (void)mapAt:(id)a3 withState:(id)a4 isFirstParagraph:(BOOL)a5
{
  v5 = a5;
  v22 = a3;
  v8 = a4;
  if (!self->mParagraph)
  {
    goto LABEL_14;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [OIXMLElement elementWithType:14];
  [v22 addChild:v10];
  v21 = [(PMParagraphMapper *)self copyParagraphStyleWithState:v8 isFirstParagraph:v5];
  if (![v10 childrenCount])
  {
    [(PMParagraphMapper *)self addEndCharacterStyleToStyle:v21];
  }

  [(CMMapper *)self addStyleUsingGlobalCacheTo:v10 style:v21];
  v11 = v10;

  v12 = [(OADParagraph *)self->mParagraph properties];
  if ([(PMBulletMapper *)v12 hasBulletProperties])
  {
    v13 = [(OADParagraph *)self->mParagraph isEmpty];

    if (v13)
    {
      goto LABEL_8;
    }

    v14 = [PMBulletMapper alloc];
    v15 = [(OADParagraph *)self->mParagraph properties];
    v12 = [(PMBulletMapper *)v14 initWithOadProperties:v15 fontSize:[(PMParagraphMapper *)self firstTextRunFontSize] parent:self];

    [(PMBulletMapper *)v12 mapAt:v11 withState:v8];
  }

LABEL_8:
  for (i = 0; i < [(OADParagraph *)self->mParagraph textRunCount]; ++i)
  {
    v17 = [PMTextRunMapper alloc];
    v18 = [(OADParagraph *)self->mParagraph textRunAtIndex:i];
    v19 = [(PMTextRunMapper *)v17 initWithOadTextRun:v18 parent:self];

    [(PMTextRunMapper *)v19 mapAt:v11 withState:v8];
  }

  if (![v11 childrenCount])
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 160];
    [v11 setStringValue:v20];
  }

  objc_autoreleasePoolPop(v9);
  v22 = v11;
LABEL_14:
}

- (id)copyParagraphStyleWithState:(id)a3 isFirstParagraph:(BOOL)a4
{
  v6 = [(OADParagraph *)self->mParagraph properties];
  v7 = objc_alloc_init(CMStyle);
  if ([v6 hasAlign])
  {
    if ([v6 align])
    {
      v8 = [v6 align] - 1;
      if (v8 < 3)
      {
        [(CMStyle *)v7 appendPropertyForName:0x286F08230 stringValue:*(&off_2799CE240)[v8]];
      }
    }
  }

  if ([v6 hasLeftMargin])
  {
    [v6 leftMargin];
    if (v9 != 0.0)
    {
      [v6 leftMargin];
      [(CMStyle *)v7 appendPropertyForName:0x286EF67B0 length:1 unit:v10];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->super.mParent);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_loadWeakRetained(&self->super.mParent);
    v13 = [v12 isTableCellContent];

    if (v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ([v6 hasIndent])
  {
    [v6 indent];
    if (v14 != 0.0)
    {
      [v6 indent];
      [(CMStyle *)v7 appendPropertyForName:0x286F08250 length:1 unit:v15];
    }
  }

LABEL_15:
  if ([v6 hasLineSpacing])
  {
    v16 = [v6 lineSpacing];
    [(CMStyle *)v7 appendPropertyForName:0x286F08090 oadTextSpacing:v16];
  }

  if ([v6 hasBeforeSpacing] && !a4)
  {
    v17 = [v6 beforeSpacing];
    [v6 size];
    [(CMStyle *)v7 appendPropertyForName:0x286F081F0 oadTextSpacing:v17 lineHeight:1 unit:?];
  }

  if ([v6 hasAfterSpacing])
  {
    v18 = [v6 afterSpacing];
    [v6 size];
    [(CMStyle *)v7 appendPropertyForName:0x286F08190 oadTextSpacing:v18 lineHeight:1 unit:?];
  }

  return v7;
}

- (void)addEndCharacterStyleToStyle:(id)a3
{
  v18 = a3;
  v4 = [(OADParagraph *)self->mParagraph paragraphEndCharacterProperties];
  v5 = [(PMParagraphMapper *)self fontScheme];
  if ([v4 hasLatinFont])
  {
    v6 = [v4 latinFont];

    if (v6)
    {
      v7 = [v4 latinFont];
      v9 = OADSchemeFontReference::schemeFontReferenceWithString(v7, v8);
      v10 = HIDWORD(v9);
      if (v9 != -1 && v10 != 0xFFFFFFFF)
      {
        v12 = [v5 fontForId:?];
        v13 = [v12 baseFontForId:v10];

        v7 = v13;
      }

      v14 = [[CMStringProperty alloc] initWithString:v7];
      [v18 addProperty:v14 forKey:0x286EF73B0];
    }
  }

  if ([v4 hasSize])
  {
    v15 = [CMLengthProperty alloc];
    [v4 size];
    v17 = [(CMLengthProperty *)v15 initWithNumber:1 unit:v16];
    [v18 addProperty:v17 forKey:0x286EF73D0];
  }
}

@end