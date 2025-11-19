@interface TransitConnectionsSectionView
- (_TtC6MapsUI29TransitConnectionsSectionView)initWithCoder:(id)a3;
- (_TtC6MapsUI29TransitConnectionsSectionView)initWithConfiguration:(id)a3;
- (_TtC6MapsUI29TransitConnectionsSectionView)initWithFrame:(CGRect)a3;
- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(int64_t)a5;
@end

@implementation TransitConnectionsSectionView

- (_TtC6MapsUI29TransitConnectionsSectionView)initWithConfiguration:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionsDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionViewModels) = MEMORY[0x1E69E7CC0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for TransitConnectionsSectionView();
  v5 = a3;
  v6 = [(MUPlaceVerticalCardContainerView *)&v8 initWithConfiguration:v5];
  [(MUPlaceVerticalCardContainerView *)v6 setDelegate:v6, v8.receiver, v8.super_class];

  return v6;
}

- (_TtC6MapsUI29TransitConnectionsSectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionsDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionViewModels) = MEMORY[0x1E69E7CC0];
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (_TtC6MapsUI29TransitConnectionsSectionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1C5641A80(v8);
}

@end