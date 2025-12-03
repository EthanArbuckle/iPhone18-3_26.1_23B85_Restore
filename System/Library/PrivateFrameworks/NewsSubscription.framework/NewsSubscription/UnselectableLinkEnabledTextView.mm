@interface UnselectableLinkEnabledTextView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC16NewsSubscription31UnselectableLinkEnabledTextView)initWithCoder:(id)coder;
- (_TtC16NewsSubscription31UnselectableLinkEnabledTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation UnselectableLinkEnabledTextView

- (_TtC16NewsSubscription31UnselectableLinkEnabledTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for UnselectableLinkEnabledTextView();
  return [(UnselectableLinkEnabledTextView *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC16NewsSubscription31UnselectableLinkEnabledTextView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UnselectableLinkEnabledTextView();
  coderCopy = coder;
  v5 = [(UnselectableLinkEnabledTextView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    beginCopy = begin;
    selfCopy = self;
LABEL_3:
    [begin setEnabled_];

    return 0;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  beginCopy2 = begin;
  selfCopy2 = self;
  if (v8 && [v8 numberOfTapsRequired] > 1)
  {
    goto LABEL_3;
  }

  v12.receiver = selfCopy2;
  v12.super_class = type metadata accessor for UnselectableLinkEnabledTextView();
  v11 = [(UnselectableLinkEnabledTextView *)&v12 gestureRecognizerShouldBegin:beginCopy2];

  return v11;
}

@end