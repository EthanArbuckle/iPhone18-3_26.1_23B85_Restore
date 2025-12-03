@interface VideoStaticView
- (_TtC9MomentsUI15VideoStaticView)init;
- (_TtC9MomentsUI15VideoStaticView)initWithFrame:(CGRect)frame;
@end

@implementation VideoStaticView

- (_TtC9MomentsUI15VideoStaticView)init
{
  v2 = [(VideoStaticView *)self initWithFrame:0.0, 0.0, 0.0, 0.0];
  VideoStaticView.addSubviewsAndConstraints()();

  return v2;
}

- (_TtC9MomentsUI15VideoStaticView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC9MomentsUI15VideoStaticView_staticImageView;
  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v9 setContentMode_];
  *(&self->super.super.super.isa + v8) = v9;
  v10 = OBJC_IVAR____TtC9MomentsUI15VideoStaticView_durationLabelView;
  specialized static VideoStaticView.buildDurationLabelView()();
  *(&self->super.super.super.isa + v10) = v11;
  v12 = OBJC_IVAR____TtC9MomentsUI15VideoStaticView_gradientView;
  *(&self->super.super.super.isa + v12) = specialized static VideoStaticView.buildGradientView()();
  v14.receiver = self;
  v14.super_class = type metadata accessor for VideoStaticView();
  return [(VideoStaticView *)&v14 initWithFrame:x, y, width, height];
}

@end