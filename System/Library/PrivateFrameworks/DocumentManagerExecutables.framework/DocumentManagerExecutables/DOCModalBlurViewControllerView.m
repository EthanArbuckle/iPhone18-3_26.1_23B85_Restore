@interface DOCModalBlurViewControllerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtC26DocumentManagerExecutables30DOCModalBlurViewControllerView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables30DOCModalBlurViewControllerView)initWithFrame:(CGRect)a3;
@end

@implementation DOCModalBlurViewControllerView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = DOCModalBlurViewControllerView._shouldAnimateProperty(withKey:)(v8);

  return v9;
}

- (_TtC26DocumentManagerExecutables30DOCModalBlurViewControllerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCModalBlurViewControllerView();
  return [(DOCModalBlurViewControllerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables30DOCModalBlurViewControllerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCModalBlurViewControllerView();
  v4 = a3;
  v5 = [(DOCModalBlurViewControllerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end