@interface HPSUISpatialProfileEarPillContainerView
- (BOOL)fillPillsAroundAngle:(double)a3 forTutorial:(BOOL)a4;
- (BOOL)unstashPillStatesIfNeededAnimated:(BOOL)a3;
- (CGPoint)enrollViewCenter;
- (HPSUISpatialProfileEarPillContainerView)init;
- (double)percentOfPillsCompleted;
- (id)unfilledDirections;
- (int64_t)_indexForPillAtAngle:(double)a3;
- (unint64_t)_numberOfVisiblePillViews;
- (void)_animateToFinishedCompletion:(id)a3;
- (void)animateToState:(int)a3 completion:(id)a4;
- (void)dealloc;
- (void)fillCentralPillsWithCompletion:(id)a3;
- (void)fillLeftPillsWithCompletion:(id)a3;
- (void)fillRightPillsWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)setAllPillState:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setRadius:(double)a3 center:(CGPoint)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)stashPillStates;
- (void)traitCollectionDidChange:(id)a3;
- (void)unstashPillStatesAnimated:(BOOL)a3;
@end

@implementation HPSUISpatialProfileEarPillContainerView

- (HPSUISpatialProfileEarPillContainerView)init
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = HPSUISpatialProfileEarPillContainerView;
  v2 = [(HPSUISpatialProfileEarPillContainerView *)&v13 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:11];
    pillViews = v2->_pillViews;
    v2->_pillViews = v3;

    v5 = 0;
    *&v6 = 134217984;
    v12 = v6;
    do
    {
      v7 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v12;
        v15 = v5;
        _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Pill: init: %lu", buf, 0xCu);
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

      [v8 setPillInitialHeight:{v10, v12}];
      [v8 setPillCompletedHeight:v9];
      [(NSMutableArray *)v2->_pillViews addObject:v8];
      [(HPSUISpatialProfileEarPillContainerView *)v2 addSubview:v8];

      ++v5;
    }

    while (v5 != 11);
    v2->_clockwise = 0;
    v2->_counterwise = 0;
    v2->_lastAngle = 0;
    [(HPSUISpatialProfileEarPillContainerView *)v2 resetPillsAnimated:0];
  }

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
      [(HPSUISpatialProfileEarPillContainerView *)self bounds];
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

- (void)_animateToFinishedCompletion:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  block = a3;
  v4 = [(NSMutableArray *)self->_pillViews firstObject];
  [v4 ringHeight];
  v6 = v5;

  v7 = objc_alloc_init(MEMORY[0x1E69AD2E8]);
  successAnimation = self->_successAnimation;
  self->_successAnimation = v7;

  v9 = self->_successAnimation;
  v10 = [MEMORY[0x1E69DC888] systemGreenColor];
  [(LAUICheckmarkLayer *)v9 setPrimaryColor:v10 animated:0];

  v11 = [(HPSUISpatialProfileEarPillContainerView *)self layer];
  [v11 addSublayer:self->_successAnimation];

  v12 = self->_successAnimation;
  v13 = [(HPSUISpatialProfileEarPillContainerView *)self layer];
  v14 = 34.7999992 - v6;
  [v13 contentsScale];
  [(LAUICheckmarkLayer *)v12 defaultSizeForCircleWithDiameter:v14 + v14 scale:v15];
  v17 = v16;
  v19 = v18;

  [(LAUICheckmarkLayer *)self->_successAnimation setFrame:0.0, 0.0, v17, v19];
  v20 = self->_successAnimation;
  [(HPSUISpatialProfileEarPillContainerView *)self bounds];
  v22 = v21 * 0.5;
  [(HPSUISpatialProfileEarPillContainerView *)self enrollViewCenter];
  [(LAUICheckmarkLayer *)v20 setPosition:v22];
  LODWORD(v12) = UIAccessibilityIsReduceMotionEnabled();
  v23 = dispatch_group_create();
  dispatch_group_enter(v23);
  objc_initWeak(&location, self);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __72__HPSUISpatialProfileEarPillContainerView__animateToFinishedCompletion___block_invoke;
  v41[3] = &unk_1E79701E0;
  objc_copyWeak(&v43, &location);
  v44 = v12;
  v24 = v23;
  v42 = v24;
  [(HPSUISpatialProfileEarPillContainerView *)self setAllPillState:5 animated:v12 ^ 1 completion:v41];
  if (v12)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 0.5;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = self->_pillViews;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v27)
  {
    v28 = *v38;
    v29 = MEMORY[0x1E69E9820];
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v37 + 1) + 8 * i);
        dispatch_group_enter(v24);
        objc_initWeak(&from, v31);
        v33[0] = v29;
        v33[1] = 3221225472;
        v33[2] = __72__HPSUISpatialProfileEarPillContainerView__animateToFinishedCompletion___block_invoke_2;
        v33[3] = &unk_1E7970230;
        objc_copyWeak(v35, &from);
        v35[1] = *&v14;
        v35[2] = *&v25;
        v34 = v24;
        [v31 setRadius:v33 animationDuration:v14 * 0.899999976 completion:v25 * 0.7];

        objc_destroyWeak(v35);
        objc_destroyWeak(&from);
      }

      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v27);
  }

  if (block)
  {
    dispatch_group_notify(v24, MEMORY[0x1E69E96A0], block);
  }

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

