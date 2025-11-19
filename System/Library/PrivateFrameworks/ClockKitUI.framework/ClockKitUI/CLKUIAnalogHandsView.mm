@interface CLKUIAnalogHandsView
+ (double)hourHandAngleForDate:(id)a3;
+ (double)minuteHandAngleForDate:(id)a3;
- (BOOL)_canRunTimeAnimation;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CLKUIAnalogHandsViewDelegate)delegate;
- (UIView)minuteHandDot;
- (UIView)secondHandDot;
- (id)createHourHandView;
- (id)createMinuteHandView;
- (id)createSecondHandView;
- (id)initForDevice:(id)a3;
- (void)_enumerateHandViews:(id)a3;
- (void)_enumerateShadowViews:(id)a3;
- (void)_significantTimeChanged;
- (void)_startNewTimeAnimation;
- (void)_stopTimeAnimation;
- (void)applyHourMinuteHandsStrokeColor:(id)a3 fillColor:(id)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutHandViews;
- (void)layoutShadowViews;
- (void)layoutSubviews;
- (void)setFrozen:(BOOL)a3;
- (void)setHourInlayColor:(id)a3;
- (void)setInlayColor:(id)a3;
- (void)setMinuteHandDotDiameter:(double)a3;
- (void)setMinuteInlayColor:(id)a3;
- (void)setSecondHandDisabled:(BOOL)a3;
- (void)setSecondHandDotDiameter:(double)a3;
- (void)setTimeZone:(id)a3;
- (void)setUseDirectionalShadows:(BOOL)a3;
@end

@implementation CLKUIAnalogHandsView

- (id)initForDevice:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = CLKUIAnalogHandsView;
  v6 = [(CLKUIAnalogHandsView *)&v32 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    calendar = v7->_calendar;
    v7->_calendar = v8;

    v7->_useDirectionalShadows = [(CLKUIAnalogHandsView *)v7 useDirectionalShadows];
    v10 = [(CLKUIAnalogHandsView *)v7 createHourHandView];
    hourHandView = v7->_hourHandView;
    v7->_hourHandView = v10;

    v12 = [(CLKUIAnalogHandsView *)v7 createMinuteHandView];
    minuteHandView = v7->_minuteHandView;
    v7->_minuteHandView = v12;

    v14 = [(CLKUIAnalogHandsView *)v7 createSecondHandView];
    secondHandView = v7->_secondHandView;
    v7->_secondHandView = v14;

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __38__CLKUIAnalogHandsView_initForDevice___block_invoke;
    v30[3] = &unk_1E8762D78;
    v16 = v7;
    v31 = v16;
    [(CLKUIAnalogHandsView *)v16 _enumerateHandViews:v30];
    if (v7->_useDirectionalShadows)
    {
      v17 = objc_opt_new();
      directionalShadowContainerView = v16->_directionalShadowContainerView;
      v16->_directionalShadowContainerView = v17;

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __38__CLKUIAnalogHandsView_initForDevice___block_invoke_2;
      v28[3] = &unk_1E8762DA0;
      v19 = v16;
      v29 = v19;
      [(CLKUIAnalogHandsView *)v19 _enumerateShadowViews:v28];
      [(CLKUIAnalogHandsView *)v19 addSubview:v16->_directionalShadowContainerView];
      [(CLKUIAnalogHandsView *)v19 layoutShadowViews];
    }

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v16 selector:sel__significantTimeChanged name:*MEMORY[0x1E69DDB88] object:0];

    [(CLKUIAnalogHandsView *)v16 setUserInteractionEnabled:0];
    v21 = [(CLKUIAnalogHandsView *)v16 layer];
    [v21 setAllowsHitTesting:0];

    v27 = 0u;
    memset(v26, 0, sizeof(v26));
    ___LayoutConstants_block_invoke_5(v5, v26);
    v22 = *v26;
    v16->_secondHandDotDiameter = *(&v27 + 1);
    v16->_minuteHandDotDiameter = v22;
    v23 = [(CLKUIAnalogHandsView *)v16 minuteHandDot];
    v24 = [(CLKUIAnalogHandsView *)v16 secondHandDot];
  }

  return v7;
}

