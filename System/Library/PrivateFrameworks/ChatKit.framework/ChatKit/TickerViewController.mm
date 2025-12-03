@interface TickerViewController
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController)init;
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation TickerViewController

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController_tickCounter) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TickerViewController();
  return [(TickerViewController *)&v3 initWithNibName:0 bundle:0];
}

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController_tickCounter) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController_tickCounter) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for CKDebugTickHUDView());
  selfCopy = self;
  v4 = [v3 init];
  [(TickerViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for TickerViewController();
  [(TickerViewController *)&v2 viewDidLoad];
}

@end