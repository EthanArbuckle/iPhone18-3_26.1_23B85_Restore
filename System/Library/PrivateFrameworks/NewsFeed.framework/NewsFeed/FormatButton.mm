@interface FormatButton
- (BOOL)isAccessibilityElement;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityElements;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (int64_t)accessibilityContainerType;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation FormatButton

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(FormatButton *)&v3 layoutSubviews];
  [v2 bounds];
  sub_1D726344C();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(FormatButton *)v6 bounds];
  v11.origin.x = UIEdgeInsetsInsetRect_3(v7);
  v10.x = x;
  v10.y = y;
  v8 = CGRectContainsPoint(v11, v10);

  return v8;
}

- (int64_t)accessibilityContainerType
{
  v2 = self;
  v3 = FormatButton.accessibilityContainerType.getter();

  return v3;
}

- (BOOL)isAccessibilityElement
{
  if (!*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
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
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer) && (v2 = self, , v3 = sub_1D6A5EB3C(), v2, , v3))
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
  if (!*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
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
  v3 = FormatButton.accessibilityCustomActions.getter();

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

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = _s8NewsFeed12FormatButtonC22contextMenuInteraction_016configurationForF10AtLocationSo09UIContextF13ConfigurationCSgSo0lfG0C_So7CGPointVtF_0();

  return v7;
}

@end