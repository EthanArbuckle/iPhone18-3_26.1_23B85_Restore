@interface HMDAccountChangeObserver
- (HMDAccountChangeObserver)init;
- (HMDAccountChangeObserverDelegate)delegate;
- (void)setDelegate:(id)a3;
@end

@implementation HMDAccountChangeObserver

- (HMDAccountChangeObserverDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  Account.ChangeObserver.delegate.setter();
}

- (HMDAccountChangeObserver)init
{
  swift_getObjectType();
  v2 = [objc_opt_self() sharedSubscriber];
  v3 = [objc_opt_self() productInfo];
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() defaultCenter];
    v7 = sub_229818260(v2, v3, v5, v6);

    swift_deallocPartialClassInstance();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end