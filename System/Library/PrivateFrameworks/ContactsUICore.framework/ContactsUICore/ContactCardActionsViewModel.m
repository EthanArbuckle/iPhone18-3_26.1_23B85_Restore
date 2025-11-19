@interface ContactCardActionsViewModel
- (_TtC14ContactsUICore27ContactCardActionsViewModel)init;
- (void)actionsUpdated;
- (void)dismissViewController;
- (void)presentViewController:(id)a3 forActionType:(int64_t)a4;
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
  v2 = self;
  ContactCardActionsViewModel.actionsUpdated()();
}

- (void)presentViewController:(id)a3 forActionType:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  ContactCardActionsViewModel.present(_:for:)(v6, a4);
}

- (void)dismissViewController
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for ContactCardActionsViewModel.ViewController(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = self;
  sub_1A340D87C(v5);
}

@end