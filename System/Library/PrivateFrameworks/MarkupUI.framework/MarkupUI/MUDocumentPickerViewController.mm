@interface MUDocumentPickerViewController
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation MUDocumentPickerViewController

- (void)presentationControllerDidDismiss:(id)dismiss
{
  delegate = [(UIDocumentPickerViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 documentPickerWasCancelled:self];
    }
  }

  MEMORY[0x2821F9730]();
}

@end