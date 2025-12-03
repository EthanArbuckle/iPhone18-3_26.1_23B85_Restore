@interface ImageQualityMetrics
- (_TtC13CoreIDVShared19ImageQualityMetrics)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ImageQualityMetrics

- (_TtC13CoreIDVShared19ImageQualityMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225BC74E8();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_225BC1910(coderCopy);
}

@end