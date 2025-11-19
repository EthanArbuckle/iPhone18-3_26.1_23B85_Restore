@interface ContinuousSelectionGestureRecognizer
- (_TtC13FitnessCoreUI36ContinuousSelectionGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation ContinuousSelectionGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  if (![(ContinuousSelectionGestureRecognizer *)v5 state])
  {
    [(ContinuousSelectionGestureRecognizer *)v5 setState:1];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a4;
  v7 = self;
  sub_20C3A6EB8(v6);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = self;
  if ([(ContinuousSelectionGestureRecognizer *)v6 state]== 1 || [(ContinuousSelectionGestureRecognizer *)v6 state]== 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(ContinuousSelectionGestureRecognizer *)v6 setState:v5];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = self;
  if ([(ContinuousSelectionGestureRecognizer *)v6 state])
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(ContinuousSelectionGestureRecognizer *)v6 setState:v5];
}

- (_TtC13FitnessCoreUI36ContinuousSelectionGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    swift_unknownObjectRetain();
    sub_20C3E907C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = sub_20C3A6AB0(v8, a4);

  return v6;
}

@end