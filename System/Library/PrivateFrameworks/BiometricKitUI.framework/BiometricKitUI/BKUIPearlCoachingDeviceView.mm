@interface BKUIPearlCoachingDeviceView
- (BKUIPearlCoachingDeviceView)initWithSheetLayout:(BOOL)layout;
- (BKUIRotationArrowAnimationLayer)animationLayer;
- (void)layoutSubviews;
- (void)resetDevice;
- (void)rotateDeviceToAngle:(double)angle animated:(BOOL)animated completion:(id)completion;
- (void)setDeviceHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)setOrientation:(int64_t)orientation;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation BKUIPearlCoachingDeviceView

- (BKUIPearlCoachingDeviceView)initWithSheetLayout:(BOOL)layout
{
  layoutCopy = layout;
  v64[5] = *MEMORY[0x277D85DE8];
  v62.receiver = self;
  v62.super_class = BKUIPearlCoachingDeviceView;
  v4 = [(BKUIPearlCoachingDeviceView *)&v62 init];
  v5 = v4;
  if (v4)
  {
    v4->_inSheet = layoutCopy;
    if (layoutCopy)
    {
      v6 = 180.0;
    }

    else
    {
      v6 = 300.0;
    }

    v7 = +[BKUIDevice sharedInstance];
    isRestrictedToLandscapeEnrollment = [v7 isRestrictedToLandscapeEnrollment];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    intValue = [v10 intValue];
    if (isRestrictedToLandscapeEnrollment)
    {
      v12 = @"ipad-%i-landscape";
    }

    else
    {
      v12 = @"ipad-%i-j3xx";
    }

    v58 = [v9 stringWithFormat:v12, intValue];

    v13 = MEMORY[0x277D755B8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    traitCollection = [(BKUIPearlCoachingDeviceView *)v5 traitCollection];
    v16 = [v13 imageNamed:v58 inBundle:v14 compatibleWithTraitCollection:traitCollection];
    [(BKUIPearlCoachingDeviceView *)v5 setDeviceImage:v16];

    v17 = objc_alloc(MEMORY[0x277D755E8]);
    deviceImage = [(BKUIPearlCoachingDeviceView *)v5 deviceImage];
    v19 = [v17 initWithImage:deviceImage];
    [(BKUIPearlCoachingDeviceView *)v5 setDeviceView:v19];

    v20 = [MEMORY[0x277D75348] colorWithRed:0.125490196 green:0.580392157 blue:0.980392157 alpha:1.0];
    deviceView = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    [deviceView setTintColor:v20];

    deviceView2 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    [deviceView2 setContentMode:1];

    deviceView3 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    [deviceView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    deviceView4 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    [(BKUIPearlCoachingDeviceView *)v5 addSubview:deviceView4];

    deviceImage2 = [(BKUIPearlCoachingDeviceView *)v5 deviceImage];
    [deviceImage2 size];
    v27 = v26;
    deviceImage3 = [(BKUIPearlCoachingDeviceView *)v5 deviceImage];
    [deviceImage3 size];
    v30 = v29;

    deviceView5 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    heightAnchor = [deviceView5 heightAnchor];
    v33 = fmax(v6, v27 * (v6 / v30));
    v34 = [heightAnchor constraintEqualToConstant:v33];
    [(BKUIPearlCoachingDeviceView *)v5 setHeightConstraint:v34];

    deviceView6 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    widthAnchor = [deviceView6 widthAnchor];
    v37 = [widthAnchor constraintEqualToConstant:v33];
    [(BKUIPearlCoachingDeviceView *)v5 setWidthConstraint:v37];

    v51 = MEMORY[0x277CCAAD0];
    deviceView7 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    centerXAnchor = [deviceView7 centerXAnchor];
    centerXAnchor2 = [(BKUIPearlCoachingDeviceView *)v5 centerXAnchor];
    v54 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v64[0] = v54;
    deviceView8 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    centerYAnchor = [deviceView8 centerYAnchor];
    centerYAnchor2 = [(BKUIPearlCoachingDeviceView *)v5 centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v64[1] = v39;
    deviceView9 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    bottomAnchor = [deviceView9 bottomAnchor];
    bottomAnchor2 = [(BKUIPearlCoachingDeviceView *)v5 bottomAnchor];
    v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v64[2] = v43;
    heightConstraint = [(BKUIPearlCoachingDeviceView *)v5 heightConstraint];
    v64[3] = heightConstraint;
    widthConstraint = [(BKUIPearlCoachingDeviceView *)v5 widthConstraint];
    v64[4] = widthConstraint;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:5];
    [v51 activateConstraints:v46];

    objc_initWeak(&location, v5);
    v63[0] = objc_opt_class();
    v63[1] = objc_opt_class();
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __51__BKUIPearlCoachingDeviceView_initWithSheetLayout___block_invoke;
    v59[3] = &unk_278D09928;
    objc_copyWeak(&v60, &location);
    v48 = [(BKUIPearlCoachingDeviceView *)v5 registerForTraitChanges:v47 withHandler:v59];
    [(BKUIPearlCoachingDeviceView *)v5 setTraitChangeRegistration:v48];

    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  v49 = *MEMORY[0x277D85DE8];
  return v5;
}

void __51__BKUIPearlCoachingDeviceView_initWithSheetLayout___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained traitCollection];
  v6 = [v5 horizontalSizeClass];
  v7 = [v4 horizontalSizeClass];

  if (v6 != v7)
  {
    if ([WeakRetained inSheet])
    {
      v8 = 180.0;
    }

    else
    {
      v8 = 300.0;
    }

    v9 = +[BKUIDevice sharedInstance];
    v10 = [v9 isRestrictedToLandscapeEnrollment];

    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v13 = [v12 intValue];
    if (v10)
    {
      v14 = @"ipad-%i-landscape";
    }

    else
    {
      v14 = @"ipad-%i-j3xx";
    }

    v15 = [v11 stringWithFormat:v14, v13];

    v16 = [WeakRetained deviceImage];
    [v16 size];
    v18 = v17;
    v19 = [WeakRetained deviceImage];
    [v19 size];
    v21 = v18 * (v8 / v20);

    v22 = fmax(v8, v21);
    v23 = MEMORY[0x277D755B8];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [WeakRetained traitCollection];
    v26 = [v23 imageNamed:v15 inBundle:v24 compatibleWithTraitCollection:v25];
    [WeakRetained setDeviceImage:v26];

    v27 = [WeakRetained heightConstraint];
    [v27 setConstant:v22];

    v28 = [WeakRetained widthConstraint];
    [v28 setConstant:v22];

    v29 = [WeakRetained deviceView];
    [v29 layoutIfNeeded];
  }
}

- (void)startAnimation
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Coaching: startAnimation", buf, 2u);
  }

  if (![(BKUIPearlCoachingDeviceView *)self animationRunning])
  {
    [(BKUIPearlCoachingDeviceView *)self setAnimationRunning:1];
    v4 = +[BKUIDevice sharedInstance];
    isRestrictedToLandscapeEnrollment = [v4 isRestrictedToLandscapeEnrollment];

    orientation = [(BKUIPearlCoachingDeviceView *)self orientation];
    if (isRestrictedToLandscapeEnrollment)
    {
      v7 = 0.0;
      if ((orientation - 1) < 3)
      {
        v7 = dbl_241B72AB0[orientation - 1];
      }
    }

    else
    {
      v8 = 0.0;
      if (orientation != 1)
      {
        if ([(BKUIPearlCoachingDeviceView *)self orientation]== 4)
        {
          v8 = -1.57079633;
        }

        else if ([(BKUIPearlCoachingDeviceView *)self orientation]== 3)
        {
          v8 = 1.57079633;
        }

        else
        {
          orientation2 = [(BKUIPearlCoachingDeviceView *)self orientation];
          v8 = 3.14159265;
          if (orientation2 != 2)
          {
            v8 = 0.0;
          }
        }
      }

      v7 = -v8;
    }

    v10 = _BKUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      orientation3 = [(BKUIPearlCoachingDeviceView *)self orientation];
      *buf = 134218240;
      v16 = orientation3;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&dword_241B0A000, v10, OS_LOG_TYPE_DEFAULT, "Coaching: self.orientation = %lu, rotation = %f", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__BKUIPearlCoachingDeviceView_startAnimation__block_invoke;
    v13[3] = &unk_278D09950;
    objc_copyWeak(&v14, buf);
    [(BKUIPearlCoachingDeviceView *)self rotateDeviceToAngle:v7 != 0.0 animated:v13 completion:v7];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __45__BKUIPearlCoachingDeviceView_startAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__BKUIPearlCoachingDeviceView_startAnimation__block_invoke_2;
  v3[3] = &unk_278D09950;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained setDeviceHidden:1 animated:1 completion:v3];
  objc_destroyWeak(&v4);
}

