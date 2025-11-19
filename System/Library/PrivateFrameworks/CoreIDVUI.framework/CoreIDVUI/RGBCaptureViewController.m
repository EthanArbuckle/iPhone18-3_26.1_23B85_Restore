@interface RGBCaptureViewController
- (void)cancelBarButtonClicked;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RGBCaptureViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_245860F58(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2458611B4(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_245861388();
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_2458681BC(v8);
}

- (void)cancelBarButtonClicked
{
  v2 = self;
  sub_2458677E0();
}

@end