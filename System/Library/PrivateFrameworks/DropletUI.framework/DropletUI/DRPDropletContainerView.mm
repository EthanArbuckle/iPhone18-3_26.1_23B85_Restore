@interface DRPDropletContainerView
- (BOOL)isHidden;
- (CATransform3D)transform3D;
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (DRPDropletContainerView)initWithCoder:(id)a3;
- (DRPDropletContainerView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)boundaryOutsets;
- (UIView)contentView;
- (double)_continuousCornerRadius;
- (unint64_t)boundaryEdges;
- (void)_removeAllRetargetableAnimations:(BOOL)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setVelocity:(id)a3 forKey:(id)a4;
- (void)layoutSubviews;
- (void)setBoundaryEdges:(unint64_t)a3;
- (void)setBoundaryOutsets:(UIEdgeInsets)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setContentView:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setTransform3D:(CATransform3D *)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation DRPDropletContainerView

- (DRPDropletContainerView)initWithFrame:(CGRect)a3
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
  return [(DRPDropletContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (DRPDropletContainerView)initWithCoder:(id)a3
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

- (void)setContentView:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletContainerView_contentView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;
  sub_249EB1570(v6);
}

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = DRPDropletContainerView;
  [(DRPDropletContainerView *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v3 = self;
  DRPDropletContainerView._continuousCornerRadius.setter();
}

- (unint64_t)boundaryEdges
{
  v3 = OBJC_IVAR___DRPDropletContainerView_boundaryEdges;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setBoundaryEdges:(unint64_t)a3
{
  v4 = self;
  DRPDropletContainerView.boundaryEdges.setter(a3);
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

- (void)setBoundaryOutsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
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

- (void)setFrame:(CGRect)a3
{
  v3 = self;
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

- (void)setBounds:(CGRect)a3
{
  v3 = self;
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

- (void)setCenter:(CGPoint)a3
{
  v3 = self;
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

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v3;
  v5[2] = *&a3->tx;
  v4 = self;
  DRPDropletContainerView.transform.setter(v5);
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = DRPDropletContainerView;
  return [(DRPDropletContainerView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v4 = self;
  DRPDropletContainerView.isHidden.setter(a3);
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
  DRPDropletContainerView.transform3D.setter(v8);
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
  DRPDropletContainerView._setVelocity(_:forKey:)(v13, v8, v10);

  sub_249EB371C(v13, &unk_27EF299E0, &qword_249ED8EB0);
}

- (void)_removeAllRetargetableAnimations:(BOOL)a3
{
  v4 = self;
  DRPDropletContainerView._removeAllRetargetableAnimations(_:)(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  DRPDropletContainerView.layoutSubviews()();
}

@end