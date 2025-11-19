@interface GameCenterSignInActionImplementation
- (void)signInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5;
- (void)signInControllerDidCancel:(id)a3;
@end

@implementation GameCenterSignInActionImplementation

- (void)signInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_24E0D835C(v8, a4, a5);
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D8480(v4);
}

@end