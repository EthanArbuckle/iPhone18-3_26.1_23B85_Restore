@interface BTShareAudioBaseViewController
- (void)_handleMenuButton:(id)a3;
@end

@implementation BTShareAudioBaseViewController

- (void)_handleMenuButton:(id)a3
{
  v4 = a3;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioBaseViewController _handleMenuButton:];
  }

  [(BTShareAudioViewController *)self->_mainController reportUserCancelled];
}

@end