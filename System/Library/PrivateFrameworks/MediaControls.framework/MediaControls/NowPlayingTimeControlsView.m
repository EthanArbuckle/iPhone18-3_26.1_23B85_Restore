@interface NowPlayingTimeControlsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setNeedsLayout;
- (void)sliderEditingChangedWithSender:(id)a3;
- (void)sliderEditingDidEndWithSender:(id)a3;
- (void)sliderValueChangedWithSender:(id)a3;
- (void)updateContentSizeCategory;
- (void)updateElapsedTimeWithDisplayLink:(id)a3;
- (void)updateVisualStyling;
@end

@implementation NowPlayingTimeControlsView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xE0);
  v6 = self;
  v5(v12);
  v7 = sub_1A2122A30(v12);
  v8 = *&v12[1];
  v9 = (*((*v4 & v6->super.super.super.isa) + 0xF8))(v7);

  v10 = v8 * v9;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)dealloc
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x158);
  v3 = self;
  v4 = v2();
  [v4 invalidate];

  v5.receiver = v3;
  v5.super_class = type metadata accessor for NowPlayingTimeControlsView(0);
  [(NowPlayingTimeControlsView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for NowPlayingTimeControlsView(0);
  v2 = v11.receiver;
  [(NowPlayingTimeControlsView *)&v11 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*&v2[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView] setFrame_];
  [*&v2[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView] setFrame_];
}

- (void)sliderEditingChangedWithSender:(id)a3
{
  v3 = self;
  sub_1A228E500();
}

- (void)sliderValueChangedWithSender:(id)a3
{
  v3 = self;
  sub_1A228E8D8();
}

- (void)sliderEditingDidEndWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A228DC34(v4);
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NowPlayingTimeControlsView(0);
  v2 = v3.receiver;
  [(NowPlayingTimeControlsView *)&v3 setNeedsLayout];
  [*&v2[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_finiteView] setNeedsLayout];
  [*&v2[OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_liveView] setNeedsLayout];
}

- (void)updateElapsedTimeWithDisplayLink:(id)a3
{
  v3 = self;
  sub_1A228F148(0);
  sub_1A228E8D8();
}

- (void)updateContentSizeCategory
{
  v2 = self;
  sub_1A228F8C4();
}

- (void)updateVisualStyling
{
  v2 = self;
  sub_1A228FBA8();
}

@end