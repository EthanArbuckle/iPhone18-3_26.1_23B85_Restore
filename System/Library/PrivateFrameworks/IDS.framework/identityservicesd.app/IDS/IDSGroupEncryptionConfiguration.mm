@interface IDSGroupEncryptionConfiguration
- (_TtC17identityservicesd31IDSGroupEncryptionConfiguration)init;
- (_TtC17identityservicesd31IDSGroupEncryptionConfiguration)initWithBag:(id)bag;
@end

@implementation IDSGroupEncryptionConfiguration

- (_TtC17identityservicesd31IDSGroupEncryptionConfiguration)initWithBag:(id)bag
{
  ObjectType = swift_getObjectType();
  sub_1009362A8();
  swift_allocObject();
  bagCopy = bag;
  v6 = sub_100936298();

  v7 = sub_10074D4A0(bag, v6, ObjectType);

  swift_deallocPartialClassInstance();
  return v7;
}

- (_TtC17identityservicesd31IDSGroupEncryptionConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end