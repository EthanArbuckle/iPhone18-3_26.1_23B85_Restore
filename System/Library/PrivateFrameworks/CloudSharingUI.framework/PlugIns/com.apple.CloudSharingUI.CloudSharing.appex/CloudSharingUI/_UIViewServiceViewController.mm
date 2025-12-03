@interface _UIViewServiceViewController
- (_TtC37com_apple_CloudSharingUI_CloudSharing28_UIViewServiceViewController)initWithCoder:(id)coder;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
@end

@implementation _UIViewServiceViewController

- (_TtC37com_apple_CloudSharingUI_CloudSharing28_UIViewServiceViewController)initWithCoder:(id)coder
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

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [viewControllerCopy preferredContentSize];
  [controllerCopy setPreferredContentSize:?];
}

@end