void __45__BKUIPearlCoachingDeviceView_startAnimation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetDevice];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__BKUIPearlCoachingDeviceView_startAnimation__block_invoke_3;
  v3[3] = &unk_278D09950;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained setDeviceHidden:0 animated:1 completion:v3];
  objc_destroyWeak(&v4);
}

void __45__BKUIPearlCoachingDeviceView_startAnimation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAnimationRunning:0];
  [WeakRetained startAnimation];
}

- (void)stopAnimation
{
  [MEMORY[0x277CD9FF0] begin];
  deviceView = [(BKUIPearlCoachingDeviceView *)self deviceView];
  layer = [deviceView layer];
  [layer removeAllAnimations];

  [MEMORY[0x277CD9FF0] commit];
  animationLayer = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [animationLayer stopAnimationRemoveStroke];

  [(BKUIPearlCoachingDeviceView *)self setAnimationRunning:0];
}

- (void)resetDevice
{
  [(BKUIPearlCoachingDeviceView *)self stopAnimation];
  animationLayer = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [animationLayer resetLayout];

  deviceView = [(BKUIPearlCoachingDeviceView *)self deviceView];
  layer = [deviceView layer];
  v6 = *(MEMORY[0x277CD9DE8] + 80);
  v19[4] = *(MEMORY[0x277CD9DE8] + 64);
  v19[5] = v6;
  v7 = *(MEMORY[0x277CD9DE8] + 112);
  v19[6] = *(MEMORY[0x277CD9DE8] + 96);
  v19[7] = v7;
  v8 = *(MEMORY[0x277CD9DE8] + 16);
  v19[0] = *MEMORY[0x277CD9DE8];
  v19[1] = v8;
  v9 = *(MEMORY[0x277CD9DE8] + 48);
  v19[2] = *(MEMORY[0x277CD9DE8] + 32);
  v19[3] = v9;
  [layer setTransform:v19];

  orientation = [(BKUIPearlCoachingDeviceView *)self orientation];
  if ((orientation - 2) > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_241B72AC8[orientation - 2];
  }

  v12 = objc_alloc(MEMORY[0x277D755B8]);
  deviceImage = [(BKUIPearlCoachingDeviceView *)self deviceImage];
  cGImage = [deviceImage CGImage];
  deviceImage2 = [(BKUIPearlCoachingDeviceView *)self deviceImage];
  [deviceImage2 scale];
  v16 = [v12 initWithCGImage:cGImage scale:v11 orientation:?];
  v17 = [v16 imageWithRenderingMode:2];

  deviceView2 = [(BKUIPearlCoachingDeviceView *)self deviceView];
  [deviceView2 setImage:v17];
}

