@interface ICSystemPaperLinkBarViewController
- (ICSystemPaperLinkBarViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapAddLinkButtonWithButton:(id)a3;
- (void)refresh;
- (void)viewDidLoad;
@end

@implementation ICSystemPaperLinkBarViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_215425410();
}

- (void)didTapAddLinkButtonWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_215426728(v4);
}

- (void)refresh
{
  v2 = self;
  sub_2154287FC();
}

- (ICSystemPaperLinkBarViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end