void __72__HPSUISpatialProfileEarPillContainerView__animateToFinishedCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[52] setRevealed:1 animated:(*(a1 + 48) & 1) == 0];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __72__HPSUISpatialProfileEarPillContainerView__animateToFinishedCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v4 = *(a1 + 56) * 0.3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__HPSUISpatialProfileEarPillContainerView__animateToFinishedCompletion___block_invoke_3;
  v5[3] = &unk_1E7970208;
  v6 = *(a1 + 32);
  [WeakRetained setRadius:v5 animationDuration:v3 completion:v4];
}

- (double)percentOfPillsCompleted
{
  v3 = [(HPSUISpatialProfileEarPillContainerView *)self _numberOfVisiblePillViews];
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

- (void)setAllPillState:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v25 = *MEMORY[0x1E69E9840];
  block = a5;
  v8 = dispatch_group_create();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_pillViews;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        dispatch_group_enter(v8);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __79__HPSUISpatialProfileEarPillContainerView_setAllPillState_animated_completion___block_invoke;
        v18[3] = &unk_1E7970208;
        v19 = v8;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __79__HPSUISpatialProfileEarPillContainerView_setAllPillState_animated_completion___block_invoke_2;
        v16[3] = &unk_1E7970208;
        v17 = v19;
        [v13 setState:a3 animated:v5 animationDelay:v18 completion:v16 failure:0.0];
      }

      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  if (block)
  {
    dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);
  }
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
        [HPSUISpatialProfileEarPillContainerView stashPillStates];
      }

      v5 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v3];
      stashedPillStates[v3] = [v5 state];

      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->_pillViews count]);
  }

  self->_hasPillStateStash = 1;
}

- (void)unstashPillStatesAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = 0;
  stashedPillStates = self->_stashedPillStates;
  do
  {
    if (!stashedPillStates[v5])
    {
      [HPSUISpatialProfileEarPillContainerView unstashPillStatesAnimated:];
    }

    if (v5 < [(NSMutableArray *)self->_pillViews count])
    {
      v7 = stashedPillStates[v5];
      v8 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:v5];
      [v8 setState:v7 animated:v3 animationDelay:0 completion:0 failure:0.0];
    }

    stashedPillStates[v5++] = 0;
  }

  while (v5 != 11);
  self->_hasPillStateStash = 0;
}

- (BOOL)unstashPillStatesIfNeededAnimated:(BOOL)a3
{
  hasPillStateStash = self->_hasPillStateStash;
  if (hasPillStateStash)
  {
    [(HPSUISpatialProfileEarPillContainerView *)self unstashPillStatesAnimated:a3];
  }

  return hasPillStateStash;
}

- (int64_t)_indexForPillAtAngle:(double)a3
{
  v4 = [(HPSUISpatialProfileEarPillContainerView *)self _numberOfVisiblePillViews];
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

  v8 = [(HPSUISpatialProfileEarPillContainerView *)self _numberOfVisiblePillViews];
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
  v12 = [(HPSUISpatialProfileEarPillContainerView *)self _indexForPillAtAngle:?];
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
  v3.super_class = HPSUISpatialProfileEarPillContainerView;
  [(HPSUISpatialProfileEarPillContainerView *)&v3 dealloc];
}

- (id)unfilledDirections
{
  v2 = objc_opt_new();

  return v2;
}

