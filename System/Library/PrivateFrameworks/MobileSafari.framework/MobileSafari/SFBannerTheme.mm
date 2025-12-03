@interface SFBannerTheme
- (BOOL)isEqual:(id)equal;
- (SFBannerTheme)initWithBarTintStyle:(int64_t)style preferredBarTintColor:(id)color controlsTintColor:(id)tintColor;
@end

@implementation SFBannerTheme

- (SFBannerTheme)initWithBarTintStyle:(int64_t)style preferredBarTintColor:(id)color controlsTintColor:(id)tintColor
{
  v11.receiver = self;
  v11.super_class = SFBannerTheme;
  v6 = [(SFThemeColorBarTheme *)&v11 initWithBarTintStyle:style preferredBarTintColor:color controlsTintColor:tintColor];
  if (v6)
  {
    if (color)
    {
      sf_transparentBarHairlineColor = [MEMORY[0x1E69DC888] sf_transparentBarHairlineColor];
      separatorColor = v6->_separatorColor;
      v6->_separatorColor = sf_transparentBarHairlineColor;
    }

    v9 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SFBannerTheme;
    if ([(SFThemeColorBarTheme *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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