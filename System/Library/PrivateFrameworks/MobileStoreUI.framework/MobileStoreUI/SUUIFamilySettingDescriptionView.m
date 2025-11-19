@interface SUUIFamilySettingDescriptionView
+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5;
- (id)_attributedStringForKey:(id)a3;
- (id)_attributedStringForViewState;
- (void)_layoutWithActivityIndicator;
- (void)_layoutWithLockup;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIFamilySettingDescriptionView

+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5
{
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76918], a5}];
  [v6 _scaledValueForValue:48.0];
  v8 = v7;

  v9 = a3;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  objc_storeStrong(&self->_layoutContext, a5);
  v7 = a3;
  v8 = [v7 viewState];

  [(SUUIFamilySettingDescriptionView *)self _setViewState:v8];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SUUIFamilySettingDescriptionView;
  [(SUUIFamilySettingDescriptionView *)&v4 layoutSubviews];
  viewState = self->_viewState;
  if ((viewState - 1) >= 3)
  {
    if (viewState == -1)
    {
      [(SUUIFamilySettingDescriptionView *)self _layoutWithActivityIndicator];
    }
  }

  else
  {
    [(SUUIFamilySettingDescriptionView *)self _layoutWithLockup];
  }
}

- (id)_attributedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(SUUISettingsFamilyViewElement *)self->_viewElement style];
  v6 = [(SUUIViewElementLayoutContext *)self->_layoutContext clientContext];
  v7 = v6;
  if (v6)
  {
    [v6 localizedStringForKey:v4 inTable:@"Settings"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:v4 inBundles:0 inTable:@"Settings"];
  }
  v8 = ;

  v9 = [v5 textShadow];
  v10 = [(SUUIFamilySettingDescriptionView *)self tintColor];
  v11 = SUUIViewElementPlainColorWithStyle(v5, v10);

  if (!v11)
  {
    v11 = [MEMORY[0x277D75348] blackColor];
  }

  v12 = SUUIViewElementFontWithStyle(v5);
  v13 = objc_alloc(MEMORY[0x277CBEAC0]);
  v14 = [v13 initWithObjectsAndKeys:{v11, *MEMORY[0x277D740C0], v12, *MEMORY[0x277D740A8], v9, *MEMORY[0x277D74138], 0}];
  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8 attributes:v14];

  return v15;
}

- (id)_attributedStringForViewState
{
  viewState = self->_viewState;
  v3 = @"SETTINGS_FAMILY_SETUP";
  if (viewState == 2)
  {
    v3 = @"SETTINGS_FAMILY_ADD";
  }

  if (viewState == 3)
  {
    v4 = @"SETTINGS_FAMILY_MANAGE";
  }

  else
  {
    v4 = v3;
  }

  v5 = [(SUUIFamilySettingDescriptionView *)self _attributedStringForKey:v4];

  return v5;
}

- (void)_layoutWithActivityIndicator
{
  [(UIImageView *)self->_iconImageView setHidden:1];
  [(UILabel *)self->_labelView setHidden:1];
  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
  if (!self->_activityIndicator)
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = v3;

    [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
    [(SUUIFamilySettingDescriptionView *)self addSubview:self->_activityIndicator];
  }

  [(SUUIFamilySettingDescriptionView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v9 = self->_activityIndicator;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);

  [(UIActivityIndicatorView *)v9 setCenter:MidX, MidY];
}

- (void)_layoutWithLockup
{
  [(UIImageView *)self->_iconImageView setHidden:0];
  [(UILabel *)self->_labelView setHidden:0];
  [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  [(SUUISettingDescriptionView *)self layoutMargins];
  v4 = v3;
  v36 = v5;
  [(SUUIFamilySettingDescriptionView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  iconImageView = self->_iconImageView;
  if (!iconImageView)
  {
    v15 = objc_alloc(MEMORY[0x277D755E8]);
    v16 = SUUIImageWithResourceName(@"familySharing");
    v17 = [v15 initWithImage:v16];
    v18 = self->_iconImageView;
    self->_iconImageView = v17;

    [(SUUIFamilySettingDescriptionView *)self addSubview:self->_iconImageView];
    iconImageView = self->_iconImageView;
  }

  v19 = [(UIImageView *)iconImageView image];
  [v19 size];
  v21 = v20;
  v23 = v22;

  v39.origin.x = v7;
  v39.origin.y = v9;
  v39.size.width = v11;
  v39.size.height = v13;
  v24 = floor((CGRectGetHeight(v39) - v23) * 0.5);
  [(UIImageView *)self->_iconImageView setFrame:v4, v24, v21, v23];
  labelView = self->_labelView;
  if (!labelView)
  {
    v26 = objc_alloc_init(MEMORY[0x277D756B8]);
    v27 = self->_labelView;
    self->_labelView = v26;

    [(UILabel *)self->_labelView _setTextColorFollowsTintColor:1];
    [(SUUIFamilySettingDescriptionView *)self addSubview:self->_labelView];
    labelView = self->_labelView;
  }

  v28 = [(SUUIFamilySettingDescriptionView *)self _attributedStringForViewState];
  [(UILabel *)labelView setAttributedText:v28];

  v37 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v40.origin.x = v4;
  v40.origin.y = v24;
  v40.size.width = v21;
  v40.size.height = v23;
  v29 = CGRectGetMaxX(v40) + 8.0;
  v41.origin.x = v7;
  v41.origin.y = v9;
  v41.size.width = v11;
  v41.size.height = v13;
  v30 = CGRectGetWidth(v41) - v29 - v36;
  [(UILabel *)self->_labelView sizeThatFits:v30, 1.79769313e308];
  v32 = v31;
  [v37 _scaledValueForValue:30.0];
  v34 = v33;
  [(UILabel *)self->_labelView _firstBaselineOffsetFromTop];
  [(UILabel *)self->_labelView setFrame:v29, v34 - v35, v30, v32];
}

@end