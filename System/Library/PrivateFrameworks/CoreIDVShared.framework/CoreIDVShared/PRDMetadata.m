@interface PRDMetadata
- (_TtC13CoreIDVShared11PRDMetadata)init;
- (_TtC13CoreIDVShared11PRDMetadata)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRDMetadata

- (_TtC13CoreIDVShared11PRDMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B6123C(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared11PRDMetadata_stage2);
  v5 = a3;
  v6 = self;
  v7 = sub_225CCE444();
  LODWORD(v8) = v4;
  [v5 encodeFloat:v7 forKey:v8];

  v9 = sub_225CCFC44();
  v10 = sub_225CCE444();
  [v5 encodeObject:v9 forKey:v10];
}

- (_TtC13CoreIDVShared11PRDMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end