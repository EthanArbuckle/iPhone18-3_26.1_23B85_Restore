@interface IdentityGesture
- (_TtC13CoreIDVShared15IdentityGesture)init;
- (_TtC13CoreIDVShared15IdentityGesture)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityGesture

- (_TtC13CoreIDVShared15IdentityGesture)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  coderCopy = coder;
  v7 = sub_225CCE444();
  decodeIntegerForKey_ = [coderCopy decodeIntegerForKey_];

  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_gesture) = decodeIntegerForKey_;
  v9 = sub_225CCE444();
  decodeIntegerForKey_2 = [coderCopy decodeIntegerForKey_];

  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_type) = decodeIntegerForKey_2;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(IdentityGesture *)&v13 init];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_gesture);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_225CCE444();
  [coderCopy encodeInteger:v4 forKey:v6];

  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC13CoreIDVShared15IdentityGesture_type);
  v8 = sub_225CCE444();
  [coderCopy encodeInteger:v7 forKey:v8];
}

- (_TtC13CoreIDVShared15IdentityGesture)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end