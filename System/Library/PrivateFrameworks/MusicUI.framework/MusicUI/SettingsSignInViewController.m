@interface SettingsSignInViewController
- (_TtC7MusicUI28SettingsSignInViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SettingsSignInViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_216BEFE28(a3);
}

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_216BF0868();
  sub_21700E354();
  v6 = a3;
  v7 = self;
  sub_216BF0044();
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_216BF027C();
}

- (_TtC7MusicUI28SettingsSignInViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_21700E514();
  }

  v5 = a4;
  sub_216BF06E4();
}

@end