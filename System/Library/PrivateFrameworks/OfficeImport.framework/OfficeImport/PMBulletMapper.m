@interface PMBulletMapper
+ (id)stringForIndex:(unint64_t)a3 withFormat:(int)a4;
- (PMBulletMapper)initWithOadProperties:(id)a3 fontSize:(int)a4 parent:(id)a5;
- (id)bulletFontName;
- (id)makeBulletWithListState:(id)a3;
- (int)bulletSize;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapBulletColorWithState:(id)a3;
@end

@implementation PMBulletMapper

- (int)bulletSize
{
  if ([(OADParagraphProperties *)self->mProperties hasBulletSize])
  {
    v3 = [(OADParagraphProperties *)self->mProperties bulletSize];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 points];
LABEL_16:

      return v4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mFontSize = self->mFontSize;
      if (mFontSize)
      {
        v6 = mFontSize;
      }

      else
      {
        [(OADCharacterProperties *)self->mProperties size];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4 = 18;
        goto LABEL_16;
      }

      [v3 percent];
      v8 = v7;
      v9 = self->mFontSize;
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        [(OADCharacterProperties *)self->mProperties size];
      }

      v6 = (v8 / 100.0) * v10;
    }

    v4 = v6;
    goto LABEL_16;
  }

  return 18;
}

- (id)bulletFontName
{
  if (![(OADParagraphProperties *)self->mProperties hasBulletFont])
  {
    v5 = 0;
    goto LABEL_10;
  }

  v3 = [(OADParagraphProperties *)self->mProperties bulletFont];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 font];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = [(OADCharacterProperties *)self->mProperties latinFont];
  }

  v5 = v4;
LABEL_9:

LABEL_10:

  return v5;
}

+ (id)stringForIndex:(unint64_t)a3 withFormat:(int)a4
{
  if ((a4 - 1) > 0x14)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_25D710C40[a4 - 1];
  }

  v7 = [CMNumberFormatter formatterForNumberFormat:v6 language:1033];
  v8 = [v7 stringForNumber:a3];
  if ((a4 - 3) >= 0x13)
  {
    v9 = @"(%@)";
  }

  else
  {
    v9 = off_2799CE1A8[a4 - 3];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v8];

  return v10;
}

- (PMBulletMapper)initWithOadProperties:(id)a3 fontSize:(int)a4 parent:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PMBulletMapper;
  v11 = [(CMMapper *)&v16 initWithParent:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->mProperties, a3);
    v13 = objc_alloc_init(CMStyle);
    mStyle = v12->mStyle;
    v12->mStyle = v13;

    v12->mFontSize = a4;
  }

  return v12;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OADParagraphProperties *)self->mProperties bulletProperties];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v7 listState];
        v10 = [(PMBulletMapper *)self makeBulletWithListState:v9];
        if (v10)
        {
          v11 = [(PMBulletMapper *)self bulletSize];
          v12 = [(PMBulletMapper *)self bulletFontName];
          v26 = v11;
          if ([WMSymbolMapper isSymbolFontName:v12])
          {
            v13 = [WMSymbolMapper mapCharacter:[(__CFString *)v10 characterAtIndex:0] withFontName:v12];
            v27 = v13;
            if (v13)
            {
              v14 = [MEMORY[0x277CCACA8] stringWithCharacters:&v27 length:1];

              v10 = v14;
            }

            else
            {

              v10 = @"•";
            }

            v12 = 0;
            v11 = v26;
          }

          [(__CFString *)v10 oi_sizeWithFontName:v12 size:v11];
          v16 = v15;
          [(OADParagraphProperties *)self->mProperties indent];
          v18 = v17;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = (-v16 - v18) + 20;
          }

          else
          {
            v19 = (-v16 - v18);
          }

          [(OADParagraphProperties *)self->mProperties nonOveridenLeftMargin];
          if (v20 != 0.0)
          {
            mStyle = self->mStyle;
            [(OADParagraphProperties *)self->mProperties nonOveridenLeftMargin];
            [(CMStyle *)mStyle appendPropertyForName:0x286EF67B0 length:1 unit:-v22];
            [(OADParagraphProperties *)self->mProperties nonOveridenLeftMargin];
            v19 = (v23 + v19);
          }

          if (v19 >= 1)
          {
            [(CMStyle *)self->mStyle appendPropertyForName:0x286F081D0 length:1 unit:v19];
          }

          v24 = [OIXMLElement elementWithType:16];
          v25 = [OIXMLTextNode textNodeWithStringValue:v10];
          [v24 addChild:v25];

          [(CMStyle *)self->mStyle appendPropertyForName:0x286EF73D0 intValue:v26];
          [(PMBulletMapper *)self mapBulletColorWithState:v7];
          [(CMMapper *)self addStyleUsingGlobalCacheTo:v24 style:self->mStyle];
          [v6 addChild:v24];
        }
      }
    }
  }
}

- (void)mapBulletColorWithState:(id)a3
{
  v11 = a3;
  if ([(OADParagraphProperties *)self->mProperties hasBulletColor])
  {
    v4 = [(OADParagraphProperties *)self->mProperties bulletColor];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 color];
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      v6 = [(OADCharacterProperties *)self->mProperties fill];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v5 = [v6 color];
      }

      else
      {
        v5 = 0;
      }

      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v7 = [CMColorProperty nsColorFromOADColor:v5 state:v11];
    v8 = MEMORY[0x277CCACA8];
    v9 = [CMColorProperty cssStringFromTSUColor:v7];
    v10 = [v8 stringWithString:v9];

    [(CMStyle *)self->mStyle appendPropertyForName:0x286F077B0 stringWithColons:v10];
LABEL_12:
  }
}

- (id)makeBulletWithListState:(id)a3
{
  v4 = a3;
  v5 = [(OADParagraphProperties *)self->mProperties bulletProperties];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(OADParagraphProperties *)self->mProperties level];
    v7 = +[PMBulletMapper stringForIndex:withFormat:](PMBulletMapper, "stringForIndex:withFormat:", [v4 counterAtLevel:v6] + 1, objc_msgSend(v5, "autoNumberSchemeType"));
    [v4 increaseCounterAtLevel:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 bullet];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = @"•";
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end