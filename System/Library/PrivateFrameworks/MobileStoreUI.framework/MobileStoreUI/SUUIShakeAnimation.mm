@interface SUUIShakeAnimation
- (SUUIShakeAnimation)initWithOptions:(id)options;
- (void)animatePINInputControl:(id)control;
- (void)animateView:(id)view;
@end

@implementation SUUIShakeAnimation

- (SUUIShakeAnimation)initWithOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = SUUIShakeAnimation;
  v5 = [(SUUIShakeAnimation *)&v10 init];
  if (v5)
  {
    v6 = [optionsCopy objectForKey:0x286AFDA00];
    if (objc_opt_respondsToSelector())
    {
      v5->_shouldErase = [v6 BOOLValue];
    }

    v7 = [optionsCopy objectForKey:0x286AFDA20];

    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v5->_shouldVibrate = bOOLValue;
  }

  return v5;
}

- (void)animatePINInputControl:(id)control
{
  controlCopy = control;
  v5 = controlCopy;
  v6 = controlCopy;
  if (self->_shouldErase)
  {
    [controlCopy setText:0];
    v5 = v6;
  }

  [(SUUIShakeAnimation *)self animateView:v5];
}

- (void)animateView:(id)view
{
  layer = [view layer];
  [layer removeAllAnimations];
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position.x"];
  [v4 setMass:1.20000005];
  [v4 setStiffness:1200.0];
  [v4 setDamping:12.0];
  LODWORD(v5) = 1028389654;
  LODWORD(v6) = 990057071;
  LODWORD(v7) = 1059712716;
  LODWORD(v8) = 1.0;
  v9 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v5 :v6 :v7 :v8];
  [v4 setTimingFunction:v9];

  [v4 setDuration:0.860000014];
  [v4 setVelocity:0.0];
  v10 = *MEMORY[0x277CDA228];
  [v4 setFillMode:*MEMORY[0x277CDA228]];
  v11 = MEMORY[0x277CCABB0];
  [layer position];
  v13 = v12 + 60.0;
  *&v13 = v13;
  v14 = [v11 numberWithFloat:v13];
  [v4 setFromValue:v14];

  [layer addAnimation:v4 forKey:@"position"];
  v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position.x"];
  LODWORD(v16) = 1036831949;
  LODWORD(v17) = 0.25;
  LODWORD(v18) = 0.25;
  LODWORD(v19) = 1.0;
  v20 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v17 :v16 :v18 :v19];
  [v15 setTimingFunction:v20];

  [v15 setDuration:0.0700000003];
  [v15 setFillMode:v10];
  v21 = MEMORY[0x277CCABB0];
  [layer position];
  v23 = v22 + -60.0;
  *&v23 = v23;
  v24 = [v21 numberWithFloat:v23];
  [v15 setFromValue:v24];

  [layer addAnimation:v15 forKey:@"force"];
  if (self->_shouldVibrate)
  {
    v25 = SUUIAudioToolboxFramework();
    v26 = SUUIWeakLinkedSymbolForString("AudioServicesPlaySystemSound", v25);
    if (v26)
    {
      v26(4095);
    }
  }
}

@end