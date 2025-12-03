@interface LicenseResponseMessage.Subject
- (_TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject)init;
- (_TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject)initWithCoder:(id)coder;
- (id)copyWithZone:(void *)zone;
- (int64_t)length;
- (unsigned)characterAtIndex:(int64_t)index;
@end

@implementation LicenseResponseMessage.Subject

- (int64_t)length
{
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject_licenseID);
  selfCopy = self;
  v3 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v3);

  v4 = sub_1D30E90CC();

  return v4;
}

- (_TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject)init
{
  result = sub_1D30E957C();
  __break(1u);
  return result;
}

- (_TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject)initWithCoder:(id)coder
{
  result = sub_1D30E957C();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)zone
{
  ObjectType = swift_getObjectType();
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject_licenseID);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR____TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject_licenseID] = v5;
  v10.receiver = v6;
  v10.super_class = ObjectType;
  v7 = [(LicenseResponseMessage.Subject *)&v10 init];
  v11 = v7;
  v8 = sub_1D30E97BC();

  return v8;
}

- (unsigned)characterAtIndex:(int64_t)index
{
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject_licenseID);
  selfCopy = self;
  v5 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v5);

  v6 = sub_1D30E906C();

  LOWORD(index) = [v6 characterAtIndex_];

  return index;
}

@end