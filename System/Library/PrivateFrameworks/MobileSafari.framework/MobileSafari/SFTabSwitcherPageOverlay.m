@interface SFTabSwitcherPageOverlay
+ (SFTabSwitcherPageOverlay)emptyPrivateBrowsing;
+ (id)lockedPrivateBrowsingOverlayWithUnlockHandler:(id)a3;
- (SFTabSwitcherPageOverlay)init;
@end

@implementation SFTabSwitcherPageOverlay

+ (SFTabSwitcherPageOverlay)emptyPrivateBrowsing
{
  v2 = objc_allocWithZone(SFTabSwitcherPageOverlay);
  v3 = &v2[OBJC_IVAR___SFTabSwitcherPageOverlay_wrapped];
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v2;
  v6.super_class = SFTabSwitcherPageOverlay;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

+ (id)lockedPrivateBrowsingOverlayWithUnlockHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = objc_allocWithZone(SFTabSwitcherPageOverlay);
  v6 = &v5[OBJC_IVAR___SFTabSwitcherPageOverlay_wrapped];
  *v6 = sub_18BA2A9D8;
  v6[1] = v4;
  v9.receiver = v5;
  v9.super_class = SFTabSwitcherPageOverlay;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

- (SFTabSwitcherPageOverlay)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end