@interface DropletParticipantView
- (BOOL)isHidden;
- (CATransform3D)transform3D;
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC9DropletUI22DropletParticipantView)initWithFrame:(CGRect)frame;
- (double)alpha;
- (void)_removeAllRetargetableAnimations:(BOOL)animations;
- (void)_setVelocity:(id)velocity forKey:(id)key;
- (void)removeFromSuperview;
- (void)setAlpha:(double)alpha;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setTransform3D:(CATransform3D *)d;
- (void)setTransform:(CGAffineTransform *)transform;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
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

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  selfCopy = self;
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

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v3;
  v5[2] = *&transform->tx;
  selfCopy = self;
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

- (void)setTransform3D:(CATransform3D *)d
{
  v3 = *&d->m13;
  v8[0] = *&d->m11;
  v8[1] = v3;
  v4 = *&d->m23;
  v8[2] = *&d->m21;
  v8[3] = v4;
  v5 = *&d->m33;
  v8[4] = *&d->m31;
  v8[5] = v5;
  v6 = *&d->m43;
  v8[6] = *&d->m41;
  v8[7] = v6;
  selfCopy = self;
  sub_249ED4BB8(v8);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DropletParticipantView();
  [(DropletParticipantView *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)alpha
{
  v5 = type metadata accessor for DropletParticipantView();
  v10.receiver = self;
  v10.super_class = v5;
  selfCopy = self;
  [(DropletParticipantView *)&v10 alpha];
  v8 = v7;
  v9.receiver = selfCopy;
  v9.super_class = v5;
  [(DropletParticipantView *)&v9 setAlpha:alpha];
  sub_249ED5020(v8);
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DropletParticipantView();
  return [(DropletParticipantView *)&v3 isHidden];
}

- (void)_setVelocity:(id)velocity forKey:(id)key
{
  if (!velocity)
  {
    memset(v13, 0, sizeof(v13));
    keyCopy = key;
    selfCopy = self;
    if (key)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  keyCopy2 = key;
  selfCopy2 = self;
  swift_unknownObjectRetain();
  sub_249ED6D90();
  swift_unknownObjectRelease();
  if (!key)
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

- (void)_removeAllRetargetableAnimations:(BOOL)animations
{
  selfCopy = self;
  sub_249ED5674(animations);
}

- (void)removeFromSuperview
{
  selfCopy = self;
  sub_249ED57B0();
}

- (_TtC9DropletUI22DropletParticipantView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end