@interface LACPreboardStorage
- (_TtC23LocalAuthenticationCore18LACPreboardStorage)init;
- (id)acmContextForUUID:(id)d error:(id *)error;
@end

@implementation LACPreboardStorage

- (_TtC23LocalAuthenticationCore18LACPreboardStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)acmContextForUUID:(id)d error:(id *)error
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21[-v13];
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 32))(v14, v10, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v14, 1, 1, v6);
  }

  selfCopy = self;
  v16 = LACPreboardStorage.acmContext(for:)(v14);
  v18 = v17;
  outlined destroy of AsyncStream<()>.Continuation?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v19.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v16, v18);

  return v19.super.isa;
}

@end