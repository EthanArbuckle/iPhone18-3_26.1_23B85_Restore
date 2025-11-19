@interface AbsoluteVolumeControlView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (_TtC13MediaControls25AbsoluteVolumeControlView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)sliderTouchDown:(id)a3;
- (void)sliderTouchUpInside:(id)a3;
- (void)sliderValueChanged:(id)a3;
@end

@implementation AbsoluteVolumeControlView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AbsoluteVolumeControlView(0);
  v2 = v4.receiver;
  [(AbsoluteVolumeControlView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider];
  [v2 bounds];
  [v3 setFrame_];
}

- (CGRect)hitRect
{
  v21.receiver = self;
  v21.super_class = type metadata accessor for AbsoluteVolumeControlView(0);
  v2 = v21.receiver;
  v3 = [(AbsoluteVolumeControlView *)&v21 hitRect];
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xF8);
  v4(v3);
  v7 = (v4)(v5, v6);
  v8 = (v4)(v7);
  v4(v8);
  UIRectInset();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(AbsoluteVolumeControlView *)v6 hitRect];
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (void)sliderTouchDown:(id)a3
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xC0);
  v4 = self;
  v3(1);
}

- (void)sliderValueChanged:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls25AbsoluteVolumeControlView_slider);
  v4 = self;
  [v3 value];
  (*((*MEMORY[0x1E69E7D40] & v4->super.super.super.isa) + 0xE0))();
  sub_1A22813BC();
}

- (void)sliderTouchUpInside:(id)a3
{
  v3 = self;
  sub_1A22813BC();
  (*((*MEMORY[0x1E69E7D40] & v3->super.super.super.isa) + 0xC0))(0);
  sub_1A2280DEC();
}

- (_TtC13MediaControls25AbsoluteVolumeControlView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end