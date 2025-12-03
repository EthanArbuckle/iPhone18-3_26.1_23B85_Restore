@interface GameCenterSignInActionImplementation
- (void)signInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)signInControllerDidCancel:(id)cancel;
@end

@implementation GameCenterSignInActionImplementation

- (void)signInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_24E0D835C(controllerCopy, success, error);
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_24E0D8480(cancelCopy);
}

@end