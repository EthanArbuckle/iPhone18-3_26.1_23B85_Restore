@interface HPSSpatialProfileEarPillContainerView
- (BOOL)fillPillsAroundAngle:(double)angle forTutorial:(BOOL)tutorial;
- (CGPoint)enrollViewCenter;
- (HPSSpatialProfileEarPillContainerView)init;
- (double)percentOfPillsCompleted;
- (id)unfilledDirections;
- (int64_t)_indexForPillAtAngle:(double)angle;
- (unint64_t)_numberOfVisiblePillViews;
- (void)_animateToFinishedCompletion:(id)completion;
- (void)animateToState:(int)state completion:(id)completion;
- (void)dealloc;
- (void)fillCentralPillsWithCompletion:(id)completion;
- (void)fillLeftPillsWithCompletion:(id)completion;
- (void)fillRightPillsWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setRadius:(double)radius center:(CGPoint)center animated:(BOOL)animated completion:(id)completion;
- (void)stashPillStates;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HPSSpatialProfileEarPillContainerView

- (HPSSpatialProfileEarPillContainerView)init
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HPSSpatialProfileEarPillContainerView;
  v2 = [(HPSSpatialProfileEarPillContainerView *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:11];
    pillViews = v2->_pillViews;
    v2->_pillViews = v3;

    v5 = 0;
    *&v6 = 134217984;
    v13 = v6;
    do
    {
      v7 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v13;
        v16 = v5;
        _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Pill: init: %lu", buf, 0xCu);
      }

      v8 = objc_opt_new();
      [v8 setRadius:0.0];
      [v8 setPillCornerRadius:2.0];
      [v8 setNumberOfPills:11.0];
      [v8 setRingHeight:3.5];
      if (v5 <= 0xA && ((1 << v5) & 0x421) != 0)
      {
        v9 = 25.0;
        v10 = 20.0;
      }

      else
      {
        v9 = 15.0;
        v10 = 10.0;
      }

      [v8 setPillInitialHeight:{v10, v13}];
      [v8 setPillCompletedHeight:v9];
      [(NSMutableArray *)v2->_pillViews addObject:v8];
      [(HPSSpatialProfileEarPillContainerView *)v2 addSubview:v8];

      ++v5;
    }

    while (v5 != 11);
    v2->_clockwise = 0;
    v2->_counterwise = 0;
    v2->_lastAngle = 0;
    [(HPSSpatialProfileEarPillContainerView *)v2 resetPillsAnimated:0];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

- (unint64_t)_numberOfVisiblePillViews
{
  state = self->_state;
  if (state > 0xA)
  {
    goto LABEL_6;
  }

  v3 = 1 << state;
  if ((v3 & 0x5E6) == 0)
  {
    if ((v3 & 0x208) != 0)
    {
      numberOfVisiblePillViews = self->_numberOfVisiblePillViews;
      goto LABEL_7;
    }

LABEL_6:
    numberOfVisiblePillViews = 0;
    goto LABEL_7;
  }

  numberOfVisiblePillViews = 11;
LABEL_7:
  self->_numberOfVisiblePillViews = numberOfVisiblePillViews;
  return numberOfVisiblePillViews;
}

- (void)layoutSubviews
{
  if ([(NSMutableArray *)self->_pillViews count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v3];
      [(HPSSpatialProfileEarPillContainerView *)self bounds];
      [v4 setFrame:?];
      memset(&v9, 0, sizeof(v9));
      CGAffineTransformMakeRotation(&v9, 3.14159265);
      memset(&v8, 0, sizeof(v8));
      CGAffineTransformMakeTranslation(&v8, (v3 - [(NSMutableArray *)self->_pillViews count]/ 2) * 13.0, 0.0);
      t1 = v9;
      v5 = v8;
      CGAffineTransformConcat(&v7, &t1, &v5);
      t1 = v7;
      [v4 setTransform:&t1];
      [v4 setNumberOfPills:{-[NSMutableArray count](self->_pillViews, "count")}];

      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->_pillViews count]);
  }
}

