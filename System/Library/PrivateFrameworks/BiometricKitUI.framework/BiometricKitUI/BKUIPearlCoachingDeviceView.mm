@interface BKUIPearlCoachingDeviceView
- (BKUIPearlCoachingDeviceView)initWithSheetLayout:(BOOL)a3;
- (BKUIRotationArrowAnimationLayer)animationLayer;
- (void)layoutSubviews;
- (void)resetDevice;
- (void)rotateDeviceToAngle:(double)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setDeviceHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setOrientation:(int64_t)a3;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation BKUIPearlCoachingDeviceView

- (BKUIPearlCoachingDeviceView)initWithSheetLayout:(BOOL)a3
{
  v3 = a3;
  v64[5] = *MEMORY[0x277D85DE8];
  v62.receiver = self;
  v62.super_class = BKUIPearlCoachingDeviceView;
  v4 = [(BKUIPearlCoachingDeviceView *)&v62 init];
  v5 = v4;
  if (v4)
  {
    v4->_inSheet = v3;
    if (v3)
    {
      v6 = 180.0;
    }

    else
    {
      v6 = 300.0;
    }

    v7 = +[BKUIDevice sharedInstance];
    v8 = [v7 isRestrictedToLandscapeEnrollment];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v11 = [v10 intValue];
    if (v8)
    {
      v12 = @"ipad-%i-landscape";
    }

    else
    {
      v12 = @"ipad-%i-j3xx";
    }

    v58 = [v9 stringWithFormat:v12, v11];

    v13 = MEMORY[0x277D755B8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [(BKUIPearlCoachingDeviceView *)v5 traitCollection];
    v16 = [v13 imageNamed:v58 inBundle:v14 compatibleWithTraitCollection:v15];
    [(BKUIPearlCoachingDeviceView *)v5 setDeviceImage:v16];

    v17 = objc_alloc(MEMORY[0x277D755E8]);
    v18 = [(BKUIPearlCoachingDeviceView *)v5 deviceImage];
    v19 = [v17 initWithImage:v18];
    [(BKUIPearlCoachingDeviceView *)v5 setDeviceView:v19];

    v20 = [MEMORY[0x277D75348] colorWithRed:0.125490196 green:0.580392157 blue:0.980392157 alpha:1.0];
    v21 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    [v21 setTintColor:v20];

    v22 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    [v22 setContentMode:1];

    v23 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    [(BKUIPearlCoachingDeviceView *)v5 addSubview:v24];

    v25 = [(BKUIPearlCoachingDeviceView *)v5 deviceImage];
    [v25 size];
    v27 = v26;
    v28 = [(BKUIPearlCoachingDeviceView *)v5 deviceImage];
    [v28 size];
    v30 = v29;

    v31 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    v32 = [v31 heightAnchor];
    v33 = fmax(v6, v27 * (v6 / v30));
    v34 = [v32 constraintEqualToConstant:v33];
    [(BKUIPearlCoachingDeviceView *)v5 setHeightConstraint:v34];

    v35 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    v36 = [v35 widthAnchor];
    v37 = [v36 constraintEqualToConstant:v33];
    [(BKUIPearlCoachingDeviceView *)v5 setWidthConstraint:v37];

    v51 = MEMORY[0x277CCAAD0];
    v57 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    v56 = [v57 centerXAnchor];
    v55 = [(BKUIPearlCoachingDeviceView *)v5 centerXAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v64[0] = v54;
    v53 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    v52 = [v53 centerYAnchor];
    v38 = [(BKUIPearlCoachingDeviceView *)v5 centerYAnchor];
    v39 = [v52 constraintEqualToAnchor:v38];
    v64[1] = v39;
    v40 = [(BKUIPearlCoachingDeviceView *)v5 deviceView];
    v41 = [v40 bottomAnchor];
    v42 = [(BKUIPearlCoachingDeviceView *)v5 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    v64[2] = v43;
    v44 = [(BKUIPearlCoachingDeviceView *)v5 heightConstraint];
    v64[3] = v44;
    v45 = [(BKUIPearlCoachingDeviceView *)v5 widthConstraint];
    v64[4] = v45;
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
    v5 = [v4 isRestrictedToLandscapeEnrollment];

    v6 = [(BKUIPearlCoachingDeviceView *)self orientation];
    if (v5)
    {
      v7 = 0.0;
      if ((v6 - 1) < 3)
      {
        v7 = dbl_241B72AB0[v6 - 1];
      }
    }

    else
    {
      v8 = 0.0;
      if (v6 != 1)
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
          v9 = [(BKUIPearlCoachingDeviceView *)self orientation];
          v8 = 3.14159265;
          if (v9 != 2)
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
      v11 = [(BKUIPearlCoachingDeviceView *)self orientation];
      *buf = 134218240;
      v16 = v11;
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
  v3 = [(BKUIPearlCoachingDeviceView *)self deviceView];
  v4 = [v3 layer];
  [v4 removeAllAnimations];

  [MEMORY[0x277CD9FF0] commit];
  v5 = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [v5 stopAnimationRemoveStroke];

  [(BKUIPearlCoachingDeviceView *)self setAnimationRunning:0];
}

- (void)resetDevice
{
  [(BKUIPearlCoachingDeviceView *)self stopAnimation];
  v3 = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [v3 resetLayout];

  v4 = [(BKUIPearlCoachingDeviceView *)self deviceView];
  v5 = [v4 layer];
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
  [v5 setTransform:v19];

  v10 = [(BKUIPearlCoachingDeviceView *)self orientation];
  if ((v10 - 2) > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_241B72AC8[v10 - 2];
  }

  v12 = objc_alloc(MEMORY[0x277D755B8]);
  v13 = [(BKUIPearlCoachingDeviceView *)self deviceImage];
  v14 = [v13 CGImage];
  v15 = [(BKUIPearlCoachingDeviceView *)self deviceImage];
  [v15 scale];
  v16 = [v12 initWithCGImage:v14 scale:v11 orientation:?];
  v17 = [v16 imageWithRenderingMode:2];

  v18 = [(BKUIPearlCoachingDeviceView *)self deviceView];
  [v18 setImage:v17];
}

- (void)rotateDeviceToAngle:(double)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = dbl_241B72A60[fabs(a3) > 1.57079633];
  [(BKUIPearlCoachingDeviceView *)self center];
  v11 = v10;
  v13 = v12;
  v14 = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [v14 setPosition:{v11, v13}];

  v15 = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [v15 setNeedsLayout];

  v16 = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [v16 layoutIfNeeded];

  v17 = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  v18 = 0.8;
  [v17 animateDirectionPath:-[BKUIPearlCoachingDeviceView orientation](self orientation:"orientation") duration:a3 animationDelay:{v9, 0.8}];

  v19 = MEMORY[0x277D75D18];
  if (!v5)
  {
    v9 = 0.0;
    v18 = 0.0;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__BKUIPearlCoachingDeviceView_rotateDeviceToAngle_animated_completion___block_invoke;
  v23[3] = &unk_278D09F88;
  v23[4] = self;
  *&v23[5] = a3;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__BKUIPearlCoachingDeviceView_rotateDeviceToAngle_animated_completion___block_invoke_2;
  v21[3] = &unk_278D09D30;
  v22 = v8;
  v20 = v8;
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
    v3 = [(BKUIPearlCoachingDeviceView *)self superview];
    v4 = [(BKUIPearlCoachingDeviceView *)self _colorForStroke];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__BKUIPearlCoachingDeviceView_animationLayer__block_invoke;
    v9[3] = &unk_278D0A1C0;
    v9[4] = self;
    v5 = [BKUIRotationArrowAnimationLayer animatorByEmbedding:v3 color:v4 radiusForOrientation:v9];
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
  v3 = [(BKUIPearlCoachingDeviceView *)self animationLayer];
  [(BKUIPearlCoachingDeviceView *)self center];
  [(BKUIRotationArrowAnimationLayer *)self->_animationLayer setPosition:?];
}

- (void)setDeviceHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = 0.6;
  if (v6)
  {
    v9 = 1.1;
  }

  v10 = !v5;
  if (v5)
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
  v18 = v6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__BKUIPearlCoachingDeviceView_setDeviceHidden_animated_completion___block_invoke_2;
  v15[3] = &unk_278D09D30;
  v16 = v8;
  v14 = v8;
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

- (void)setOrientation:(int64_t)a3
{
  self->_orientation = a3;
  [(BKUIPearlCoachingDeviceView *)self resetDevice];
  v4 = [(BKUIPearlCoachingDeviceView *)self deviceView];
  [v4 setAlpha:1.0];
}

@end