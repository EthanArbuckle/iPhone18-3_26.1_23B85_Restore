@interface DOCLoadingViewController
- (_TtC26DocumentManagerExecutables24DOCLoadingViewController)initWithCoder:(id)a3;
- (void)effectiveAppearanceDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation DOCLoadingViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  DOCLoadingViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCLoadingViewController();
  v4 = v5.receiver;
  [(DOCLoadingViewController *)&v5 viewDidDisappear:v3];
  DOCLoadingViewController.task.getter();
  dispatch thunk of DispatchWorkItem.cancel()();
}

- (void)effectiveAppearanceDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCLoadingViewController();
  v4 = a3;
  v5 = v9.receiver;
  [(DOCBrowserContainedViewController *)&v9 effectiveAppearanceDidChange:v4];
  v6 = [v5 viewIfLoaded];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 backgroundColor];
    [v7 setBackgroundColor_];
  }
}

- (_TtC26DocumentManagerExecutables24DOCLoadingViewController)initWithCoder:(id)a3
{
  *&self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCLoadingViewController____lazy_storage___task] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCLoadingViewController();
  v4 = a3;
  v5 = [(DOCBrowserContainedViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end