@interface BTShareAudioErrorViewController
- (void)eventDismiss:(id)dismiss;
@end

@implementation BTShareAudioErrorViewController

- (void)eventDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioErrorViewController eventDismiss:];
  }

  [(BTShareAudioViewController *)self->super._mainController reportError:self->_error];
}

@end