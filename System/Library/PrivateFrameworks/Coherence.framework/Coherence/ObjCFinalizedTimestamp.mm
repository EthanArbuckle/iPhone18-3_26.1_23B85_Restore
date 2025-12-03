@interface ObjCFinalizedTimestamp
- (BOOL)isEqual:(id)equal;
- (BOOL)isGreaterThanTimestamp:(id)timestamp;
- (NSString)description;
- (_TtC9Coherence11ObjCReplica)replica;
- (_TtC9Coherence22ObjCFinalizedTimestamp)init;
- (_TtC9Coherence22ObjCFinalizedTimestamp)initWithReplica:(id)replica counter:(int64_t)counter;
- (int64_t)hash;
@end

@implementation ObjCFinalizedTimestamp

- (int64_t)hash
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADED0548(self + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v7);
  sub_1AE23E31C();
  selfCopy = self;
  sub_1AE23BFAC();
  MEMORY[0x1B26FCBD0](*&v7[*(v4 + 28)]);
  v9 = sub_1AE23E34C();

  sub_1ADE173B8(v7);
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1AE23D83C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1ADDF1048(v8);

  sub_1ADDCEDE0(v8, &qword_1EB5BAA00, &qword_1AE2587A0);
  return v6 & 1;
}

- (_TtC9Coherence11ObjCReplica)replica
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FinalizedTimestamp(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADED0548(self + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v11);
  (*(v4 + 32))(v7, v11, v3);
  v12 = type metadata accessor for ObjCReplica(0);
  v13 = objc_allocWithZone(v12);
  (*(v4 + 16))(&v13[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v7, v3);
  *&v13[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = 0;
  v17.receiver = v13;
  v17.super_class = v12;
  selfCopy = self;
  v15 = [(ObjCFinalizedTimestamp *)&v17 init];
  (*(v4 + 8))(v7, v3);

  return v15;
}

- (_TtC9Coherence22ObjCFinalizedTimestamp)initWithReplica:(id)replica counter:(int64_t)counter
{
  v7 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v8 = self + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp;
  v9 = sub_1AE23BFEC();
  (*(*(v9 - 8) + 16))(v8, replica + v7, v9);
  *&v8[*(type metadata accessor for FinalizedTimestamp(0) + 20)] = counter;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ObjCFinalizedTimestamp(0);
  return [(ObjCFinalizedTimestamp *)&v11 init];
}

- (BOOL)isGreaterThanTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  selfCopy = self;
  LOBYTE(self) = sub_1AE197F48(timestampCopy);

  return self & 1;
}

- (NSString)description
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADED0548(self + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v6);
  selfCopy = self;
  FinalizedTimestamp.description.getter();
  sub_1ADE173B8(v6);

  v8 = sub_1AE23CCDC();

  return v8;
}

- (_TtC9Coherence22ObjCFinalizedTimestamp)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end