@interface DBStatusBarDataBroadcaster
- (DBStatusBarReloadable)reloadable;
- (NSDictionary)additionalEntriesByRelativePriority;
- (id)imageForAvatarIdentifier:(id)a3;
- (id)viewForAdditionalEntryWithIdentifier:(id)a3;
- (void)setReloadable:(id)a3;
@end

@implementation DBStatusBarDataBroadcaster

- (DBStatusBarReloadable)reloadable
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setReloadable:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  v4 = self;
  sub_2482644E4();
  swift_unknownObjectRelease();
}

- (NSDictionary)additionalEntriesByRelativePriority
{
  v2 = self;
  v3 = [(DBStatusBarDataBroadcaster *)v2 vehicleState];
  (*((*MEMORY[0x277D85000] & v3->super.isa) + 0xC8))();

  sub_24814FB28(0, &qword_27EE90740);
  sub_248264E40();
  v4 = sub_248383880();

  return v4;
}

- (id)viewForAdditionalEntryWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_248264CE8();

  return v6;
}

- (id)imageForAvatarIdentifier:(id)a3
{
  v4 = sub_248383960();
  v6 = v5;
  v7 = self;
  v8 = sub_248264814(v4, v6);

  return v8;
}

@end