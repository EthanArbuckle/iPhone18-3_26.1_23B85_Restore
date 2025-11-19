@interface SUUISettingsTableHeaderFooterView
- (void)displaySettingsHeaderFooterDescriptionView:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SUUISettingsTableHeaderFooterView

- (void)displaySettingsHeaderFooterDescriptionView:(id)a3
{
  objc_storeStrong(&self->_settingsHeaderFooterDescriptionView, a3);
  v5 = a3;
  v6 = [(SUUISettingsTableHeaderFooterView *)self contentView];
  [v6 addSubview:self->_settingsHeaderFooterDescriptionView];

  [(SUUISettingsTableHeaderFooterView *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  [(SUUISettingsHeaderFooterDescriptionView *)self->_settingsHeaderFooterDescriptionView removeFromSuperview];
  settingsHeaderFooterDescriptionView = self->_settingsHeaderFooterDescriptionView;
  self->_settingsHeaderFooterDescriptionView = 0;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SUUISettingsTableHeaderFooterView;
  [(SUUISettingsTableHeaderFooterView *)&v12 layoutSubviews];
  v3 = [(SUUISettingsTableHeaderFooterView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SUUISettingsTableHeaderFooterView *)self layoutMargins];
  [(SUUISettingsHeaderFooterDescriptionView *)self->_settingsHeaderFooterDescriptionView setLayoutMargins:?];
  [(SUUISettingsHeaderFooterDescriptionView *)self->_settingsHeaderFooterDescriptionView setFrame:v5, v7, v9, v11];
}

@end