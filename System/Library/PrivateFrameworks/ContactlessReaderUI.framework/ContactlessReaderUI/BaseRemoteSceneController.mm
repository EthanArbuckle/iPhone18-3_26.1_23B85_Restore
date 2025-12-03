@interface BaseRemoteSceneController
- (_TtC19ContactlessReaderUI25BaseRemoteSceneController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handlePanWithSender:(id)sender;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BaseRemoteSceneController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2440238D8(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_244023AD4(appearCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_244023EFC();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_244024350(disappear);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v6 = sub_243FDC768;
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  sub_2440267A8();
  sub_243F7EE58(v6);
}

- (void)handlePanWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_2440255B0(senderCopy);
}

- (_TtC19ContactlessReaderUI25BaseRemoteSceneController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2440D2FB0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return BaseRemoteSceneController.init(nibName:bundle:)(v5, v7, bundle);
}

@end