@interface PKPrecursorPassUpgradeRequestDescription(NanoPassKit)
- (id)_primaryAction;
- (id)npk_actionURL;
- (id)npk_localizedActionText;
- (uint64_t)npk_actionType;
@end

@implementation PKPrecursorPassUpgradeRequestDescription(NanoPassKit)

- (id)npk_localizedActionText
{
  v1 = [a1 _primaryAction];
  v2 = [v1 localizedActionText];

  return v2;
}

- (uint64_t)npk_actionType
{
  v1 = [a1 _primaryAction];
  v2 = [v1 actionType];

  return v2;
}

- (id)npk_actionURL
{
  v1 = [a1 _primaryAction];
  v2 = [v1 actionURL];

  return v2;
}

- (id)_primaryAction
{
  v1 = [a1 actions];
  v2 = [v1 firstObject];

  return v2;
}

@end