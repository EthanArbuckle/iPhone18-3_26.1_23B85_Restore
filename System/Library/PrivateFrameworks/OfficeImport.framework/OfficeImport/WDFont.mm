@interface WDFont
+ (int)cpFontClassFromWdFontFamily:(int)family;
- (BOOL)isEqual:(id)equal;
- (WDFont)init;
- (WDFont)initWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)secondName;
- (void)addAlternateName:(id)name;
- (void)setName:(id)name;
@end

@implementation WDFont

+ (int)cpFontClassFromWdFontFamily:(int)family
{
  if ((family - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_25D70E370[family - 1];
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  mName = self->mName;
  self->mName = v4;
}

- (void)addAlternateName:(id)name
{
  mAlternateNames = self->mAlternateNames;
  v4 = [name copy];
  [(NSMutableArray *)mAlternateNames addObject:?];
}

- (id)secondName
{
  v3 = [(NSMutableArray *)self->mAlternateNames count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->mAlternateNames objectAtIndex:0];
  }

  return v3;
}

- (WDFont)init
{
  v8.receiver = self;
  v8.super_class = WDFont;
  v2 = [(WDFont *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCACA8]);
    mName = v2->mName;
    v2->mName = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mAlternateNames = v2->mAlternateNames;
    v2->mAlternateNames = v5;

    *&v2->mFontFamily = 1;
    v2->mPitch = 0;
  }

  return v2;
}

- (WDFont)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = WDFont;
  v5 = [(WDFont *)&v11 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    mName = v5->mName;
    v5->mName = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mAlternateNames = v5->mAlternateNames;
    v5->mAlternateNames = v8;

    *&v5->mFontFamily = 1;
    v5->mPitch = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WDFont allocWithZone:?]];
  v5 = [(NSString *)self->mName copy];
  mName = v4->mName;
  v4->mName = v5;

  v7 = [(NSMutableArray *)self->mAlternateNames copy];
  mAlternateNames = v4->mAlternateNames;
  v4->mAlternateNames = v7;

  *&v4->mFontFamily = *&self->mFontFamily;
  v4->mPitch = self->mPitch;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    mName = self->mName;
    name = [v5 name];
    if ([(NSString *)mName isEqualToString:name])
    {
      mAlternateNames = self->mAlternateNames;
      alternateNames = [v5 alternateNames];
      if (-[NSMutableArray isEqualToArray:](mAlternateNames, "isEqualToArray:", alternateNames) && (mFontFamily = self->mFontFamily, mFontFamily == [v5 fontFamily]) && (mCharacterSet = self->mCharacterSet, mCharacterSet == objc_msgSend(v5, "characterSet")))
      {
        mPitch = self->mPitch;
        v13 = mPitch == [v5 pitch];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDFont;
  v2 = [(WDFont *)&v4 description];

  return v2;
}

@end