@interface ObjCReplica
- (NSUUID)uuid;
- (_TtC9Coherence11ObjCReplica)init;
- (_TtC9Coherence11ObjCReplica)initWithUuid:(id)uuid index:(int64_t)index;
- (void)setUuid:(id)uuid;
@end

@implementation ObjCReplica

- (NSUUID)uuid
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9 = sub_1AE23BF7C();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (_TtC9Coherence11ObjCReplica)initWithUuid:(id)uuid index:(int64_t)index
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  (*(v7 + 16))(self + OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid, v10, v6);
  *(self + OBJC_IVAR____TtC9Coherence11ObjCReplica_index) = index;
  v11 = type metadata accessor for ObjCReplica(0);
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(ObjCReplica *)&v14 init];
  (*(v7 + 8))(v10, v6);
  return v12;
}

- (void)setUuid:(id)uuid
{
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  v9 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v10 = *(v5 + 40);
  selfCopy = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (_TtC9Coherence11ObjCReplica)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end