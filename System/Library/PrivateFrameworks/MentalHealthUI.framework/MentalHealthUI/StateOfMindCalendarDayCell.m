@interface StateOfMindCalendarDayCell
- (_TtC14MentalHealthUI26StateOfMindCalendarDayCell)initWithCoder:(id)a3;
- (_TtC14MentalHealthUI26StateOfMindCalendarDayCell)initWithFrame:(CGRect)a3;
@end

@implementation StateOfMindCalendarDayCell

- (_TtC14MentalHealthUI26StateOfMindCalendarDayCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC14MentalHealthUI26StateOfMindCalendarDayCell_day;
  v10 = type metadata accessor for StateOfMindCalendarDay();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v14.receiver = self;
  v14.super_class = ObjectType;
  v11 = [(StateOfMindCalendarDayCell *)&v14 initWithFrame:x, y, width, height];
  *(swift_allocObject() + 16) = v11;
  v12 = v11;
  sub_258B02FF4();

  return v12;
}

- (_TtC14MentalHealthUI26StateOfMindCalendarDayCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC14MentalHealthUI26StateOfMindCalendarDayCell_day;
  v5 = type metadata accessor for StateOfMindCalendarDay();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_258B03294();
  __break(1u);
  return result;
}

@end