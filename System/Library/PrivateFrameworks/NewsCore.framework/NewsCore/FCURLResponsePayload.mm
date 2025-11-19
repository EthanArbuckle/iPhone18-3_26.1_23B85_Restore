@interface FCURLResponsePayload
- (FCURLResponsePayload)init;
- (FCURLResponsePayload)initWithData:(id)a3;
- (FCURLResponsePayload)initWithFileURL:(id)a3;
- (unint64_t)size;
@end

@implementation FCURLResponsePayload

- (FCURLResponsePayload)initWithData:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  v7 = sub_1B67D866C();
  v9 = v8;

  v10 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v11 = swift_allocObject();
  *(v11 + 28) = 0;
  *(v11 + 16) = 0;
  *(&self->super.isa + v10) = v11;
  *(v11 + 24) = 1;
  v12 = (self + OBJC_IVAR___FCURLResponsePayload_kind);
  *v12 = v7;
  v12[1] = v9;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(FCURLResponsePayload *)&v14 init];
}

- (FCURLResponsePayload)initWithFileURL:(id)a3
{
  v3 = sub_1B67D85FC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D85AC();
  return URLResponsePayload.init(fileURL:)(v6);
}

- (unint64_t)size
{
  v2 = *(&self->super.isa + OBJC_IVAR___FCURLResponsePayload__size);
  v3 = self;
  os_unfair_lock_lock(v2 + 7);
  sub_1B650ED90(&v2[4], &v6);
  os_unfair_lock_unlock(v2 + 7);
  v4 = v6;

  return v4;
}

- (FCURLResponsePayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end