void __38__CLKUIAnalogHandsView_initForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 addSubview:v3];
  [v3 setNeedsLayout];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDB88] object:0];

  v4.receiver = self;
  v4.super_class = CLKUIAnalogHandsView;
  [(CLKUIAnalogHandsView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CLKUIAnalogHandsView;
  [(CLKUIAnalogHandsView *)&v3 layoutSubviews];
  [(CLKUIAnalogHandsView *)self layoutHandViews];
  [(CLKUIAnalogHandsView *)self layoutShadowViews];
}

- (void)layoutHandViews
{
  [(CLKUIAnalogHandsView *)self bounds];
  v4 = v3 * 0.5;
  [(CLKUIAnalogHandsView *)self bounds];
  v6[1] = 3221225472;
  v6[0] = MEMORY[0x1E69E9820];
  v6[2] = __39__CLKUIAnalogHandsView_layoutHandViews__block_invoke;
  v6[3] = &unk_1E8762DC8;
  v6[4] = self;
  *&v6[5] = v4;
  *&v6[6] = v5 * 0.5;
  [(CLKUIAnalogHandsView *)self _enumerateHandViews:v6];
}

void __39__CLKUIAnalogHandsView_layoutHandViews__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 superview];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [v5 setCenter:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (void)layoutShadowViews
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_hourHandView;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(CLKUIAnalogHandsView *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isMemberOfClass:objc_opt_class()])
        {
          v10 = v9;

          v3 = v10;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(CLKUIAnalogHandsView *)self insertSubview:self->_directionalShadowContainerView belowSubview:v3];
  [(CLKUIAnalogHandsView *)self _enumerateHandViews:&__block_literal_global_10];
}

void __41__CLKUIAnalogHandsView_layoutShadowViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 directionalShadowOffset];
  v4 = v3;
  v6 = v5;
  [v2 center];
  v8 = v4 + v7;
  v10 = v6 + v9;
  v11 = [v2 shadowView];

  [v11 setCenter:{v8, v10}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  MEMORY[0x1EEDB5430](self->_device, a2, a3, *&a3.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CLKUIAnalogHandsView;
  [(CLKUIAnalogHandsView *)&v4 didMoveToWindow];
  v3 = [(CLKUIAnalogHandsView *)self window];

  if (v3)
  {
    [(CLKUIAnalogHandsView *)self _startNewTimeAnimation];
  }
}

- (void)_enumerateHandViews:(id)a3
{
  v4 = a3;
  [(CLKUIAnalogHandsView *)self _enumerateHourHandViewsWithBlock:v4];
  [(CLKUIAnalogHandsView *)self _enumerateMinuteHandViewsWithBlock:v4];
  if (!self->_secondHandDisabled)
  {
    [(CLKUIAnalogHandsView *)self _enumerateSecondHandViewsWithBlock:v4];
  }
}

- (void)_enumerateShadowViews:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CLKUIAnalogHandsView__enumerateShadowViews___block_invoke;
  v6[3] = &unk_1E8762E10;
  v7 = v4;
  v5 = v4;
  [(CLKUIAnalogHandsView *)self _enumerateHandViews:v6];
}

void __46__CLKUIAnalogHandsView__enumerateShadowViews___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 shadowView];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 shadowView];
    (*(v4 + 16))(v4, v5);
  }
}

- (id)createHourHandView
{
  v3 = [(CLKUIAnalogHandsView *)self hourHandConfiguration];
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "handViewClass"))];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 setColor:v5];

  [v4 anchorPointFromConfiguration];
  v7 = v6;
  v9 = v8;
  v10 = [v4 layer];
  [v10 setAnchorPoint:{v7, v9}];

  return v4;
}

- (id)createMinuteHandView
{
  v3 = [(CLKUIAnalogHandsView *)self minuteHandConfiguration];
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "handViewClass"))];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 setColor:v5];

  [v4 anchorPointFromConfiguration];
  v7 = v6;
  v9 = v8;
  v10 = [v4 layer];
  [v10 setAnchorPoint:{v7, v9}];

  return v4;
}

