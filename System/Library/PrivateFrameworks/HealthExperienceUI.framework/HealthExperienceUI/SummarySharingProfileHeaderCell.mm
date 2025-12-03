@interface SummarySharingProfileHeaderCell
- (_TtC18HealthExperienceUI31SummarySharingProfileHeaderCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI31SummarySharingProfileHeaderCell)initWithFrame:(CGRect)frame;
@end

@implementation SummarySharingProfileHeaderCell

- (_TtC18HealthExperienceUI31SummarySharingProfileHeaderCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SummarySharingProfileHeaderCell();
  return [(SummarySharingProfileHeaderCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI31SummarySharingProfileHeaderCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SummarySharingProfileHeaderCell();
  coderCopy = coder;
  v5 = [(SummarySharingProfileHeaderCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end