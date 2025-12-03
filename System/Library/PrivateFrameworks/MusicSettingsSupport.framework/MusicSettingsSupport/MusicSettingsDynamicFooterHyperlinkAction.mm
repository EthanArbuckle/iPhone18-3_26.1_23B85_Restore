@interface MusicSettingsDynamicFooterHyperlinkAction
- (MusicSettingsDynamicFooterHyperlinkAction)initWithTarget:(id)target selectorString:(id)string;
- (id)target;
@end

@implementation MusicSettingsDynamicFooterHyperlinkAction

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (MusicSettingsDynamicFooterHyperlinkAction)initWithTarget:(id)target selectorString:(id)string
{
  targetCopy = target;
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = MusicSettingsDynamicFooterHyperlinkAction;
  v8 = [(MusicSettingsDynamicFooterHyperlinkAction *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_target, targetCopy);
    v10 = [stringCopy copy];
    selectorString = v9->_selectorString;
    v9->_selectorString = v10;
  }

  return v9;
}

@end