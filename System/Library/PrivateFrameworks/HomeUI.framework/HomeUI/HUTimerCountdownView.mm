@interface HUTimerCountdownView
- (HUTimerCountdownView)initWithCoder:(id)coder;
- (HUTimerCountdownView)initWithFrame:(CGRect)frame;
- (HUTimerCountdownView)initWithRemainingTime:(double)time state:(unint64_t)state duration:(double)duration delegate:(id)delegate;
- (void)layoutSubviews;
- (void)toggle:(id)toggle;
- (void)updateToNewState:(unint64_t)state;
- (void)updateToNewTime:(double)time;
@end

@implementation HUTimerCountdownView

- (HUTimerCountdownView)initWithRemainingTime:(double)time state:(unint64_t)state duration:(double)duration delegate:(id)delegate
{
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = HUTimerCountdownView;
  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 8);
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  v15 = *(MEMORY[0x277CBF3A0] + 24);
  v16 = [(HUTimerCountdownView *)&v31 initWithFrame:*MEMORY[0x277CBF3A0], v13, v14, v15];
  v17 = v16;
  if (v16)
  {
    v16->_remainingTime = time;
    v16->_state = state;
    v16->_duration = duration;
    objc_storeStrong(&v16->_delegate, delegate);
    v18 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v12, v13, v14, v15}];
    circleBackgroundView = v17->_circleBackgroundView;
    v17->_circleBackgroundView = v18;

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v17->_circleBackgroundView setBackgroundColor:systemWhiteColor];

    if (([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials] & 1) == 0)
    {
      hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
      [(HUTimerCountdownView *)v17 setTintColor:hf_keyColor];
    }

    v22 = objc_alloc(MEMORY[0x277D29778]);
    tintColor = [(HUTimerCountdownView *)v17 tintColor];
    clearColor = [MEMORY[0x277D75348] clearColor];
    v25 = [v22 initWithBarColor:tintColor backgroundBarColor:clearColor barWidth:2.0 remainingTime:time duration:duration];
    countdownView = v17->_countdownView;
    v17->_countdownView = v25;

    v27 = [MEMORY[0x277D75220] buttonWithType:0];
    pauseResumeButton = v17->_pauseResumeButton;
    v17->_pauseResumeButton = v27;

    [(UIButton *)v17->_pauseResumeButton addTarget:v17 action:sel_toggle_ forControlEvents:64];
    [(HUTimerCountdownView *)v17 addSubview:v17->_circleBackgroundView];
    [(HUTimerCountdownView *)v17 addSubview:v17->_countdownView];
    [(HUTimerCountdownView *)v17 addSubview:v17->_pauseResumeButton];
    countdownView = [(HUTimerCountdownView *)v17 countdownView];
    [countdownView setTranslatesAutoresizingMaskIntoConstraints:0];

    v17->_currentState = 0;
    [(HUTimerCountdownView *)v17 updateToNewState:state];
  }

  return v17;
}

- (HUTimerCountdownView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithCoder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTimerCountdownView.m" lineNumber:67 description:{@"%s is unavailable; use %@ instead", "-[HUTimerCountdownView initWithCoder:]", v6}];

  return 0;
}

