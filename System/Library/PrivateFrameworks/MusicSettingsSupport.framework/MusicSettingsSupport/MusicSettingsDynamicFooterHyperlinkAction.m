@interface MusicSettingsDynamicFooterHyperlinkAction
- (MusicSettingsDynamicFooterHyperlinkAction)initWithTarget:(id)a3 selectorString:(id)a4;
- (id)target;
@end

@implementation MusicSettingsDynamicFooterHyperlinkAction

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (MusicSettingsDynamicFooterHyperlinkAction)initWithTarget:(id)a3 selectorString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MusicSettingsDynamicFooterHyperlinkAction;
  v8 = [(MusicSettingsDynamicFooterHyperlinkAction *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_target, v6);
    v10 = [v7 copy];
    selectorString = v9->_selectorString;
    v9->_selectorString = v10;
  }

  return v9;
}

@end