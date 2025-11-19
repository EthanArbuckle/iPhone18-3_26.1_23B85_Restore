@interface MUDocumentPickerViewController
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation MUDocumentPickerViewController

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(UIDocumentPickerViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 documentPickerWasCancelled:self];
    }
  }

  MEMORY[0x2821F9730]();
}

@end