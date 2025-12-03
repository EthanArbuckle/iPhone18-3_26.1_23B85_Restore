@interface BTShareAudioBaseViewController
- (void)_handleMenuButton:(id)button;
@end

@implementation BTShareAudioBaseViewController

- (void)_handleMenuButton:(id)button
{
  buttonCopy = button;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioBaseViewController _handleMenuButton:];
  }

  [(BTShareAudioViewController *)self->_mainController reportUserCancelled];
}

@end