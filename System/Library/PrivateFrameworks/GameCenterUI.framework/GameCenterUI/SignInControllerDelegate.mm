@interface SignInControllerDelegate
- (void)signInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5;
- (void)signInControllerDidCancel:(id)a3;
@end

@implementation SignInControllerDelegate

- (void)signInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_24E14F3DC(v7, 0, a5);
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E14F894(v4);
}

@end