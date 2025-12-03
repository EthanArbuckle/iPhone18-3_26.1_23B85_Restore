@interface SUUISettingsTableHeaderFooterView
- (void)displaySettingsHeaderFooterDescriptionView:(id)view;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SUUISettingsTableHeaderFooterView

- (void)displaySettingsHeaderFooterDescriptionView:(id)view
{
  objc_storeStrong(&self->_settingsHeaderFooterDescriptionView, view);
  viewCopy = view;
  contentView = [(SUUISettingsTableHeaderFooterView *)self contentView];
  [contentView addSubview:self->_settingsHeaderFooterDescriptionView];

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
  contentView = [(SUUISettingsTableHeaderFooterView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SUUISettingsTableHeaderFooterView *)self layoutMargins];
  [(SUUISettingsHeaderFooterDescriptionView *)self->_settingsHeaderFooterDescriptionView setLayoutMargins:?];
  [(SUUISettingsHeaderFooterDescriptionView *)self->_settingsHeaderFooterDescriptionView setFrame:v5, v7, v9, v11];
}

@end