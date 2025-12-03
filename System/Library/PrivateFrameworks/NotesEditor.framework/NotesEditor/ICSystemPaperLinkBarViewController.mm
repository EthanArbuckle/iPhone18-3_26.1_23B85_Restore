@interface ICSystemPaperLinkBarViewController
- (ICSystemPaperLinkBarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapAddLinkButtonWithButton:(id)button;
- (void)refresh;
- (void)viewDidLoad;
@end

@implementation ICSystemPaperLinkBarViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_215425410();
}

- (void)didTapAddLinkButtonWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_215426728(buttonCopy);
}

- (void)refresh
{
  selfCopy = self;
  sub_2154287FC();
}

- (ICSystemPaperLinkBarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end