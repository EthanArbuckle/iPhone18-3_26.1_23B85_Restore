@interface SFTabSwitcherSection
- (BOOL)isPinned;
- (NSString)title;
- (NSUUID)identifier;
- (int64_t)hash;
- (void)setIsPinned:(BOOL)pinned;
@end

@implementation SFTabSwitcherSection

- (void)setIsPinned:(BOOL)pinned
{
  v5 = _s7SectionVMa_0();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherSection__internal);
  v10 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v9 + v10, v8, _s7SectionVMa_0);
  v8[*(v6 + 32)] = pinned;
  swift_beginAccess();
  selfCopy = self;
  v12 = v9;
  sub_18B81FC54(v8, v9 + v10, _s7SectionVMa_0);
  swift_endAccess();
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SFTabSwitcherSection.hash.getter();

  return v3;
}

- (NSUUID)identifier
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherSection__internal) + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  v8 = _s7SectionVMa_0();
  (*(v4 + 16))(v6, &v7[*(v8 + 20)], v3);
  v9 = sub_18BC1EBC8();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (BOOL)isPinned
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherSection__internal) + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  return v2[*(_s7SectionVMa_0() + 24)];
}

- (NSString)title
{
  swift_beginAccess();
  _s7SectionVMa_0();
  sub_18BC1E3F8();
  v2 = sub_18BC20B98();

  return v2;
}

@end