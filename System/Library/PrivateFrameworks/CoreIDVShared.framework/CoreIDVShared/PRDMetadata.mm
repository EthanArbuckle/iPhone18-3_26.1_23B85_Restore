@interface PRDMetadata
- (_TtC13CoreIDVShared11PRDMetadata)init;
- (_TtC13CoreIDVShared11PRDMetadata)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRDMetadata

- (_TtC13CoreIDVShared11PRDMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B6123C(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared11PRDMetadata_stage2);
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_225CCE444();
  LODWORD(v8) = v4;
  [coderCopy encodeFloat:v7 forKey:v8];

  v9 = sub_225CCFC44();
  v10 = sub_225CCE444();
  [coderCopy encodeObject:v9 forKey:v10];
}

- (_TtC13CoreIDVShared11PRDMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end