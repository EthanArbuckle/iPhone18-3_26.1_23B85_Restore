@interface TransitConnectionsSectionView
- (_TtC6MapsUI29TransitConnectionsSectionView)initWithCoder:(id)coder;
- (_TtC6MapsUI29TransitConnectionsSectionView)initWithConfiguration:(id)configuration;
- (_TtC6MapsUI29TransitConnectionsSectionView)initWithFrame:(CGRect)frame;
- (void)verticalCardContainerView:(id)view didSelectRow:(id)row atIndex:(int64_t)index;
@end

@implementation TransitConnectionsSectionView

- (_TtC6MapsUI29TransitConnectionsSectionView)initWithConfiguration:(id)configuration
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionsDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionViewModels) = MEMORY[0x1E69E7CC0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for TransitConnectionsSectionView();
  configurationCopy = configuration;
  v6 = [(MUPlaceVerticalCardContainerView *)&v8 initWithConfiguration:configurationCopy];
  [(MUPlaceVerticalCardContainerView *)v6 setDelegate:v6, v8.receiver, v8.super_class];

  return v6;
}

- (_TtC6MapsUI29TransitConnectionsSectionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionsDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionViewModels) = MEMORY[0x1E69E7CC0];
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (_TtC6MapsUI29TransitConnectionsSectionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)verticalCardContainerView:(id)view didSelectRow:(id)row atIndex:(int64_t)index
{
  viewCopy = view;
  rowCopy = row;
  selfCopy = self;
  sub_1C5641A80(rowCopy);
}

@end