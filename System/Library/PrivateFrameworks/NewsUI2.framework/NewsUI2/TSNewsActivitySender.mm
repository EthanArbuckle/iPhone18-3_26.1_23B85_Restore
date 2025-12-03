@interface TSNewsActivitySender
- (TSNewsActivitySender)init;
- (TSNewsActivitySender)initWithViewController:(id)controller presentationTransitionFactory:(id)factory dismissalTransitionFactory:(id)transitionFactory;
@end

@implementation TSNewsActivitySender

- (TSNewsActivitySender)initWithViewController:(id)controller presentationTransitionFactory:(id)factory dismissalTransitionFactory:(id)transitionFactory
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(factory);
  v11 = _Block_copy(transitionFactory);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(&self->super.isa + OBJC_IVAR___TSNewsActivitySender_viewController) = controller;
  v14 = (self + OBJC_IVAR___TSNewsActivitySender_presentationTransitionFactory);
  *v14 = sub_2189E5A90;
  v14[1] = v12;
  v15 = (self + OBJC_IVAR___TSNewsActivitySender_dismissalTransitionFactory);
  *v15 = sub_2189E5AC8;
  v15[1] = v13;
  v18.receiver = self;
  v18.super_class = ObjectType;
  controllerCopy = controller;
  return [(TSNewsActivitySender *)&v18 init];
}

- (TSNewsActivitySender)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end