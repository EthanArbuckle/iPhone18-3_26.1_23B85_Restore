@interface OutlineGradientView
+ (Class)layerClass;
- (CGRect)frame;
- (_TtC26DocumentManagerExecutables19OutlineGradientView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables19OutlineGradientView)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation OutlineGradientView

+ (Class)layerClass
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for CAGradientLayer);

  return swift_getObjCClassFromMetadata();
}

- (_TtC26DocumentManagerExecutables19OutlineGradientView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OutlineGradientView();
  return [(OutlineGradientView *)&v8 initWithFrame:x, y, width, height];
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for OutlineGradientView();
  [(OutlineGradientView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OutlineGradientView();
  v7 = v8.receiver;
  [(OutlineGradientView *)&v8 setFrame:x, y, width, height];
  OutlineGradientView.frame.didset();
}

- (_TtC26DocumentManagerExecutables19OutlineGradientView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end