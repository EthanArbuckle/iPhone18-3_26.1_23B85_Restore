@interface LoopingVideoView
- (_TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation LoopingVideoView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for LoopingVideoView();
  v2 = v5.receiver;
  [(LoopingVideoView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView_playerLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (_TtC11FMFindingUIP33_853A022D7D7E29EDCAC43AB8D600AA2016LoopingVideoView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end