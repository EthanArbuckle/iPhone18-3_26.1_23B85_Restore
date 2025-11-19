@interface _SFTipsCoordinator
- (BOOL)webSearchTipAvailable;
- (_SFTipsObserver)observer;
- (void)invalidateWebSearchTip;
- (void)setWebSearchTipAvailable:(BOOL)a3;
- (void)startObserving;
@end

@implementation _SFTipsCoordinator

- (void)startObserving
{
  v2 = self;
  _s12MobileSafari17SFTipsCoordinatorC14startObservingyyF_0();
}

- (BOOL)webSearchTipAvailable
{
  v3 = OBJC_IVAR____SFTipsCoordinator_webSearchTipAvailable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWebSearchTipAvailable:(BOOL)a3
{
  v5 = OBJC_IVAR____SFTipsCoordinator_webSearchTipAvailable;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (_SFTipsObserver)observer
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)invalidateWebSearchTip
{
  v2 = self;
  SFTipsCoordinator.invalidateWebSearchTip()();
}

@end