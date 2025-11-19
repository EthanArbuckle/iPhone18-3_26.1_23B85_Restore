@interface SFTabSwitcherItem
- (BOOL)canBeClosed;
- (BOOL)isInteractivelyInserted;
- (NSArray)shareParticipants;
- (NSString)title;
- (NSUUID)identifier;
- (id)searchPredicate;
- (int64_t)hash;
- (unint64_t)mediaStateIcon;
- (void)setCanBeClosed:(BOOL)a3;
- (void)setCanBeCopied:(BOOL)a3;
- (void)setCanBePinned:(BOOL)a3;
- (void)setIsInteractivelyInserted:(BOOL)a3;
- (void)setIsUnread:(BOOL)a3;
- (void)setMediaStateIcon:(unint64_t)a3;
- (void)setSearchPredicate:(id)a3;
- (void)setShareParticipants:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SFTabSwitcherItem

- (void)setCanBeClosed:(BOOL)a3
{
  v5 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v7, _s4ItemVMa);
  *v7 = a3;
  swift_beginAccess();
  v10 = self;
  v11 = v8;
  sub_18B81FC54(v7, v8 + v9, _s4ItemVMa);
  swift_endAccess();
}

- (void)setCanBeCopied:(BOOL)a3
{
  v5 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v7, _s4ItemVMa);
  v7[1] = a3;
  swift_beginAccess();
  v10 = self;
  v11 = v8;
  sub_18B81FC54(v7, v8 + v9, _s4ItemVMa);
  swift_endAccess();
}

- (void)setCanBePinned:(BOOL)a3
{
  v5 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v7, _s4ItemVMa);
  v7[2] = a3;
  swift_beginAccess();
  v10 = self;
  v11 = v8;
  sub_18B81FC54(v7, v8 + v9, _s4ItemVMa);
  swift_endAccess();
}

- (void)setIsInteractivelyInserted:(BOOL)a3
{
  v5 = _s4ItemVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal);
  v10 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v9 + v10, v8, _s4ItemVMa);
  v8[*(v6 + 40)] = a3;
  swift_beginAccess();
  v11 = self;
  v12 = v9;
  sub_18B81FC54(v8, v9 + v10, _s4ItemVMa);
  swift_endAccess();
}

- (void)setMediaStateIcon:(unint64_t)a3
{
  v5 = _s4ItemVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal);
  v10 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v9 + v10, v8, _s4ItemVMa);
  *&v8[*(v6 + 56)] = a3;
  swift_beginAccess();
  v11 = self;
  v12 = v9;
  sub_18B81FC54(v8, v9 + v10, _s4ItemVMa);
  swift_endAccess();
}

- (void)setSearchPredicate:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_18B82D2C0(sub_18BA93AE4, v5);
}

- (void)setIsUnread:(BOOL)a3
{
  v5 = _s4ItemVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal);
  v10 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v9 + v10, v8, _s4ItemVMa);
  v8[*(v6 + 52)] = a3;
  swift_beginAccess();
  v11 = self;
  v12 = v9;
  sub_18B81FC54(v8, v9 + v10, _s4ItemVMa);
  swift_endAccess();
}

- (void)setShareParticipants:(id)a3
{
  sub_18B7B0AC0(0, &qword_1ED6511A8);
  v4 = sub_18BC20D98();
  v5 = self;
  sub_18B82E41C(v4);
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_18BC20BD8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_18B82F06C(v4, v6);
}

- (int64_t)hash
{
  v3 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal);
  v7 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v6 + v7, v5, _s4ItemVMa);
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BA93A40(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
  v8 = self;
  sub_18BC20A78();
  v9 = sub_18BC221A8();

  sub_18B8165D8(v5, _s4ItemVMa);
  return v9;
}

- (BOOL)canBeClosed
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal);
  v3 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  return *(v2 + v3);
}

- (NSUUID)identifier
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  v8 = _s4ItemVMa();
  (*(v4 + 16))(v6, &v7[*(v8 + 28)], v3);
  v9 = sub_18BC1EBC8();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (BOOL)isInteractivelyInserted
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  return v2[*(_s4ItemVMa() + 32)];
}

- (unint64_t)mediaStateIcon
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  return *&v2[*(_s4ItemVMa() + 48)];
}

- (id)searchPredicate
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  v3 = &v2[*(_s4ItemVMa() + 52)];
  v4 = *(v3 + 1);
  aBlock[4] = *v3;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18BA8B370;
  aBlock[3] = &block_descriptor_234;
  v5 = _Block_copy(aBlock);
  sub_18BC1E1A8();

  return v5;
}

- (NSArray)shareParticipants
{
  swift_beginAccess();
  _s4ItemVMa();
  sub_18B7B0AC0(0, &qword_1ED6511A8);
  sub_18BC1E3F8();
  v2 = sub_18BC20D88();

  return v2;
}

- (NSString)title
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherItem__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  if (*&v2[*(_s4ItemVMa() + 60) + 8])
  {
    sub_18BC1E3F8();
    v3 = sub_18BC20B98();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end