@interface BTShareAudioErrorViewController
- (void)eventDismiss:(id)a3;
@end

@implementation BTShareAudioErrorViewController

- (void)eventDismiss:(id)a3
{
  v4 = a3;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioErrorViewController eventDismiss:];
  }

  [(BTShareAudioViewController *)self->super._mainController reportError:self->_error];
}

@end