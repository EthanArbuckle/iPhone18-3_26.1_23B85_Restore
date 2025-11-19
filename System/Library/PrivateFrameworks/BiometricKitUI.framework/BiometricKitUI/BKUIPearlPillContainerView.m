@interface BKUIPearlPillContainerView
- (BKUIPearlPillContainerView)init;
- (BOOL)fillPillsAroundAngle:(double)a3 forTutorial:(BOOL)a4;
- (CGPoint)enrollViewCenter;
- (double)percentOfPillsCompleted;
- (id)unfilledDirections;
- (int64_t)_indexForPillAtAngle:(double)a3;
- (unint64_t)_numberOfVisiblePillViews;
- (void)_animateToFinishedCompletion:(id)a3;
- (void)animateToState:(int)a3 completion:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setRadius:(double)a3 center:(CGPoint)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)stashPillStates;
@end

@implementation BKUIPearlPillContainerView

- (BKUIPearlPillContainerView)init
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = BKUIPearlPillContainerView;
  v2 = [(BKUIPearlPillContainerView *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:120];
    pillViews = v2->_pillViews;
    v2->_pillViews = v3;

    v5 = 120;
    do
    {
      v6 = objc_opt_new();
      [(NSMutableArray *)v2->_pillViews addObject:v6];
      [(BKUIPearlPillContainerView *)v2 addSubview:v6];
      [v6 setRadius:120.0];
      [v6 setPillCornerRadius:2.0];
      [v6 setNumberOfPills:120.0];
      [v6 setPillInitialHeight:13.0];
      [v6 setPillCompletedHeight:30.0];
      [v6 setRingHeight:3.5];

      --v5;
    }

    while (v5);
    v2->_clockwise = 0;
    v2->_counterwise = 0;
    v2->_lastAngle = 0;
    [(BKUIPearlPillContainerView *)v2 resetPillsAnimated:0];
    objc_initWeak(&location, v2);
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__BKUIPearlPillContainerView_init__block_invoke;
    v11[3] = &unk_278D09928;
    objc_copyWeak(&v12, &location);
    v8 = [(BKUIPearlPillContainerView *)v2 registerForTraitChanges:v7 withHandler:v11];
    [(BKUIPearlPillContainerView *)v2 setTraitChangeRegistration:v8];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

void __34__BKUIPearlPillContainerView_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutIfNeeded];
}

- (unint64_t)_numberOfVisiblePillViews
{
  state = self->_state;
  if (state > 0xA)
  {
    goto LABEL_8;
  }

  if (((1 << state) & 0x66) != 0)
  {
    numberOfVisiblePillViews = 64;
    goto LABEL_9;
  }

  if (((1 << state) & 0x580) == 0)
  {
    if (((1 << state) & 0x208) != 0)
    {
      numberOfVisiblePillViews = self->_numberOfVisiblePillViews;
      goto LABEL_9;
    }

LABEL_8:
    numberOfVisiblePillViews = 0;
    goto LABEL_9;
  }

  numberOfVisiblePillViews = 120;
LABEL_9:
  self->_numberOfVisiblePillViews = numberOfVisiblePillViews;
  return numberOfVisiblePillViews;
}

- (void)layoutSubviews
{
  v3 = [(BKUIPearlPillContainerView *)self _numberOfVisiblePillViews];
  if ([(NSMutableArray *)self->_pillViews count])
  {
    v4 = 0;
    v5 = MEMORY[0x277CBF2C0];
    do
    {
      v6 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v4];
      v7 = v6;
      if (v4 >= v3)
      {
        [v6 setAlpha:0.0];
      }

      else
      {
        [v6 setAlpha:1.0];
        v8 = v5[1];
        *&v10.a = *v5;
        *&v10.c = v8;
        *&v10.tx = v5[2];
        [v7 setTransform:&v10];
        [(BKUIPearlPillContainerView *)self bounds];
        [v7 setFrame:?];
        CGAffineTransformMakeRotation(&v9, v4 / v3 * -2.0 * 3.14159265 + 6.28318531 + -1.57079633);
        v10 = v9;
        [v7 setTransform:&v10];
        [v7 setNumberOfPills:v3];
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_pillViews count]);
  }
}

