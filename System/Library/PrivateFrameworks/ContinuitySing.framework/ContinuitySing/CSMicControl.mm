@interface CSMicControl
- (BOOL)_isRespondingToGestures;
- (CGPoint)_bottomMicCenter;
- (CGPoint)_topMicCenter;
- (CGSize)intrinsicContentSize;
- (CSMicControl)initWithFrame:(CGRect)frame;
- (CSMicControlDelegate)delegate;
- (void)_handleDidTap:(id)tap;
- (void)_handlePanGesture:(id)gesture;
- (void)_setupGestureRecognizers;
- (void)_setupViews;
- (void)_updateMicViewForCurrentState;
- (void)layoutSubviews;
- (void)setButtonSlideProgress:(double)progress;
- (void)setMicControlState:(unint64_t)state animated:(BOOL)animated;
@end

@implementation CSMicControl

- (CSMicControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CSMicControl;
  v3 = [(CSMicControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_micState = 0;
    v3->_previousState = 0;
    v3->_nextInitialVelocityForAnimation = 0.0;
    [(CSMicControl *)v3 _setupViews];
    [(CSMicControl *)v4 _setupGestureRecognizers];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  [(UIImageView *)self->_trackView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setupViews
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v69 = [MEMORY[0x277D755B0] imageNamed:@"sing_mic_toggle_track" inBundle:? withConfiguration:?];
  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v69];
  trackView = self->_trackView;
  self->_trackView = v4;

  [(CSMicControl *)self addSubview:self->_trackView];
  [(UIImageView *)self->_trackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 124.0, 165.0}];
  micView = self->_micView;
  self->_micView = v6;

  [(UIImageView *)self->_trackView addSubview:self->_micView];
  v68 = v3;
  v67 = [MEMORY[0x277D755B0] imageNamed:@"sing_mic_toggle_knob_off" inBundle:v3 compatibleWithTraitCollection:0];
  v66 = [MEMORY[0x277D755B0] imageNamed:@"sing_mic_toggle_knob_on" inBundle:v3 compatibleWithTraitCollection:0];
  v8 = objc_alloc(MEMORY[0x277D755E8]);
  [(UIView *)self->_micView frame];
  v9 = [v8 initWithFrame:?];
  micOffBackgroundView = self->_micOffBackgroundView;
  self->_micOffBackgroundView = v9;

  v11 = objc_alloc(MEMORY[0x277D755E8]);
  [(UIView *)self->_micView frame];
  v12 = [v11 initWithFrame:?];
  micOnBackgroundView = self->_micOnBackgroundView;
  self->_micOnBackgroundView = v12;

  [(UIImageView *)self->_micOffBackgroundView setImage:v67];
  [(UIImageView *)self->_micOnBackgroundView setImage:v66];
  [(UIView *)self->_micView addSubview:self->_micOffBackgroundView];
  [(UIView *)self->_micView addSubview:self->_micOnBackgroundView];
  v14 = objc_alloc_init(CSMicControlSymbolView);
  micSymbolView = self->_micSymbolView;
  self->_micSymbolView = v14;

  [(UIView *)self->_micView addSubview:self->_micSymbolView];
  [(CSMicControlSymbolView *)self->_micSymbolView setTranslatesAutoresizingMaskIntoConstraints:0];
  v47 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIImageView *)self->_micOnBackgroundView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_micView leadingAnchor];
  v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v70[0] = v63;
  trailingAnchor = [(UIImageView *)self->_micOnBackgroundView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_micView trailingAnchor];
  v60 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v70[1] = v60;
  topAnchor = [(UIImageView *)self->_micOnBackgroundView topAnchor];
  topAnchor2 = [(UIView *)self->_micView topAnchor];
  v57 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v70[2] = v57;
  bottomAnchor = [(UIImageView *)self->_micOnBackgroundView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_micView bottomAnchor];
  v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v70[3] = v54;
  leadingAnchor3 = [(UIImageView *)self->_micOffBackgroundView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_micView leadingAnchor];
  v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v70[4] = v51;
  trailingAnchor3 = [(UIImageView *)self->_micOffBackgroundView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_micView trailingAnchor];
  v48 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v70[5] = v48;
  topAnchor3 = [(UIImageView *)self->_micOffBackgroundView topAnchor];
  topAnchor4 = [(UIView *)self->_micView topAnchor];
  v44 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v70[6] = v44;
  bottomAnchor3 = [(UIImageView *)self->_micOffBackgroundView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_micView bottomAnchor];
  v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v70[7] = v41;
  centerXAnchor = [(CSMicControlSymbolView *)self->_micSymbolView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_micView centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v70[8] = v38;
  centerYAnchor = [(CSMicControlSymbolView *)self->_micSymbolView centerYAnchor];
  topAnchor5 = [(UIView *)self->_micView topAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:topAnchor5 constant:77.0];
  v70[9] = v35;
  widthAnchor = [(CSMicControlSymbolView *)self->_micSymbolView widthAnchor];
  v33 = [widthAnchor constraintEqualToConstant:37.0];
  v70[10] = v33;
  heightAnchor = [(CSMicControlSymbolView *)self->_micSymbolView heightAnchor];
  v31 = [heightAnchor constraintEqualToConstant:40.0];
  v70[11] = v31;
  centerXAnchor3 = [(UIImageView *)self->_trackView centerXAnchor];
  centerXAnchor4 = [(CSMicControl *)self centerXAnchor];
  v28 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v70[12] = v28;
  centerYAnchor2 = [(UIImageView *)self->_trackView centerYAnchor];
  centerYAnchor3 = [(CSMicControl *)self centerYAnchor];
  v25 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
  v70[13] = v25;
  widthAnchor2 = [(UIImageView *)self->_trackView widthAnchor];
  v17 = [widthAnchor2 constraintEqualToConstant:124.0];
  v70[14] = v17;
  heightAnchor2 = [(UIImageView *)self->_trackView heightAnchor];
  v19 = [heightAnchor2 constraintEqualToConstant:230.0];
  v70[15] = v19;
  widthAnchor3 = [(CSMicControl *)self widthAnchor];
  v21 = [widthAnchor3 constraintEqualToConstant:104.0];
  v70[16] = v21;
  heightAnchor3 = [(CSMicControl *)self heightAnchor];
  v23 = [heightAnchor3 constraintEqualToConstant:210.0];
  v70[17] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:18];
  [v47 activateConstraints:v24];

  [(CSMicControl *)self _updateMicViewForCurrentState];
}

