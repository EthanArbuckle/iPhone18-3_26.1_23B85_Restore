@interface RoutePickerItemCell
- (BOOL)isHighlighted;
- (_TtC13MediaControls19RoutePickerItemCell)initWithCoder:(id)a3;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation RoutePickerItemCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RoutePickerItemCell();
  return [(RoutePickerItemCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoutePickerItemCell();
  v4 = v7.receiver;
  [(RoutePickerItemCell *)&v7 setHighlighted:v3];
  v5 = *&v4[OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView];
  v6 = [v4 isHighlighted];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xD0))(v6);
}

- (_TtC13MediaControls19RoutePickerItemCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_viewModel;
  v5 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView;
  type metadata accessor for RoutePickerItemView(0);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = sub_1A2114DFC();

  *(&self->super.super.super.super.super.isa + v6) = v8;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemViewConstraints) = 0;
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RoutePickerItemCell();
  v2 = v4.receiver;
  v3 = [(RoutePickerItemCell *)&v4 prepareForReuse];
  (*((*MEMORY[0x1E69E7D40] & **&v2[OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView]) + 0x128))(v3);
}

@end