@interface FCCardStyle
+ (id)styleWithConfigDict:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FCCardStyle)initWithTitleForegroundColor:(id)a3 eyebrowForegroundColor:(id)a4 cardBackgroundColor:(id)a5 cardForegroundColor:(id)a6 sauceGradient:(id)a7 ctaBackgroundColor:(id)a8 ctaForegroundColor:(id)a9;
- (unint64_t)hash;
@end

@implementation FCCardStyle

- (FCCardStyle)initWithTitleForegroundColor:(id)a3 eyebrowForegroundColor:(id)a4 cardBackgroundColor:(id)a5 cardForegroundColor:(id)a6 sauceGradient:(id)a7 ctaBackgroundColor:(id)a8 ctaForegroundColor:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = FCCardStyle;
  v18 = [(FCCardStyle *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_titleForegroundColor, a3);
    objc_storeStrong(&v19->_eyebrowForegroundColor, a4);
    objc_storeStrong(&v19->_cardBackgroundColor, a5);
    objc_storeStrong(&v19->_cardForegroundColor, a6);
    objc_storeStrong(&v19->_sauceGradient, a7);
    objc_storeStrong(&v19->_ctaBackgroundColor, a8);
    objc_storeStrong(&v19->_ctaForegroundColor, a9);
  }

  return v19;
}

+ (id)styleWithConfigDict:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"titleForegroundColor"];
  v5 = [FCColor nullableColorWithHexString:v4];

  v6 = [v3 objectForKeyedSubscript:@"eyebrowForegroundColor"];
  v7 = [FCColor nullableColorWithHexString:v6];

  v8 = [v3 objectForKeyedSubscript:@"cardBackgroundColor"];
  v9 = [FCColor nullableColorWithHexString:v8];

  v10 = [v3 objectForKeyedSubscript:@"cardForegroundColor"];
  v11 = [FCColor nullableColorWithHexString:v10];

  v12 = [v3 objectForKeyedSubscript:@"sauceColorGradient"];
  if (v12)
  {
    v13 = [FCColorGradient colorGradientWithConfigDict:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 objectForKeyedSubscript:@"ctaBackgroundColor"];
  v15 = [FCColor nullableColorWithHexString:v14];

  v16 = [v3 objectForKeyedSubscript:@"ctaForegroundColor"];
  v17 = [FCColor nullableColorWithHexString:v16];

  v18 = [[FCCardStyle alloc] initWithTitleForegroundColor:v5 eyebrowForegroundColor:v7 cardBackgroundColor:v9 cardForegroundColor:v11 sauceGradient:v13 ctaBackgroundColor:v15 ctaForegroundColor:v17];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = MEMORY[0x1E69E58C0];
      v7 = [(FCCardStyle *)self titleForegroundColor];
      v8 = [(FCCardStyle *)v5 titleForegroundColor];
      if ([v6 nf_object:v7 isEqualToObject:v8])
      {
        v9 = MEMORY[0x1E69E58C0];
        v10 = [(FCCardStyle *)self eyebrowForegroundColor];
        v11 = [(FCCardStyle *)v5 eyebrowForegroundColor];
        if ([v9 nf_object:v10 isEqualToObject:v11])
        {
          v12 = MEMORY[0x1E69E58C0];
          v13 = [(FCCardStyle *)self cardBackgroundColor];
          v35 = [(FCCardStyle *)v5 cardBackgroundColor];
          v36 = v13;
          if ([v12 nf_object:v13 isEqualToObject:v35])
          {
            v14 = MEMORY[0x1E69E58C0];
            v15 = [(FCCardStyle *)self cardForegroundColor];
            v33 = [(FCCardStyle *)v5 cardForegroundColor];
            v34 = v15;
            if ([v14 nf_object:v15 isEqualToObject:v33])
            {
              v16 = MEMORY[0x1E69E58C0];
              v17 = [(FCCardStyle *)self sauceGradient];
              v18 = [(FCCardStyle *)v5 sauceGradient];
              v32 = v17;
              v19 = v17;
              v20 = v18;
              if ([v16 nf_object:v19 isEqualToObject:v18])
              {
                v30 = MEMORY[0x1E69E58C0];
                v21 = [(FCCardStyle *)self ctaBackgroundColor];
                v22 = [(FCCardStyle *)v5 ctaBackgroundColor];
                v23 = v30;
                v29 = v22;
                v31 = v21;
                if ([v23 nf_object:v21 isEqualToObject:?])
                {
                  v28 = MEMORY[0x1E69E58C0];
                  v24 = [(FCCardStyle *)self ctaForegroundColor];
                  v25 = [(FCCardStyle *)v5 ctaForegroundColor];
                  v26 = [v28 nf_object:v24 isEqualToObject:v25];
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
  v3 = [(FCCardStyle *)self titleForegroundColor];
  v4 = [v3 hash];
  v5 = [(FCCardStyle *)self ctaForegroundColor];
  v6 = [v5 hash] ^ v4;
  v7 = [(FCCardStyle *)self cardBackgroundColor];
  v8 = [v7 hash];
  v9 = [(FCCardStyle *)self cardForegroundColor];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(FCCardStyle *)self eyebrowForegroundColor];
  v12 = [v11 hash];
  v13 = [(FCCardStyle *)self sauceGradient];
  v14 = v12 ^ [v13 hash];
  v15 = [(FCCardStyle *)self ctaBackgroundColor];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

@end