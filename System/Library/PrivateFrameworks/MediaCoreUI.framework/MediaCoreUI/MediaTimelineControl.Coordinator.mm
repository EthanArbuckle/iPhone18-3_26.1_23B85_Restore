@interface MediaTimelineControl.Coordinator
- (CGSize)timeRangeMark:(id)mark sizeInFrame:(CGRect)frame;
- (NSArray)timeRangeMarks;
- (_TtCV11MediaCoreUI20MediaTimelineControl11Coordinator)init;
- (id)uiProxyForTimeRangeMark:(id)mark withSource:(id)source;
- (void)mediaTimelineControl:(id)control didChangeScrubbingRate:(unint64_t)rate;
- (void)mediaTimelineControl:(id)control didChangeValue:(float)value;
- (void)mediaTimelineControl:(id)control didExtendWithInsets:(UIEdgeInsets)insets;
- (void)mediaTimelineControlDidEndChanging:(id)changing;
- (void)mediaTimelineControlDidEndDecelerating:(id)decelerating;
- (void)mediaTimelineControlWillBeginChanging:(id)changing;
- (void)setTimeRangeMarks:(id)marks;
@end

@implementation MediaTimelineControl.Coordinator

- (NSArray)timeRangeMarks
{
  sub_1C592535C(0, &qword_1EC1961A8);

  v2 = sub_1C5BCB044();

  return v2;
}

- (void)setTimeRangeMarks:(id)marks
{
  sub_1C592535C(0, &qword_1EC1961A8);
  *(self + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_timeRangeMarks) = sub_1C5BCB054();
}

- (void)mediaTimelineControl:(id)control didChangeScrubbingRate:(unint64_t)rate
{
  controlCopy = control;
  selfCopy = self;
  sub_1C5AA2350(rate);
}

- (void)mediaTimelineControlWillBeginChanging:(id)changing
{
  changingCopy = changing;
  selfCopy = self;
  sub_1C5A8B264(changingCopy);
}

- (void)mediaTimelineControl:(id)control didChangeValue:(float)value
{
  controlCopy = control;
  selfCopy = self;
  sub_1C5AA25D0(value);
}

- (void)mediaTimelineControlDidEndChanging:(id)changing
{
  changingCopy = changing;
  selfCopy = self;
  sub_1C5A8B594(changingCopy);
}

- (void)mediaTimelineControlDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_1C5AA27F8();
}

- (void)mediaTimelineControl:(id)control didExtendWithInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  controlCopy = control;
  selfCopy = self;
  sub_1C5AA2A04(top, left, bottom, right);
}

- (CGSize)timeRangeMark:(id)mark sizeInFrame:(CGRect)frame
{
  v4 = 0.0;
  v5 = 0.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)uiProxyForTimeRangeMark:(id)mark withSource:(id)source
{
  clearColor = [objc_opt_self() clearColor];
  v5 = [objc_opt_self() timeRangeMarkUIProxyWithBackgroundColor:clearColor cornerRadius:0.0];

  return v5;
}

- (_TtCV11MediaCoreUI20MediaTimelineControl11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end