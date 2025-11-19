@interface PDF417ParsingConfig
- (_TtC13CoreIDVShared19PDF417ParsingConfig)init;
- (_TtC13CoreIDVShared19PDF417ParsingConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PDF417ParsingConfig

- (_TtC13CoreIDVShared19PDF417ParsingConfig)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A60);
  v6 = a3;
  result = sub_225CCEF14();
  if (result)
  {
    v8 = result;
    v9 = sub_225CCE474();
    v11 = v10;

    v12 = (self + OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader);
    *v12 = v9;
    v12[1] = v11;
    v14.receiver = self;
    v14.super_class = ObjectType;
    v13 = [(PDF417ParsingConfig *)&v14 init];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = sub_225CCE444();
  v6 = sub_225CCE444();
  [v4 encodeObject:v5 forKey:v6];
}

- (_TtC13CoreIDVShared19PDF417ParsingConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end