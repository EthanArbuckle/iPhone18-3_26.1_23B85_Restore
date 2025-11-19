@interface DCPresentmentRequestedElement
- (BOOL)isEqual:(id)a3;
- (DCPresentmentRequestedElement)init;
- (int64_t)hash;
- (int64_t)retentionPeriod;
- (unint64_t)intentToRetain;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCPresentmentRequestedElement

- (unint64_t)intentToRetain
{
  v2 = self;
  v3 = DCPresentmentRequestedElement.__intentToRetain.getter();

  return v3;
}

- (int64_t)retentionPeriod
{
  v2 = self;
  v3 = DCPresentmentRequestedElement.retentionPeriod.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_24565BCF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = DCPresentmentRequestedElement.isEqual(_:)(v8);

  sub_245638A1C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = DCPresentmentRequestedElement.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  DCPresentmentRequestedElement.encode(with:)(v4);
}

- (DCPresentmentRequestedElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end