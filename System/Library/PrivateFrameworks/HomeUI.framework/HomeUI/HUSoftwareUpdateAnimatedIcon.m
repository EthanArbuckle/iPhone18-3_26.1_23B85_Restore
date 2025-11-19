@interface HUSoftwareUpdateAnimatedIcon
- (HUSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)a3;
- (UIImageView)innerGearView;
- (UIImageView)outerGearShadowView;
- (UIImageView)outerGearView;
- (void)createConstraints;
- (void)setAnimating:(BOOL)a3;
@end

@implementation HUSoftwareUpdateAnimatedIcon

- (HUSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = HUSoftwareUpdateAnimatedIcon;
  v3 = [(HUSoftwareUpdateAnimatedIcon *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(HUSoftwareUpdateAnimatedIcon *)v3 innerGearView];
    innerGearView = v4->_innerGearView;
    v4->_innerGearView = v5;

    [(UIImageView *)v4->_innerGearView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUSoftwareUpdateAnimatedIcon *)v4 addSubview:v4->_innerGearView];
    v7 = [(HUSoftwareUpdateAnimatedIcon *)v4 outerGearShadowView];
    outerGearShadowView = v4->_outerGearShadowView;
    v4->_outerGearShadowView = v7;

    [(UIImageView *)v4->_outerGearShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUSoftwareUpdateAnimatedIcon *)v4 addSubview:v4->_outerGearShadowView];
    v9 = [(HUSoftwareUpdateAnimatedIcon *)v4 outerGearView];
    outerGearView = v4->_outerGearView;
    v4->_outerGearView = v9;

    [(UIImageView *)v4->_outerGearView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUSoftwareUpdateAnimatedIcon *)v4 addSubview:v4->_outerGearView];
    [(HUSoftwareUpdateAnimatedIcon *)v4 createConstraints];
  }

  return v4;
}

- (void)createConstraints
{
  v3 = [(UIImageView *)self->_innerGearView centerXAnchor];
  v4 = [(HUSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  [v5 setActive:1];

  v6 = [(UIImageView *)self->_innerGearView centerYAnchor];
  v7 = [(HUSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [(UIImageView *)self->_outerGearView centerXAnchor];
  v10 = [(HUSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UIImageView *)self->_outerGearView centerYAnchor];
  v13 = [(HUSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [MEMORY[0x277D759A0] mainScreen];
  [v15 scale];
  v17 = 1.0 / v16;

  v18 = [(UIImageView *)self->_outerGearShadowView centerXAnchor];
  v19 = [(HUSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v23 = [(UIImageView *)self->_outerGearShadowView centerYAnchor];
  v21 = [(HUSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v22 = [v23 constraintEqualToAnchor:v21 constant:v17];
  [v22 setActive:1];
}

- (UIImageView)innerGearView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = HUImageNamed(@"HUSoftwareUpdateIconInnerGear");
  v4 = [v2 initWithImage:v3];

  [v4 setOpaque:1];

  return v4;
}

- (UIImageView)outerGearShadowView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = HUImageNamed(@"HUSoftwareUpdateIconOuterGearShadow");
  v4 = [v2 initWithImage:v3];

  return v4;
}

- (UIImageView)outerGearView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = HUImageNamed(@"HUSoftwareUpdateIconOuterGear");
  v4 = [v2 initWithImage:v3];

  return v4;
}

- (void)setAnimating:(BOOL)a3
{
  if (self->_animating != a3)
  {
    self->_animating = a3;
    if (a3)
    {
      v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation"];
      LODWORD(v5) = 1086918619;
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
      [v15 setByValue:v6];

      [v15 setFillMode:*MEMORY[0x277CDA238]];
      [v15 setRemovedOnCompletion:0];
      [v15 setDuration:10.0];
      [v15 setRepeatDuration:INFINITY];
      v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
      [v15 setTimingFunction:v7];

      v8 = [(UIImageView *)self->_outerGearView layer];
      [v8 addAnimation:v15 forKey:@"outerRotation"];

      v9 = [(UIImageView *)self->_outerGearShadowView layer];
      [v9 addAnimation:v15 forKey:@"shadowRotation"];

      LODWORD(v10) = -1060565029;
      v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
      [v15 setByValue:v11];

      v12 = [(UIImageView *)self->_innerGearView layer];
      [v12 addAnimation:v15 forKey:@"innerRotation"];
    }

    else
    {
      v13 = [(UIImageView *)self->_innerGearView layer];
      [v13 removeAllAnimations];

      v14 = [(UIImageView *)self->_outerGearShadowView layer];
      [v14 removeAllAnimations];

      v15 = [(UIImageView *)self->_outerGearView layer];
      [v15 removeAllAnimations];
    }
  }
}

@end