- (id)createSecondHandView
{
  v3 = [(CLKUIAnalogHandsView *)self secondHandConfiguration];
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "handViewClass"))];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 setColor:v5];

  [v4 anchorPointFromConfiguration];
  v7 = v6;
  v9 = v8;
  v10 = [v4 layer];
  [v10 setAnchorPoint:{v7, v9}];

  return v4;
}

- (void)_startNewTimeAnimation
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(CLKUIAnalogHandsView *)self _canRunTimeAnimation])
  {
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v3 = [(CLKUIAnalogHandsView *)self displayTime];
    CLKHourMinuteSecondAnglesForTime();

    v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation"];
    LODWORD(v5) = 2139095040;
    [v4 setRepeatCount:v5];
    v6 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    [v4 setTimingFunction:v6];

    [(CLKUIAnalogHandsView *)self _timeAnimationFramesPerSecondForDevice:self->_device];
    v8 = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__CLKUIAnalogHandsView__startNewTimeAnimation__block_invoke;
    aBlock[3] = &unk_1E8762E38;
    v33 = 0x401921FB54442D18;
    v9 = 1.0 / v7;
    v10 = v4;
    v34 = v9;
    v31 = v10;
    v32 = self;
    v11 = _Block_copy(aBlock);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __46__CLKUIAnalogHandsView__startNewTimeAnimation__block_invoke_2;
    v27[3] = &unk_1E8762E60;
    v12 = v11;
    v28 = v12;
    v29 = v37;
    [(CLKUIAnalogHandsView *)self _enumerateHourHandViewsWithBlock:v27];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __46__CLKUIAnalogHandsView__startNewTimeAnimation__block_invoke_3;
    v24[3] = &unk_1E8762E60;
    v13 = v12;
    v25 = v13;
    v26 = v36;
    [(CLKUIAnalogHandsView *)self _enumerateMinuteHandViewsWithBlock:v24];
    if (!self->_secondHandDisabled)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __46__CLKUIAnalogHandsView__startNewTimeAnimation__block_invoke_4;
      v21[3] = &unk_1E8762E60;
      v22 = v13;
      v23 = v35;
      [(CLKUIAnalogHandsView *)self _enumerateSecondHandViewsWithBlock:v21];
    }

    v14 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__startNewTimeAnimation selector:0 userInfo:0 repeats:10.0];
    animationUpdateTimer = self->_animationUpdateTimer;
    self->_animationUpdateTimer = v14;

    kdebug_trace();
    v16 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [(NSCalendar *)self->_calendar timeZone];
      v20 = [v19 name];
      *buf = 138412802;
      v39 = v18;
      v40 = 2048;
      v41 = v8;
      v42 = 2112;
      v43 = v20;
      _os_log_impl(&dword_1E49C8000, v16, OS_LOG_TYPE_DEFAULT, "%@ started new time animation at %.0fFPS (for the second hand) for timezone: %@", buf, 0x20u);
    }
  }
}

void __46__CLKUIAnalogHandsView__startNewTimeAnimation__block_invoke(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v7 = a4;
  if (a4 < 0.0)
  {
    v7 = *(a1 + 48) + a4;
  }

  v9 = a2;
  [v9 setZRotation:v7];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  [v10 setByValue:v11];

  [*(a1 + 32) setDuration:a5];
  [*(a1 + 32) setFrameInterval:*(a1 + 56) * a5 / 60.0];
  [*(a1 + 32) setDiscretizesTime:a3];
  v12 = [v9 layer];
  [v12 addAnimation:*(a1 + 32) forKey:@"time"];

  v13 = [v9 shadowView];
  v14 = [v13 layer];
  [v14 addAnimation:*(a1 + 32) forKey:@"time"];

  v16 = [*(a1 + 40) delegate];
  v15 = [*(a1 + 32) copy];
  [v16 nominalAnimationStart:v15 forHandView:v9];
}