- (void)setRadius:(double)a3 center:(CGPoint)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  y = a4.y;
  x = a4.x;
  v27 = *MEMORY[0x1E69E9840];
  v11 = a6;
  [(HPSUISpatialProfileEarPillContainerView *)self setEnrollViewCenter:x, y];
  [(HPSUISpatialProfileEarPillContainerView *)self setNeedsLayout];
  if (v6)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_pillViews;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        dispatch_group_enter(v13);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __80__HPSUISpatialProfileEarPillContainerView_setRadius_center_animated_completion___block_invoke;
        v20[3] = &unk_1E7970208;
        v21 = v13;
        [v19 setRadius:v20 animationDuration:a3 completion:v12];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  if (v11)
  {
    dispatch_group_notify(v13, MEMORY[0x1E69E96A0], v11);
  }
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
    [(HPSUISpatialProfileEarPillContainerView *)self setNeedsLayout];
    v8 = self->_state;
    if ((v8 - 6) >= 3 && v8 == 10)
    {
      [(HPSUISpatialProfileEarPillContainerView *)self _animateToFinishedCompletion:v9];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HPSUISpatialProfileEarPillContainerView;
  [(HPSUISpatialProfileEarPillContainerView *)&v4 traitCollectionDidChange:a3];
  [(HPSUISpatialProfileEarPillContainerView *)self layoutSubviews];
}

- (void)fillLeftPillsWithCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillLeftPills", buf, 2u);
  }

  v5 = dispatch_group_create();
  for (i = 0; i != 4; ++i)
  {
    dispatch_group_enter(v5);
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = i;
      _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillLeftPills filling: %lu", buf, 0xCu);
    }

    v8 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:i];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__HPSUISpatialProfileEarPillContainerView_fillLeftPillsWithCompletion___block_invoke;
    v14[3] = &unk_1E7970208;
    v9 = v5;
    v15 = v9;
    [v8 setState:3 animated:1 animationDelay:v14 completion:0 failure:0.0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__HPSUISpatialProfileEarPillContainerView_fillLeftPillsWithCompletion___block_invoke_2;
  block[3] = &unk_1E7970258;
  v13 = v11;
  v10 = v11;
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);
}

uint64_t __71__HPSUISpatialProfileEarPillContainerView_fillLeftPillsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fillCentralPillsWithCompletion:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillCentralPills", buf, 2u);
  }

  v6 = dispatch_group_create();
  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = 5;
    _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillCentralPills filling: %lu", buf, 0xCu);
  }

  dispatch_group_enter(v6);
  v8 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:5];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __74__HPSUISpatialProfileEarPillContainerView_fillCentralPillsWithCompletion___block_invoke;
  v23[3] = &unk_1E7970208;
  v9 = v6;
  v24 = v9;
  [v8 setState:3 animated:1 animationDelay:v23 completion:0 failure:0.0];

  v10 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = 6;
    _os_log_impl(&dword_1AC1C3000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillCentralPills filling: %lu", buf, 0xCu);
  }

  dispatch_group_enter(v9);
  v11 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:6];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__HPSUISpatialProfileEarPillContainerView_fillCentralPillsWithCompletion___block_invoke_13;
  v21[3] = &unk_1E7970208;
  v12 = v9;
  v22 = v12;
  [v11 setState:3 animated:1 animationDelay:v21 completion:0 failure:0.0];

  v13 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = 4;
    _os_log_impl(&dword_1AC1C3000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillCentralPills filling: %lu", buf, 0xCu);
  }

  dispatch_group_enter(v12);
  v14 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:4];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__HPSUISpatialProfileEarPillContainerView_fillCentralPillsWithCompletion___block_invoke_14;
  v19[3] = &unk_1E7970208;
  v20 = v12;
  v15 = v12;
  [v14 setState:3 animated:1 animationDelay:v19 completion:0 failure:0.0];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__HPSUISpatialProfileEarPillContainerView_fillCentralPillsWithCompletion___block_invoke_2;
  v17[3] = &unk_1E7970258;
  v18 = v4;
  v16 = v4;
  dispatch_group_notify(v15, MEMORY[0x1E69E96A0], v17);
}

uint64_t __74__HPSUISpatialProfileEarPillContainerView_fillCentralPillsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fillRightPillsWithCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillRightPills", buf, 2u);
  }

  v5 = dispatch_group_create();
  for (i = 10; i > 6; --i)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = i;
      _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: fillRightPills filling: %lu", buf, 0xCu);
    }

    dispatch_group_enter(v5);
    v8 = [(NSMutableArray *)self->_pillViews objectAtIndexedSubscript:i];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__HPSUISpatialProfileEarPillContainerView_fillRightPillsWithCompletion___block_invoke;
    v14[3] = &unk_1E7970208;
    v9 = v5;
    v15 = v9;
    [v8 setState:3 animated:1 animationDelay:v14 completion:0 failure:0.0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__HPSUISpatialProfileEarPillContainerView_fillRightPillsWithCompletion___block_invoke_2;
  block[3] = &unk_1E7970258;
  v13 = v11;
  v10 = v11;
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);
}

uint64_t __72__HPSUISpatialProfileEarPillContainerView_fillRightPillsWithCompletion___block_invoke_2(uint64_t a1)
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