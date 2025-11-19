@interface CKBalloonGradientLayer
- (CGRect)frame;
- (_TtC7ChatKit22CKBalloonGradientLayer)init;
- (_TtC7ChatKit22CKBalloonGradientLayer)initWithCoder:(id)a3;
- (_TtC7ChatKit22CKBalloonGradientLayer)initWithLayer:(id)a3;
- (void)layerDidBecomeVisible:(BOOL)a3;
- (void)layoutSublayers;
- (void)setFrame:(CGRect)a3;
@end

@implementation CKBalloonGradientLayer

- (_TtC7ChatKit22CKBalloonGradientLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  return sub_190A65780(v4);
}

- (_TtC7ChatKit22CKBalloonGradientLayer)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = self + OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_gradientOverrideFrame;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CKBalloonGradientLayer(0);
  [(CKBalloonGradientLayer *)&v6 frame];
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
  v8 = type metadata accessor for CKBalloonGradientLayer(0);
  v23.receiver = self;
  v23.super_class = v8;
  v9 = self;
  [(CKBalloonGradientLayer *)&v23 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = v9;
  v22.super_class = v8;
  [(CKBalloonGradientLayer *)&v22 setFrame:x, y, width, height];
  [(CKBalloonGradientLayer *)v9 frame];
  v25.origin.x = v18;
  v25.origin.y = v19;
  v25.size.width = v20;
  v25.size.height = v21;
  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  if (!CGRectEqualToRect(v24, v25))
  {
    [(CKBalloonGradientLayer *)v9 setNeedsLayout];
  }
}

- (void)layerDidBecomeVisible:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CKBalloonGradientLayer(0);
  v4 = v5.receiver;
  [(CKBalloonGradientLayer *)&v5 layerDidBecomeVisible:v3];
  if (v3)
  {
    sub_190A65F28();
  }
}

- (void)layoutSublayers
{
  v2 = self;
  sub_190A65C10();
}

- (_TtC7ChatKit22CKBalloonGradientLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end