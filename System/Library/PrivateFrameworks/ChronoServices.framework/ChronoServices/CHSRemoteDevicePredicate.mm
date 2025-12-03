@interface CHSRemoteDevicePredicate
+ (CHSRemoteDevicePredicate)allPredicate;
+ (CHSRemoteDevicePredicate)nonePredicate;
+ (CHSRemoteDevicePredicate)predicateWithDeviceIdentifier:(id)identifier;
+ (CHSRemoteDevicePredicate)predicateWithDeviceType:(int64_t)type;
+ (CHSRemoteDevicePredicate)predicateWithRelationshipIdentifier:(id)identifier;
- (BOOL)acceptsDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (CHSRemoteDevicePredicate)init;
- (NSString)description;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSRemoteDevicePredicate

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CHSRemoteDevicePredicate.encode(with:)(coderCopy);
}

+ (CHSRemoteDevicePredicate)nonePredicate
{
  v2 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v3 = &v2[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v4 = *&v2[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v5 = *&v2[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v3 = 0;
  *(v3 + 1) = 0;
  v6 = v3[16];
  v3[16] = 3;
  v7 = v2;
  sub_195EC5C98(v4, v5, v6);

  return v7;
}

- (CHSRemoteDevicePredicate)init
{
  v2 = self + OBJC_IVAR___CHSRemoteDevicePredicate_predicate;
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 3;
  v4.receiver = self;
  v4.super_class = CHSRemoteDevicePredicate;
  return [(CHSRemoteDevicePredicate *)&v4 init];
}

+ (CHSRemoteDevicePredicate)predicateWithDeviceIdentifier:(id)identifier
{
  v3 = sub_195FA08B8();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = static CHSRemoteDevicePredicate.deviceIdentifier(_:)(v3, v5);

  return v6;
}

+ (CHSRemoteDevicePredicate)predicateWithDeviceType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = static CHSRemoteDevicePredicate.deviceType(_:)(type);

  return v4;
}

+ (CHSRemoteDevicePredicate)predicateWithRelationshipIdentifier:(id)identifier
{
  v3 = sub_195FA0548();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0538();
  swift_getObjCClassMetadata();
  v8 = static CHSRemoteDevicePredicate.relationshipIdentifier(_:)();
  (*(v4 + 8))(v7, v3);

  return v8;
}

+ (CHSRemoteDevicePredicate)allPredicate
{
  v2 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v3 = &v2[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v4 = *&v2[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v5 = *&v2[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v3 = xmmword_195FAA6A0;
  v6 = v3[16];
  v3[16] = 3;
  v7 = v2;
  sub_195EC5C98(v4, v5, v6);

  return v7;
}

- (BOOL)acceptsDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  LOBYTE(self) = CHSRemoteDevicePredicate.acceptsDevice(_:)(deviceCopy);

  return self & 1;
}

- (NSString)description
{
  sub_195EC5D9C(*(&self->super.isa + OBJC_IVAR___CHSRemoteDevicePredicate_predicate), *&self->predicate[OBJC_IVAR___CHSRemoteDevicePredicate_predicate], self->predicate[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8]);
  sub_195FA0908();
  v2 = sub_195FA0888();

  return v2;
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

  v6 = CHSRemoteDevicePredicate.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CHSRemoteDevicePredicate.hash.getter();

  return v3;
}

@end