- (void)_stopTimeAnimation
{
  if (self->_animationUpdateTimer)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __42__CLKUIAnalogHandsView__stopTimeAnimation__block_invoke;
    v4[3] = &unk_1E8762D78;
    v4[4] = self;
    [(CLKUIAnalogHandsView *)self _enumerateHandViews:v4];
    [(CLKUIAnalogHandsView *)self _enumerateShadowViews:&__block_literal_global_27];
    [(NSTimer *)self->_animationUpdateTimer invalidate];
    animationUpdateTimer = self->_animationUpdateTimer;
    self->_animationUpdateTimer = 0;

    kdebug_trace();
  }
}

void __42__CLKUIAnalogHandsView__stopTimeAnimation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 layer];
  v5 = [v4 animationForKey:@"time"];

  if (v5)
  {
    v6 = [v4 presentationLayer];
    v7 = v6;
    if (v6)
    {
      [v6 transform];
      [v4 setTransform:&v9];
    }

    [v4 removeAnimationForKey:@"time"];
  }

  v8 = [*(a1 + 32) delegate];
  [v8 nominalAnimationEndForHandView:v3];
}

void __42__CLKUIAnalogHandsView__stopTimeAnimation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 layer];
  v2 = [v3 animationForKey:@"time"];

  if (v2)
  {
    [v3 removeAnimationForKey:@"time"];
  }
}

- (BOOL)_canRunTimeAnimation
{
  if (self->_frozen)
  {
    return 0;
  }

  v3 = [(CLKUIAnalogHandsView *)self window];
  v2 = v3 != 0;

  return v2;
}

- (void)setFrozen:(BOOL)a3
{
  if (self->_frozen != a3)
  {
    self->_frozen = a3;
    if (a3)
    {
      [(CLKUIAnalogHandsView *)self _stopTimeAnimation];
    }

    else
    {
      [(CLKUIAnalogHandsView *)self _startNewTimeAnimation];
    }
  }
}

- (void)setSecondHandDisabled:(BOOL)a3
{
  if (self->_secondHandDisabled != a3)
  {
    self->_secondHandDisabled = a3;
    [(CLKUIHandView *)self->_secondHandView setHidden:?];
  }
}

- (void)applyHourMinuteHandsStrokeColor:(id)a3 fillColor:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(CLKUIAnalogHandsView *)self minuteHandView];
  [v7 setColor:v6];

  v8 = [(CLKUIAnalogHandsView *)self hourHandView];
  [v8 setColor:v6];

  [(CLKUIAnalogHandsView *)self setInlayColor:v9];
}

- (void)setInlayColor:(id)a3
{
  objc_storeStrong(&self->_inlayColor, a3);
  v5 = a3;
  [(CLKUIHandView *)self->_hourHandView setInlayColor:v5];
  [(CLKUIHandView *)self->_minuteHandView setInlayColor:v5];
  v6 = [(CLKUIAnalogHandsView *)self minuteHandView];
  [v6 setHandDotColor:v5];
}

- (void)setHourInlayColor:(id)a3
{
  objc_storeStrong(&self->_hourInlayColor, a3);
  v5 = a3;
  [(CLKUIHandView *)self->_hourHandView setInlayColor:v5];
}

- (void)setMinuteInlayColor:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_minuteInlayColor, a3);
  inlayColor = self->_inlayColor;
  self->_inlayColor = v5;
  v7 = v5;

  [(CLKUIHandView *)self->_minuteHandView setInlayColor:v7];
  v8 = [(CLKUIAnalogHandsView *)self minuteHandView];
  [v8 setHandDotColor:v7];
}

- (void)setUseDirectionalShadows:(BOOL)a3
{
  if (self->_useDirectionalShadows != a3)
  {
    self->_useDirectionalShadows = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__CLKUIAnalogHandsView_setUseDirectionalShadows___block_invoke;
    v5[3] = &__block_descriptor_33_e23_v16__0__CLKUIHandView_8l;
    v6 = a3;
    [(CLKUIAnalogHandsView *)self _enumerateHandViews:v5];
    if (self->_useDirectionalShadows)
    {
      [(CLKUIAnalogHandsView *)self _enumerateShadowViews:&__block_literal_global_29];
    }

    else
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __49__CLKUIAnalogHandsView_setUseDirectionalShadows___block_invoke_3;
      v4[3] = &unk_1E8762DA0;
      v4[4] = self;
      [(CLKUIAnalogHandsView *)self _enumerateShadowViews:v4];
      [(CLKUIAnalogHandsView *)self layoutShadowViews];
    }
  }
}

