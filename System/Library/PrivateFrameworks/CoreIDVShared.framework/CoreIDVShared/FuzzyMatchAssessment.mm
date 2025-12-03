@interface FuzzyMatchAssessment
- (_TtC13CoreIDVShared20FuzzyMatchAssessment)init;
- (_TtC13CoreIDVShared20FuzzyMatchAssessment)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FuzzyMatchAssessment

- (_TtC13CoreIDVShared20FuzzyMatchAssessment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225BC971C();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  FuzzyMatchAssessment.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared20FuzzyMatchAssessment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end