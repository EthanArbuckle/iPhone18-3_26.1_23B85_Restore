@interface NestedScrollViewPanInteraction.VerticalPanGestureRecognizer
- (void)_scrollingChangedWithEvent:(id)event;
- (void)reset;
@end

@implementation NestedScrollViewPanInteraction.VerticalPanGestureRecognizer

- (void)reset
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NestedScrollViewPanInteraction.VerticalPanGestureRecognizer();
  v2 = v5.receiver;
  [(NestedScrollViewPanInteraction.VerticalPanGestureRecognizer *)&v5 reset];
  v3 = *&v2[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_touch];
  *&v2[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_touch] = 0;

  v4 = &v2[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_startPoint];
  *v4 = 0;
  *(v4 + 1) = 0;
}

- (void)_scrollingChangedWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_21543065C(eventCopy);
}

@end