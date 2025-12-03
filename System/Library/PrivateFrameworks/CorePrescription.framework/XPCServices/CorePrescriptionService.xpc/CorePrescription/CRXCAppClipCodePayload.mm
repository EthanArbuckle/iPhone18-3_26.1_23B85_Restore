@interface CRXCAppClipCodePayload
- (CRXCAppClipCodePayload)init;
- (CRXCAppClipCodePayload)initWithVersion:(unint64_t)version lensType:(int64_t)type left:(id)left right:(id)right lensColorCode:(unint64_t)code secret:(id)secret randomBits:(unsigned int)bits;
- (CRXCPrescriptionInfo)left;
- (CRXCPrescriptionInfo)right;
- (NSData)secret;
- (int64_t)lensType;
- (unint64_t)lensColorCode;
- (unint64_t)version;
- (unsigned)randomBits;
- (void)encodeWithCoder:(id)coder;
- (void)setLensColorCode:(unint64_t)code;
- (void)setLensType:(int64_t)type;
- (void)setRandomBits:(unsigned int)bits;
- (void)setSecret:(id)secret;
- (void)setVersion:(unint64_t)version;
@end

@implementation CRXCAppClipCodePayload

- (unint64_t)version
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setVersion:(unint64_t)version
{
  v5 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  *(self + v5) = version;
}

- (int64_t)lensType
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLensType:(int64_t)type
{
  v5 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (CRXCPrescriptionInfo)left
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  return *(self + v3);
}

- (CRXCPrescriptionInfo)right
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  return *(self + v3);
}

- (unint64_t)lensColorCode
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLensColorCode:(unint64_t)code
{
  v5 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  swift_beginAccess();
  *(self + v5) = code;
}

- (NSData)secret
{
  v2 = (self + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_10000D808(v4, v3);
  v5.super.isa = sub_100080CC8().super.isa;
  sub_100006A34(v4, v3);

  return v5.super.isa;
}

- (void)setSecret:(id)secret
{
  secretCopy = secret;
  selfCopy = self;
  v6 = sub_100080CF8();
  v8 = v7;

  v9 = (selfCopy + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = v6;
  v9[1] = v8;
  sub_100006A34(v10, v11);
}

- (unsigned)randomBits
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRandomBits:(unsigned int)bits
{
  v5 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  swift_beginAccess();
  *(self + v5) = bits;
}

- (CRXCAppClipCodePayload)initWithVersion:(unint64_t)version lensType:(int64_t)type left:(id)left right:(id)right lensColorCode:(unint64_t)code secret:(id)secret randomBits:(unsigned int)bits
{
  leftCopy = left;
  rightCopy = right;
  secretCopy = secret;
  v16 = sub_100080CF8();
  v18 = v17;

  v19 = sub_10000D85C(version, type, left, right, code, v16, v18, bits);
  sub_100006A34(v16, v18);

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCAppClipCodePayload.encode(with:)(coderCopy);
}

- (CRXCAppClipCodePayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end