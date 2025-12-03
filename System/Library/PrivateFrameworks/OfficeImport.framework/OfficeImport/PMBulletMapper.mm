@interface PMBulletMapper
+ (id)stringForIndex:(unint64_t)index withFormat:(int)format;
- (PMBulletMapper)initWithOadProperties:(id)properties fontSize:(int)size parent:(id)parent;
- (id)bulletFontName;
- (id)makeBulletWithListState:(id)state;
- (int)bulletSize;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapBulletColorWithState:(id)state;
@end

@implementation PMBulletMapper

- (int)bulletSize
{
  if ([(OADParagraphProperties *)self->mProperties hasBulletSize])
  {
    bulletSize = [(OADParagraphProperties *)self->mProperties bulletSize];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      points = [bulletSize points];
LABEL_16:

      return points;
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
        points = 18;
        goto LABEL_16;
      }

      [bulletSize percent];
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

    points = v6;
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

  bulletFont = [(OADParagraphProperties *)self->mProperties bulletFont];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    font = [bulletFont font];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_9;
    }

    font = [(OADCharacterProperties *)self->mProperties latinFont];
  }

  v5 = font;
LABEL_9:

LABEL_10:

  return v5;
}

+ (id)stringForIndex:(unint64_t)index withFormat:(int)format
{
  if ((format - 1) > 0x14)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_25D710C40[format - 1];
  }

  v7 = [CMNumberFormatter formatterForNumberFormat:v6 language:1033];
  v8 = [v7 stringForNumber:index];
  if ((format - 3) >= 0x13)
  {
    v9 = @"(%@)";
  }

  else
  {
    v9 = off_2799CE1A8[format - 3];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v8];

  return v10;
}

- (PMBulletMapper)initWithOadProperties:(id)properties fontSize:(int)size parent:(id)parent
{
  propertiesCopy = properties;
  parentCopy = parent;
  v16.receiver = self;
  v16.super_class = PMBulletMapper;
  v11 = [(CMMapper *)&v16 initWithParent:parentCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->mProperties, properties);
    v13 = objc_alloc_init(CMStyle);
    mStyle = v12->mStyle;
    v12->mStyle = v13;

    v12->mFontSize = size;
  }

  return v12;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  bulletProperties = [(OADParagraphProperties *)self->mProperties bulletProperties];
  if (bulletProperties)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        listState = [stateCopy listState];
        v10 = [(PMBulletMapper *)self makeBulletWithListState:listState];
        if (v10)
        {
          bulletSize = [(PMBulletMapper *)self bulletSize];
          bulletFontName = [(PMBulletMapper *)self bulletFontName];
          v26 = bulletSize;
          if ([WMSymbolMapper isSymbolFontName:bulletFontName])
          {
            v13 = [WMSymbolMapper mapCharacter:[(__CFString *)v10 characterAtIndex:0] withFontName:bulletFontName];
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

            bulletFontName = 0;
            bulletSize = v26;
          }

          [(__CFString *)v10 oi_sizeWithFontName:bulletFontName size:bulletSize];
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
          [(PMBulletMapper *)self mapBulletColorWithState:stateCopy];
          [(CMMapper *)self addStyleUsingGlobalCacheTo:v24 style:self->mStyle];
          [atCopy addChild:v24];
        }
      }
    }
  }
}

- (void)mapBulletColorWithState:(id)state
{
  stateCopy = state;
  if ([(OADParagraphProperties *)self->mProperties hasBulletColor])
  {
    bulletColor = [(OADParagraphProperties *)self->mProperties bulletColor];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      color = [bulletColor color];
      if (!color)
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

      fill = [(OADCharacterProperties *)self->mProperties fill];
      if (fill && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        color = [fill color];
      }

      else
      {
        color = 0;
      }

      if (!color)
      {
        goto LABEL_12;
      }
    }

    v7 = [CMColorProperty nsColorFromOADColor:color state:stateCopy];
    v8 = MEMORY[0x277CCACA8];
    v9 = [CMColorProperty cssStringFromTSUColor:v7];
    v10 = [v8 stringWithString:v9];

    [(CMStyle *)self->mStyle appendPropertyForName:0x286F077B0 stringWithColons:v10];
LABEL_12:
  }
}

- (id)makeBulletWithListState:(id)state
{
  stateCopy = state;
  bulletProperties = [(OADParagraphProperties *)self->mProperties bulletProperties];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    level = [(OADParagraphProperties *)self->mProperties level];
    bullet = +[PMBulletMapper stringForIndex:withFormat:](PMBulletMapper, "stringForIndex:withFormat:", [stateCopy counterAtLevel:level] + 1, objc_msgSend(bulletProperties, "autoNumberSchemeType"));
    [stateCopy increaseCounterAtLevel:level];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bullet = [bulletProperties bullet];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bullet = @"•";
      }

      else
      {
        bullet = 0;
      }
    }
  }

  return bullet;
}

@end