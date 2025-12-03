@interface CSAddressingViewController
- (void)updateWithViewModel:(id)model;
@end

@implementation CSAddressingViewController

- (void)updateWithViewModel:(id)model
{
  addressingViewFactory = self->_addressingViewFactory;
  modelCopy = model;
  headerImageData = [modelCopy headerImageData];
  headerTitle = [modelCopy headerTitle];
  loadingText = [modelCopy loadingText];
  supplementaryText = [modelCopy supplementaryText];
  userInfoText = [modelCopy userInfoText];
  primaryButtonText = [modelCopy primaryButtonText];
  secondaryButtonText = [modelCopy secondaryButtonText];

  [(AddressingViewFactory *)addressingViewFactory updateWithHeaderImageData:headerImageData headerTitle:headerTitle loadingText:loadingText supplementaryText:supplementaryText userInfoText:userInfoText primaryButtonText:primaryButtonText secondaryButtonText:secondaryButtonText];
}

@end