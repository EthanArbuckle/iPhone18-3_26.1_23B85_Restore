@interface LAUISecureFaceIDView
+ (id)_transitionDictForFullFlow;
+ (id)_transitionDictForProtectedAppsFlow;
- (BOOL)_canTransitionViewToState:(int64_t)a3;
- (BOOL)_transitionViewToState:(int64_t)a3;
- (LAUISecureFaceIDView)initWithType:(int64_t)a3;
- (NSNumber)remainingMinDisplayTimeInterval;
- (id)_caStateNameForState:(int64_t)a3;
- (id)_descriptionOfState:(int64_t)a3;
- (id)_flipbookFromLAUISecureFaceIDViewType:(int64_t)a3;
- (id)_msSinceDisplayTime;
- (id)_shortNameForState:(int64_t)a3;
- (id)_transitionDict;
- (id)description;
- (int64_t)_nextStateForUnwantedTransitionFrom:(int64_t)a3 to:(int64_t)a4;
- (int64_t)_nextStateOnShortestPathFrom:(int64_t)a3 to:(int64_t)a4;
- (uint64_t)_isFullyVisible;
- (void)_assertVisibility;
- (void)_disableDisplayLink;
- (void)_enableDisplayLink;
- (void)_setupView;
- (void)_tick;
- (void)_tickWithInterval:(double)a3 frequency:;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setState:(int64_t)a3;
@end

@implementation LAUISecureFaceIDView

- (LAUISecureFaceIDView)initWithType:(int64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __37__LAUISecureFaceIDView_initWithType___block_invoke;
  v23 = &__block_descriptor_40_e36__CGRect__CGPoint_dd__CGSize_dd__8__0l;
  v24 = a3;
  v5 = CGSizeForLAUISecureFaceIDViewType(a3);
  v7 = v6;
  v19.receiver = self;
  v19.super_class = LAUISecureFaceIDView;
  v8 = [(LAUISecureFaceIDView *)&v19 initWithFrame:0.0, 0.0, v5, v6];
  v9 = v8;
  if (v8)
  {
    v10 = [(LAUISecureFaceIDView *)v8 _flipbookFromLAUISecureFaceIDViewType:a3];
    secureFlipBookLayer = v9->_secureFlipBookLayer;
    v9->_secureFlipBookLayer = v10;

    v12 = LACLogFaceIDUI();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(CASecureFlipBookLayer *)v9->_secureFlipBookLayer states];
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_2560E6000, v12, OS_LOG_TYPE_DEFAULT, "States: %@", buf, 0xCu);
    }

    v14 = v9->_secureFlipBookLayer;
    if (!v14)
    {
      v17 = 0;
      goto LABEL_10;
    }

    [(CASecureFlipBookLayer *)v14 setFrame:0.0, 0.0, v5, v7];
    v9->_type = a3;
    v9->_nextStateOnPathToDesiredState = 0x7FFFFFFFFFFFFFFFLL;
    v9->_desiredState = 0x7FFFFFFFFFFFFFFFLL;
    v9->_state = 0x7FFFFFFFFFFFFFFFLL;
    [(LAUISecureFaceIDView *)v9 _setupView];
  }

  v15 = LACLogFaceIDUI();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(CASecureFlipBookLayer *)v9->_secureFlipBookLayer currentState];
    *buf = 138412546;
    v26 = v9;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&dword_2560E6000, v15, OS_LOG_TYPE_DEFAULT, "Created %@, currentState: %@", buf, 0x16u);
  }

  v17 = v9;
LABEL_10:

  return v17;
}

- (void)dealloc
{
  [(LAUISecureFaceIDView *)self _disableDisplayLink];
  v3.receiver = self;
  v3.super_class = LAUISecureFaceIDView;
  [(LAUISecureFaceIDView *)&v3 dealloc];
}

