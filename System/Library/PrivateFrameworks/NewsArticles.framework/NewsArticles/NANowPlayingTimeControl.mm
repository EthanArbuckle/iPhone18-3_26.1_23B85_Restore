@interface NANowPlayingTimeControl
- (CGPoint)accessibilityActivationPoint;
- (NSString)accessibilityValue;
- (double)alpha;
- (id)timeDidChangeHandler;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)displayLinkFired:(id)fired;
- (void)setAlpha:(double)alpha;
- (void)setCurrentTime:(double)time duration:(double)duration rate:(double)rate isWaiting:(BOOL)waiting animated:(BOOL)animated;
- (void)setEnabled:(BOOL)enabled;
- (void)setHidden:(BOOL)hidden;
- (void)setTimeDidChangeHandler:(id)handler;
- (void)tintColorDidChange;
- (void)updateFonts;
@end

@implementation NANowPlayingTimeControl

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(self + OBJC_IVAR___NANowPlayingTimeControl_displayLink);
  selfCopy = self;
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

- (void)setTimeDidChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_1D79AD740(v8);
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  isHidden = [(NANowPlayingTimeControl *)&v9 isHidden];
  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(NANowPlayingTimeControl *)&v8 setHidden:hiddenCopy];
  sub_1D79F1ED0(isHidden);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(NANowPlayingTimeControl *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)alpha
{
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  selfCopy = self;
  [(NANowPlayingTimeControl *)&v10 alpha];
  v8 = v7;
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(NANowPlayingTimeControl *)&v9 setAlpha:alpha];
  sub_1D79F2120(v8);
}

- (void)didMoveToWindow
{
  selfCopy = self;
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  selfCopy = self;
  [(NANowPlayingTimeControl *)&v12 setEnabled:enabledCopy];
  v7 = *(selfCopy + OBJC_IVAR___NANowPlayingTimeControl_slider);
  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  isEnabled = [(NANowPlayingTimeControl *)&v11 isEnabled];
  v9 = OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled;
  *(v7 + OBJC_IVAR____TtC12NewsArticles10SliderView_isEnabled) = isEnabled;
  v10 = sub_1D7D2499C();
  [v10 setEnabled_];
}

- (NSString)accessibilityValue
{
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  sub_1D79F2864();
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  sub_1D79F29D4();
}

- (void)displayLinkFired:(id)fired
{
  firedCopy = fired;
  selfCopy = self;
  sub_1D79F34CC();
}

- (void)setCurrentTime:(double)time duration:(double)duration rate:(double)rate isWaiting:(BOOL)waiting animated:(BOOL)animated
{
  waitingCopy = waiting;
  selfCopy = self;
  sub_1D79F3604(waitingCopy, time, duration, rate);
}

- (void)updateFonts
{
  selfCopy = self;
  sub_1D79F15D8();
}

@end