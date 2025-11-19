@interface HMDEventCountersManager.CoreDataDelegate
- (HMDEventCounterContext)context;
- (id)groupForSpecifier:(id)a3;
- (void)saveForManager:(id)a3;
@end

@implementation HMDEventCountersManager.CoreDataDelegate

- (HMDEventCounterContext)context
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)groupForSpecifier:(id)a3
{
  swift_unknownObjectRetain();

  v4 = sub_253207588(a3);
  swift_unknownObjectRelease();

  return v4;
}

- (void)saveForManager:(id)a3
{
  v3 = *(self + 3);

  sub_253CD04D8();
}

@end