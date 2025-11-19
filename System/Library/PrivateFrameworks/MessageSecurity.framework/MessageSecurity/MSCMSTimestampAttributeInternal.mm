@interface MSCMSTimestampAttributeInternal
- (BOOL)verifyTimestamp:(id)a3 error:(id *)a4;
- (MSCMSTimestampAttributeInternal)init;
- (MSCMSTimestampAttributeInternal)initWithTimestampToken:(id)a3 error:(id *)a4;
- (MSOID)attributeType;
- (id)encodeAttributeWithError:(id *)a3;
- (id)timestampToken;
- (void)dealloc;
- (void)setAttributeType:(id)a3;
@end

@implementation MSCMSTimestampAttributeInternal

- (MSOID)attributeType
{
  v3 = OBJC_IVAR___MSCMSTimestampAttributeInternal_attributeType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAttributeType:(id)a3
{
  v5 = OBJC_IVAR___MSCMSTimestampAttributeInternal_attributeType;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v4 = self;
  free_TSTInfo();
  swift_endAccess();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(MSCMSTimestampAttributeInternal *)&v5 dealloc];
}

- (MSCMSTimestampAttributeInternal)initWithTimestampToken:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_258CBEA80();
  v7 = v6;

  return MSCMSTimestampAttributeInternal.init(timestampToken:)(v5, v7);
}

- (BOOL)verifyTimestamp:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_258CBEA80();
  v9 = v8;

  MSCMSTimestampAttributeInternal.verifyTimestamp(expectedMessageDigest:)(v7, v9);
  sub_258CA82B8(v7, v9);
  return 1;
}

- (id)encodeAttributeWithError:(id *)a3
{
  sub_258CAFE28();
  v4 = swift_allocError();
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 48;
  swift_willThrow();
  if (a3)
  {
    v6 = sub_258CBEA00();

    v7 = v6;
    *a3 = v6;
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
  v3 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970_];

  return v3;
}

- (MSCMSTimestampAttributeInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end