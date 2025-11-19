@interface NANowPlayingTimeControl
- (CGPoint)accessibilityActivationPoint;
- (NSString)accessibilityValue;
- (double)alpha;
- (id)timeDidChangeHandler;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)displayLinkFired:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setCurrentTime:(double)a3 duration:(double)a4 rate:(double)a5 isWaiting:(BOOL)a6 animated:(BOOL)a7;
- (void)setEnabled:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setTimeDidChangeHandler:(id)a3;
- (void)tintColorDidChange;
- (void)updateFonts;
@end

@implementation NANowPlayingTimeControl

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(self + OBJC_IVAR___NANowPlayingTimeControl_displayLink);
  v5 = self;
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(NANowPlayingTimeControl *)&v6 dealloc];
}

- (id)timeDidChangeHandler
{
  if (*(self + OBJC_IVAR___NANowPlayingTimeControl_timeDidChangeHandler))
  {
    v2 = *(self + OBJC_IVAR___NANowPlayingTimeControl_timeDidChangeHandler + 8);
    v5[4] = *(self + OBJC_IVAR___NANowPlayingTimeControl_timeDidChangeHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D79F1AC8;
    v5[3] = &block_descriptor_1;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTimeDidChangeHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1D79F3B18;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___NANowPlayingTimeControl_timeDidChangeHandler);
  v8 = *(self + OBJC_IVAR___NANowPlayingTimeControl_timeDidChangeHandler);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_1D79AD740(v8);
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = self;
  v7 = [(NANowPlayingTimeControl *)&v9 isHidden];
  v8.receiver = v6;
  v8.super_class = ObjectType;
  [(NANowPlayingTimeControl *)&v8 setHidden:v3];
  sub_1D79F1ED0(v7);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(NANowPlayingTimeControl *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)a3
{
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v6 = self;
  [(NANowPlayingTimeControl *)&v10 alpha];
  v8 = v7;
  v9.receiver = v6;
  v9.super_class = ObjectType;
  [(NANowPlayingTimeControl *)&v9 setAlpha:a3];
  sub_1D79F2120(v8);
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1D79F22AC();
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(NANowPlayingTimeControl *)&v3 tintColorDidChange];
  sub_1D79F1D0C();
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v6 = self;
  [(NANowPlayingTimeControl *)&v12 setEnabled:v3];
  v7 = *(v6 + OBJC_IVAR___NANowPlayingTimeControl_slider);
  v11.receiver = v6;
  v11.super_class = ObjectType;
  v8 = [(NANowPlayingTimeControl *)&v11 isEnabled];
  v9 = OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled;
  *(v7 + OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled) = v8;
  v10 = sub_1D7D2499C();
  [v10 setEnabled_];
}

- (NSString)accessibilityValue
{
  v2 = self;
  sub_1D79F25E4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1D7D3031C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = *(self + OBJC_IVAR___NANowPlayingTimeControl_slider);
  v3 = *&v2[OBJC_IVAR____TtC12NewsArticles10SliderView_elapsedTrack];
  v4 = self;
  [v3 accessibilityFrame];
  MaxX = CGRectGetMaxX(v10);
  [v2 accessibilityFrame];
  MidY = CGRectGetMidY(v11);

  v7 = MaxX;
  v8 = MidY;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)accessibilityIncrement
{
  v2 = self;
  sub_1D79F2864();
}

- (void)accessibilityDecrement
{
  v2 = self;
  sub_1D79F29D4();
}

- (void)displayLinkFired:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D79F34CC();
}

- (void)setCurrentTime:(double)a3 duration:(double)a4 rate:(double)a5 isWaiting:(BOOL)a6 animated:(BOOL)a7
{
  v7 = a6;
  v11 = self;
  sub_1D79F3604(v7, a3, a4, a5);
}

- (void)updateFonts
{
  v2 = self;
  sub_1D79F15D8();
}

@end