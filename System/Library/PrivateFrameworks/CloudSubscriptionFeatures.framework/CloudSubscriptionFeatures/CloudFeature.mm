@interface CloudFeature
- (BOOL)isEqual:(id)a3;
- (CloudFeature)init;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CloudFeature

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CloudFeature.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  CloudFeature.description.getter();

  v3 = sub_1DF564914();

  return v3;
}

- (CloudFeature)init
{
  v3 = self + OBJC_IVAR___CloudFeature_limit;
  *v3 = 0;
  v3[8] = 1;
  v4 = (&self->super.isa + OBJC_IVAR___CloudFeature_accessToken);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR___CloudFeature_ttl;
  v6 = sub_1DF564494();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_1DF564EF4();
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1DF564D24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CloudFeature.isEqual(_:)(v8);

  sub_1DF47E5B4(v8, &qword_1ECE378F0, &qword_1DF5686F0);
  return v6 & 1;
}

@end