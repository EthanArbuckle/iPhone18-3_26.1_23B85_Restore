@interface _UIViewServiceViewController
- (_TtC37com_apple_CloudSharingUI_CloudSharing28_UIViewServiceViewController)initWithCoder:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)viewDidLayoutSubviews;
@end

@implementation _UIViewServiceViewController

- (_TtC37com_apple_CloudSharingUI_CloudSharing28_UIViewServiceViewController)initWithCoder:(id)a3
{
  result = sub_1000C72E4();
  __break(1u);
  return result;
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for _UIViewServiceViewController();
  [(_UIViewServiceViewController *)&v2 viewDidLayoutSubviews];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  [v7 preferredContentSize];
  [v6 setPreferredContentSize:?];
}

@end