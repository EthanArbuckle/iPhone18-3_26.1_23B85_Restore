@interface RegRemoteAlertViewController
- (_TtC19ContactlessReaderUI28RegRemoteAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RegRemoteAlertViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for RegRemoteAlertViewController();
  [(RegRemoteAlertViewController *)&v4 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_243FDA5A8(disappear);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_243FDC9A4;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_243FDA844(context, v6, v7);
  sub_243F7EE58(v6);
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
  sub_243FDC43C();
  sub_243F7EE58(v6);
}

- (_TtC19ContactlessReaderUI28RegRemoteAlertViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_243FDC1D8(v5, v7, bundle);
}

@end