@interface FuzzyMatchAssessment
- (_TtC13CoreIDVShared20FuzzyMatchAssessment)init;
- (_TtC13CoreIDVShared20FuzzyMatchAssessment)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FuzzyMatchAssessment

- (_TtC13CoreIDVShared20FuzzyMatchAssessment)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225BC971C();

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  FuzzyMatchAssessment.encode(with:)(v4);
}

- (_TtC13CoreIDVShared20FuzzyMatchAssessment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end