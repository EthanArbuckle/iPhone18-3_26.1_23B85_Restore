@interface RoutePickerItemBackgroundView
- (_TtC13MediaControls29RoutePickerItemBackgroundView)initWithCoder:(id)a3;
- (_TtC13MediaControls29RoutePickerItemBackgroundView)initWithFrame:(CGRect)a3;
- (void)updateVisualStylingWithAnimated:(BOOL)a3;
@end

@implementation RoutePickerItemBackgroundView

- (_TtC13MediaControls29RoutePickerItemBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_state;
  *v7 = 0;
  v7[2] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_isHighlighted) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RoutePickerItemBackgroundView();
  v8 = [(RoutePickerItemBackgroundView *)&v10 initWithFrame:x, y, width, height];
  [(RoutePickerItemBackgroundView *)v8 setUserInteractionEnabled:0];
  sub_1A2115288(0, &qword_1ED94EA40);
  sub_1A22E6B58();
  MEMORY[0x1A58DAE60]();
  swift_unknownObjectRelease();

  (*((*MEMORY[0x1E69E7D40] & v8->super.super.super.isa) + 0xB8))(0);

  return v8;
}

- (_TtC13MediaControls29RoutePickerItemBackgroundView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_state;
  *v3 = 0;
  v3[2] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_isHighlighted) = 0;
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (void)updateVisualStylingWithAnimated:(BOOL)a3
{
  v4 = self;
  sub_1A22C67BC(a3);
}

@end