@interface DRPDropletContainerView
- (BOOL)isHidden;
- (CATransform3D)transform3D;
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (DRPDropletContainerView)initWithCoder:(id)coder;
- (DRPDropletContainerView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)boundaryOutsets;
- (UIView)contentView;
- (double)_continuousCornerRadius;
- (unint64_t)boundaryEdges;
- (void)_removeAllRetargetableAnimations:(BOOL)animations;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setVelocity:(id)velocity forKey:(id)key;
- (void)layoutSubviews;
- (void)setBoundaryEdges:(unint64_t)edges;
- (void)setBoundaryOutsets:(UIEdgeInsets)outsets;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setContentView:(id)view;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setTransform3D:(CATransform3D *)d;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation DRPDropletContainerView

- (DRPDropletContainerView)initWithFrame:(CGRect)frame
{
  *(&self->super.super.super.isa + OBJC_IVAR___DRPDropletContainerView_contentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___DRPDropletContainerView_boundaryEdges) = 0;
  v3 = (self + OBJC_IVAR___DRPDropletContainerView_boundaryOutsets);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  *(&self->super.super.super.isa + OBJC_IVAR___DRPDropletContainerView_participantViews) = MEMORY[0x277D84F90];
  v6.receiver = self;
  v6.super_class = DRPDropletContainerView;
  return [(DRPDropletContainerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (DRPDropletContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___DRPDropletContainerView_contentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___DRPDropletContainerView_boundaryEdges) = 0;
  v3 = (self + OBJC_IVAR___DRPDropletContainerView_boundaryOutsets);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  *(&self->super.super.super.isa + OBJC_IVAR___DRPDropletContainerView_participantViews) = MEMORY[0x277D84F90];
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

- (UIView)contentView
{
  v3 = OBJC_IVAR___DRPDropletContainerView_contentView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentView:(id)view
{
  v5 = OBJC_IVAR___DRPDropletContainerView_contentView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = view;
  viewCopy = view;
  selfCopy = self;
  sub_249EB1570(v6);
}

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = DRPDropletContainerView;
  [(DRPDropletContainerView *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  selfCopy = self;
  DRPDropletContainerView._continuousCornerRadius.setter();
}

- (unint64_t)boundaryEdges
{
  v3 = OBJC_IVAR___DRPDropletContainerView_boundaryEdges;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setBoundaryEdges:(unint64_t)edges
{
  selfCopy = self;
  DRPDropletContainerView.boundaryEdges.setter(edges);
}

- (UIEdgeInsets)boundaryOutsets
{
  v2 = (self + OBJC_IVAR___DRPDropletContainerView_boundaryOutsets);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setBoundaryOutsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  selfCopy = self;
  DRPDropletContainerView.boundaryOutsets.setter(top, left, bottom, right);
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DRPDropletContainerView;
  [(DRPDropletContainerView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  selfCopy = self;
  DRPDropletContainerView.frame.setter();
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = DRPDropletContainerView;
  [(DRPDropletContainerView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  selfCopy = self;
  DRPDropletContainerView.bounds.setter();
}

- (CGPoint)center
{
  v4.receiver = self;
  v4.super_class = DRPDropletContainerView;
  [(DRPDropletContainerView *)&v4 center];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setCenter:(CGPoint)center
{
  selfCopy = self;
  DRPDropletContainerView.center.setter();
}

- (CGAffineTransform)transform
{
  v10.receiver = self;
  v10.super_class = DRPDropletContainerView;
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
  DRPDropletContainerView.transform.setter(v5);
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = DRPDropletContainerView;
  return [(DRPDropletContainerView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  DRPDropletContainerView.isHidden.setter(hidden);
}

- (CATransform3D)transform3D
{
  v20.receiver = self;
  v20.super_class = DRPDropletContainerView;
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
  DRPDropletContainerView.transform3D.setter(v8);
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
  DRPDropletContainerView._setVelocity(_:forKey:)(v13, v8, v10);

  sub_249EB371C(v13, &unk_27EF299E0, &qword_249ED8EB0);
}

- (void)_removeAllRetargetableAnimations:(BOOL)animations
{
  selfCopy = self;
  DRPDropletContainerView._removeAllRetargetableAnimations(_:)(animations);
}

- (void)layoutSubviews
{
  selfCopy = self;
  DRPDropletContainerView.layoutSubviews()();
}

@end