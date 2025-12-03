@interface SharedWithYouDescriptionTextView
- (_TtC7ChatKit32SharedWithYouDescriptionTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
@end

@implementation SharedWithYouDescriptionTextView

- (_TtC7ChatKit32SharedWithYouDescriptionTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  sub_190C69204(container, x, y, width, height);
  return result;
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  viewCopy = view;
  itemCopy = item;
  actionCopy = action;
  selfCopy = self;
  v12 = sub_190C6A198(itemCopy, actionCopy);

  return v12;
}

@end