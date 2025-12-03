@interface ICActivityStreamDockView
- (ICActivityStreamCoordinating)coordinator;
- (ICActivityStreamDockView)initWithFrame:(CGRect)frame;
- (ICActivityStreamSelection)selection;
- (ICCloudSyncingObject)object;
- (double)closeButtonImageHeight;
- (void)setHorizontalStackLeadingConstraint:(id)constraint;
- (void)update;
@end

@implementation ICActivityStreamDockView

- (ICActivityStreamCoordinating)coordinator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setHorizontalStackLeadingConstraint:(id)constraint
{
  v4 = *(self + OBJC_IVAR___ICActivityStreamDockView_horizontalStackLeadingConstraint);
  *(self + OBJC_IVAR___ICActivityStreamDockView_horizontalStackLeadingConstraint) = constraint;
  constraintCopy = constraint;
}

- (void)update
{
  selfCopy = self;
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
  selfCopy = self;
  if (![(ICActivityStreamDockView *)selfCopy ic_hasCompactHeight])
  {

    return 30.0;
  }

  ic_hasCompactWidth = [(ICActivityStreamDockView *)selfCopy ic_hasCompactWidth];

  result = 22.0;
  if ((ic_hasCompactWidth & 1) == 0)
  {
    return 30.0;
  }

  return result;
}

- (ICActivityStreamDockView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end