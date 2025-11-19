@interface GroupActivityAssociation
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC14CopresenceCore24GroupActivityAssociation)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GroupActivityAssociation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  GroupActivityAssociation.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  v3 = GroupActivityAssociation.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B270FF70](v3, v5);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = GroupActivityAssociation.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  Hasher.init()();
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID);
  v4 = *&self->associationID[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID];
  v5 = self;
  String.hash(into:)();
  v6 = *(&v5->super.isa + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID);
  v7 = *&v5->associationID[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
  String.hash(into:)();
  v8 = Hasher.finalize()();

  return v8;
}

- (_TtC14CopresenceCore24GroupActivityAssociation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end