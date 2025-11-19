@interface IQPoint
- (_TtC13CoreIDVShared7IQPoint)init;
- (_TtC13CoreIDVShared7IQPoint)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IQPoint

- (_TtC13CoreIDVShared7IQPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = sub_225CCE444();
  [v4 decodeFloatForKey_];
  v7 = v6;

  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x) = v7;
  v8 = sub_225CCE444();
  [v4 decodeFloatForKey_];
  v10 = v9;

  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for IQPoint();
  v11 = [(IQPoint *)&v13 init];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = (self + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x);
  swift_beginAccess();
  v6 = *v5;
  v7 = a3;
  v8 = self;
  v9 = sub_225CCE444();
  LODWORD(v10) = v6;
  [v7 encodeFloat:v9 forKey:v10];

  v11 = (v8 + OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y);
  swift_beginAccess();
  v12 = *v11;
  v13 = sub_225CCE444();
  LODWORD(v14) = v12;
  [v7 encodeFloat:v13 forKey:v14];
}

- (_TtC13CoreIDVShared7IQPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end