@interface DynamicViewControllerDelegate
- (BOOL)dynamicViewControllerShouldDismiss:(id)a3;
- (_TtC16NewsSubscription29DynamicViewControllerDelegate)init;
@end

@implementation DynamicViewControllerDelegate

- (BOOL)dynamicViewControllerShouldDismiss:(id)a3
{
  v4 = qword_1EE08FB98;
  v5 = a3;
  v6 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  sub_1D78ACEAC(v5);

  return 1;
}

- (_TtC16NewsSubscription29DynamicViewControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end