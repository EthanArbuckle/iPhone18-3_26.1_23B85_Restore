@interface CKVisionBadgedBarButtonItem
- (BOOL)shouldShowBadge;
- (CKVisionBadgedBarButtonItem)init;
- (CKVisionBadgedBarButtonItem)initWithSystemImageName:(id)a3 menu:(id)a4;
- (UIMenu)menu;
- (void)ck_applyBadgedCount:(int64_t)a3;
- (void)setMenu:(id)a3;
- (void)setShouldShowBadge:(BOOL)a3;
@end

@implementation CKVisionBadgedBarButtonItem

- (BOOL)shouldShowBadge
{
  v3 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setShouldShowBadge:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = v3;
  [*(&self->super.super.super.isa + OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView) setHidden_];
}

- (UIMenu)menu
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR___CKVisionBadgedBarButtonItem_button) menu];

  return v2;
}

- (void)setMenu:(id)a3
{
  v4 = OBJC_IVAR___CKVisionBadgedBarButtonItem_button;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR___CKVisionBadgedBarButtonItem_button);
  v6 = a3;
  v7 = self;
  [v5 setMenu_];
  [*(&self->super.super.super.isa + v4) setShowsMenuAsPrimaryAction_];
}

- (CKVisionBadgedBarButtonItem)initWithSystemImageName:(id)a3 menu:(id)a4
{
  v5 = sub_190D56F10();
  v7 = v6;
  v8 = a4;
  return CKVisionBadgedBarButtonItem.init(systemImageName:menu:)(v5, v7, a4);
}

- (CKVisionBadgedBarButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)ck_applyBadgedCount:(int64_t)a3
{
  v4 = a3 < 1;
  v5 = a3 > 0;
  v6 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  swift_beginAccess();
  *(&self->super.super.super.isa + v6) = v5;
  [*(&self->super.super.super.isa + OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView) setHidden_];
}

@end