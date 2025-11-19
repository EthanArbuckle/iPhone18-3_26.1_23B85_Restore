@interface CallTranslationViewController
- (_TtC16CommunicationsUI29CallTranslationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CallTranslationViewController

- (void)viewDidLoad
{
  v2 = self;
  CallTranslationViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  CallTranslationViewController.viewDidLayoutSubviews()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CallTranslationViewController *)&v5 viewDidAppear:v3];
  v4[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_isViewVisible] = 1;
}

- (_TtC16CommunicationsUI29CallTranslationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  CallTranslationViewController.scrollViewDidScroll(_:)(v4);
}

@end