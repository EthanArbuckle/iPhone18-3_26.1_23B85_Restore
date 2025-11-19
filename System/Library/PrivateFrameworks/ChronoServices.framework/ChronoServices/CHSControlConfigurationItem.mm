@interface CHSControlConfigurationItem
- (BOOL)isEqual:(id)a3;
- (CHSControlConfigurationItem)init;
- (CHSControlConfigurationItem)initWithUniqueIdentifier:(id)a3 controlIdentity:(id)a4 location:(int64_t)a5;
- (NSString)description;
- (NSString)uniqueIdentifier;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSControlConfigurationItem

- (NSString)uniqueIdentifier
{
  v2 = *(&self->super.isa + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier);
  v3 = *&self->_uniqueIdentifier[OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier];

  v4 = sub_195FA0888();

  return v4;
}

- (CHSControlConfigurationItem)initWithUniqueIdentifier:(id)a3 controlIdentity:(id)a4 location:(int64_t)a5
{
  v7 = sub_195FA08B8();
  v9 = v8;
  v10 = a4;
  v11 = sub_195F306D0(v7, v9, v10, a5);

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CHSControlConfigurationItem.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6;
}

- (int64_t)hash
{
  v2 = self;
  v3 = CHSControlConfigurationItem.hash.getter();

  return v3;
}

- (NSString)description
{
  v2 = self;
  CHSControlConfigurationItem.description.getter();

  v3 = sub_195FA0888();

  return v3;
}

- (CHSControlConfigurationItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CHSControlConfigurationItem.encode(with:)(v4);
}

@end