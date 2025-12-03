@interface SignInControllerDelegate
- (void)signInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)signInControllerDidCancel:(id)cancel;
@end

@implementation SignInControllerDelegate

- (void)signInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_24E14F3DC(controllerCopy, 0, error);
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_24E14F894(cancelCopy);
}

@end