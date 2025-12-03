@interface CRXCEyePrescription
- (BOOL)isEqual:(id)equal;
- (CRXCEyePrescription)init;
- (CRXCEyePrescription)initWithCoder:(id)coder;
- (NSString)description;
- (float)cylinder;
- (float)sphere;
- (float)vrAdd;
- (unint64_t)axis;
- (void)encodeWithCoder:(id)coder;
- (void)setAxis:(unint64_t)axis;
- (void)setCylinder:(float)cylinder;
- (void)setSphere:(float)sphere;
- (void)setVrAdd:(float)add;
@end

@implementation CRXCEyePrescription

- (float)sphere
{
  v2 = (self + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  return *v2;
}

- (void)setSphere:(float)sphere
{
  v4 = (self + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  *v4 = sphere;
}

- (float)cylinder
{
  v2 = (self + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  return *v2;
}

- (void)setCylinder:(float)cylinder
{
  v4 = (self + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  *v4 = cylinder;
}

- (unint64_t)axis
{
  v3 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAxis:(unint64_t)axis
{
  v5 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  *(&self->super.isa + v5) = axis;
}

- (float)vrAdd
{
  v2 = (self + OBJC_IVAR___CRXCEyePrescription_vrAdd);
  swift_beginAccess();
  return *v2;
}

- (void)setVrAdd:(float)add
{
  v4 = (self + OBJC_IVAR___CRXCEyePrescription_vrAdd);
  swift_beginAccess();
  *v4 = add;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRXCEyePrescription.isEqual(_:)(v8);

  sub_10000D014(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  CRXCEyePrescription.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCEyePrescription.encode(with:)(coderCopy);
}

- (CRXCEyePrescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  sub_100062C44(coderCopy);
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