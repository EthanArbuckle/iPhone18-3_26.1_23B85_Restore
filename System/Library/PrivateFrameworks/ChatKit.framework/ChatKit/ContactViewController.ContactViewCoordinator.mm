@interface ContactViewController.ContactViewCoordinator
- (_TtCV7ChatKit21ContactViewController22ContactViewCoordinator)init;
- (void)backAction;
- (void)contactViewController:(id)controller didChangeToEditMode:(BOOL)mode;
- (void)contactViewController:(id)controller didDeleteContact:(id)contact;
- (void)toggleSharingStateFromABCard;
@end

@implementation ContactViewController.ContactViewCoordinator

- (void)backAction
{
  selfCopy = self;
  sub_190ABAFD0();
}

- (void)contactViewController:(id)controller didChangeToEditMode:(BOOL)mode
{
  if (controller)
  {
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_19021E7D8(v4);
}

- (void)contactViewController:(id)controller didDeleteContact:(id)contact
{
  if (controller)
  {
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_19021E7D8(v4);
}

- (void)toggleSharingStateFromABCard
{
  selfCopy = self;
  sub_190ABB1BC();
}

- (_TtCV7ChatKit21ContactViewController22ContactViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end