@interface MSCMSTimestampAttributeInternal
- (BOOL)verifyTimestamp:(id)timestamp error:(id *)error;
- (MSCMSTimestampAttributeInternal)init;
- (MSCMSTimestampAttributeInternal)initWithTimestampToken:(id)token error:(id *)error;
- (MSOID)attributeType;
- (id)encodeAttributeWithError:(id *)error;
- (id)timestampToken;
- (void)dealloc;
- (void)setAttributeType:(id)type;
@end

@implementation MSCMSTimestampAttributeInternal

- (MSOID)attributeType
{
  v3 = OBJC_IVAR___MSCMSTimestampAttributeInternal_attributeType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAttributeType:(id)type
{
  v5 = OBJC_IVAR___MSCMSTimestampAttributeInternal_attributeType;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = type;
  typeCopy = type;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  selfCopy = self;
  free_TSTInfo();
  swift_endAccess();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(MSCMSTimestampAttributeInternal *)&v5 dealloc];
}

- (MSCMSTimestampAttributeInternal)initWithTimestampToken:(id)token error:(id *)error
{
  tokenCopy = token;
  v5 = sub_258CBEA80();
  v7 = v6;

  return MSCMSTimestampAttributeInternal.init(timestampToken:)(v5, v7);
}

- (BOOL)verifyTimestamp:(id)timestamp error:(id *)error
{
  timestampCopy = timestamp;
  selfCopy = self;
  v7 = sub_258CBEA80();
  v9 = v8;

  MSCMSTimestampAttributeInternal.verifyTimestamp(expectedMessageDigest:)(v7, v9);
  sub_258CA82B8(v7, v9);
  return 1;
}

- (id)encodeAttributeWithError:(id *)error
{
  sub_258CAFE28();
  v4 = swift_allocError();
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 48;
  swift_willThrow();
  if (error)
  {
    v6 = sub_258CBEA00();

    v7 = v6;
    *error = v6;
  }

  else
  {
  }

  return 0;
}

- (id)timestampToken
{
  v2 = (self + OBJC_IVAR___MSCMSTimestampAttributeInternal_tstinfo);
  swift_beginAccess();
  initWithTimeIntervalSince1970_ = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970_];

  return initWithTimeIntervalSince1970_;
}

- (MSCMSTimestampAttributeInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end