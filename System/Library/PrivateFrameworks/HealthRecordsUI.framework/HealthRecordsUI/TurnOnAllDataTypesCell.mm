@interface TurnOnAllDataTypesCell
- (_TtC15HealthRecordsUI22TurnOnAllDataTypesCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI22TurnOnAllDataTypesCell)initWithFrame:(CGRect)frame;
@end

@implementation TurnOnAllDataTypesCell

- (_TtC15HealthRecordsUI22TurnOnAllDataTypesCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI22TurnOnAllDataTypesCell_allSwitchesOn) = 0;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI22TurnOnAllDataTypesCell_item;
  v9 = type metadata accessor for TurnOnAllDataTypesCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  height = [(TurnOnAllDataTypesCell *)&v12 initWithFrame:x, y, width, height];
  sub_1D113C99C();

  return height;
}

- (_TtC15HealthRecordsUI22TurnOnAllDataTypesCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI22TurnOnAllDataTypesCell_allSwitchesOn) = 0;
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI22TurnOnAllDataTypesCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TurnOnAllDataTypesCell();
  coderCopy = coder;
  v6 = [(TurnOnAllDataTypesCell *)&v10 initWithCoder:coderCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1D113C99C();
  }

  return v7;
}

@end