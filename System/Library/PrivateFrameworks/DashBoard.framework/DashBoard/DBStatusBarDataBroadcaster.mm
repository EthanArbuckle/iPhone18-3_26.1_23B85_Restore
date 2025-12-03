@interface DBStatusBarDataBroadcaster
- (DBStatusBarReloadable)reloadable;
- (NSDictionary)additionalEntriesByRelativePriority;
- (id)imageForAvatarIdentifier:(id)identifier;
- (id)viewForAdditionalEntryWithIdentifier:(id)identifier;
- (void)setReloadable:(id)reloadable;
@end

@implementation DBStatusBarDataBroadcaster

- (DBStatusBarReloadable)reloadable
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setReloadable:(id)reloadable
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2482644E4();
  swift_unknownObjectRelease();
}

- (NSDictionary)additionalEntriesByRelativePriority
{
  selfCopy = self;
  vehicleState = [(DBStatusBarDataBroadcaster *)selfCopy vehicleState];
  (*((*MEMORY[0x277D85000] & vehicleState->super.isa) + 0xC8))();

  sub_24814FB28(0, &qword_27EE90740);
  sub_248264E40();
  v4 = sub_248383880();

  return v4;
}

- (id)viewForAdditionalEntryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = sub_248264CE8();

  return v6;
}

- (id)imageForAvatarIdentifier:(id)identifier
{
  v4 = sub_248383960();
  v6 = v5;
  selfCopy = self;
  v8 = sub_248264814(v4, v6);

  return v8;
}

@end