@interface ObjCTimestamp
- (NSString)description;
- (_TtC9Coherence11ObjCReplica)replica;
- (_TtC9Coherence13ObjCTimestamp)init;
- (_TtC9Coherence13ObjCTimestamp)initWithReplica:(id)a3 counter:(int64_t)a4;
@end

@implementation ObjCTimestamp

- (_TtC9Coherence11ObjCReplica)replica
{
  v2 = self;
  v3 = sub_1ADF840B4();

  return v3;
}

- (_TtC9Coherence13ObjCTimestamp)initWithReplica:(id)a3 counter:(int64_t)a4
{
  v7 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v8 = self + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp;
  v9 = sub_1AE23BFEC();
  (*(*(v9 - 8) + 16))(v8, a3 + v7, v9);
  v10 = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  *&v8[*(type metadata accessor for Replica() + 20)] = v10;
  *&v8[*(type metadata accessor for Timestamp(0) + 20)] = a4;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ObjCTimestamp(0);
  return [(ObjCTimestamp *)&v12 init];
}

- (NSString)description
{
  v3 = type metadata accessor for Timestamp(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDDE3A0(self + OBJC_IVAR____TtC9Coherence13ObjCTimestamp_timestamp, v7, type metadata accessor for Timestamp);
  v8 = self;
  v13[2] = sub_1AE1B6A38();
  v13[3] = v9;
  MEMORY[0x1B26FB670](40, 0xE100000000000000);
  v13[1] = *&v7[*(v4 + 28)];
  v10 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v10);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  sub_1ADDE5300(v7, type metadata accessor for Timestamp);

  v11 = sub_1AE23CCDC();

  return v11;
}

- (_TtC9Coherence13ObjCTimestamp)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end