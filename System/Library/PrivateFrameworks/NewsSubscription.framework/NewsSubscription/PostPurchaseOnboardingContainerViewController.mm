@interface PostPurchaseOnboardingContainerViewController
- (_TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation PostPurchaseOnboardingContainerViewController

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = a3;
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a4);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1D7839608;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v8;
  v11[4] = v9;
  aBlock[4] = sub_1D77E887C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_15;
  v12 = _Block_copy(aBlock);
  v13 = self;
  sub_1D776AC18(v8);

  v14.receiver = v13;
  v14.super_class = ObjectType;
  [(PostPurchaseOnboardingContainerViewController *)&v14 dismissViewControllerAnimated:v5 completion:v12];
  _Block_release(v12);
  sub_1D7744A7C(v8);
}

- (_TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end