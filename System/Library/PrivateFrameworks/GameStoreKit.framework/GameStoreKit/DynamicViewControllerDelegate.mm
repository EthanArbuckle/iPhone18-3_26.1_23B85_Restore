@interface DynamicViewControllerDelegate
- (_TtC12GameStoreKit29DynamicViewControllerDelegate)init;
- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5;
- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5;
@end

@implementation DynamicViewControllerDelegate

- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_didDismissHandler);
  if (v5)
  {
    v5(self);
  }

  else
  {
    v6 = self;
  }

  if (qword_27F210400 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39C040, qword_27F39C058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();
}

- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = sub_24F92AE38();
  v11 = *(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_contentViewConstructor);
  if (v11)
  {
    v12 = v10;
    v13 = self;
    v14 = v11(v12, x, y, width, height);
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

- (_TtC12GameStoreKit29DynamicViewControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end