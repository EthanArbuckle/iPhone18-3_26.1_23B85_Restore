@interface ICNestedScrollViewPanInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (ICNestedScrollViewPanInteraction)init;
- (UIView)view;
- (void)didMoveToView:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation ICNestedScrollViewPanInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21542EBD4(a3);
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21542EE30(a3);
}

- (ICNestedScrollViewPanInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_215430E18(v6, v7);

  return 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_215431010(v6, v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_21543134C(v6, v7);

  return v9 & 1;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_21542F188();
  if (*(v7 + 56))
  {
    [v4 contentOffset];
    sub_215431618(v8);
  }

  (v6)(&v9, 0);
  sub_21542FD78();
}

@end