@interface BKUIPearlPillView
- (BKUIPearlPillView)init;
- (CGPath)pillPath;
- (double)pillMaxLength;
- (double)ringArcLength;
- (void)dealloc;
- (void)displayTick;
- (void)layoutSubviews;
- (void)setRadius:(double)a3 animationDuration:(double)a4 completion:(id)a5;
- (void)setState:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5 failure:(id)a6;
- (void)startAnimationWithDuration:(double)a3 completion:(id)a4;
- (void)tearDownPillView;
@end

@implementation BKUIPearlPillView

- (BKUIPearlPillView)init
{
  v11.receiver = self;
  v11.super_class = BKUIPearlPillView;
  v2 = [(BKUIPearlPillView *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD9F90]);
    v4 = *(v2 + 59);
    *(v2 + 59) = v3;

    v5 = [v2 layer];
    [v5 addSublayer:*(v2 + 59)];

    v6 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v2 selector:sel_displayTick];
    v7 = *(v2 + 58);
    *(v2 + 58) = v6;

    v8 = *(v2 + 58);
    v9 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v8 addToRunLoop:v9 forMode:*MEMORY[0x277CBE738]];

    [(CADisplayLink *)*(v2 + 58) bkui_enableHighFrameRate];
    *(v2 + 51) = 0;
    *(v2 + 76) = 0;
  }

  return v2;
}

- (void)displayTick
{
  v3 = [(BKUIPearlPillView *)self stateAnimationStart];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKUIPearlPillView *)self radiusAnimationStart];
    v4 = v5 != 0;
  }

  v6 = [(BKUIPearlPillView *)self stateAnimationStart];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [(BKUIPearlPillView *)self stateAnimationStart];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    [(BKUIPearlPillView *)self stateAnimationDuration];
    if (v11 <= 0.0 || ([(BKUIPearlPillView *)self stateAnimationDuration], v13 = v10 / v12, v10 / v12 >= 1.0))
    {
      [(BKUIPearlPillView *)self setStateAnimationStart:0];
      v13 = 1.0;
    }

    [(BKUIPearlPillView *)self startArc];
    v15 = v14;
    [(BKUIPearlPillView *)self targetArc];
    v17 = v16;
    [(BKUIPearlPillView *)self startArc];
    [(BKUIPearlPillView *)self setArc:v15 + (v17 - v18) * v13];
    [(BKUIPearlPillView *)self startHeight];
    v20 = v19;
    [(BKUIPearlPillView *)self targetHeight];
    v22 = v21;
    [(BKUIPearlPillView *)self startHeight];
    [(BKUIPearlPillView *)self setHeight:v20 + (v22 - v23) * v13];
    [(BKUIPearlPillView *)self startCornerRadius];
    v25 = v24;
    [(BKUIPearlPillView *)self targetCornerRadius];
    v27 = v26;
    [(BKUIPearlPillView *)self startCornerRadius];
    [(BKUIPearlPillView *)self setCornerRadius:v25 + (v27 - v28) * v13];
    if (v13 == 1.0)
    {
      v29 = [(BKUIPearlPillView *)self stateAnimationCompletion];

      if (v29)
      {
        v30 = [(BKUIPearlPillView *)self stateAnimationCompletion];
        [(BKUIPearlPillView *)self setStateAnimationCompletion:0];
        v30[2](v30, 1);
      }
    }
  }

  v31 = [(BKUIPearlPillView *)self radiusAnimationStart];

  if (v31)
  {
    v32 = [MEMORY[0x277CBEAA8] date];
    v33 = [(BKUIPearlPillView *)self radiusAnimationStart];
    [v32 timeIntervalSinceDate:v33];
    v35 = v34;

    [(BKUIPearlPillView *)self radiusAnimationDuration];
    if (v36 <= 0.0 || ([(BKUIPearlPillView *)self radiusAnimationDuration], v38 = v35 / v37, v35 / v37 >= 1.0))
    {
      [(BKUIPearlPillView *)self setRadiusAnimationStart:0];
      v38 = 1.0;
    }

    [(BKUIPearlPillView *)self startRadius];
    v40 = v39;
    [(BKUIPearlPillView *)self targetRadius];
    v42 = v41;
    [(BKUIPearlPillView *)self startRadius];
    [(BKUIPearlPillView *)self setRadius:v40 + (v42 - v43) * v38];
    if (v38 == 1.0)
    {
      v44 = [(BKUIPearlPillView *)self radiusAnimationCompletion];

      if (v44)
      {
        v45 = [(BKUIPearlPillView *)self radiusAnimationCompletion];
        [(BKUIPearlPillView *)self setRadiusAnimationCompletion:0];
        v45[2](v45);
      }
    }
  }

  if (v4)
  {
    v46 = [(BKUIPearlPillView *)self pillPath];
    v47 = [(BKUIPearlPillView *)self shapeLayer];
    [v47 setPath:v46];
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = BKUIPearlPillView;
  [(BKUIPearlPillView *)&v14 layoutSubviews];
  [(BKUIPearlPillView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BKUIPearlPillView *)self shapeLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(BKUIPearlPillView *)self pillPath];
  v13 = [(BKUIPearlPillView *)self shapeLayer];
  [v13 setPath:v12];
}

