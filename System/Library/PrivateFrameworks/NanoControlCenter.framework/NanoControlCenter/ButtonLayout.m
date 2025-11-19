@interface ButtonLayout
- (double)_topOffset;
- (double)topOffset;
- (void)setTopOffset:(double)a3;
- (void)set_topOffset:(double)a3;
@end

@implementation ButtonLayout

- (double)_topOffset
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  topOffset = self->_topOffset;

  return topOffset;
}

- (void)set_topOffset:(double)a3
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  self->_topOffset = a3;
}

- (double)topOffset
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_25AF34170(&qword_27FA23D18);

  sub_25B004234();

  swift_beginAccess();
  topOffset = self->_topOffset;

  return topOffset;
}

- (void)setTopOffset:(double)a3
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  ButtonLayout.topOffset.setter(a3);
}

@end