- (void)_animateToFinishedCompletion:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(BKUIPearlPillContainerView *)self squareNeedsPositionLayout])
  {
    block = v4;
    v5 = [(NSMutableArray *)self->_pillViews firstObject];
    [v5 ringHeight];
    v7 = v6;

    v33 = [MEMORY[0x277D75348] systemGreenColor];
    v8 = objc_alloc_init(MEMORY[0x277D24210]);
    successAnimation = self->_successAnimation;
    self->_successAnimation = v8;

    -[LAUICheckmarkLayer setColor:animated:](self->_successAnimation, "setColor:animated:", [v33 CGColor], 0);
    v10 = [(BKUIPearlPillContainerView *)self layer];
    [v10 addSublayer:self->_successAnimation];

    v11 = self->_successAnimation;
    v12 = [(BKUIPearlPillContainerView *)self layer];
    v13 = 34.7999992 - v7;
    [v12 contentsScale];
    [(LAUICheckmarkLayer *)v11 defaultSizeForCircleWithDiameter:v13 + v13 scale:v14];
    v16 = v15;
    v18 = v17;

    [(LAUICheckmarkLayer *)self->_successAnimation setFrame:0.0, 0.0, v16, v18];
    v19 = self->_successAnimation;
    [(BKUIPearlPillContainerView *)self bounds];
    v21 = v20 * 0.5;
    [(BKUIPearlPillContainerView *)self enrollViewCenter];
    [(LAUICheckmarkLayer *)v19 setPosition:v21];
    LODWORD(v11) = UIAccessibilityIsReduceMotionEnabled();
    v22 = dispatch_group_create();
    dispatch_group_enter(v22);
    objc_initWeak(&location, self);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __59__BKUIPearlPillContainerView__animateToFinishedCompletion___block_invoke;
    v42[3] = &unk_278D0A1E8;
    objc_copyWeak(&v44, &location);
    v45 = v11;
    v23 = v22;
    v43 = v23;
    [(BKUIPearlPillContainerView *)self setAllPillState:5 animated:v11 ^ 1 completion:v42];
    if (v11)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = 0.5;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v25 = self->_pillViews;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v26)
    {
      v27 = *v39;
      v28 = MEMORY[0x277D85DD0];
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v38 + 1) + 8 * i);
          dispatch_group_enter(v23);
          objc_initWeak(&from, v30);
          v34[0] = v28;
          v34[1] = 3221225472;
          v34[2] = __59__BKUIPearlPillContainerView__animateToFinishedCompletion___block_invoke_4;
          v34[3] = &unk_278D0A210;
          objc_copyWeak(v36, &from);
          v36[1] = *&v13;
          v36[2] = *&v24;
          v35 = v23;
          [v30 setRadius:v34 animationDuration:v13 * 0.899999976 completion:v24 * 0.7];

          objc_destroyWeak(v36);
          objc_destroyWeak(&from);
        }

        v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v26);
    }

    if (block)
    {
      dispatch_group_notify(v23, MEMORY[0x277D85CD0], block);
    }

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);

    v4 = block;
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __59__BKUIPearlPillContainerView__animateToFinishedCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained squareNeedsPositionLayout])
    {
      v4 = dispatch_time(0, 1000000000);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __59__BKUIPearlPillContainerView__animateToFinishedCompletion___block_invoke_2;
      v5[3] = &unk_278D0A110;
      v5[4] = v3;
      v6 = *(a1 + 48);
      dispatch_after(v4, MEMORY[0x277D85CD0], v5);
    }

    else
    {
      [v3[52] setRevealed:1 animated:(*(a1 + 48) & 1) == 0];
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void __59__BKUIPearlPillContainerView__animateToFinishedCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 416);
  v3 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__BKUIPearlPillContainerView__animateToFinishedCompletion___block_invoke_3;
  v5[3] = &unk_278D0A110;
  v6 = v2;
  v7 = *(a1 + 40);
  v4 = v2;
  [v3 animateWithDuration:v5 animations:0.3];
}

void __59__BKUIPearlPillContainerView__animateToFinishedCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v4 = *(a1 + 56) * 0.3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__BKUIPearlPillContainerView__animateToFinishedCompletion___block_invoke_5;
  v5[3] = &unk_278D09978;
  v6 = *(a1 + 32);
  [WeakRetained setRadius:v5 animationDuration:v3 completion:v4];
}

- (double)percentOfPillsCompleted
{
  v3 = [(BKUIPearlPillContainerView *)self _numberOfVisiblePillViews];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v4];
      v7 = [v6 isCompleted];

      v5 += v7;
      ++v4;
    }

    while (v3 != v4);
    v8 = v5;
  }

  else
  {
    v8 = 0.0;
  }

  return v8 / v3;
}

- (void)stashPillStates
{
  if ([(NSMutableArray *)self->_pillViews count])
  {
    v3 = 0;
    stashedPillStates = self->_stashedPillStates;
    do
    {
      if (stashedPillStates[v3])
      {
        [BKUIPearlPillContainerView stashPillStates];
      }

      v5 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v3];
      stashedPillStates[v3] = [v5 state];

      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->_pillViews count]);
  }

  self->_hasPillStateStash = 1;
}