- (void)didMoveToWindow
{
  v3 = [(LAUISecureFaceIDView *)self window];

  timeAppeared = self->_timeAppeared;
  if (v3)
  {
    if (!timeAppeared)
    {
      v5 = [MEMORY[0x277CBEAA8] now];
      v6 = self->_timeAppeared;
      self->_timeAppeared = v5;

      self->_shouldAssertVisibility = 1;
    }

    [(LAUISecureFaceIDView *)self _enableDisplayLink];
  }

  else
  {
    self->_timeAppeared = 0;

    [(LAUISecureFaceIDView *)self _disableDisplayLink];
  }
}

- (void)didMoveToSuperview
{
  v3 = [(LAUISecureFaceIDView *)self superview];

  if (v3)
  {
    v4 = [(LAUISecureFaceIDView *)self window];

    if (v4)
    {

      [(LAUISecureFaceIDView *)self _enableDisplayLink];
    }
  }

  else
  {

    [(LAUISecureFaceIDView *)self _disableDisplayLink];
  }
}

- (id)description
{
  v3 = [(LAUISecureFaceIDView *)self _descriptionOfState:self->_state];
  if (self->_state != self->_desiredState)
  {
    v4 = [(LAUISecureFaceIDView *)self _descriptionOfState:?];
    nextStateOnPathToDesiredState = self->_nextStateOnPathToDesiredState;
    if (self->_desiredState != nextStateOnPathToDesiredState && nextStateOnPathToDesiredState != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [(LAUISecureFaceIDView *)self _descriptionOfState:?];
      v9 = [v7 stringWithFormat:@"%@ (via %@)", v4, v8];

      v4 = v9;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ -> %@", v3, v4];

    v3 = v10;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = [(CASecureFlipBookLayer *)self->_secureFlipBookLayer currentState];
  v14 = [v11 stringWithFormat:@"<%@ %p flipBookState: '%@', state: '%@'>", v12, self, v13, v3];;

  return v14;
}

- (id)_descriptionOfState:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(LAUISecureFaceIDView *)self _shortNameForState:?];
    v3 = [v5 stringWithFormat:@"%@(%d)", v6, a3];
  }

  return v3;
}

- (void)_enableDisplayLink
{
  if (!self->_displayLink)
  {
    v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__tick];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    v5 = self->_displayLink;
    v6 = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)_disableDisplayLink
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)_tick
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    v5 = displayLink;
    [(CADisplayLink *)v5 targetTimestamp];
    v7 = v6;
    [(CADisplayLink *)v5 timestamp];
    v9 = v7 - v8;
    [(CADisplayLink *)v5 duration];
    v11 = v10;

    [(LAUISecureFaceIDView *)self _tickWithInterval:v9 frequency:?];
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_desiredState = a3;
    [(LAUISecureFaceIDView *)self _transitionViewToState:?];
  }
}

- (BOOL)_canTransitionViewToState:(int64_t)a3
{
  secureFlipBookLayer = self->_secureFlipBookLayer;
  v4 = [(LAUISecureFaceIDView *)self _caStateNameForState:a3];
  LOBYTE(secureFlipBookLayer) = [(CASecureFlipBookLayer *)secureFlipBookLayer canTransitionToState:v4];

  return secureFlipBookLayer;
}