- (void)rotateDeviceToAngle:(double)angle animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9 = dbl_241B72A60[fabs(angle) > 1.57079633];
  [(BKUIPearlCoachingDeviceView *)self center];
  v11 = v10;
  v13 = v12;
  animationLayer = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [animationLayer setPosition:{v11, v13}];

  animationLayer2 = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [animationLayer2 setNeedsLayout];

  animationLayer3 = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [animationLayer3 layoutIfNeeded];

  animationLayer4 = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  v18 = 0.8;
  [animationLayer4 animateDirectionPath:-[BKUIPearlCoachingDeviceView orientation](self orientation:"orientation") duration:angle animationDelay:{v9, 0.8}];

  v19 = MEMORY[0x277D75D18];
  if (!animatedCopy)
  {
    v9 = 0.0;
    v18 = 0.0;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__BKUIPearlCoachingDeviceView_rotateDeviceToAngle_animated_completion___block_invoke;
  v23[3] = &unk_278D09F88;
  v23[4] = self;
  *&v23[5] = angle;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__BKUIPearlCoachingDeviceView_rotateDeviceToAngle_animated_completion___block_invoke_2;
  v21[3] = &unk_278D09D30;
  v22 = completionCopy;
  v20 = completionCopy;
  [v19 animateWithDuration:0 delay:v23 options:v21 animations:v9 completion:v18];
}

