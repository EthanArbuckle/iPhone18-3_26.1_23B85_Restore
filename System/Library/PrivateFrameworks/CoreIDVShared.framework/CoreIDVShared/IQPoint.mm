@interface IQPoint
- (_TtC13CoreIDVShared7IQPoint)init;
- (_TtC13CoreIDVShared7IQPoint)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IQPoint

- (_TtC13CoreIDVShared7IQPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = sub_225CCE444();
  [coderCopy decodeFloatForKey_];
  v7 = v6;

  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x) = v7;
  v8 = sub_225CCE444();
  [coderCopy decodeFloatForKey_];
  v10 = v9;

  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for IQPoint();
  v11 = [(IQPoint *)&v13 init];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = (self + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
  swift_beginAccess();
  v6 = *v5;
  coderCopy = coder;
  selfCopy = self;
  v9 = sub_225CCE444();
  LODWORD(v10) = v6;
  [coderCopy encodeFloat:v9 forKey:v10];

  v11 = (selfCopy + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
  swift_beginAccess();
  v12 = *v11;
  v13 = sub_225CCE444();
  LODWORD(v14) = v12;
  [coderCopy encodeFloat:v13 forKey:v14];
}

- (_TtC13CoreIDVShared7IQPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end