@interface TransitIncidentsSectionView
- (_TtC6MapsUI27TransitIncidentsSectionView)initWithCoder:(id)a3;
- (_TtC6MapsUI27TransitIncidentsSectionView)initWithConfiguration:(id)a3;
- (_TtC6MapsUI27TransitIncidentsSectionView)initWithFrame:(CGRect)a3;
@end

@implementation TransitIncidentsSectionView

- (_TtC6MapsUI27TransitIncidentsSectionView)initWithConfiguration:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_feedbackDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_incidentViewModels) = MEMORY[0x1E69E7CC0];
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(MUPlaceVerticalCardContainerView *)&v7 initWithConfiguration:a3];
}

- (_TtC6MapsUI27TransitIncidentsSectionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_feedbackDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_incidentViewModels) = MEMORY[0x1E69E7CC0];
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(MUStackView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC6MapsUI27TransitIncidentsSectionView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_feedbackDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_incidentViewModels) = MEMORY[0x1E69E7CC0];
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(TransitIncidentsSectionView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end