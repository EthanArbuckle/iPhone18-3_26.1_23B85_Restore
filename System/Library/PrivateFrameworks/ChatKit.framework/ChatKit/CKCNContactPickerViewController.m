@interface CKCNContactPickerViewController
- (BOOL)shouldAutorotate;
@end

@implementation CKCNContactPickerViewController

- (BOOL)shouldAutorotate
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 shouldSuppressRotationInNewCompose];

  return v3 ^ 1;
}

@end