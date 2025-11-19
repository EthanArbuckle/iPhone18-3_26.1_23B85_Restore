@interface SFBannerTheme
- (BOOL)isEqual:(id)a3;
- (SFBannerTheme)initWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5;
@end

@implementation SFBannerTheme

- (SFBannerTheme)initWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5
{
  v11.receiver = self;
  v11.super_class = SFBannerTheme;
  v6 = [(SFThemeColorBarTheme *)&v11 initWithBarTintStyle:a3 preferredBarTintColor:a4 controlsTintColor:a5];
  if (v6)
  {
    if (a4)
    {
      v7 = [MEMORY[0x1E69DC888] sf_transparentBarHairlineColor];
      separatorColor = v6->_separatorColor;
      v6->_separatorColor = v7;
    }

    v9 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SFBannerTheme;
    if ([(SFThemeColorBarTheme *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = WBSIsEqual();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end