- (void)setTimeZone:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(NSTimeZone *)self->_timeZone isEqualToTimeZone:v5])
  {
    v6 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [(NSCalendar *)self->_calendar timeZone];
      v10 = [v9 name];
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1E49C8000, v6, OS_LOG_TYPE_DEFAULT, "%@ received manual timezone update with current timezone: %@", &v16, 0x16u);
    }

    objc_storeStrong(&self->_timeZone, a3);
    [(NSCalendar *)self->_calendar setTimeZone:v5];
    v11 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [(NSCalendar *)self->_calendar timeZone];
      v15 = [v14 name];
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_1E49C8000, v11, OS_LOG_TYPE_DEFAULT, "%@ did set new timezone after manual timezone update to: %@", &v16, 0x16u);
    }
  }
}

- (UIView)secondHandDot
{
  v3 = [(CLKUIHandView *)self->_secondHandView handDotView];

  if (!v3)
  {
    secondHandView = self->_secondHandView;
    [(CLKUIAnalogHandsView *)self secondHandDotDiameter];
    [(CLKUIHandView *)secondHandView setupHandDotViewWithDiameter:?];
  }

  v5 = self->_secondHandView;

  return [(CLKUIHandView *)v5 handDotView];
}

- (void)setSecondHandDotDiameter:(double)a3
{
  if (self->_secondHandDotDiameter != a3)
  {
    self->_secondHandDotDiameter = a3;
    secondHandView = self->_secondHandView;
    [(CLKUIAnalogHandsView *)self secondHandDotDiameter];

    [(CLKUIHandView *)secondHandView setupHandDotViewWithDiameter:?];
  }
}

- (UIView)minuteHandDot
{
  v3 = [(CLKUIHandView *)self->_minuteHandView handDotView];

  if (!v3)
  {
    minuteHandView = self->_minuteHandView;
    [(CLKUIAnalogHandsView *)self minuteHandDotDiameter];
    [(CLKUIHandView *)minuteHandView setupHandDotViewWithDiameter:?];
    [(CLKUIHandView *)self->_minuteHandView setHandDotColor:self->_inlayColor];
  }

  v5 = self->_minuteHandView;

  return [(CLKUIHandView *)v5 handDotView];
}

- (void)setMinuteHandDotDiameter:(double)a3
{
  if (self->_minuteHandDotDiameter != a3)
  {
    self->_minuteHandDotDiameter = a3;
    minuteHandView = self->_minuteHandView;
    [(CLKUIAnalogHandsView *)self minuteHandDotDiameter];

    [(CLKUIHandView *)minuteHandView setupHandDotViewWithDiameter:?];
  }
}

- (void)_significantTimeChanged
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFE8] systemTimeZone];
  v4 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(NSCalendar *)self->_calendar timeZone];
    v8 = [v7 name];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1E49C8000, v4, OS_LOG_TYPE_DEFAULT, "%@ received significant time change with current timezone: %@", &v14, 0x16u);
  }

  if (!self->_timeZone)
  {
    [(NSCalendar *)self->_calendar setTimeZone:v3];
  }

  v9 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [(NSCalendar *)self->_calendar timeZone];
    v13 = [v12 name];
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_1E49C8000, v9, OS_LOG_TYPE_DEFAULT, "%@ did set new timezone after significant time change to: %@", &v14, 0x16u);
  }
}

+ (double)hourHandAngleForDate:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:224 fromDate:v4];

  [v6 hour];
  [v6 minute];
  CLKNormalizeAngle();
  v8 = v7;

  return v8;
}

+ (double)minuteHandAngleForDate:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:224 fromDate:v4];

  v7 = [v6 minute];
  v8 = ([v6 second] / 60.0 + v7) * 6.0;

  return v8;
}

- (CLKUIAnalogHandsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end