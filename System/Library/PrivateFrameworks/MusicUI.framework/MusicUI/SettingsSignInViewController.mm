@interface SettingsSignInViewController
- (_TtC7MusicUI28SettingsSignInViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SettingsSignInViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_216BEFE28(appear);
}

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_216BF0868();
  sub_21700E354();
  controllerCopy = controller;
  selfCopy = self;
  sub_216BF0044();
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_216BF027C();
}

- (_TtC7MusicUI28SettingsSignInViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_21700E514();
  }

  bundleCopy = bundle;
  sub_216BF06E4();
}

@end