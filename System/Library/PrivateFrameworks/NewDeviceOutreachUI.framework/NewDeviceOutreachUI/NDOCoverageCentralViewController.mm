@interface NDOCoverageCentralViewController
- (NSString)authTokenHeaderKey;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setEmbeddedController:(id)a3;
- (void)setPathObserver:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NDOCoverageCentralViewController

- (NSString)authTokenHeaderKey
{
  v2 = *(self + OBJC_IVAR___NDOCoverageCentralViewController_authTokenHeaderKey);
  v3 = *(self + OBJC_IVAR___NDOCoverageCentralViewController_authTokenHeaderKey + 8);

  v4 = sub_25BDDFE38();

  return v4;
}

- (void)setEmbeddedController:(id)a3
{
  v4 = *(self + OBJC_IVAR___NDOCoverageCentralViewController_embeddedController);
  *(self + OBJC_IVAR___NDOCoverageCentralViewController_embeddedController) = a3;
  v3 = a3;
}

- (void)setPathObserver:(id)a3
{
  v4 = *(self + OBJC_IVAR___NDOCoverageCentralViewController_pathObserver);
  *(self + OBJC_IVAR___NDOCoverageCentralViewController_pathObserver) = a3;
  v3 = a3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NDOCoverageCentralViewController;
  v3 = self;
  [(NDOCoverageCentralViewController *)&v4 viewDidAppear:1];
  sub_25BDA8954();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  NDOCoverageCentralViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = NDOCoverageCentralViewController;
  v2 = self;
  [(NDOCoverageCentralViewController *)&v6 viewDidLoad];
  v3 = [(NDOCoverageCentralViewController *)v2 view:v6.receiver];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemGroupedBackgroundColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    a3 = sub_25BDDFE08();
  }

  if (v6)
  {
    v7 = swift_allocObject();
    v7[2] = v6;
    v8 = sub_25BDAAFB0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = self;
  NDOCoverageCentralViewController.handleURL(_:withCompletion:)(a3, v8, v7);
  sub_25BDA8480(v8);
}

@end