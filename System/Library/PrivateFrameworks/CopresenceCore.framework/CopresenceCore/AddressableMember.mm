@interface AddressableMember
- (NSString)description;
- (_TtC14CopresenceCore17AddressableMember)init;
- (_TtC14CopresenceCore17AddressableMember)initWithCoder:(id)coder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AddressableMember

- (int64_t)hash
{
  Hasher.init()();
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle);
  selfCopy = self;
  MEMORY[0x1B27111E0]([v3 hash]);
  v5 = Hasher.finalize()();

  return v5;
}

- (_TtC14CopresenceCore17AddressableMember)initWithCoder:(id)coder
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  coderCopy = coder;
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v6)
  {
    *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle) = v6;
    v9.receiver = self;
    v9.super_class = type metadata accessor for AddressableMember();
    v7 = [(AddressableMember *)&v9 init];
  }

  else
  {

    type metadata accessor for AddressableMember();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle);
  coderCopy = coder;
  selfCopy = self;
  v6 = MEMORY[0x1B270FF70](0x656C646E6168, 0xE600000000000000);
  [coderCopy encodeObject:v4 forKey:v6];
}

- (_TtC14CopresenceCore17AddressableMember)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  v3 = AddressableMember.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B270FF70](v3, v5);

  return v6;
}

@end