@interface CollapsedViewController
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CollapsedViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(CollapsedViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C5B9E6A8();
    [v4 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1C5BA6310();
}

@end