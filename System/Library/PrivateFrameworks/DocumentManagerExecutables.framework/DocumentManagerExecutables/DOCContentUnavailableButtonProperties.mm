@interface DOCContentUnavailableButtonProperties
- (UIAction)primaryAction;
- (void)configurePlain;
- (void)setPrimaryAction:(id)action;
@end

@implementation DOCContentUnavailableButtonProperties

- (void)configurePlain
{
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  asUIKit = [(DOCContentUnavailableButtonProperties *)self asUIKit];
  [asUIKit setConfiguration:plainButtonConfiguration];
}

- (UIAction)primaryAction
{
  asUIKit = [(DOCContentUnavailableButtonProperties *)self asUIKit];
  primaryAction = [asUIKit primaryAction];

  return primaryAction;
}

- (void)setPrimaryAction:(id)action
{
  actionCopy = action;
  asUIKit = [(DOCContentUnavailableButtonProperties *)self asUIKit];
  [asUIKit setPrimaryAction:actionCopy];

  title = [actionCopy title];

  if ([title length])
  {
    asUIKit2 = [(DOCContentUnavailableButtonProperties *)self asUIKit];
    configuration = [asUIKit2 configuration];
    [configuration setTitle:title];
  }
}

@end