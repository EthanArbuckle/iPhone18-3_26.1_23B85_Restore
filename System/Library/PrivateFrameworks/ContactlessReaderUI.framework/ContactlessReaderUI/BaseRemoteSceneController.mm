@interface BaseRemoteSceneController
- (_TtC19ContactlessReaderUI25BaseRemoteSceneController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handlePanWithSender:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BaseRemoteSceneController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2440238D8(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_244023AD4(v3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_244023EFC();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_244024350(a3);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v6 = sub_243FDC768;
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  sub_2440267A8();
  sub_243F7EE58(v6);
}

- (void)handlePanWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2440255B0(v4);
}

- (_TtC19ContactlessReaderUI25BaseRemoteSceneController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_2440D2FB0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return BaseRemoteSceneController.init(nibName:bundle:)(v5, v7, a4);
}

@end