- (void)_setupGestureRecognizers
{
  [(CSMicControl *)self setUserInteractionEnabled:1];
  v4 = objc_alloc_init(MEMORY[0x277D75B78]);
  [v4 addTarget:self action:sel__handleDidTap_];
  [(CSMicControl *)self addGestureRecognizer:v4];
  v3 = [objc_alloc(MEMORY[0x277D75800]) initWithTarget:self action:sel__handlePanGesture_];
  [(CSMicControl *)self addGestureRecognizer:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSMicControl;
  [(CSMicControl *)&v3 layoutSubviews];
  if (!self->_initialLayout)
  {
    self->_initialLayout = 1;
    [(CSMicControl *)self _updateMicViewForCurrentState];
  }
}

- (void)setMicControlState:(unint64_t)state animated:(BOOL)animated
{
  micState = self->_micState;
  if (micState != state)
  {
    animatedCopy = animated;
    self->_previousState = micState;
    self->_micState = state;
    v7 = ContinuitySingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v20 = "[CSMicControl setMicControlState:animated:]";
      v21 = 2080;
      v22 = "[CSMicControl setMicControlState:animated:]";
      v23 = 2048;
      previousState = [(CSMicControl *)self previousState];
      v25 = 2048;
      micState = [(CSMicControl *)self micState];
      v27 = 1024;
      v28 = animatedCopy;
      _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: %s set state (%zu -> %zu) animating: %d", buf, 0x30u);
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__CSMicControl_setMicControlState_animated___block_invoke;
    aBlock[3] = &unk_278E0ABD0;
    objc_copyWeak(&v18, buf);
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (animatedCopy)
    {
      self->_isAnimating = 1;
      nextInitialVelocityForAnimation = self->_nextInitialVelocityForAnimation;
      self->_nextInitialVelocityForAnimation = 0.0;
      v11 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __44__CSMicControl_setMicControlState_animated___block_invoke_2;
      v15[3] = &unk_278E0B370;
      v16 = v8;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __44__CSMicControl_setMicControlState_animated___block_invoke_3;
      v13[3] = &unk_278E0B398;
      objc_copyWeak(&v14, buf);
      [v11 animateWithSpringDuration:5242884 bounce:v15 initialSpringVelocity:v13 delay:0.3 options:0.0 animations:nextInitialVelocityForAnimation completion:0.0];
      objc_destroyWeak(&v14);
    }

    else
    {
      v8[2](v8);
    }

    delegate = [(CSMicControl *)self delegate];
    [delegate micControl:self didChangetoState:{-[CSMicControl micState](self, "micState")}];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

void __44__CSMicControl_setMicControlState_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateMicViewForCurrentState];
    WeakRetained = v2;
  }
}