- (void)_animateToFinishedCompletion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  block = completion;
  firstObject = [(NSMutableArray *)self->_pillViews firstObject];
  [firstObject ringHeight];
  v6 = v5;

  v7 = objc_alloc_init(MEMORY[0x277D24208]);
  successAnimation = self->_successAnimation;
  self->_successAnimation = v7;

  v9 = self->_successAnimation;
  systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
  [(LAUICheckmarkLayer *)v9 setPrimaryColor:systemGreenColor animated:0];

  layer = [(HPSSpatialProfileEarPillContainerView *)self layer];
  [layer addSublayer:self->_successAnimation];

  v12 = self->_successAnimation;
  layer2 = [(HPSSpatialProfileEarPillContainerView *)self layer];
  v14 = 34.7999992 - v6;
  [layer2 contentsScale];
  [(LAUICheckmarkLayer *)v12 defaultSizeForCircleWithDiameter:v14 + v14 scale:v15];
  v17 = v16;
  v19 = v18;

  [(LAUICheckmarkLayer *)self->_successAnimation setFrame:0.0, 0.0, v17, v19];
  v20 = self->_successAnimation;
  [(HPSSpatialProfileEarPillContainerView *)self bounds];
  v22 = v21 * 0.5;
  [(HPSSpatialProfileEarPillContainerView *)self enrollViewCenter];
  [(LAUICheckmarkLayer *)v20 setPosition:v22];
  LODWORD(v12) = UIAccessibilityIsReduceMotionEnabled();
  v23 = dispatch_group_create();
  dispatch_group_enter(v23);
  objc_initWeak(&location, self);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __70__HPSSpatialProfileEarPillContainerView__animateToFinishedCompletion___block_invoke;
  v42[3] = &unk_2796ADEF8;
  objc_copyWeak(&v44, &location);
  v45 = v12;
  v24 = v23;
  v43 = v24;
  [(HPSSpatialProfileEarPillContainerView *)self setAllPillState:5 animated:v12 ^ 1 completion:v42];
  if (v12)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 0.5;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = self->_pillViews;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v27)
  {
    v28 = *v39;
    v29 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v38 + 1) + 8 * i);
        dispatch_group_enter(v24);
        objc_initWeak(&from, v31);
        v34[0] = v29;
        v34[1] = 3221225472;
        v34[2] = __70__HPSSpatialProfileEarPillContainerView__animateToFinishedCompletion___block_invoke_2;
        v34[3] = &unk_2796ADF20;
        objc_copyWeak(v36, &from);
        v36[1] = *&v14;
        v36[2] = *&v25;
        v35 = v24;
        [v31 setRadius:v34 animationDuration:v14 * 0.899999976 completion:v25 * 0.7];

        objc_destroyWeak(v36);
        objc_destroyWeak(&from);
      }

      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v27);
  }

  if (block)
  {
    dispatch_group_notify(v24, MEMORY[0x277D85CD0], block);
  }

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);

  v32 = *MEMORY[0x277D85DE8];
}

void __70__HPSSpatialProfileEarPillContainerView__animateToFinishedCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[52] setRevealed:1 animated:(*(a1 + 48) & 1) == 0];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __70__HPSSpatialProfileEarPillContainerView__animateToFinishedCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v4 = *(a1 + 56) * 0.3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__HPSSpatialProfileEarPillContainerView__animateToFinishedCompletion___block_invoke_3;
  v5[3] = &unk_2796AD618;
  v6 = *(a1 + 32);
  [WeakRetained setRadius:v5 animationDuration:v3 completion:v4];
}

- (double)percentOfPillsCompleted
{
  _numberOfVisiblePillViews = [(HPSSpatialProfileEarPillContainerView *)self _numberOfVisiblePillViews];
  if (_numberOfVisiblePillViews)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v4];
      isCompleted = [v6 isCompleted];

      v5 += isCompleted;
      ++v4;
    }

    while (_numberOfVisiblePillViews != v4);
    v8 = v5;
  }

  else
  {
    v8 = 0.0;
  }

  return v8 / _numberOfVisiblePillViews;
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
        [HPSSpatialProfileEarPillContainerView stashPillStates];
      }

      v5 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v3];
      stashedPillStates[v3] = [v5 state];

      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->_pillViews count]);
  }

  self->_hasPillStateStash = 1;
}

