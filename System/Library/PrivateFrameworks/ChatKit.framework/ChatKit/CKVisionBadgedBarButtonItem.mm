@interface CKVisionBadgedBarButtonItem
- (BOOL)shouldShowBadge;
- (CKVisionBadgedBarButtonItem)init;
- (CKVisionBadgedBarButtonItem)initWithSystemImageName:(id)name menu:(id)menu;
- (UIMenu)menu;
- (void)ck_applyBadgedCount:(int64_t)count;
- (void)setMenu:(id)menu;
- (void)setShouldShowBadge:(BOOL)badge;
@end

@implementation CKVisionBadgedBarButtonItem

- (BOOL)shouldShowBadge
{
  v3 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setShouldShowBadge:(BOOL)badge
{
  badgeCopy = badge;
  v5 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = badgeCopy;
  [*(&self->super.super.super.isa + OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView) setHidden_];
}

- (UIMenu)menu
{
  menu = [*(&self->super.super.super.isa + OBJC_IVAR___CKVisionBadgedBarButtonItem_button) menu];

  return menu;
}

- (void)setMenu:(id)menu
{
  v4 = OBJC_IVAR___CKVisionBadgedBarButtonItem_button;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR___CKVisionBadgedBarButtonItem_button);
  menuCopy = menu;
  selfCopy = self;
  [v5 setMenu_];
  [*(&self->super.super.super.isa + v4) setShowsMenuAsPrimaryAction_];
}

- (CKVisionBadgedBarButtonItem)initWithSystemImageName:(id)name menu:(id)menu
{
  v5 = sub_190D56F10();
  v7 = v6;
  menuCopy = menu;
  return CKVisionBadgedBarButtonItem.init(systemImageName:menu:)(v5, v7, menu);
}

- (CKVisionBadgedBarButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)ck_applyBadgedCount:(int64_t)count
{
  v4 = count < 1;
  v5 = count > 0;
  v6 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  swift_beginAccess();
  *(&self->super.super.super.isa + v6) = v5;
  [*(&self->super.super.super.isa + OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView) setHidden_];
}

@end