void __44__CSMicControl_setMicControlState_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[409] = 0;
  }
}

- (void)setButtonSlideProgress:(double)progress
{
  self->_buttonSlideProgress = progress;
  [(UIImageView *)self->_micOnBackgroundView setAlpha:?];
  [(CSMicControl *)self _topMicCenter];
  v6 = v5;
  v8 = v7;
  [(CSMicControl *)self _bottomMicCenter];
  v10 = v9 + (v6 - v9) * progress;
  v12 = v11 + (v8 - v11) * progress;
  micView = self->_micView;

  [(UIView *)micView setCenter:v10, v12];
}

- (void)_updateMicViewForCurrentState
{
  [(CSMicControlSymbolView *)self->_micSymbolView updateForState:self->_micState];
  micState = self->_micState;
  v4 = 1.0;
  if (micState != 3 && micState != 1)
  {
    if (micState)
    {
      return;
    }

    v4 = 0.0;
  }

  [(CSMicControl *)self setButtonSlideProgress:v4];
}

- (CGPoint)_topMicCenter
{
  [(UIImageView *)self->_trackView bounds];
  v4 = v3;
  [(UIView *)self->_micView frame];
  v6 = v4 + v5 * 0.5;
  [(UIImageView *)self->_trackView frame];
  v8 = v7 * 0.5;
  v9 = v6;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_bottomMicCenter
{
  [(UIImageView *)self->_trackView bounds];
  v4 = v3;
  [(UIView *)self->_micView frame];
  v6 = v4 + v5 * 0.5 + 80.0;
  [(UIImageView *)self->_trackView frame];
  v8 = v7 * 0.5;
  v9 = v6;
  result.y = v9;
  result.x = v8;
  return result;
}

- (BOOL)_isRespondingToGestures
{
  if ([(CSMicControl *)self micState]== 3 || self->_isAnimating)
  {
    return 0;
  }

  return [(CSMicControl *)self isUserInteractionEnabled];
}

- (void)_handleDidTap:(id)tap
{
  v4 = ContinuitySingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CSMicControl _handleDidTap:]";
    v11 = 2080;
    v12 = "[CSMicControl _handleDidTap:]";
    v13 = 2048;
    micState = [(CSMicControl *)self micState];
    _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: %s currentState: %zu", &v9, 0x20u);
  }

  if ([(CSMicControl *)self _isRespondingToGestures])
  {
    micState2 = [(CSMicControl *)self micState];
    if (micState2)
    {
      if (micState2 != 1)
      {
        return;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained micControl:self didRequestToTurnOffFromState:[(CSMicControl *)self micState]];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained micControl:self didRequestToTurnOnFromState:[(CSMicControl *)self micState]];
    }
  }

  else
  {
    WeakRetained = ContinuitySingLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      micState3 = [(CSMicControl *)self micState];
      isAnimating = [(CSMicControl *)self isAnimating];
      v9 = 136315906;
      v10 = "[CSMicControl _handleDidTap:]";
      v11 = 2080;
      v12 = "[CSMicControl _handleDidTap:]";
      v13 = 2048;
      micState = micState3;
      v15 = 1024;
      v16 = isAnimating;
      _os_log_impl(&dword_2441FB000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s: %s not responding to gestures, micState: %zu isAnimating: %d", &v9, 0x26u);
    }
  }
}

