@interface SFTabSwitcherPage
- (BOOL)allowsLargeTitle;
- (BOOL)collapsesCapsuleViewWhenSelected;
- (BOOL)hasAnyItems;
- (BOOL)itemsCanMoveBetweenPages;
- (NSString)title;
- (NSUUID)identifier;
- (SFTabSwitcherPageOverlay)overlay;
- (SFTabSwitcherPagePeekingOverlay)peekingOverlay;
- (SFTabSwitcherProfile)profile;
- (SFTabSwitcherShareConfiguration)shareConfiguration;
- (UIImage)image;
- (int64_t)hash;
- (int64_t)itemCount;
- (void)setAllowsLargeTitle:(BOOL)a3;
- (void)setAllowsRetitling:(BOOL)a3;
- (void)setAllowsSharing:(BOOL)a3;
- (void)setCollapsesCapsuleViewWhenSelected:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setIsLocked:(BOOL)a3;
- (void)setItemsCanMoveBetweenPages:(BOOL)a3;
- (void)setOverlay:(id)a3;
- (void)setPeekingOverlay:(id)a3;
- (void)setProfile:(id)a3;
- (void)setShareConfiguration:(id)a3;
@end

@implementation SFTabSwitcherPage

- (void)setAllowsLargeTitle:(BOOL)a3
{
  v5 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v7, _s4PageVMa);
  *v7 = a3;
  swift_beginAccess();
  v10 = self;
  v11 = v8;
  sub_18B81FC54(v7, v8 + v9, _s4PageVMa);
  swift_endAccess();
}

- (void)setAllowsRetitling:(BOOL)a3
{
  v5 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v7, _s4PageVMa);
  v7[1] = a3;
  swift_beginAccess();
  v10 = self;
  v11 = v8;
  sub_18B81FC54(v7, v8 + v9, _s4PageVMa);
  swift_endAccess();
}

- (void)setAllowsSharing:(BOOL)a3
{
  v5 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v7, _s4PageVMa);
  v7[2] = a3;
  swift_beginAccess();
  v10 = self;
  v11 = v8;
  sub_18B81FC54(v7, v8 + v9, _s4PageVMa);
  swift_endAccess();
}

- (void)setImage:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B820FC8(a3);
}

- (void)setItemsCanMoveBetweenPages:(BOOL)a3
{
  v5 = _s4PageVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal);
  v10 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v9 + v10, v8, _s4PageVMa);
  v8[*(v6 + 60)] = a3;
  swift_beginAccess();
  v11 = self;
  v12 = v9;
  sub_18B81FC54(v8, v9 + v10, _s4PageVMa);
  swift_endAccess();
}

- (void)setProfile:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B8227E8(a3);
}

- (BOOL)hasAnyItems
{
  v2 = self;
  v3 = sub_18B8289DC();

  return v3 & 1;
}

- (void)setOverlay:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B8294BC(a3);
}

- (void)setPeekingOverlay:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B82A6CC(a3);
}

- (NSUUID)identifier
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v8 = _s4PageVMa();
  (*(v4 + 16))(v6, &v7[*(v8 + 32)], v3);
  v9 = sub_18BC1EBC8();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (int64_t)itemCount
{
  v2 = self;
  v3 = sub_18B83A338();

  return v3;
}

- (BOOL)allowsLargeTitle
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal);
  v3 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  return *(v2 + v3);
}

- (BOOL)collapsesCapsuleViewWhenSelected
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  return v2[3];
}

- (void)setCollapsesCapsuleViewWhenSelected:(BOOL)a3
{
  v5 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v7, _s4PageVMa);
  v7[3] = a3;
  swift_beginAccess();
  v10 = self;
  v11 = v8;
  sub_18B81FC54(v7, v8 + v9, _s4PageVMa);
  swift_endAccess();
}

- (int64_t)hash
{
  v3 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal);
  v7 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v6 + v7, v5, _s4PageVMa);
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BA93A40(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
  v8 = self;
  sub_18BC20A78();
  v9 = sub_18BC221A8();

  sub_18B8165D8(v5, _s4PageVMa);
  return v9;
}

- (UIImage)image
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  return *&v2[*(_s4PageVMa() + 36)];
}

- (void)setIsLocked:(BOOL)a3
{
  v5 = _s4PageVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal);
  v10 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v9 + v10, v8, _s4PageVMa);
  v8[*(v6 + 52)] = a3;
  swift_beginAccess();
  v11 = self;
  v12 = v9;
  sub_18B81FC54(v8, v9 + v10, _s4PageVMa);
  swift_endAccess();
}

- (BOOL)itemsCanMoveBetweenPages
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  return v2[*(_s4PageVMa() + 52)];
}

- (SFTabSwitcherPageOverlay)overlay
{
  v2 = self;
  v3 = sub_18BA8C7E4();

  return v3;
}

- (SFTabSwitcherPagePeekingOverlay)peekingOverlay
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v3 = _s4PageVMa();
  v4 = 0;
  v5 = v2[*(v3 + 60)];
  if (v5 != 3)
  {
    v6 = objc_allocWithZone(SFTabSwitcherPagePeekingOverlay);
    v6[OBJC_IVAR___SFTabSwitcherPagePeekingOverlay_wrapped] = v5;
    v8.receiver = v6;
    v8.super_class = SFTabSwitcherPagePeekingOverlay;
    v4 = [(SFTabSwitcherPage *)&v8 init];
  }

  return v4;
}

- (SFTabSwitcherProfile)profile
{
  v2 = self;
  v3 = sub_18BA8C99C();

  return v3;
}

- (SFTabSwitcherShareConfiguration)shareConfiguration
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherPage__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v3 = &v2[*(_s4PageVMa() + 72)];
  v4 = *v3;
  v5 = *(v3 + 1);
  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v9 = *(v3 + 4);
  v8 = *(v3 + 5);
  v10 = objc_allocWithZone(SFTabSwitcherShareConfiguration);
  v11 = &v10[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped];
  *v11 = v4;
  *(v11 + 1) = v5;
  *(v11 + 2) = v7;
  *(v11 + 3) = v6;
  *(v11 + 4) = v9;
  *(v11 + 5) = v8;
  v16.receiver = v10;
  v16.super_class = SFTabSwitcherShareConfiguration;
  v12 = v4;
  v13 = v5;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  v14 = [(SFTabSwitcherPage *)&v16 init];

  return v14;
}

- (void)setShareConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18BA8CE7C(v4);
}

- (NSString)title
{
  swift_beginAccess();
  _s4PageVMa();
  sub_18BC1E3F8();
  v2 = sub_18BC20B98();

  return v2;
}

@end