- (int64_t)_indexForPillAtAngle:(double)angle
{
  _numberOfVisiblePillViews = [(HPSSpatialProfileEarPillContainerView *)self _numberOfVisiblePillViews];
  if (_numberOfVisiblePillViews)
  {
    return (angle / (6.28318531 / _numberOfVisiblePillViews)) % _numberOfVisiblePillViews;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)fillPillsAroundAngle:(double)angle forTutorial:(BOOL)tutorial
{
  if (tutorial)
  {
    v6 = 0.05;
  }

  else
  {
    v6 = 0.02;
  }

  if (tutorial)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  _numberOfVisiblePillViews = [(HPSSpatialProfileEarPillContainerView *)self _numberOfVisiblePillViews];
  v9 = 6.28318531;
  if (angle + 0.392699082 >= 0.0)
  {
    v9 = 0.0;
  }

  v10 = ((angle + 0.392699082 + v9) * 100.0);
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
  v12 = [(HPSSpatialProfileEarPillContainerView *)self _indexForPillAtAngle:?];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
    return v13 & 1;
  }

  v14 = vcvtd_n_f64_u64(_numberOfVisiblePillViews, 3uLL);
  v15 = vcvtps_u32_f32(v14);
  v16 = ((v12 / v15) * v15 - (v15 >> 1)) % _numberOfVisiblePillViews;
  v17 = (_numberOfVisiblePillViews & (v16 >> 63)) + v16;
  v18 = v17 + v15;
  if ((self->_counterwise + self->_clockwise < 0) ^ __OFADD__(self->_counterwise, self->_clockwise) | (self->_counterwise + self->_clockwise == 0))
  {
    if (v17 < v18)
    {
      v13 = 0;
      v22 = 0.0;
      do
      {
        v23 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v17 % _numberOfVisiblePillViews];
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
        v21 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v19 % _numberOfVisiblePillViews];
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
  v3.super_class = HPSSpatialProfileEarPillContainerView;
  [(HPSSpatialProfileEarPillContainerView *)&v3 dealloc];
}

- (id)unfilledDirections
{
  v2 = objc_opt_new();

  return v2;
}

- (void)setRadius:(double)radius center:(CGPoint)center animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  y = center.y;
  x = center.x;
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(HPSSpatialProfileEarPillContainerView *)self setEnrollViewCenter:x, y];
  [(HPSSpatialProfileEarPillContainerView *)self setNeedsLayout];
  if (animatedCopy)
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
        v21[2] = __78__HPSSpatialProfileEarPillContainerView_setRadius_center_animated_completion___block_invoke;
        v21[3] = &unk_2796AD618;
        v22 = v13;
        [v19 setRadius:v21 animationDuration:radius completion:v12];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  if (completionCopy)
  {
    dispatch_group_notify(v13, MEMORY[0x277D85CD0], completionCopy);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)animateToState:(int)state completion:(id)completion
{
  completionCopy = completion;
  state = self->_state;
  if (state == state)
  {
    if (!completionCopy)
    {
      goto LABEL_12;
    }

    v9 = completionCopy;
    completionCopy[2](completionCopy);
  }

  else
  {
    v9 = completionCopy;
    if (state == 10)
    {
      [(LAUICheckmarkLayer *)self->_successAnimation setRevealed:0 animated:0];
    }

    self->_state = state;
    [(HPSSpatialProfileEarPillContainerView *)self setNeedsLayout];
    v8 = self->_state;
    if ((v8 - 6) >= 3 && v8 == 10)
    {
      [(HPSSpatialProfileEarPillContainerView *)self _animateToFinishedCompletion:v9];
    }

    else
    {
      completionCopy = v9;
      if (!v9)
      {
        goto LABEL_12;
      }

      v9[2](v9);
    }
  }

  completionCopy = v9;
LABEL_12:
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HPSSpatialProfileEarPillContainerView;
  [(HPSSpatialProfileEarPillContainerView *)&v4 traitCollectionDidChange:change];
  [(HPSSpatialProfileEarPillContainerView *)self layoutSubviews];
}

