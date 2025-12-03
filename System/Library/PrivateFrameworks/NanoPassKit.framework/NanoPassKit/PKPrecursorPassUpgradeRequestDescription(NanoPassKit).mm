@interface PKPrecursorPassUpgradeRequestDescription(NanoPassKit)
- (id)_primaryAction;
- (id)npk_actionURL;
- (id)npk_localizedActionText;
- (uint64_t)npk_actionType;
@end

@implementation PKPrecursorPassUpgradeRequestDescription(NanoPassKit)

- (id)npk_localizedActionText
{
  _primaryAction = [self _primaryAction];
  localizedActionText = [_primaryAction localizedActionText];

  return localizedActionText;
}

- (uint64_t)npk_actionType
{
  _primaryAction = [self _primaryAction];
  actionType = [_primaryAction actionType];

  return actionType;
}

- (id)npk_actionURL
{
  _primaryAction = [self _primaryAction];
  actionURL = [_primaryAction actionURL];

  return actionURL;
}

- (id)_primaryAction
{
  actions = [self actions];
  firstObject = [actions firstObject];

  return firstObject;
}

@end