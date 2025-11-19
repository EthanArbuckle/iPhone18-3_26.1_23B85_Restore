@interface RegRemoteAlertViewController
- (_TtC19ContactlessReaderUI28RegRemoteAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RegRemoteAlertViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for RegRemoteAlertViewController();
  [(RegRemoteAlertViewController *)&v4 viewWillAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_243FDA5A8(a3);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_243FDA844(a3, v6, v7);
  sub_243F7EE58(v6);
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
  sub_243FDC43C();
  sub_243F7EE58(v6);
}

- (_TtC19ContactlessReaderUI28RegRemoteAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_243FDC1D8(v5, v7, a4);
}

@end