- (BOOL)_transitionViewToState:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(CASecureFlipBookLayer *)self->_secureFlipBookLayer currentState];
  v6 = [(LAUISecureFaceIDView *)self _caStateNameForState:a3];
  v7 = [(CASecureFlipBookLayer *)self->_secureFlipBookLayer canTransitionToState:v6];
  state = self->_state;
  desiredState = self->_desiredState;
  if (v7)
  {
    v10 = [(LAUISecureFaceIDView *)self _nextStateForUnwantedTransitionFrom:state to:desiredState];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v6;
      v12 = a3;
    }

    else
    {
      v12 = v10;
      v11 = [(LAUISecureFaceIDView *)self _caStateNameForState:v10];
      v15 = LACLogFaceIDUI();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138544130;
        v19 = self;
        v20 = 2112;
        v21 = v5;
        v22 = 2112;
        v23 = v6;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_2560E6000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ does not want to transition from '%@' to '%@' directly, will transition to '%@' first", &v18, 0x2Au);
      }

      self->_nextStateOnPathToDesiredState = v12;
    }

    if (([(CASecureFlipBookLayer *)self->_secureFlipBookLayer transitionToState:v11]& 1) == 0)
    {
      v16 = LACLogFaceIDUI();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = 138543874;
        v19 = self;
        v20 = 2112;
        v21 = v5;
        v22 = 2112;
        v23 = v11;
        _os_log_error_impl(&dword_2560E6000, v16, OS_LOG_TYPE_ERROR, "%{public}@ couldn't transition from '%@' to '%@'", &v18, 0x20u);
      }
    }

    self->_state = v12;
    v13 = LACLogFaceIDUI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543874;
      v19 = self;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_2560E6000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully transitioned from %@ to %@", &v18, 0x20u);
    }

    v6 = v11;
  }

  else
  {
    self->_nextStateOnPathToDesiredState = [(LAUISecureFaceIDView *)self _nextStateOnShortestPathFrom:state to:desiredState];
    v13 = LACLogFaceIDUI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(LAUISecureFaceIDView *)self _caStateNameForState:self->_nextStateOnPathToDesiredState];
      v18 = 138544130;
      v19 = self;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_2560E6000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ can't transition from '%@' to '%@', must transition to '%@' first", &v18, 0x2Au);
    }
  }

  return v7;
}

