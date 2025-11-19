@interface OutlineGradientView
+ (Class)layerClass;
- (CGRect)frame;
- (_TtC26DocumentManagerExecutables19OutlineGradientView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables19OutlineGradientView)initWithFrame:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation OutlineGradientView

+ (Class)layerClass
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for CAGradientLayer);

  return swift_getObjCClassFromMetadata();
}

- (_TtC26DocumentManagerExecutables19OutlineGradientView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OutlineGradientView();
  v7 = v8.receiver;
  [(OutlineGradientView *)&v8 setFrame:x, y, width, height];
  OutlineGradientView.frame.didset();
}

- (_TtC26DocumentManagerExecutables19OutlineGradientView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end