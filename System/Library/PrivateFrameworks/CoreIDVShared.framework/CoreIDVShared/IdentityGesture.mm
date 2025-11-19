@interface IdentityGesture
- (_TtC13CoreIDVShared15IdentityGesture)init;
- (_TtC13CoreIDVShared15IdentityGesture)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityGesture

- (_TtC13CoreIDVShared15IdentityGesture)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  v7 = sub_225CCE444();
  v8 = [v6 decodeIntegerForKey_];

  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_gesture) = v8;
  v9 = sub_225CCE444();
  v10 = [v6 decodeIntegerForKey_];

  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_type) = v10;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(IdentityGesture *)&v13 init];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_gesture);
  v5 = a3;
  v9 = self;
  v6 = sub_225CCE444();
  [v5 encodeInteger:v4 forKey:v6];

  v7 = *(&v9->super.isa + OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_type);
  v8 = sub_225CCE444();
  [v5 encodeInteger:v7 forKey:v8];
}

- (_TtC13CoreIDVShared15IdentityGesture)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end