@interface DebugFormatUploadMainViewController
- (_TtC8NewsFeed35DebugFormatUploadMainViewController)initWithCoder:(id)coder;
- (_TtC8NewsFeed35DebugFormatUploadMainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8NewsFeed35DebugFormatUploadMainViewController)initWithStyle:(int64_t)style;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation DebugFormatUploadMainViewController

- (_TtC8NewsFeed35DebugFormatUploadMainViewController)initWithCoder:(id)coder
{
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(DebugFormatUploadMainViewController *)&v3 viewDidLoad];

  sub_1D725B33C();

  sub_1D725B35C();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(DebugFormatUploadMainViewController *)&v5 viewDidDisappear:disappearCopy];
  [*(*&v4[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadMainViewController_editor] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_uploaderOperationQueue) cancelAllOperations];
}

- (_TtC8NewsFeed35DebugFormatUploadMainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed35DebugFormatUploadMainViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end