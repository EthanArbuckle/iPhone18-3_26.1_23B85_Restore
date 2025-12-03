@interface NDOCoverageCentralViewController
- (NSString)authTokenHeaderKey;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)setEmbeddedController:(id)controller;
- (void)setPathObserver:(id)observer;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NDOCoverageCentralViewController

- (NSString)authTokenHeaderKey
{
  v2 = *(self + OBJC_IVAR___NDOCoverageCentralViewController_authTokenHeaderKey);
  v3 = *(self + OBJC_IVAR___NDOCoverageCentralViewController_authTokenHeaderKey + 8);

  v4 = sub_25BDDFE38();

  return v4;
}

- (void)setEmbeddedController:(id)controller
{
  v4 = *(self + OBJC_IVAR___NDOCoverageCentralViewController_embeddedController);
  *(self + OBJC_IVAR___NDOCoverageCentralViewController_embeddedController) = controller;
  controllerCopy = controller;
}

- (void)setPathObserver:(id)observer
{
  v4 = *(self + OBJC_IVAR___NDOCoverageCentralViewController_pathObserver);
  *(self + OBJC_IVAR___NDOCoverageCentralViewController_pathObserver) = observer;
  observerCopy = observer;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NDOCoverageCentralViewController;
  selfCopy = self;
  [(NDOCoverageCentralViewController *)&v4 viewDidAppear:1];
  sub_25BDA8954();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  NDOCoverageCentralViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = NDOCoverageCentralViewController;
  selfCopy = self;
  [(NDOCoverageCentralViewController *)&v6 viewDidLoad];
  v3 = [(NDOCoverageCentralViewController *)selfCopy view:v6.receiver];
  if (v3)
  {
    v4 = v3;
    systemGroupedBackgroundColor = [objc_opt_self() systemGroupedBackgroundColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  if (l)
  {
    l = sub_25BDDFE08();
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

  selfCopy = self;
  NDOCoverageCentralViewController.handleURL(_:withCompletion:)(l, v8, v7);
  sub_25BDA8480(v8);
}

@end