void __71__BKUIPearlCoachingDeviceView_rotateDeviceToAngle_animated_completion___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeRotation(&v4, *(a1 + 40));
  v2 = [*(a1 + 32) deviceView];
  v3 = v4;
  [v2 setTransform:&v3];
}

uint64_t __71__BKUIPearlCoachingDeviceView_rotateDeviceToAngle_animated_completion___block_invoke_2(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BKUIRotationArrowAnimationLayer)animationLayer
{
  if (!self->_animationLayer)
  {
    superview = [(BKUIPearlCoachingDeviceView *)self superview];
    _colorForStroke = [(BKUIPearlCoachingDeviceView *)self _colorForStroke];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__BKUIPearlCoachingDeviceView_animationLayer__block_invoke;
    v9[3] = &unk_278D0A1C0;
    v9[4] = self;
    v5 = [BKUIRotationArrowAnimationLayer animatorByEmbedding:superview color:_colorForStroke radiusForOrientation:v9];
    animationLayer = self->_animationLayer;
    self->_animationLayer = v5;
  }

  [(BKUIPearlCoachingDeviceView *)self center];
  [(BKUIRotationArrowAnimationLayer *)self->_animationLayer setPosition:?];
  v7 = self->_animationLayer;

  return v7;
}

double __45__BKUIPearlCoachingDeviceView_animationLayer__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) inSheet];
  v5 = +[BKUIDevice sharedInstance];
  v6 = [v5 isRestrictedToLandscapeEnrollment];

  v7 = [*(a1 + 32) isDisplayZoomEnabled];
  if (v6)
  {
    v8 = a2 == 4;
  }

  else
  {
    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = 400.0;
  }

  else
  {
    v11 = +[BKUIDevice sharedInstance];
    v12 = [v11 isRestrictedToLandscapeEnrollment];

    if (v12)
    {
      v13 = a2 == 3;
    }

    else
    {
      v13 = a2 == 2;
    }

    v14 = v13;
    v10 = dbl_241B72A70[v14];
  }

  v15 = 2.0;
  if (v4)
  {
    v15 = 3.5;
  }

  return v10 / v15;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = BKUIPearlCoachingDeviceView;
  [(BKUIPearlCoachingDeviceView *)&v4 layoutSubviews];
  animationLayer = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [(BKUIPearlCoachingDeviceView *)self center];
  [(BKUIRotationArrowAnimationLayer *)self->_animationLayer setPosition:?];
}

- (void)setDeviceHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  v9 = 0.6;
  if (hiddenCopy)
  {
    v9 = 1.1;
  }

  v10 = !animatedCopy;
  if (animatedCopy)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = MEMORY[0x277D75D18];
  if (v10)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 0.2;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__BKUIPearlCoachingDeviceView_setDeviceHidden_animated_completion___block_invoke;
  v17[3] = &unk_278D0A110;
  v17[4] = self;
  v18 = hiddenCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__BKUIPearlCoachingDeviceView_setDeviceHidden_animated_completion___block_invoke_2;
  v15[3] = &unk_278D09D30;
  v16 = completionCopy;
  v14 = completionCopy;
  [v12 animateWithDuration:0 delay:v17 options:v15 animations:v13 completion:v11];
}

void __67__BKUIPearlCoachingDeviceView_setDeviceHidden_animated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) deviceView];
  [v2 setAlpha:v1];
}

uint64_t __67__BKUIPearlCoachingDeviceView_setDeviceHidden_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setOrientation:(int64_t)orientation
{
  self->_orientation = orientation;
  [(BKUIPearlCoachingDeviceView *)self resetDevice];
  deviceView = [(BKUIPearlCoachingDeviceView *)self deviceView];
  [deviceView setAlpha:1.0];
}

@end