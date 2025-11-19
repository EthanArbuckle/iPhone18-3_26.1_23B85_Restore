@interface SFTabIconRegistration
- (NSUUID)identifier;
- (SFTabIconRegistration)init;
- (UIImage)content;
- (id)contentObserver;
- (void)setContentObserver:(id)a3;
@end

@implementation SFTabIconRegistration

- (UIImage)content
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabIconRegistration_wrapped);
  swift_beginAccess();
  return *(v2 + 16);
}

- (id)contentObserver
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabIconRegistration_wrapped);
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  aBlock[4] = v3;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B99972C;
  aBlock[3] = &block_descriptor_1;
  v5 = _Block_copy(aBlock);
  sub_18BC1E1A8();

  return v5;
}

- (void)setContentObserver:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___SFTabIconRegistration_wrapped);
  swift_beginAccess();
  *(v6 + 24) = sub_18B837284;
  *(v6 + 32) = v5;
}

- (NSUUID)identifier
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(&self->super.isa + OBJC_IVAR___SFTabIconRegistration_wrapped);
  v8 = OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v8, v3);
  v9 = sub_18BC1EBC8();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (SFTabIconRegistration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end