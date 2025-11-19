@interface CSMicControl
- (BOOL)_isRespondingToGestures;
- (CGPoint)_bottomMicCenter;
- (CGPoint)_topMicCenter;
- (CGSize)intrinsicContentSize;
- (CSMicControl)initWithFrame:(CGRect)a3;
- (CSMicControlDelegate)delegate;
- (void)_handleDidTap:(id)a3;
- (void)_handlePanGesture:(id)a3;
- (void)_setupGestureRecognizers;
- (void)_setupViews;
- (void)_updateMicViewForCurrentState;
- (void)layoutSubviews;
- (void)setButtonSlideProgress:(double)a3;
- (void)setMicControlState:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation CSMicControl

- (CSMicControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CSMicControl;
  v3 = [(CSMicControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v65 = [(UIImageView *)self->_micOnBackgroundView leadingAnchor];
  v64 = [(UIView *)self->_micView leadingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v70[0] = v63;
  v62 = [(UIImageView *)self->_micOnBackgroundView trailingAnchor];
  v61 = [(UIView *)self->_micView trailingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v70[1] = v60;
  v59 = [(UIImageView *)self->_micOnBackgroundView topAnchor];
  v58 = [(UIView *)self->_micView topAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v70[2] = v57;
  v56 = [(UIImageView *)self->_micOnBackgroundView bottomAnchor];
  v55 = [(UIView *)self->_micView bottomAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v70[3] = v54;
  v53 = [(UIImageView *)self->_micOffBackgroundView leadingAnchor];
  v52 = [(UIView *)self->_micView leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v70[4] = v51;
  v50 = [(UIImageView *)self->_micOffBackgroundView trailingAnchor];
  v49 = [(UIView *)self->_micView trailingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v70[5] = v48;
  v46 = [(UIImageView *)self->_micOffBackgroundView topAnchor];
  v45 = [(UIView *)self->_micView topAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v70[6] = v44;
  v43 = [(UIImageView *)self->_micOffBackgroundView bottomAnchor];
  v42 = [(UIView *)self->_micView bottomAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v70[7] = v41;
  v40 = [(CSMicControlSymbolView *)self->_micSymbolView centerXAnchor];
  v39 = [(UIView *)self->_micView centerXAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v70[8] = v38;
  v37 = [(CSMicControlSymbolView *)self->_micSymbolView centerYAnchor];
  v36 = [(UIView *)self->_micView topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:77.0];
  v70[9] = v35;
  v34 = [(CSMicControlSymbolView *)self->_micSymbolView widthAnchor];
  v33 = [v34 constraintEqualToConstant:37.0];
  v70[10] = v33;
  v32 = [(CSMicControlSymbolView *)self->_micSymbolView heightAnchor];
  v31 = [v32 constraintEqualToConstant:40.0];
  v70[11] = v31;
  v30 = [(UIImageView *)self->_trackView centerXAnchor];
  v29 = [(CSMicControl *)self centerXAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v70[12] = v28;
  v27 = [(UIImageView *)self->_trackView centerYAnchor];
  v26 = [(CSMicControl *)self centerYAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v70[13] = v25;
  v16 = [(UIImageView *)self->_trackView widthAnchor];
  v17 = [v16 constraintEqualToConstant:124.0];
  v70[14] = v17;
  v18 = [(UIImageView *)self->_trackView heightAnchor];
  v19 = [v18 constraintEqualToConstant:230.0];
  v70[15] = v19;
  v20 = [(CSMicControl *)self widthAnchor];
  v21 = [v20 constraintEqualToConstant:104.0];
  v70[16] = v21;
  v22 = [(CSMicControl *)self heightAnchor];
  v23 = [v22 constraintEqualToConstant:210.0];
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

- (void)setMicControlState:(unint64_t)a3 animated:(BOOL)a4
{
  micState = self->_micState;
  if (micState != a3)
  {
    v5 = a4;
    self->_previousState = micState;
    self->_micState = a3;
    v7 = ContinuitySingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v20 = "[CSMicControl setMicControlState:animated:]";
      v21 = 2080;
      v22 = "[CSMicControl setMicControlState:animated:]";
      v23 = 2048;
      v24 = [(CSMicControl *)self previousState];
      v25 = 2048;
      v26 = [(CSMicControl *)self micState];
      v27 = 1024;
      v28 = v5;
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
    if (v5)
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

    v12 = [(CSMicControl *)self delegate];
    [v12 micControl:self didChangetoState:{-[CSMicControl micState](self, "micState")}];

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

- (void)setButtonSlideProgress:(double)a3
{
  self->_buttonSlideProgress = a3;
  [(UIImageView *)self->_micOnBackgroundView setAlpha:?];
  [(CSMicControl *)self _topMicCenter];
  v6 = v5;
  v8 = v7;
  [(CSMicControl *)self _bottomMicCenter];
  v10 = v9 + (v6 - v9) * a3;
  v12 = v11 + (v8 - v11) * a3;
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

- (void)_handleDidTap:(id)a3
{
  v4 = ContinuitySingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CSMicControl _handleDidTap:]";
    v11 = 2080;
    v12 = "[CSMicControl _handleDidTap:]";
    v13 = 2048;
    v14 = [(CSMicControl *)self micState];
    _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: %s currentState: %zu", &v9, 0x20u);
  }

  if ([(CSMicControl *)self _isRespondingToGestures])
  {
    v5 = [(CSMicControl *)self micState];
    if (v5)
    {
      if (v5 != 1)
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
      v7 = [(CSMicControl *)self micState];
      v8 = [(CSMicControl *)self isAnimating];
      v9 = 136315906;
      v10 = "[CSMicControl _handleDidTap:]";
      v11 = 2080;
      v12 = "[CSMicControl _handleDidTap:]";
      v13 = 2048;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&dword_2441FB000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s: %s not responding to gestures, micState: %zu isAnimating: %d", &v9, 0x26u);
    }
  }
}

- (void)_handlePanGesture:(id)a3
{
  v4 = a3;
  if (![(CSMicControl *)self _isRespondingToGestures])
  {
    goto LABEL_29;
  }

  if ([v4 state] == 1)
  {
    v5 = ContinuitySingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315650;
      v32 = "[CSMicControl _handlePanGesture:]";
      v33 = 2080;
      v34 = "[CSMicControl _handlePanGesture:]";
      v35 = 2048;
      v36 = [(CSMicControl *)self micState];
      _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: %s starting in state: %zu", &v31, 0x20u);
    }

    [(CSMicControl *)self setMicControlState:2 animated:0];
    _handlePanGesture__originalProgress = *&self->_buttonSlideProgress;
    goto LABEL_29;
  }

  if ([v4 state] != 2)
  {
    if ([v4 state] != 3)
    {
      if ([v4 state] != 4 && objc_msgSend(v4, "state") != 5)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    [v4 velocityInView:self];
    if (v15 <= 300.0)
    {
      if (v15 < -300.0)
      {
        goto LABEL_20;
      }

      v19 = [v4 view];
      v20 = [v19 superview];
      [v4 translationInView:v20];
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
      v36 = v28;
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

  v6 = [v4 view];
  v7 = [v6 superview];
  [v4 translationInView:v7];
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