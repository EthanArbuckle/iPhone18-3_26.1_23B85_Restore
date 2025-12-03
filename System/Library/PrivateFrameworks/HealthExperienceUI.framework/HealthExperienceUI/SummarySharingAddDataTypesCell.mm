@interface SummarySharingAddDataTypesCell
- (_TtC18HealthExperienceUI30SummarySharingAddDataTypesCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI30SummarySharingAddDataTypesCell)initWithFrame:(CGRect)frame;
@end

@implementation SummarySharingAddDataTypesCell

- (_TtC18HealthExperienceUI30SummarySharingAddDataTypesCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SummarySharingAddDataTypesCell();
  return [(IconWithNameCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI30SummarySharingAddDataTypesCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SummarySharingAddDataTypesCell();
  coderCopy = coder;
  v5 = [(IconWithNameCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end