- (void)fillLeftPillsWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillLeftPills", buf, 2u);
  }

  v5 = dispatch_group_create();
  for (i = 0; i != 4; ++i)
  {
    dispatch_group_enter(v5);
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = i;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillLeftPills filling: %lu", buf, 0xCu);
    }

    v8 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:i];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__HPSSpatialProfileEarPillContainerView_fillLeftPillsWithCompletion___block_invoke;
    v15[3] = &unk_2796AD618;
    v9 = v5;
    v16 = v9;
    [v8 setState:3 animated:1 animationDelay:v15 completion:0 failure:0.0];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HPSSpatialProfileEarPillContainerView_fillLeftPillsWithCompletion___block_invoke_2;
  block[3] = &unk_2796AD5A0;
  v14 = completionCopy;
  v10 = completionCopy;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HPSSpatialProfileEarPillContainerView_fillLeftPillsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fillCentralPillsWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillCentralPills", buf, 2u);
  }

  v6 = dispatch_group_create();
  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = 5;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillCentralPills filling: %lu", buf, 0xCu);
  }

  dispatch_group_enter(v6);
  v8 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:5];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__HPSSpatialProfileEarPillContainerView_fillCentralPillsWithCompletion___block_invoke;
  v24[3] = &unk_2796AD618;
  v9 = v6;
  v25 = v9;
  [v8 setState:3 animated:1 animationDelay:v24 completion:0 failure:0.0];

  v10 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = 6;
    _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillCentralPills filling: %lu", buf, 0xCu);
  }

  dispatch_group_enter(v9);
  v11 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:6];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__HPSSpatialProfileEarPillContainerView_fillCentralPillsWithCompletion___block_invoke_13;
  v22[3] = &unk_2796AD618;
  v12 = v9;
  v23 = v12;
  [v11 setState:3 animated:1 animationDelay:v22 completion:0 failure:0.0];

  v13 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = 4;
    _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillCentralPills filling: %lu", buf, 0xCu);
  }

  dispatch_group_enter(v12);
  v14 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:4];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__HPSSpatialProfileEarPillContainerView_fillCentralPillsWithCompletion___block_invoke_14;
  v20[3] = &unk_2796AD618;
  v21 = v12;
  v15 = v12;
  [v14 setState:3 animated:1 animationDelay:v20 completion:0 failure:0.0];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__HPSSpatialProfileEarPillContainerView_fillCentralPillsWithCompletion___block_invoke_2;
  v18[3] = &unk_2796AD5A0;
  v19 = completionCopy;
  v16 = completionCopy;
  dispatch_group_notify(v15, MEMORY[0x277D85CD0], v18);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __72__HPSSpatialProfileEarPillContainerView_fillCentralPillsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fillRightPillsWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillRightPills", buf, 2u);
  }

  v5 = dispatch_group_create();
  for (i = 10; i > 6; --i)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = i;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillRightPills filling: %lu", buf, 0xCu);
    }

    dispatch_group_enter(v5);
    v8 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:i];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__HPSSpatialProfileEarPillContainerView_fillRightPillsWithCompletion___block_invoke;
    v15[3] = &unk_2796AD618;
    v9 = v5;
    v16 = v9;
    [v8 setState:3 animated:1 animationDelay:v15 completion:0 failure:0.0];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HPSSpatialProfileEarPillContainerView_fillRightPillsWithCompletion___block_invoke_2;
  block[3] = &unk_2796AD5A0;
  v14 = completionCopy;
  v10 = completionCopy;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __70__HPSSpatialProfileEarPillContainerView_fillRightPillsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
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