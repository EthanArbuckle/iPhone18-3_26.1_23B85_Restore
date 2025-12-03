@interface _SFTipsCoordinator
- (BOOL)webSearchTipAvailable;
- (_SFTipsObserver)observer;
- (void)invalidateWebSearchTip;
- (void)setWebSearchTipAvailable:(BOOL)available;
- (void)startObserving;
@end

@implementation _SFTipsCoordinator

- (void)startObserving
{
  selfCopy = self;
  _s12MobileSafari17SFTipsCoordinatorC14startObservingyyF_0();
}

- (BOOL)webSearchTipAvailable
{
  v3 = OBJC_IVAR____SFTipsCoordinator_webSearchTipAvailable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWebSearchTipAvailable:(BOOL)available
{
  v5 = OBJC_IVAR____SFTipsCoordinator_webSearchTipAvailable;
  swift_beginAccess();
  *(self + v5) = available;
}

- (_SFTipsObserver)observer
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)invalidateWebSearchTip
{
  selfCopy = self;
  SFTipsCoordinator.invalidateWebSearchTip()();
}

@end