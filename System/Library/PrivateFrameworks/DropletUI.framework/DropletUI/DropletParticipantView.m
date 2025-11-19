@interface DropletParticipantView
- (BOOL)isHidden;
- (CATransform3D)transform3D;
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC9DropletUI22DropletParticipantView)initWithFrame:(CGRect)a3;
- (double)alpha;
- (void)_removeAllRetargetableAnimations:(BOOL)a3;
- (void)_setVelocity:(id)a3 forKey:(id)a4;
- (void)removeFromSuperview;
- (void)setAlpha:(double)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setTransform3D:(CATransform3D *)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation DropletParticipantView

- (CGRect)frame
{
  sub_249ED3DD8(self, a2, &selRef_frame);
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
  v7 = self;
  sub_249ED3EA4(&selRef_frame, &selRef_setFrame_, x, y, width, height);
}

- (CGRect)bounds
{
  sub_249ED3DD8(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_249ED3EA4(&selRef_bounds, &selRef_setBounds_, x, y, width, height);
}

- (CGPoint)center
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DropletParticipantView();
  [(DropletParticipantView *)&v4 center];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_249ED431C(x, y);
}

- (CGAffineTransform)transform
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for DropletParticipantView();
  result = [(CGAffineTransform *)&v10 transform];
  v5 = v8;
  v6 = v9;
  *&retstr->a = v7;
  *&retstr->c = v5;
  *&retstr->tx = v6;
  return result;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v3;
  v5[2] = *&a3->tx;
  v4 = self;
  sub_249ED4774(v5);
}

- (CATransform3D)transform3D
{
  v20.receiver = self;
  v20.super_class = type metadata accessor for DropletParticipantView();
  result = [(CATransform3D *)&v20 transform3D];
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  *&retstr->m11 = v12;
  *&retstr->m13 = v5;
  *&retstr->m21 = v6;
  *&retstr->m23 = v7;
  *&retstr->m31 = v8;
  *&retstr->m33 = v9;
  *&retstr->m41 = v10;
  *&retstr->m43 = v11;
  return result;
}

- (void)setTransform3D:(CATransform3D *)a3
{
  v3 = *&a3->m13;
  v8[0] = *&a3->m11;
  v8[1] = v3;
  v4 = *&a3->m23;
  v8[2] = *&a3->m21;
  v8[3] = v4;
  v5 = *&a3->m33;
  v8[4] = *&a3->m31;
  v8[5] = v5;
  v6 = *&a3->m43;
  v8[6] = *&a3->m41;
  v8[7] = v6;
  v7 = self;
  sub_249ED4BB8(v8);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DropletParticipantView();
  [(DropletParticipantView *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)a3
{
  v5 = type metadata accessor for DropletParticipantView();
  v10.receiver = self;
  v10.super_class = v5;
  v6 = self;
  [(DropletParticipantView *)&v10 alpha];
  v8 = v7;
  v9.receiver = v6;
  v9.super_class = v5;
  [(DropletParticipantView *)&v9 setAlpha:a3];
  sub_249ED5020(v8);
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DropletParticipantView();
  return [(DropletParticipantView *)&v3 isHidden];
}

- (void)_setVelocity:(id)a3 forKey:(id)a4
{
  if (!a3)
  {
    memset(v13, 0, sizeof(v13));
    v11 = a4;
    v12 = self;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v6 = a4;
  v7 = self;
  swift_unknownObjectRetain();
  sub_249ED6D90();
  swift_unknownObjectRelease();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_249ED6C70();
  v10 = v9;

LABEL_6:
  sub_249ED5384(v13, v8, v10);

  sub_249EB371C(v13, &unk_27EF299E0, &qword_249ED8EB0);
}

- (void)_removeAllRetargetableAnimations:(BOOL)a3
{
  v4 = self;
  sub_249ED5674(a3);
}

- (void)removeFromSuperview
{
  v2 = self;
  sub_249ED57B0();
}

- (_TtC9DropletUI22DropletParticipantView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end