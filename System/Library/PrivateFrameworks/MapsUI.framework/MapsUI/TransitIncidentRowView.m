@interface TransitIncidentRowView
- (_TtC6MapsUI22TransitIncidentRowView)initWithCoder:(id)a3;
- (_TtC6MapsUI22TransitIncidentRowView)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation TransitIncidentRowView

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1C565D590(a3, a4);
}

- (_TtC6MapsUI22TransitIncidentRowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI22TransitIncidentRowView_incidentViewModel) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(MUDisclosureActionRowView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC6MapsUI22TransitIncidentRowView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI22TransitIncidentRowView_incidentViewModel) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(TransitIncidentRowView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end