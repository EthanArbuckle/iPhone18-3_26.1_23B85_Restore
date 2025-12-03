@interface HMDEventCountersManager.CoreDataDelegate
- (HMDEventCounterContext)context;
- (id)groupForSpecifier:(id)specifier;
- (void)saveForManager:(id)manager;
@end

@implementation HMDEventCountersManager.CoreDataDelegate

- (HMDEventCounterContext)context
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)groupForSpecifier:(id)specifier
{
  swift_unknownObjectRetain();

  v4 = sub_2297A0370(specifier);
  swift_unknownObjectRelease();

  return v4;
}

- (void)saveForManager:(id)manager
{
  v3 = *(self + 3);

  sub_22A4DBFBC();
}

@end