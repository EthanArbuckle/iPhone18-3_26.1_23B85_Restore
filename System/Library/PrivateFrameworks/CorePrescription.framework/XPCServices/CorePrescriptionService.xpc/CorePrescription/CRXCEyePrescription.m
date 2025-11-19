@interface CRXCEyePrescription
- (BOOL)isEqual:(id)a3;
- (CRXCEyePrescription)init;
- (CRXCEyePrescription)initWithCoder:(id)a3;
- (NSString)description;
- (float)cylinder;
- (float)sphere;
- (float)vrAdd;
- (unint64_t)axis;
- (void)encodeWithCoder:(id)a3;
- (void)setAxis:(unint64_t)a3;
- (void)setCylinder:(float)a3;
- (void)setSphere:(float)a3;
- (void)setVrAdd:(float)a3;
@end

@implementation CRXCEyePrescription

- (float)sphere
{
  v2 = (self + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  return *v2;
}

- (void)setSphere:(float)a3
{
  v4 = (self + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  *v4 = a3;
}

- (float)cylinder
{
  v2 = (self + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  return *v2;
}

- (void)setCylinder:(float)a3
{
  v4 = (self + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  *v4 = a3;
}

- (unint64_t)axis
{
  v3 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAxis:(unint64_t)a3
{
  v5 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (float)vrAdd
{
  v2 = (self + OBJC_IVAR___CRXCEyePrescription_vrAdd);
  swift_beginAccess();
  return *v2;
}

- (void)setVrAdd:(float)a3
{
  v4 = (self + OBJC_IVAR___CRXCEyePrescription_vrAdd);
  swift_beginAccess();
  *v4 = a3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CRXCEyePrescription.isEqual(_:)(v8);

  sub_10000D014(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  CRXCEyePrescription.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRXCEyePrescription.encode(with:)(v4);
}

- (CRXCEyePrescription)initWithCoder:(id)a3
{
  v3 = a3;
  sub_100062C44(v3);
  v5 = v4;

  return v5;
}

- (CRXCEyePrescription)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end