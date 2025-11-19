@interface NSLocaleLanguage
- (BOOL)isEqual:(id)a3;
- (NSLocaleLanguage)initWithLocaleIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation NSLocaleLanguage

- (NSLocaleLanguage)initWithLocaleIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NSLocaleLanguage;
  v5 = [(NSLocaleLanguage *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 languageCode];
      if ([v8 length])
      {
        [(NSLocaleLanguage *)v5 setTwoCharacterCode:v8];
        v9 = [v7 threeCharacterLanguageCode];
        [(NSLocaleLanguage *)v5 setThreeCharacterCode:v9];

        v10 = v5;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(NSLocaleLanguage *)self twoCharacterCode];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSLocaleLanguage *)self twoCharacterCode];
      v6 = [(NSLocaleLanguage *)v4 twoCharacterCode];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end