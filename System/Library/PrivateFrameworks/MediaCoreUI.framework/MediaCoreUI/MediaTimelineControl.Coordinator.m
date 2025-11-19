@interface MediaTimelineControl.Coordinator
- (CGSize)timeRangeMark:(id)a3 sizeInFrame:(CGRect)a4;
- (NSArray)timeRangeMarks;
- (_TtCV11MediaCoreUI20MediaTimelineControl11Coordinator)init;
- (id)uiProxyForTimeRangeMark:(id)a3 withSource:(id)a4;
- (void)mediaTimelineControl:(id)a3 didChangeScrubbingRate:(unint64_t)a4;
- (void)mediaTimelineControl:(id)a3 didChangeValue:(float)a4;
- (void)mediaTimelineControl:(id)a3 didExtendWithInsets:(UIEdgeInsets)a4;
- (void)mediaTimelineControlDidEndChanging:(id)a3;
- (void)mediaTimelineControlDidEndDecelerating:(id)a3;
- (void)mediaTimelineControlWillBeginChanging:(id)a3;
- (void)setTimeRangeMarks:(id)a3;
@end

@implementation MediaTimelineControl.Coordinator

- (NSArray)timeRangeMarks
{
  sub_1C592535C(0, &qword_1EC1961A8);

  v2 = sub_1C5BCB044();

  return v2;
}

- (void)setTimeRangeMarks:(id)a3
{
  sub_1C592535C(0, &qword_1EC1961A8);
  *(self + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_timeRangeMarks) = sub_1C5BCB054();
}

- (void)mediaTimelineControl:(id)a3 didChangeScrubbingRate:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1C5AA2350(a4);
}

- (void)mediaTimelineControlWillBeginChanging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5A8B264(v4);
}

- (void)mediaTimelineControl:(id)a3 didChangeValue:(float)a4
{
  v6 = a3;
  v7 = self;
  sub_1C5AA25D0(a4);
}

- (void)mediaTimelineControlDidEndChanging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5A8B594(v4);
}

- (void)mediaTimelineControlDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5AA27F8();
}

- (void)mediaTimelineControl:(id)a3 didExtendWithInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = self;
  sub_1C5AA2A04(top, left, bottom, right);
}

- (CGSize)timeRangeMark:(id)a3 sizeInFrame:(CGRect)a4
{
  v4 = 0.0;
  v5 = 0.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)uiProxyForTimeRangeMark:(id)a3 withSource:(id)a4
{
  v4 = [objc_opt_self() clearColor];
  v5 = [objc_opt_self() timeRangeMarkUIProxyWithBackgroundColor:v4 cornerRadius:0.0];

  return v5;
}

- (_TtCV11MediaCoreUI20MediaTimelineControl11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end