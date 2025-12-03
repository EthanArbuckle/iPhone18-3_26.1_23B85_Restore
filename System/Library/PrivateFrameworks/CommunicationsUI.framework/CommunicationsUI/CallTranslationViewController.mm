@interface CallTranslationViewController
- (_TtC16CommunicationsUI29CallTranslationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CallTranslationViewController

- (void)viewDidLoad
{
  selfCopy = self;
  CallTranslationViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  CallTranslationViewController.viewDidLayoutSubviews()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CallTranslationViewController *)&v5 viewDidAppear:appearCopy];
  v4[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_isViewVisible] = 1;
}

- (_TtC16CommunicationsUI29CallTranslationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  CallTranslationViewController.scrollViewDidScroll(_:)(scrollCopy);
}

@end