- (HUTimerCountdownView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithFrame_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTimerCountdownView.m" lineNumber:72 description:{@"%s is unavailable; use %@ instead", "-[HUTimerCountdownView initWithFrame:]", v6}];

  return 0;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = HUTimerCountdownView;
  [(HUTimerCountdownView *)&v29 layoutSubviews];
  [(HUTimerCountdownView *)self bounds];
  MidX = CGRectGetMidX(v30);
  [(HUTimerCountdownView *)self bounds];
  MidY = CGRectGetMidY(v31);
  [(HUTimerCountdownView *)self bounds];
  v6 = v5 + -2.0;
  [(HUTimerCountdownView *)self bounds];
  v8 = v7 + -2.0;
  circleBackgroundView = [(HUTimerCountdownView *)self circleBackgroundView];
  [circleBackgroundView setBounds:{0.0, 0.0, v6, v8}];

  circleBackgroundView2 = [(HUTimerCountdownView *)self circleBackgroundView];
  [circleBackgroundView2 bounds];
  v12 = v11 * 0.5;
  circleBackgroundView3 = [(HUTimerCountdownView *)self circleBackgroundView];
  [circleBackgroundView3 _setContinuousCornerRadius:v12];

  circleBackgroundView4 = [(HUTimerCountdownView *)self circleBackgroundView];
  [circleBackgroundView4 setCenter:{MidX, MidY}];

  [(HUTimerCountdownView *)self bounds];
  v16 = v15;
  [(HUTimerCountdownView *)self bounds];
  v18 = v17;
  countdownView = [(HUTimerCountdownView *)self countdownView];
  [countdownView setBounds:{0.0, 0.0, v16, v18}];

  countdownView2 = [(HUTimerCountdownView *)self countdownView];
  [countdownView2 setCenter:{MidX, MidY}];

  [(HUTimerCountdownView *)self bounds];
  v22 = v21 * 0.7;
  [(HUTimerCountdownView *)self bounds];
  v24 = v23 * 0.7;
  pauseResumeButton = [(HUTimerCountdownView *)self pauseResumeButton];
  [pauseResumeButton setBounds:{0.0, 0.0, v22, v24}];

  pauseResumeButton2 = [(HUTimerCountdownView *)self pauseResumeButton];
  [pauseResumeButton2 setCenter:{MidX, MidY}];

  tintColor = [(HUTimerCountdownView *)self tintColor];
  pauseResumeButton3 = [(HUTimerCountdownView *)self pauseResumeButton];
  [pauseResumeButton3 setTintColor:tintColor];
}

- (void)updateToNewTime:(double)time
{
  countdownView = [(HUTimerCountdownView *)self countdownView];
  [countdownView setRemainingTime:time];
}

- (void)updateToNewState:(unint64_t)state
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(HUTimerCountdownView *)self currentState]!= state)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      selfCopy = self;
      v18 = 2080;
      v19 = "[HUTimerCountdownView updateToNewState:]";
      v20 = 2048;
      currentState = [(HUTimerCountdownView *)self currentState];
      v22 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s updating timer: old state (%lu) to newState (%lu)", buf, 0x2Au);
    }

    v6 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:20.0];
    if (state == 1)
    {
      pauseResumeButton = [(HUTimerCountdownView *)self pauseResumeButton];
      [pauseResumeButton setHidden:1];

      circleBackgroundView = [(HUTimerCountdownView *)self circleBackgroundView];
      [circleBackgroundView setHidden:1];

      countdownView = [(HUTimerCountdownView *)self countdownView];
      [countdownView setHidden:1];
    }

    else
    {
      if (state == 3)
      {
        countdownView = [MEMORY[0x277D755B8] systemImageNamed:@"pause.fill" withConfiguration:v6];
        pauseResumeButton2 = [(HUTimerCountdownView *)self pauseResumeButton];
        [pauseResumeButton2 setImage:countdownView forState:0];

        countdownView2 = [(HUTimerCountdownView *)self countdownView];
        isStarted = [countdownView2 isStarted];

        countdownView3 = [(HUTimerCountdownView *)self countdownView];
        countdownView4 = countdownView3;
        if (isStarted)
        {
          [countdownView3 resume];
        }

        else
        {
          [countdownView3 start];
        }
      }

      else
      {
        if (state != 2)
        {
          NSLog(&cfstr_UnexpectedSTim.isa, "[HUTimerCountdownView updateToNewState:]", state);
LABEL_15:
          [(HUTimerCountdownView *)self setCurrentState:state];

          return;
        }

        countdownView = [MEMORY[0x277D755B8] systemImageNamed:@"play.fill" withConfiguration:v6];
        pauseResumeButton3 = [(HUTimerCountdownView *)self pauseResumeButton];
        [pauseResumeButton3 setImage:countdownView forState:0];

        countdownView4 = [(HUTimerCountdownView *)self countdownView];
        [countdownView4 pause];
      }
    }

    goto LABEL_15;
  }
}

- (void)toggle:(id)toggle
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2080;
    v9 = "[HUTimerCountdownView toggle:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User toggled pause/resume timer", &v6, 0x16u);
  }

  delegate = [(HUTimerCountdownView *)self delegate];
  [delegate toggleTimer];
}

@end