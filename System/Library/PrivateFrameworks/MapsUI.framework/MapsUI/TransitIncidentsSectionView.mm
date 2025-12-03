@interface TransitIncidentsSectionView
- (_TtC6MapsUI27TransitIncidentsSectionView)initWithCoder:(id)coder;
- (_TtC6MapsUI27TransitIncidentsSectionView)initWithConfiguration:(id)configuration;
- (_TtC6MapsUI27TransitIncidentsSectionView)initWithFrame:(CGRect)frame;
@end

@implementation TransitIncidentsSectionView

- (_TtC6MapsUI27TransitIncidentsSectionView)initWithConfiguration:(id)configuration
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_feedbackDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_incidentViewModels) = MEMORY[0x1E69E7CC0];
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(MUPlaceVerticalCardContainerView *)&v7 initWithConfiguration:configuration];
}

- (_TtC6MapsUI27TransitIncidentsSectionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_feedbackDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_incidentViewModels) = MEMORY[0x1E69E7CC0];
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(MUStackView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC6MapsUI27TransitIncidentsSectionView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_feedbackDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI27TransitIncidentsSectionView_incidentViewModels) = MEMORY[0x1E69E7CC0];
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(TransitIncidentsSectionView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end