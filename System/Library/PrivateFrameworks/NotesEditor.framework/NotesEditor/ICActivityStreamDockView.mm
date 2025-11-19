@interface ICActivityStreamDockView
- (ICActivityStreamCoordinating)coordinator;
- (ICActivityStreamDockView)initWithFrame:(CGRect)a3;
- (ICActivityStreamSelection)selection;
- (ICCloudSyncingObject)object;
- (double)closeButtonImageHeight;
- (void)setHorizontalStackLeadingConstraint:(id)a3;
- (void)update;
@end

@implementation ICActivityStreamDockView

- (ICActivityStreamCoordinating)coordinator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setHorizontalStackLeadingConstraint:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICActivityStreamDockView_horizontalStackLeadingConstraint);
  *(self + OBJC_IVAR___ICActivityStreamDockView_horizontalStackLeadingConstraint) = a3;
  v3 = a3;
}

- (void)update
{
  v2 = self;
  ActivityStreamDockView.update()();
}

- (ICActivityStreamSelection)selection
{
  v3 = OBJC_IVAR___ICActivityStreamDockView_selection;
  swift_beginAccess();
  return *(self + v3);
}

- (ICCloudSyncingObject)object
{
  v3 = OBJC_IVAR___ICActivityStreamDockView_object;
  swift_beginAccess();
  return *(self + v3);
}

- (double)closeButtonImageHeight
{
  v2 = self;
  if (![(ICActivityStreamDockView *)v2 ic_hasCompactHeight])
  {

    return 30.0;
  }

  v3 = [(ICActivityStreamDockView *)v2 ic_hasCompactWidth];

  result = 22.0;
  if ((v3 & 1) == 0)
  {
    return 30.0;
  }

  return result;
}

- (ICActivityStreamDockView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end