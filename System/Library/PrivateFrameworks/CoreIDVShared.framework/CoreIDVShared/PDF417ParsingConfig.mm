@interface PDF417ParsingConfig
- (_TtC13CoreIDVShared19PDF417ParsingConfig)init;
- (_TtC13CoreIDVShared19PDF417ParsingConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PDF417ParsingConfig

- (_TtC13CoreIDVShared19PDF417ParsingConfig)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A60);
  coderCopy = coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_225CCE444();
  v6 = sub_225CCE444();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (_TtC13CoreIDVShared19PDF417ParsingConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end