- (int64_t)_nextStateForUnwantedTransitionFrom:(int64_t)a3 to:(int64_t)a4
{
  if (a4 == 4 && a3 == 2)
  {
    return 3;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)_nextStateOnShortestPathFrom:(int64_t)a3 to:(int64_t)a4
{
  v4 = a4 == 1 && a3 == 2;
  v5 = 3;
  if (!v4)
  {
    v5 = a4;
  }

  if (a4 == 3 && a3 == 1)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

- (NSNumber)remainingMinDisplayTimeInterval
{
  if (self->_timeAppeared)
  {
    v3 = [MEMORY[0x277D24068] sharedInstance];
    v4 = [v3 valueForFlagSecureUIMinDisplayTime];
    [v4 doubleValue];
    v6 = v5;

    [(NSDate *)self->_timeAppeared timeIntervalSinceNow];
    v8 = fmax(v6, 1.1) + v7;
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_msSinceDisplayTime
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"hh:mm:ss:SSS"];
  [(NSDate *)self->_timeAppeared timeIntervalSinceNow];
  v4 = MEMORY[0x277CCACA8];
  v6 = (v5 * -1000.0);
  v7 = [v3 stringFromDate:self->_timeAppeared];
  v8 = [v4 stringWithFormat:@"%d ms since %@", v6, v7];

  return v8;
}

- (void)_setupView
{
  v12[2] = *MEMORY[0x277D85DE8];
  [(LAUISecureFaceIDView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = CGSizeForLAUISecureFaceIDViewType(self->_type);
  v5 = v4;
  v6 = MEMORY[0x277CCAAD0];
  v7 = [(LAUISecureFaceIDView *)self widthAnchor];
  v8 = [v7 constraintEqualToConstant:v3];
  v12[0] = v8;
  v9 = [(LAUISecureFaceIDView *)self heightAnchor];
  v10 = [v9 constraintEqualToConstant:v5];
  v12[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [v6 activateConstraints:v11];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = LAUISecureFaceIDView;
  [(LAUISecureFaceIDView *)&v7 layoutSubviews];
  v3 = [(LAUISecureFaceIDView *)self layer];
  v4 = [v3 sublayers];
  v5 = [v4 containsObject:self->_secureFlipBookLayer];

  if ((v5 & 1) == 0)
  {
    v6 = [(LAUISecureFaceIDView *)self layer];
    [v6 addSublayer:self->_secureFlipBookLayer];
  }
}

- (id)_flipbookFromLAUISecureFaceIDViewType:(int64_t)a3
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  if (_flipbookFromLAUISecureFaceIDViewType__onceToken != -1)
  {
    [LAUISecureFaceIDView _flipbookFromLAUISecureFaceIDViewType:];
  }

  v4 = CASecureFlipBookLayerBaseNameFromLAUISecureFaceIDViewType(a3);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%dx", v4, _flipbookFromLAUISecureFaceIDViewType__scale];
  v6 = [MEMORY[0x277CD9F88] secureFlipBookWithType:v5];
  if (v6)
  {
    v7 = v6;
    v8 = LACLogFaceIDUI();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 67109378;
    v15[0] = _flipbookFromLAUISecureFaceIDViewType__scale;
    LOWORD(v15[1]) = 2112;
    *(&v15[1] + 2) = v5;
    v9 = "Found flipbook for %dx scale: %@";
    v10 = v8;
    v11 = 18;
LABEL_9:
    _os_log_impl(&dword_2560E6000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    goto LABEL_13;
  }

  v7 = [MEMORY[0x277CD9F88] secureFlipBookWithType:v4];
  v12 = LACLogFaceIDUI();
  v8 = v12;
  if (v7)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    *v15 = v4;
    v9 = "Found flipbook: %@";
    v10 = v8;
    v11 = 12;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [LAUISecureFaceIDView _flipbookFromLAUISecureFaceIDViewType:v8];
  }

  v7 = 0;
LABEL_13:

  return v7;
}

void __62__LAUISecureFaceIDView__flipbookFromLAUISecureFaceIDViewType___block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  _flipbookFromLAUISecureFaceIDViewType__scale = llround(v0);
}

- (id)_transitionDict
{
  IsMicaAssetType = LAUISecureFaceIDViewTypeIsMicaAssetType(self->_type);
  v3 = objc_opt_class();
  if (IsMicaAssetType)
  {
    [v3 _transitionDictForProtectedAppsFlow];
  }

  else
  {
    [v3 _transitionDictForFullFlow];
  }
  v4 = ;

  return v4;
}

+ (id)_transitionDictForFullFlow
{
  if (_transitionDictForFullFlow_onceToken != -1)
  {
    +[LAUISecureFaceIDView _transitionDictForFullFlow];
  }

  v3 = _transitionDictForFullFlow_result;

  return v3;
}

void __50__LAUISecureFaceIDView__transitionDictForFullFlow__block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_28682F8A0;
  v2[1] = &unk_28682F8B8;
  v3[0] = @"Empty State";
  v3[1] = @"Idle State";
  v2[2] = &unk_28682F8D0;
  v2[3] = &unk_28682F8E8;
  v3[2] = @"Acquiring State";
  v3[3] = @"Verifying State";
  v2[4] = &unk_28682F900;
  v2[5] = &unk_28682F918;
  v3[4] = @"Matched State";
  v3[5] = @"Processing State";
  v2[6] = &unk_28682F930;
  v3[6] = @"Finished State";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:7];
  v1 = _transitionDictForFullFlow_result;
  _transitionDictForFullFlow_result = v0;
}

+ (id)_transitionDictForProtectedAppsFlow
{
  if (_transitionDictForProtectedAppsFlow_onceToken != -1)
  {
    +[LAUISecureFaceIDView _transitionDictForProtectedAppsFlow];
  }

  v3 = _transitionDictForProtectedAppsFlow_result;

  return v3;
}

void __59__LAUISecureFaceIDView__transitionDictForProtectedAppsFlow__block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_28682F8A0;
  v2[1] = &unk_28682F8B8;
  v3[0] = @"empty State";
  v3[1] = @"face State";
  v2[2] = &unk_28682F8D0;
  v2[3] = &unk_28682F8E8;
  v3[2] = @"faceid State";
  v3[3] = @"faceid State";
  v2[4] = &unk_28682F900;
  v2[5] = &unk_28682F918;
  v3[4] = @"checkmark State";
  v3[5] = @"checkmark State";
  v2[6] = &unk_28682F930;
  v3[6] = @"checkmark State";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:7];
  v1 = _transitionDictForProtectedAppsFlow_result;
  _transitionDictForProtectedAppsFlow_result = v0;
}

