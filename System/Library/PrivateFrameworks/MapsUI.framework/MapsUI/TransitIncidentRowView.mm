@interface TransitIncidentRowView
- (_TtC6MapsUI22TransitIncidentRowView)initWithCoder:(id)coder;
- (_TtC6MapsUI22TransitIncidentRowView)initWithFrame:(CGRect)frame;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation TransitIncidentRowView

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selfCopy = self;
  sub_1C565D590(selected, animated);
}

- (_TtC6MapsUI22TransitIncidentRowView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI22TransitIncidentRowView_incidentViewModel) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(MUDisclosureActionRowView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC6MapsUI22TransitIncidentRowView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI22TransitIncidentRowView_incidentViewModel) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(TransitIncidentRowView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end