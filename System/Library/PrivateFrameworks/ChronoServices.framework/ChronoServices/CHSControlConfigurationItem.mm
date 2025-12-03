@interface CHSControlConfigurationItem
- (BOOL)isEqual:(id)equal;
- (CHSControlConfigurationItem)init;
- (CHSControlConfigurationItem)initWithUniqueIdentifier:(id)identifier controlIdentity:(id)identity location:(int64_t)location;
- (NSString)description;
- (NSString)uniqueIdentifier;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSControlConfigurationItem

- (NSString)uniqueIdentifier
{
  v2 = *(&self->super.isa + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier);
  v3 = *&self->_uniqueIdentifier[OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier];

  v4 = sub_195FA0888();

  return v4;
}

- (CHSControlConfigurationItem)initWithUniqueIdentifier:(id)identifier controlIdentity:(id)identity location:(int64_t)location
{
  v7 = sub_195FA08B8();
  v9 = v8;
  identityCopy = identity;
  v11 = sub_195F306D0(v7, v9, identityCopy, location);

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CHSControlConfigurationItem.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CHSControlConfigurationItem.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CHSControlConfigurationItem.encode(with:)(coderCopy);
}

@end