@interface DOCLoadingViewController
- (_TtC26DocumentManagerExecutables24DOCLoadingViewController)initWithCoder:(id)coder;
- (void)effectiveAppearanceDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation DOCLoadingViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  DOCLoadingViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCLoadingViewController();
  v4 = v5.receiver;
  [(DOCLoadingViewController *)&v5 viewDidDisappear:disappearCopy];
  DOCLoadingViewController.task.getter();
  dispatch thunk of DispatchWorkItem.cancel()();
}

- (void)effectiveAppearanceDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCLoadingViewController();
  changeCopy = change;
  v5 = v9.receiver;
  [(DOCBrowserContainedViewController *)&v9 effectiveAppearanceDidChange:changeCopy];
  viewIfLoaded = [v5 viewIfLoaded];
  if (viewIfLoaded)
  {
    v7 = viewIfLoaded;
    backgroundColor = [changeCopy backgroundColor];
    [v7 setBackgroundColor_];
  }
}

- (_TtC26DocumentManagerExecutables24DOCLoadingViewController)initWithCoder:(id)coder
{
  *&self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCLoadingViewController____lazy_storage___task] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCLoadingViewController();
  coderCopy = coder;
  v5 = [(DOCBrowserContainedViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end