@interface ContinuousSelectionGestureRecognizer
- (_TtC13FitnessCoreUI36ContinuousSelectionGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation ContinuousSelectionGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  if (![(ContinuousSelectionGestureRecognizer *)selfCopy state])
  {
    [(ContinuousSelectionGestureRecognizer *)selfCopy setState:1];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  eventCopy = event;
  selfCopy = self;
  sub_20C3A6EB8(eventCopy);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  if ([(ContinuousSelectionGestureRecognizer *)selfCopy state]== 1 || [(ContinuousSelectionGestureRecognizer *)selfCopy state]== 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(ContinuousSelectionGestureRecognizer *)selfCopy setState:v5];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  if ([(ContinuousSelectionGestureRecognizer *)selfCopy state])
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(ContinuousSelectionGestureRecognizer *)selfCopy setState:v5];
}

- (_TtC13FitnessCoreUI36ContinuousSelectionGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (target)
  {
    swift_unknownObjectRetain();
    sub_20C3E907C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = sub_20C3A6AB0(v8, action);

  return v6;
}

@end