- (CGPath)pillPath
{
  [(BKUIPearlPillView *)self arc];
  v4 = v3 * 0.5 + 1.57079633;
  [(BKUIPearlPillView *)self arc];
  v6 = 1.57079633 - v5 * 0.5;
  [(BKUIPearlPillView *)self center];
  v8 = v7;
  v10 = v9;
  [(BKUIPearlPillView *)self height];
  v12 = v11;
  [(BKUIPearlPillView *)self cornerRadius];
  *&v13 = v12 + v13 * -2.0;
  v14 = fmaxf(*&v13, 0.0);
  v15 = objc_opt_new();
  [(BKUIPearlPillView *)self arc];
  v17 = v16;
  [(BKUIPearlPillView *)self radius];
  if (v17 <= 0.0)
  {
    [v15 moveToPoint:{v8, v10 + v18}];
  }

  else
  {
    [v15 addArcWithCenter:0 radius:v8 startAngle:v10 endAngle:v18 clockwise:{v4, v6}];
  }

  [(BKUIPearlPillView *)self cornerRadius];
  [v15 bkui_bezierPathAddRoundedCorner:2 withRadius:? followingAngle:?];
  [v15 currentPoint];
  v20 = v19;
  v21 = __sincos_stret(v6);
  sinval = v21.__sinval;
  cosval = v21.__cosval;
  [v15 currentPoint];
  [v15 addLineToPoint:{v20 + v14 * v21.__cosval, v24 + v14 * v21.__sinval}];
  [(BKUIPearlPillView *)self cornerRadius];
  [v15 bkui_bezierPathAddRoundedCorner:8 withRadius:? followingAngle:?];
  [(BKUIPearlPillView *)self arc];
  if (v25 > 0.0)
  {
    [(BKUIPearlPillView *)self radius];
    v27 = v26;
    [(BKUIPearlPillView *)self height];
    [v15 addArcWithCenter:1 radius:v8 startAngle:v10 endAngle:v27 + v28 clockwise:{v6, v4}];
    v29 = __sincos_stret(v4);
    sinval = v29.__sinval;
    cosval = v29.__cosval;
  }

  [(BKUIPearlPillView *)self cornerRadius];
  [v15 bkui_bezierPathAddRoundedCorner:4 withRadius:? followingAngle:?];
  [v15 currentPoint];
  v31 = v30 - v14 * cosval;
  [v15 currentPoint];
  [v15 addLineToPoint:{v31, v32 - v14 * sinval}];
  [(BKUIPearlPillView *)self cornerRadius];
  [v15 bkui_bezierPathAddRoundedCorner:1 withRadius:? followingAngle:?];
  [v15 closePath];
  v33 = [v15 CGPath];

  return v33;
}

- (void)setState:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5 failure:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a6;
  self->_state = a3;
  [(BKUIPearlPillView *)self height];
  v13 = v12;
  [(BKUIPearlPillView *)self arc];
  v15 = v14;
  [(BKUIPearlPillView *)self cornerRadius];
  v17 = v16;
  if (a3 == 5 || a3 == 3)
  {
    v18 = [MEMORY[0x277D75348] systemGreenColor];
  }

  else
  {
    v18 = [MEMORY[0x277D75348] lightGrayColor];
  }

  v19 = v18;
  v20 = [v18 CGColor];
  v21 = [(BKUIPearlPillView *)self shapeLayer];
  [v21 setFillColor:v20];

  if (v7)
  {
    v22 = 0.3;
  }

  else
  {
    v22 = 0.0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__BKUIPearlPillView_setState_animated_completion_failure___block_invoke;
  aBlock[3] = &unk_278D09D08;
  v23 = v10;
  v48 = v23;
  v24 = v11;
  v49 = v24;
  v25 = _Block_copy(aBlock);
  if (a3 > 3)
  {
    if (a3 - 4 < 2)
    {
      [(BKUIPearlPillView *)self ringHeight];
      v13 = v27;
      [(BKUIPearlPillView *)self ringArcLength];
      v15 = v28;
      v17 = 0;
    }
  }

  else
  {
    switch(a3)
    {
      case 1uLL:
        goto LABEL_12;
      case 2uLL:
        [(BKUIPearlPillView *)self pillInitialHeight];
        goto LABEL_16;
      case 3uLL:
LABEL_12:
        [(BKUIPearlPillView *)self pillCompletedHeight];
LABEL_16:
        v13 = v26;
        [(BKUIPearlPillView *)self pillCornerRadius];
        v17 = v29;
        v15 = 0;
        break;
    }
  }

  [(BKUIPearlPillView *)self setTargetHeight:*&v13];
  [(BKUIPearlPillView *)self setTargetArc:*&v15];
  [(BKUIPearlPillView *)self setTargetCornerRadius:*&v17];
  [(BKUIPearlPillView *)self targetHeight];
  v31 = v30;
  [(BKUIPearlPillView *)self height];
  if (v31 == v32 || ([(BKUIPearlPillView *)self targetArc], v34 = v33, [(BKUIPearlPillView *)self arc], v34 == v35) || !v7)
  {
    v40 = _Block_copy(v25);
  }

  else
  {
    [(BKUIPearlPillView *)self targetHeight];
    v37 = v36;
    [(BKUIPearlPillView *)self height];
    v39 = v37 > v38;
    v22 = v22 * 0.5;
    if (v37 <= v38)
    {
      [(BKUIPearlPillView *)self arc];
      [(BKUIPearlPillView *)self setTargetArc:?];
      [(BKUIPearlPillView *)self cornerRadius];
      [(BKUIPearlPillView *)self setTargetCornerRadius:?];
    }

    else
    {
      [(BKUIPearlPillView *)self height];
      [(BKUIPearlPillView *)self setTargetHeight:?];
    }

    objc_initWeak(&location, self);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __58__BKUIPearlPillView_setState_animated_completion_failure___block_invoke_2;
    v41[3] = &unk_278D09D58;
    objc_copyWeak(v44, &location);
    v42 = v24;
    v45 = v39;
    v44[1] = v13;
    v44[2] = v15;
    v44[3] = v17;
    v44[4] = *&v22;
    v43 = v25;
    v40 = _Block_copy(v41);

    objc_destroyWeak(v44);
    objc_destroyWeak(&location);
  }

  [(BKUIPearlPillView *)self startAnimationWithDuration:v40 completion:v22];
}

