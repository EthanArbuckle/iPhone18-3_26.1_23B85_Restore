@interface NBObjCBloomFilterReader
- (BOOL)maybeContainsString:(id)a3;
- (NBObjCBloomFilterReader)init;
- (NBObjCBloomFilterReader)initWithData:(id)a3 hashFunctionCount:(int64_t)a4;
@end

@implementation NBObjCBloomFilterReader

- (NBObjCBloomFilterReader)initWithData:(id)a3 hashFunctionCount:(int64_t)a4
{
  v5 = a3;
  v6 = sub_25C339CC0();
  v8 = v7;

  return ObjCBloomFilterReader.init(data:hashFunctionCount:)(v6, v8, a4);
}

- (BOOL)maybeContainsString:(id)a3
{
  v4 = sub_25C339D40();
  v6 = v5;
  v7 = *&self->bloomFilterReader[OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader + 16];
  v8 = *&self->bloomFilterReader[OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader + 24];
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader), v7);
  v9 = *(v8 + 8);
  v10 = self;
  LOBYTE(v4) = v9(v4, v6, v7, v8);

  return (v4 & 1) == 0;
}

- (NBObjCBloomFilterReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end