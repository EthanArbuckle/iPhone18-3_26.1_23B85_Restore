@interface HMDAccountChangeObserver
- (HMDAccountChangeObserver)init;
- (HMDAccountChangeObserverDelegate)delegate;
- (void)setDelegate:(id)delegate;
@end

@implementation HMDAccountChangeObserver

- (HMDAccountChangeObserverDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  Account.ChangeObserver.delegate.setter();
}

- (HMDAccountChangeObserver)init
{
  swift_getObjectType();
  sharedSubscriber = [objc_opt_self() sharedSubscriber];
  productInfo = [objc_opt_self() productInfo];
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v5 = result;
    defaultCenter = [objc_opt_self() defaultCenter];
    v7 = sub_229818260(sharedSubscriber, productInfo, v5, defaultCenter);

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