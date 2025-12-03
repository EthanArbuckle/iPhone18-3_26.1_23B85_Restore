@interface StateOfMindCalendarSpacerCell
- (_TtC14MentalHealthUI29StateOfMindCalendarSpacerCell)initWithCoder:(id)coder;
- (_TtC14MentalHealthUI29StateOfMindCalendarSpacerCell)initWithFrame:(CGRect)frame;
@end

@implementation StateOfMindCalendarSpacerCell

- (_TtC14MentalHealthUI29StateOfMindCalendarSpacerCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(StateOfMindCalendarSpacerCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC14MentalHealthUI29StateOfMindCalendarSpacerCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(StateOfMindCalendarSpacerCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end