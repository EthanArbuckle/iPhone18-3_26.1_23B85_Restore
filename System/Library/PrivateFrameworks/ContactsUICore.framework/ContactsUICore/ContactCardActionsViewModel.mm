@interface ContactCardActionsViewModel
- (_TtC14ContactsUICore27ContactCardActionsViewModel)init;
- (void)actionsUpdated;
- (void)dismissViewController;
- (void)presentViewController:(id)controller forActionType:(int64_t)type;
@end

@implementation ContactCardActionsViewModel

- (_TtC14ContactsUICore27ContactCardActionsViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)actionsUpdated
{
  selfCopy = self;
  ContactCardActionsViewModel.actionsUpdated()();
}

- (void)presentViewController:(id)controller forActionType:(int64_t)type
{
  controllerCopy = controller;
  selfCopy = self;
  ContactCardActionsViewModel.present(_:for:)(controllerCopy, type);
}

- (void)dismissViewController
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for ContactCardActionsViewModel.ViewController(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  selfCopy = self;
  sub_1A340D87C(v5);
}

@end