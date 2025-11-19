@interface UnselectableLinkEnabledTextView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC16NewsSubscription31UnselectableLinkEnabledTextView)initWithCoder:(id)a3;
- (_TtC16NewsSubscription31UnselectableLinkEnabledTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation UnselectableLinkEnabledTextView

- (_TtC16NewsSubscription31UnselectableLinkEnabledTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for UnselectableLinkEnabledTextView();
  return [(UnselectableLinkEnabledTextView *)&v10 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtC16NewsSubscription31UnselectableLinkEnabledTextView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UnselectableLinkEnabledTextView();
  v4 = a3;
  v5 = [(UnselectableLinkEnabledTextView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v5 = a3;
    v6 = self;
LABEL_3:
    [a3 setEnabled_];

    return 0;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = a3;
  v10 = self;
  if (v8 && [v8 numberOfTapsRequired] > 1)
  {
    goto LABEL_3;
  }

  v12.receiver = v10;
  v12.super_class = type metadata accessor for UnselectableLinkEnabledTextView();
  v11 = [(UnselectableLinkEnabledTextView *)&v12 gestureRecognizerShouldBegin:v9];

  return v11;
}

@end