- (int64_t)_indexForPillAtAngle:(double)a3
{
  v4 = [(BKUIPearlPillContainerView *)self _numberOfVisiblePillViews];
  if (v4)
  {
    return (a3 / (6.28318531 / v4)) % v4;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)fillPillsAroundAngle:(double)a3 forTutorial:(BOOL)a4
{
  if (a4)
  {
    v6 = 0.05;
  }

  else
  {
    v6 = 0.02;
  }

  if (a4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  v8 = [(BKUIPearlPillContainerView *)self _numberOfVisiblePillViews];
  v9 = 6.28318531;
  if (a3 + 0.392699082 >= 0.0)
  {
    v9 = 0.0;
  }

  v10 = ((a3 + 0.392699082 + v9) * 100.0);
  self->_counterwise -= self->_lastAngle < v10;
  if (self->_lastAngle <= v10)
  {
    clockwise = self->_clockwise;
  }

  else
  {
    clockwise = self->_clockwise + 1;
  }

  self->_clockwise = clockwise;
  self->_lastAngle = v10;
  v12 = [(BKUIPearlPillContainerView *)self _indexForPillAtAngle:?];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
    return v13 & 1;
  }

  v14 = vcvtd_n_f64_u64(v8, 3uLL);
  v15 = vcvtps_u32_f32(v14);
  v16 = ((v12 / v15) * v15 - (v15 >> 1)) % v8;
  v17 = (v8 & (v16 >> 63)) + v16;
  v18 = v17 + v15;
  if ((self->_counterwise + self->_clockwise < 0) ^ __OFADD__(self->_counterwise, self->_clockwise) | (self->_counterwise + self->_clockwise == 0))
  {
    if (v17 < v18)
    {
      v13 = 0;
      v22 = 0.0;
      do
      {
        v23 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v17 % v8];
        v13 |= [v23 state] != v7;
        [v23 setState:v7 animated:1 animationDelay:0 completion:0 failure:v22];
        v22 = v6 + v22;

        ++v17;
        --v15;
      }

      while (v15);
      goto LABEL_24;
    }
  }

  else
  {
    v19 = v18 - 1;
    if (v18 - 1 >= v17)
    {
      v13 = 0;
      v20 = 0.0;
      do
      {
        v21 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v19 % v8];
        v13 |= [v21 state] != v7;
        [v21 setState:v7 animated:1 animationDelay:0 completion:0 failure:v20];
        v20 = v6 + v20;

        --v19;
      }

      while (v19 >= v17);
      goto LABEL_24;
    }
  }

  v13 = 0;
LABEL_24:
  v24 = self->_clockwise;
  v25 = self->_counterwise + v24;
  v26 = v25 - 2;
  if (v25 <= 2)
  {
    v26 = 0;
  }

  self->_clockwise = v24 - v26;
  v27 = v25 + 2;
  if (v25 >= -2)
  {
    v27 = 0;
  }

  self->_counterwise -= v27;
  return v13 & 1;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_pillViews makeObjectsPerformSelector:sel_tearDownPillView];
  v3.receiver = self;
  v3.super_class = BKUIPearlPillContainerView;
  [(BKUIPearlPillContainerView *)&v3 dealloc];
}

- (id)unfilledDirections
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = objc_opt_new();
  v3 = [&unk_2853CC898 count];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [&unk_2853CC898 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(&unk_2853CC898);
        }

        v8 = [*(*(&v16 + 1) + 8 * i) integerValue];
        v9 = [(BKUIPearlPillContainerView *)self _indexForPillAtAngle:6.28318531 / v3 * v8];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v9];
          v11 = [v10 state];

          if (v11 == 2)
          {
            v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
            [v15 addObject:v12];
          }
        }
      }

      v5 = [&unk_2853CC898 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)setRadius:(double)a3 center:(CGPoint)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  y = a4.y;
  x = a4.x;
  v28 = *MEMORY[0x277D85DE8];
  v11 = a6;
  [(BKUIPearlPillContainerView *)self setEnrollViewCenter:x, y];
  [(BKUIPearlPillContainerView *)self setNeedsLayout];
  if (v6)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_pillViews;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        dispatch_group_enter(v13);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __67__BKUIPearlPillContainerView_setRadius_center_animated_completion___block_invoke;
        v21[3] = &unk_278D09978;
        v22 = v13;
        [v19 setRadius:v21 animationDuration:a3 completion:v12];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  if (v11)
  {
    dispatch_group_notify(v13, MEMORY[0x277D85CD0], v11);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)animateToState:(int)a3 completion:(id)a4
{
  v6 = a4;
  state = self->_state;
  if (state == a3)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    v9 = v6;
    v6[2](v6);
  }

  else
  {
    v9 = v6;
    if (state == 10)
    {
      [(LAUICheckmarkLayer *)self->_successAnimation setRevealed:0 animated:0];
    }

    self->_state = a3;
    [(BKUIPearlPillContainerView *)self setNeedsLayout];
    v8 = self->_state;
    if ((v8 - 6) >= 3 && v8 == 10)
    {
      [(BKUIPearlPillContainerView *)self _animateToFinishedCompletion:v9];
    }

    else
    {
      v6 = v9;
      if (!v9)
      {
        goto LABEL_12;
      }

      v9[2](v9);
    }
  }

  v6 = v9;
LABEL_12:
}

- (CGPoint)enrollViewCenter
{
  x = self->_enrollViewCenter.x;
  y = self->_enrollViewCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end