@interface TagView
- (BOOL)accessibilityActivate;
- (CGRect)accessibilityFrame;
- (NSArray)accessibilityCustomActions;
- (NSString)accessibilityValue;
- (NSString)title;
- (NSString)tsaxAccessibilityLabelForReordering;
- (unint64_t)accessibilityTraits;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setAccessibilityValue:(id)value;
- (void)setTsaxAccessibilityLabelForReordering:(id)reordering;
@end

@implementation TagView

- (NSString)tsaxAccessibilityLabelForReordering
{
  v2 = self + OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_219BF53D4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTsaxAccessibilityLabelForReordering:(id)reordering
{
  if (reordering)
  {
    v4 = sub_219BF5414();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSString)title
{
  v2 = *(self + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    sub_219BF5414();

    v6 = sub_219BF53D4();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v3 = TagView.accessibilityTraits.getter();

  return v3;
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TagView *)&v4 setAccessibilityTraits:traits];
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  TagView.accessibilityFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (NSString)accessibilityValue
{
  selfCopy = self;
  TagView.accessibilityValue.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_219BF53D4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityValue:(id)value
{
  ObjectType = swift_getObjectType();
  if (value)
  {
    sub_219BF5414();
    selfCopy = self;
    value = sub_219BF53D4();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TagView *)&v8 setAccessibilityValue:value];
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = TagView.accessibilityActivate()();

  return v3;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = TagView.accessibilityCustomActions.getter();

  if (v3)
  {
    sub_2186C6148(0, &qword_280E8DCF0);
    v4 = sub_219BF5904();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end