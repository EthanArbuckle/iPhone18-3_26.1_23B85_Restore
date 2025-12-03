@interface DOCModalBlurViewControllerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC26DocumentManagerExecutables30DOCModalBlurViewControllerView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables30DOCModalBlurViewControllerView)initWithFrame:(CGRect)frame;
@end

@implementation DOCModalBlurViewControllerView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = DOCModalBlurViewControllerView._shouldAnimateProperty(withKey:)(v8);

  return v9;
}

- (_TtC26DocumentManagerExecutables30DOCModalBlurViewControllerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCModalBlurViewControllerView();
  return [(DOCModalBlurViewControllerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables30DOCModalBlurViewControllerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCModalBlurViewControllerView();
  coderCopy = coder;
  v5 = [(DOCModalBlurViewControllerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end