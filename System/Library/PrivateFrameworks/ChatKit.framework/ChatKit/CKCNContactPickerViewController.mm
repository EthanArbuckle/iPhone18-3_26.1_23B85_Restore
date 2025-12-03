@interface CKCNContactPickerViewController
- (BOOL)shouldAutorotate;
@end

@implementation CKCNContactPickerViewController

- (BOOL)shouldAutorotate
{
  v2 = +[CKUIBehavior sharedBehaviors];
  shouldSuppressRotationInNewCompose = [v2 shouldSuppressRotationInNewCompose];

  return shouldSuppressRotationInNewCompose ^ 1;
}

@end