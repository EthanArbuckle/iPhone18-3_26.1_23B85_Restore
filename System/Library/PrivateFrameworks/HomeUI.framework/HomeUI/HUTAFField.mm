@interface HUTAFField
- (_TtC6HomeUI10HUTAFField)init;
- (id)init:(id)a3;
@end

@implementation HUTAFField

- (id)init:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  v7 = sub_20D564E68();
  v8 = (self + OBJC_IVAR____TtC6HomeUI10HUTAFField_label);
  *v8 = v7;
  v8[1] = v9;
  v10 = sub_20D564E78();
  v11 = (self + OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey);
  *v11 = v10;
  v11[1] = v12;
  *(self + OBJC_IVAR____TtC6HomeUI10HUTAFField_required) = sub_20D564E88() & 1;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(HUTAFField *)&v15 init];

  return v13;
}

- (_TtC6HomeUI10HUTAFField)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end