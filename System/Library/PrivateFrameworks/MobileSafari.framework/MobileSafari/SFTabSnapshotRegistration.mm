@interface SFTabSnapshotRegistration
- (NSUUID)identifier;
- (SFTabSnapshotContent)content;
- (SFTabSnapshotRegistration)init;
- (SFTabSnapshotVisibility)visibility;
- (id)contentObserver;
- (void)setVisibility:(id)visibility;
@end

@implementation SFTabSnapshotRegistration

- (SFTabSnapshotContent)content
{
  selfCopy = self;
  v3 = sub_18BC0EA08();

  return v3;
}

- (id)contentObserver
{
  v2 = *(self + OBJC_IVAR___SFTabSnapshotRegistration_contentObserver + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSnapshotRegistration_contentObserver);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18B99972C;
  v5[3] = &block_descriptor_68;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (NSUUID)identifier
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(self + OBJC_IVAR___SFTabSnapshotRegistration_wrapped) + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_id, v3, v5);
  v8 = sub_18BC1EBC8();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (SFTabSnapshotVisibility)visibility
{
  v2 = (*(self + OBJC_IVAR___SFTabSnapshotRegistration_wrapped) + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = objc_allocWithZone(SFTabSnapshotVisibility);
  v6 = &v5[OBJC_IVAR___SFTabSnapshotVisibility_wrapped];
  *v6 = v3;
  *(v6 + 1) = v4;
  v9.receiver = v5;
  v9.super_class = SFTabSnapshotVisibility;
  v7 = [(SFTabSnapshotRegistration *)&v9 init];

  return v7;
}

- (void)setVisibility:(id)visibility
{
  visibilityCopy = visibility;
  selfCopy = self;
  sub_18BC0EF84(visibilityCopy);
}

- (SFTabSnapshotRegistration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end