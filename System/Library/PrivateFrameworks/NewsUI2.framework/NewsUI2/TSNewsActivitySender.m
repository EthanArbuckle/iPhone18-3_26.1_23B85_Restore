@interface TSNewsActivitySender
- (TSNewsActivitySender)init;
- (TSNewsActivitySender)initWithViewController:(id)a3 presentationTransitionFactory:(id)a4 dismissalTransitionFactory:(id)a5;
@end

@implementation TSNewsActivitySender

- (TSNewsActivitySender)initWithViewController:(id)a3 presentationTransitionFactory:(id)a4 dismissalTransitionFactory:(id)a5
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(a4);
  v11 = _Block_copy(a5);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(&self->super.isa + OBJC_IVAR___TSNewsActivitySender_viewController) = a3;
  v14 = (self + OBJC_IVAR___TSNewsActivitySender_presentationTransitionFactory);
  *v14 = sub_2189E5A90;
  v14[1] = v12;
  v15 = (self + OBJC_IVAR___TSNewsActivitySender_dismissalTransitionFactory);
  *v15 = sub_2189E5AC8;
  v15[1] = v13;
  v18.receiver = self;
  v18.super_class = ObjectType;
  v16 = a3;
  return [(TSNewsActivitySender *)&v18 init];
}

- (TSNewsActivitySender)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end