- (void)_handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(CSMicControl *)self _isRespondingToGestures])
  {
    goto LABEL_29;
  }

  if ([gestureCopy state] == 1)
  {
    v5 = ContinuitySingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315650;
      v32 = "[CSMicControl _handlePanGesture:]";
      v33 = 2080;
      v34 = "[CSMicControl _handlePanGesture:]";
      v35 = 2048;
      micState = [(CSMicControl *)self micState];
      _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: %s starting in state: %zu", &v31, 0x20u);
    }

    [(CSMicControl *)self setMicControlState:2 animated:0];
    _handlePanGesture__originalProgress = *&self->_buttonSlideProgress;
    goto LABEL_29;
  }

  if ([gestureCopy state] != 2)
  {
    if ([gestureCopy state] != 3)
    {
      if ([gestureCopy state] != 4 && objc_msgSend(gestureCopy, "state") != 5)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    [gestureCopy velocityInView:self];
    if (v15 <= 300.0)
    {
      if (v15 < -300.0)
      {
        goto LABEL_20;
      }

      view = [gestureCopy view];
      superview = [view superview];
      [gestureCopy translationInView:superview];
      v22 = v21;

      [(CSMicControl *)self _topMicCenter];
      v24 = v23;
      [(CSMicControl *)self _bottomMicCenter];
      v26 = *&_handlePanGesture__originalProgress - v22 / (v25 - v24);
      if (v26 > 1.0)
      {
LABEL_20:
        v17 = 0;
        v16 = 1;
        goto LABEL_21;
      }

      if (v26 >= 0.0)
      {
        v17 = 0;
        v16 = 0;
        goto LABEL_21;
      }
    }

    v16 = 0;
    v17 = 1;
LABEL_21:
    v27 = ContinuitySingLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [MEMORY[0x277CCABB0] numberWithBool:v16];
      v29 = [MEMORY[0x277CCABB0] numberWithBool:v17];
      v31 = 136315906;
      v32 = "[CSMicControl _handlePanGesture:]";
      v33 = 2080;
      v34 = "[CSMicControl _handlePanGesture:]";
      v35 = 2112;
      micState = v28;
      v37 = 2112;
      v38 = v29;
      _os_log_impl(&dword_2441FB000, v27, OS_LOG_TYPE_DEFAULT, "%s: %s ending. Requesting turning on: %@; turning off: %@", &v31, 0x2Au);
    }

    if (v16)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained micControl:self didRequestToTurnOnFromState:{-[CSMicControl micState](self, "micState")}];
LABEL_27:

      goto LABEL_29;
    }

    if (v17)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained micControl:self didRequestToTurnOffFromState:{-[CSMicControl micState](self, "micState")}];
      goto LABEL_27;
    }

LABEL_28:
    [(CSMicControl *)self setMicControlState:self->_previousState animated:1];
    goto LABEL_29;
  }

  view2 = [gestureCopy view];
  superview2 = [view2 superview];
  [gestureCopy translationInView:superview2];
  v9 = v8;

  [(CSMicControl *)self _topMicCenter];
  v11 = v10;
  [(CSMicControl *)self _bottomMicCenter];
  v13 = *&_handlePanGesture__originalProgress - v9 / (v12 - v11);
  if (v13 <= 1.0)
  {
    if (v13 < 0.0)
    {
      v18 = v13 / 0.06 * 0.2;
      v13 = (1.0 - expf(v18)) * -0.06;
    }
  }

  else
  {
    v14 = (v13 + -1.0) / -0.06 * 0.2;
    v13 = (1.0 - expf(v14)) * 0.06 + 1.0;
  }

  [(CSMicControl *)self setButtonSlideProgress:v13];
LABEL_29:
}

- (CSMicControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end