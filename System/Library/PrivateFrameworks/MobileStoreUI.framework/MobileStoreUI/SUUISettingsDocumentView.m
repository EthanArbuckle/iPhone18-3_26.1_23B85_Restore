@interface SUUISettingsDocumentView
- (SUUISettingsDocumentViewDelegate)delegate;
- (void)tintColorDidChange;
@end

@implementation SUUISettingsDocumentView

- (void)tintColorDidChange
{
  v8.receiver = self;
  v8.super_class = SUUISettingsDocumentView;
  [(SUUISettingsDocumentView *)&v8 tintColorDidChange];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 settingsDocumentViewDidChangeTintColor:self];
    }
  }
}

- (SUUISettingsDocumentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end