- (id)_caStateNameForState:(int64_t)a3
{
  v4 = [(LAUISecureFaceIDView *)self _transitionDict];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = LACLogFaceIDUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(LAUISecureFaceIDView *)a3 _caStateNameForState:v8];
    }
  }

  return v6;
}

- (id)_shortNameForState:(int64_t)a3
{
  v3 = [(LAUISecureFaceIDView *)self _caStateNameForState:a3];
  v4 = [v3 stringByReplacingOccurrencesOfString:@" State" withString:&stru_28682A650];

  return v4;
}

- (void)_tickWithInterval:(double)a3 frequency:
{
  if (a1)
  {
    v6 = _tickWithInterval_frequency__counter++;
    v7 = v6 % a2;
    if (!(v6 % a2))
    {
      v3 = LACLogFaceIDUI();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_3();
        _os_log_debug_impl(v23, v24, v25, v26, v27, 0x16u);
      }
    }

    if (*(a1 + 456) == 1)
    {
      [(LAUISecureFaceIDView *)a1 _assertVisibility];
    }

    [*(a1 + 464) tick:a3];
    if (*(a1 + 416) != *(a1 + 424))
    {
      if (*(a1 + 432) != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([a1 _canTransitionViewToState:?])
        {
          v8 = LACLogFaceIDUI();
          if (OUTLINED_FUNCTION_4(v8))
          {
            v9 = [OUTLINED_FUNCTION_5() _descriptionOfState:?];
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_1_0();
            _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
          }

          [OUTLINED_FUNCTION_5() _transitionViewToState:?];
          *(a1 + 432) = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (!v7)
        {
          v3 = LACLogFaceIDUI();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_3();
            _os_log_debug_impl(v28, v29, v30, v31, v32, 0x12u);
          }
        }
      }

      if (*(a1 + 424) != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([a1 _canTransitionViewToState:?])
        {
          v15 = LACLogFaceIDUI();
          if (OUTLINED_FUNCTION_4(v15))
          {
            v16 = [OUTLINED_FUNCTION_5() _descriptionOfState:?];
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_1_0();
            _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
          }

          [OUTLINED_FUNCTION_5() _transitionViewToState:?];
        }

        else if (!v7)
        {
          v22 = LACLogFaceIDUI();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_3();
            _os_log_debug_impl(v33, v34, v35, v36, v37, 0x12u);
          }
        }
      }
    }
  }
}

- (void)_assertVisibility
{
  if (!a1)
  {
    return;
  }

  isFully = [(LAUISecureFaceIDView *)a1 _isFullyVisible];
  v4 = *(a1 + 448);
  if ((isFully & 1) == 0)
  {
    if (!v4)
    {
      return;
    }

    v15 = LACLogFaceIDUI();
    if (OUTLINED_FUNCTION_4(v15))
    {
      v16 = [a1 _msSinceDisplayTime];
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_1_0();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    }

    v22 = *(a1 + 448);
    *(a1 + 448) = 0;
    goto LABEL_15;
  }

  if (!v4)
  {
    v23 = LACLogFaceIDUI();
    if (OUTLINED_FUNCTION_4(v23))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_1_0();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    }

    v29 = [MEMORY[0x277CBEAA8] now];
    v22 = *(a1 + 448);
    *(a1 + 448) = v29;
LABEL_15:

    return;
  }

  v5 = [a1 remainingMinDisplayTimeInterval];
  [v5 doubleValue];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v8 = LACLogFaceIDUI();
    if (OUTLINED_FUNCTION_4(v8))
    {
      v9 = [a1 _msSinceDisplayTime];
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_1_0();
      _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    }

    *(a1 + 456) = 0;
  }
}

- (uint64_t)_isFullyVisible
{
  if (result)
  {
    v1 = result;
    while (([v1 isHidden] & 1) == 0)
    {
      [v1 alpha];
      if (v2 < 1.0)
      {
        break;
      }

      v3 = [v1 superview];

      v1 = v3;
      if (!v3)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

- (void)_caStateNameForState:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2560E6000, a2, OS_LOG_TYPE_ERROR, "Invalid LAUISecureFaceIDViewState: %d", v2, 8u);
}

@end