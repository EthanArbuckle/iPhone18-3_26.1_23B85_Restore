@interface FCCardStyle
+ (id)styleWithConfigDict:(id)dict;
- (BOOL)isEqual:(id)equal;
- (FCCardStyle)initWithTitleForegroundColor:(id)color eyebrowForegroundColor:(id)foregroundColor cardBackgroundColor:(id)backgroundColor cardForegroundColor:(id)cardForegroundColor sauceGradient:(id)gradient ctaBackgroundColor:(id)ctaBackgroundColor ctaForegroundColor:(id)ctaForegroundColor;
- (unint64_t)hash;
@end

@implementation FCCardStyle

- (FCCardStyle)initWithTitleForegroundColor:(id)color eyebrowForegroundColor:(id)foregroundColor cardBackgroundColor:(id)backgroundColor cardForegroundColor:(id)cardForegroundColor sauceGradient:(id)gradient ctaBackgroundColor:(id)ctaBackgroundColor ctaForegroundColor:(id)ctaForegroundColor
{
  colorCopy = color;
  foregroundColorCopy = foregroundColor;
  backgroundColorCopy = backgroundColor;
  cardForegroundColorCopy = cardForegroundColor;
  gradientCopy = gradient;
  ctaBackgroundColorCopy = ctaBackgroundColor;
  ctaForegroundColorCopy = ctaForegroundColor;
  v26.receiver = self;
  v26.super_class = FCCardStyle;
  v18 = [(FCCardStyle *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_titleForegroundColor, color);
    objc_storeStrong(&v19->_eyebrowForegroundColor, foregroundColor);
    objc_storeStrong(&v19->_cardBackgroundColor, backgroundColor);
    objc_storeStrong(&v19->_cardForegroundColor, cardForegroundColor);
    objc_storeStrong(&v19->_sauceGradient, gradient);
    objc_storeStrong(&v19->_ctaBackgroundColor, ctaBackgroundColor);
    objc_storeStrong(&v19->_ctaForegroundColor, ctaForegroundColor);
  }

  return v19;
}

+ (id)styleWithConfigDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy objectForKeyedSubscript:@"titleForegroundColor"];
  v5 = [FCColor nullableColorWithHexString:v4];

  v6 = [dictCopy objectForKeyedSubscript:@"eyebrowForegroundColor"];
  v7 = [FCColor nullableColorWithHexString:v6];

  v8 = [dictCopy objectForKeyedSubscript:@"cardBackgroundColor"];
  v9 = [FCColor nullableColorWithHexString:v8];

  v10 = [dictCopy objectForKeyedSubscript:@"cardForegroundColor"];
  v11 = [FCColor nullableColorWithHexString:v10];

  v12 = [dictCopy objectForKeyedSubscript:@"sauceColorGradient"];
  if (v12)
  {
    v13 = [FCColorGradient colorGradientWithConfigDict:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [dictCopy objectForKeyedSubscript:@"ctaBackgroundColor"];
  v15 = [FCColor nullableColorWithHexString:v14];

  v16 = [dictCopy objectForKeyedSubscript:@"ctaForegroundColor"];
  v17 = [FCColor nullableColorWithHexString:v16];

  v18 = [[FCCardStyle alloc] initWithTitleForegroundColor:v5 eyebrowForegroundColor:v7 cardBackgroundColor:v9 cardForegroundColor:v11 sauceGradient:v13 ctaBackgroundColor:v15 ctaForegroundColor:v17];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = MEMORY[0x1E69E58C0];
      titleForegroundColor = [(FCCardStyle *)self titleForegroundColor];
      titleForegroundColor2 = [(FCCardStyle *)v5 titleForegroundColor];
      if ([v6 nf_object:titleForegroundColor isEqualToObject:titleForegroundColor2])
      {
        v9 = MEMORY[0x1E69E58C0];
        eyebrowForegroundColor = [(FCCardStyle *)self eyebrowForegroundColor];
        eyebrowForegroundColor2 = [(FCCardStyle *)v5 eyebrowForegroundColor];
        if ([v9 nf_object:eyebrowForegroundColor isEqualToObject:eyebrowForegroundColor2])
        {
          v12 = MEMORY[0x1E69E58C0];
          cardBackgroundColor = [(FCCardStyle *)self cardBackgroundColor];
          cardBackgroundColor2 = [(FCCardStyle *)v5 cardBackgroundColor];
          v36 = cardBackgroundColor;
          if ([v12 nf_object:cardBackgroundColor isEqualToObject:cardBackgroundColor2])
          {
            v14 = MEMORY[0x1E69E58C0];
            cardForegroundColor = [(FCCardStyle *)self cardForegroundColor];
            cardForegroundColor2 = [(FCCardStyle *)v5 cardForegroundColor];
            v34 = cardForegroundColor;
            if ([v14 nf_object:cardForegroundColor isEqualToObject:cardForegroundColor2])
            {
              v16 = MEMORY[0x1E69E58C0];
              sauceGradient = [(FCCardStyle *)self sauceGradient];
              sauceGradient2 = [(FCCardStyle *)v5 sauceGradient];
              v32 = sauceGradient;
              v19 = sauceGradient;
              v20 = sauceGradient2;
              if ([v16 nf_object:v19 isEqualToObject:sauceGradient2])
              {
                v30 = MEMORY[0x1E69E58C0];
                ctaBackgroundColor = [(FCCardStyle *)self ctaBackgroundColor];
                ctaBackgroundColor2 = [(FCCardStyle *)v5 ctaBackgroundColor];
                v23 = v30;
                v29 = ctaBackgroundColor2;
                v31 = ctaBackgroundColor;
                if ([v23 nf_object:ctaBackgroundColor isEqualToObject:?])
                {
                  v28 = MEMORY[0x1E69E58C0];
                  ctaForegroundColor = [(FCCardStyle *)self ctaForegroundColor];
                  ctaForegroundColor2 = [(FCCardStyle *)v5 ctaForegroundColor];
                  v26 = [v28 nf_object:ctaForegroundColor isEqualToObject:ctaForegroundColor2];
                }

                else
                {
                  v26 = 0;
                }
              }

              else
              {
                v26 = 0;
              }
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (unint64_t)hash
{
  titleForegroundColor = [(FCCardStyle *)self titleForegroundColor];
  v4 = [titleForegroundColor hash];
  ctaForegroundColor = [(FCCardStyle *)self ctaForegroundColor];
  v6 = [ctaForegroundColor hash] ^ v4;
  cardBackgroundColor = [(FCCardStyle *)self cardBackgroundColor];
  v8 = [cardBackgroundColor hash];
  cardForegroundColor = [(FCCardStyle *)self cardForegroundColor];
  v10 = v6 ^ v8 ^ [cardForegroundColor hash];
  eyebrowForegroundColor = [(FCCardStyle *)self eyebrowForegroundColor];
  v12 = [eyebrowForegroundColor hash];
  sauceGradient = [(FCCardStyle *)self sauceGradient];
  v14 = v12 ^ [sauceGradient hash];
  ctaBackgroundColor = [(FCCardStyle *)self ctaBackgroundColor];
  v16 = v14 ^ [ctaBackgroundColor hash];

  return v10 ^ v16;
}

@end