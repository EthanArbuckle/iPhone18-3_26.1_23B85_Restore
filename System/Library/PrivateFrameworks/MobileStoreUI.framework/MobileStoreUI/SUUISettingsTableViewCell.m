@interface SUUISettingsTableViewCell
- (SUUISettingsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)displaySettingDescriptionView:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUISettingsTableViewCell

- (SUUISettingsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = SUUISettingsTableViewCell;
  result = [(SUUISettingsTableViewCell *)&v5 initWithStyle:a3 reuseIdentifier:a4];
  if (result)
  {
    result->_hasDisclosureChevron = 0;
  }

  return result;
}

- (void)displaySettingDescriptionView:(id)a3
{
  v4 = a3;
  self->_hasDisclosureChevron = [(SUUISettingDescriptionView *)v4 hasDisclosureChevron];
  settingDescriptionView = self->_settingDescriptionView;
  self->_settingDescriptionView = v4;
  v6 = v4;

  v7 = [(SUUISettingsTableViewCell *)self contentView];
  [v7 addSubview:self->_settingDescriptionView];

  [(SUUISettingsTableViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  [(SUUISettingDescriptionView *)self->_settingDescriptionView removeFromSuperview];
  settingDescriptionView = self->_settingDescriptionView;
  self->_settingDescriptionView = 0;

  self->_hasDisclosureChevron = 0;
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = SUUISettingsTableViewCell;
  [(SUUISettingsTableViewCell *)&v37 layoutSubviews];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 userInterfaceLayoutDirection];

  v5 = [(SUUISettingsTableViewCell *)self contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(SUUISettingsTableViewCell *)self layoutMargins];
  v16 = v14;
  v18 = v17;
  v19 = v15;
  v21 = v20;
  if (self->_hasDisclosureChevron)
  {
    v35 = v15;
    v36 = v14;
    v22 = SUUIImageWithResourceName(@"chevronRight");
    v23 = [v22 imageFlippedForRightToLeftLayoutDirection];

    if (!self->_disclosureChevron)
    {
      v24 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v23];
      disclosureChevron = self->_disclosureChevron;
      self->_disclosureChevron = v24;

      v26 = self->_disclosureChevron;
      v27 = [MEMORY[0x277D75348] colorWithWhite:0.674509804 alpha:1.0];
      [(UIImageView *)v26 setTintColor:v27];

      v28 = [(SUUISettingsTableViewCell *)self contentView];
      [v28 addSubview:self->_disclosureChevron];
    }

    [v23 size];
    v30 = v29;
    v32 = v31;
    v34 = v21;
    if (v4)
    {
      v33 = v18;
    }

    else
    {
      v38.origin.x = v7;
      v38.origin.y = v9;
      v38.size.width = v11;
      v38.size.height = v13;
      v33 = CGRectGetWidth(v38) - v30 - v21;
    }

    v39.origin.x = v7;
    v39.origin.y = v9;
    v39.size.width = v11;
    v39.size.height = v13;
    [(UIImageView *)self->_disclosureChevron setFrame:v33, (CGRectGetHeight(v39) - v32) * 0.5, v30, v32];
    [(UIImageView *)self->_disclosureChevron setHidden:0];

    v19 = v35;
    v16 = v36;
    v21 = v34;
  }

  else
  {
    [(UIImageView *)self->_disclosureChevron setHidden:1];
  }

  [(SUUISettingDescriptionView *)self->_settingDescriptionView setLayoutMargins:v16, v18, v19, v21];
  [(SUUISettingDescriptionView *)self->_settingDescriptionView setFrame:v7, v9, v11, v13];
}

- (void)setBackgroundColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = SUUISettingsTableViewCell;
  [(SUUISettingsTableViewCell *)&v3 setBackgroundColor:a3];
}

@end