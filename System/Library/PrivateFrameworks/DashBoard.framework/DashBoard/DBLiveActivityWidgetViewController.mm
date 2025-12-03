@interface DBLiveActivityWidgetViewController
- (CGRect)rectForSystemMetrics;
- (_TtC9DashBoard34DBLiveActivityWidgetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)activateLiveActivityWithDescriptor:(id)descriptor completion:(id)completion;
- (void)setRectForSystemMetrics:(CGRect)metrics;
- (void)showLiveActivityWithDescriptor:(id)descriptor;
@end

@implementation DBLiveActivityWidgetViewController

- (CGRect)rectForSystemMetrics
{
  v2 = (self + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_rectForSystemMetrics);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setRectForSystemMetrics:(CGRect)metrics
{
  height = metrics.size.height;
  width = metrics.size.width;
  y = metrics.origin.y;
  x = metrics.origin.x;
  v8 = (self + OBJC_IVAR____TtC9DashBoard34DBLiveActivityWidgetViewController_rectForSystemMetrics);
  swift_beginAccess();
  *v8 = x;
  v8[1] = y;
  v8[2] = width;
  v8[3] = height;
  v9 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x120);
  selfCopy = self;
  v9(x, y, width, height);
}

- (_TtC9DashBoard34DBLiveActivityWidgetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_248383960();
  }

  return sub_24828CDB0();
}

- (void)activateLiveActivityWithDescriptor:(id)descriptor completion:(id)completion
{
  v6 = sub_2483812C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  sub_24828CFEC();
  sub_2483813C0();
  _Block_copy(v10);
  selfCopy = self;
  sub_24828D044(v9, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)showLiveActivityWithDescriptor:(id)descriptor
{
  v4 = sub_2483812C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24828CFEC();
  sub_2483813C0();
  selfCopy = self;
  DBLiveActivityWidgetViewController.showLiveActivity(descriptor:)(v7);

  (*(v5 + 8))(v7, v4);
}

@end