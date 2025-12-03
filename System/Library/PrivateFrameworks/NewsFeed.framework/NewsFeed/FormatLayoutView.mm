@interface FormatLayoutView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isAccessibilityElement;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityElements;
- (int64_t)accessibilityContainerType;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation FormatLayoutView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  v11.value.super.isa = eventCopy;
  LOBYTE(eventCopy) = FormatLayoutView.point(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return eventCopy & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  FormatLayoutView.layoutSubviews()();
}

- (int64_t)accessibilityContainerType
{
  selfCopy = self;
  v3 = FormatLayoutView.accessibilityContainerType.getter();

  return v3;
}

- (BOOL)isAccessibilityElement
{
  if (!*(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  selfCopy = self;

  v3 = sub_1D6A5E96C();
  v5 = v4;

  if ((v5 & 0x100) != 0)
  {
    return 0;
  }

  else
  {
    return v5 & (v3 != 0);
  }
}

- (NSArray)accessibilityElements
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer) && (v2 = self, , v3 = sub_1D6A5EB3C(), v2, , v3))
  {
    v4 = sub_1D726265C();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  if (!*(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  selfCopy = self;

  v3 = sub_1D6A6082C();

  return v3;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = FormatLayoutView.accessibilityCustomActions.getter();

  if (v3)
  {
    sub_1D5B5A498(0, &unk_1EDF04400);
    v4 = sub_1D726265C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  view = [gestureRecognizer view];
  if (view)
  {
    v5 = view;
    type metadata accessor for FormatButton();
    view = swift_dynamicCastClass();
    if (!view)
    {

      view = 0;
    }
  }

  v6 = view != 0;

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  if (view)
  {
    v5 = view;
    type metadata accessor for FormatButton();
    view = swift_dynamicCastClass();
    if (!view)
    {

      view = 0;
    }
  }

  v6 = view == 0;

  return v6;
}

@end