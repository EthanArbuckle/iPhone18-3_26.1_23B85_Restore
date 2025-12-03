@interface HUSoftwareUpdateAnimatedIcon
- (HUSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)frame;
- (UIImageView)innerGearView;
- (UIImageView)outerGearShadowView;
- (UIImageView)outerGearView;
- (void)createConstraints;
- (void)setAnimating:(BOOL)animating;
@end

@implementation HUSoftwareUpdateAnimatedIcon

- (HUSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = HUSoftwareUpdateAnimatedIcon;
  v3 = [(HUSoftwareUpdateAnimatedIcon *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    innerGearView = [(HUSoftwareUpdateAnimatedIcon *)v3 innerGearView];
    innerGearView = v4->_innerGearView;
    v4->_innerGearView = innerGearView;

    [(UIImageView *)v4->_innerGearView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUSoftwareUpdateAnimatedIcon *)v4 addSubview:v4->_innerGearView];
    outerGearShadowView = [(HUSoftwareUpdateAnimatedIcon *)v4 outerGearShadowView];
    outerGearShadowView = v4->_outerGearShadowView;
    v4->_outerGearShadowView = outerGearShadowView;

    [(UIImageView *)v4->_outerGearShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUSoftwareUpdateAnimatedIcon *)v4 addSubview:v4->_outerGearShadowView];
    outerGearView = [(HUSoftwareUpdateAnimatedIcon *)v4 outerGearView];
    outerGearView = v4->_outerGearView;
    v4->_outerGearView = outerGearView;

    [(UIImageView *)v4->_outerGearView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUSoftwareUpdateAnimatedIcon *)v4 addSubview:v4->_outerGearView];
    [(HUSoftwareUpdateAnimatedIcon *)v4 createConstraints];
  }

  return v4;
}

- (void)createConstraints
{
  centerXAnchor = [(UIImageView *)self->_innerGearView centerXAnchor];
  centerXAnchor2 = [(HUSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v5 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v5 setActive:1];

  centerYAnchor = [(UIImageView *)self->_innerGearView centerYAnchor];
  centerYAnchor2 = [(HUSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v8 setActive:1];

  centerXAnchor3 = [(UIImageView *)self->_outerGearView centerXAnchor];
  centerXAnchor4 = [(HUSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v11 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v11 setActive:1];

  centerYAnchor3 = [(UIImageView *)self->_outerGearView centerYAnchor];
  centerYAnchor4 = [(HUSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v14 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v14 setActive:1];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v17 = 1.0 / v16;

  centerXAnchor5 = [(UIImageView *)self->_outerGearShadowView centerXAnchor];
  centerXAnchor6 = [(HUSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v20 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v20 setActive:1];

  centerYAnchor5 = [(UIImageView *)self->_outerGearShadowView centerYAnchor];
  centerYAnchor6 = [(HUSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v22 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:v17];
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

- (void)setAnimating:(BOOL)animating
{
  if (self->_animating != animating)
  {
    self->_animating = animating;
    if (animating)
    {
      layer6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation"];
      LODWORD(v5) = 1086918619;
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
      [layer6 setByValue:v6];

      [layer6 setFillMode:*MEMORY[0x277CDA238]];
      [layer6 setRemovedOnCompletion:0];
      [layer6 setDuration:10.0];
      [layer6 setRepeatDuration:INFINITY];
      v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
      [layer6 setTimingFunction:v7];

      layer = [(UIImageView *)self->_outerGearView layer];
      [layer addAnimation:layer6 forKey:@"outerRotation"];

      layer2 = [(UIImageView *)self->_outerGearShadowView layer];
      [layer2 addAnimation:layer6 forKey:@"shadowRotation"];

      LODWORD(v10) = -1060565029;
      v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
      [layer6 setByValue:v11];

      layer3 = [(UIImageView *)self->_innerGearView layer];
      [layer3 addAnimation:layer6 forKey:@"innerRotation"];
    }

    else
    {
      layer4 = [(UIImageView *)self->_innerGearView layer];
      [layer4 removeAllAnimations];

      layer5 = [(UIImageView *)self->_outerGearShadowView layer];
      [layer5 removeAllAnimations];

      layer6 = [(UIImageView *)self->_outerGearView layer];
      [layer6 removeAllAnimations];
    }
  }
}

@end