uint64_t __58__BKUIPearlPillView_setState_animated_completion_failure___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __58__BKUIPearlPillView_setState_animated_completion_failure___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained && a2 && ([WeakRetained stateAnimationStart], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    if (*(a1 + 88) == 1)
    {
      [v5 setTargetHeight:*(a1 + 56)];
    }

    else
    {
      [v5 setTargetArc:*(a1 + 64)];
      [v5 setTargetCornerRadius:*(a1 + 72)];
    }

    v8 = *(a1 + 80);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__BKUIPearlPillView_setState_animated_completion_failure___block_invoke_3;
    v9[3] = &unk_278D09D30;
    v10 = *(a1 + 40);
    [v5 startAnimationWithDuration:v9 completion:v8];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

uint64_t __73__BKUIPearlPillView_setState_animated_animationDelay_completion_failure___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStateDelayTimer:0];
  if ([*(a1 + 32) state] == *(a1 + 56))
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 72);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 setState:v2 animated:v3 completion:v5 failure:v6];
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      v8 = *(result + 16);

      return v8();
    }
  }

  return result;
}

- (void)setRadius:(double)a3 animationDuration:(double)a4 completion:(id)a5
{
  v10 = a5;
  [(BKUIPearlPillView *)self radius];
  [(BKUIPearlPillView *)self setStartRadius:?];
  [(BKUIPearlPillView *)self setTargetRadius:a3];
  if (a4 == 0.0)
  {
    [(BKUIPearlPillView *)self setRadiusAnimationDuration:0.0];
    v8 = [MEMORY[0x277CBEAA8] date];
    [(BKUIPearlPillView *)self setRadiusAnimationStart:v8];

    [(BKUIPearlPillView *)self displayTick];
    if (v10)
    {
      v10[2]();
    }
  }

  else
  {
    [(BKUIPearlPillView *)self setRadiusAnimationCompletion:v10];
    [(BKUIPearlPillView *)self setRadiusAnimationDuration:a4];
    v9 = [MEMORY[0x277CBEAA8] date];
    [(BKUIPearlPillView *)self setRadiusAnimationStart:v9];
  }
}

- (void)startAnimationWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(BKUIPearlPillView *)self stateAnimationCompletion];

  if (v7)
  {
    v8 = [(BKUIPearlPillView *)self stateAnimationCompletion];
    v8[2](v8, 0);

    [(BKUIPearlPillView *)self setStateAnimationCompletion:0];
  }

  [(BKUIPearlPillView *)self height];
  [(BKUIPearlPillView *)self setStartHeight:?];
  [(BKUIPearlPillView *)self arc];
  [(BKUIPearlPillView *)self setStartArc:?];
  [(BKUIPearlPillView *)self cornerRadius];
  [(BKUIPearlPillView *)self setStartCornerRadius:?];
  [(BKUIPearlPillView *)self setStateAnimationDuration:a3];
  [(BKUIPearlPillView *)self setStateAnimationCompletion:v6];

  v9 = [MEMORY[0x277CBEAA8] date];
  [(BKUIPearlPillView *)self setStateAnimationStart:v9];
}

- (double)ringArcLength
{
  [(BKUIPearlPillView *)self numberOfPills];
  v3 = 6.28318531 / v2;
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v3 + 0.5 / v5;

  return v6;
}

- (double)pillMaxLength
{
  v2 = objc_opt_class();

  [v2 pillMaxLength];
  return result;
}

- (void)tearDownPillView
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BKUIPearlPillView;
  [(BKUIPearlPillView *)&v2 dealloc];
}

@end