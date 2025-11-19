@interface FormatLayoutView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)isAccessibilityElement;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityElements;
- (int64_t)accessibilityContainerType;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation FormatLayoutView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v11.value.super.isa = v4;
  LOBYTE(v4) = FormatLayoutView.point(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return v4 & 1;
}

- (void)layoutSubviews
{
  v2 = self;
  FormatLayoutView.layoutSubviews()();
}

- (int64_t)accessibilityContainerType
{
  v2 = self;
  v3 = FormatLayoutView.accessibilityContainerType.getter();

  return v3;
}

- (BOOL)isAccessibilityElement
{
  if (!*(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer))
  {
    return 0;
  }

  v2 = self;

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

  v2 = self;

  v3 = sub_1D6A6082C();

  return v3;
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
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

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v4 = [a4 view];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for FormatButton();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {

      v4 = 0;
    }
  }

  v6 = v4 != 0;

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [a4 view];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for FormatButton();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {

      v4 = 0;
    }
  }

  v6 = v4 == 0;

  return v6;
}

@end