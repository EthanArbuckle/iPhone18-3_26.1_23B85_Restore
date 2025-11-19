@interface HUTimerCountdownView
- (HUTimerCountdownView)initWithCoder:(id)a3;
- (HUTimerCountdownView)initWithFrame:(CGRect)a3;
- (HUTimerCountdownView)initWithRemainingTime:(double)a3 state:(unint64_t)a4 duration:(double)a5 delegate:(id)a6;
- (void)layoutSubviews;
- (void)toggle:(id)a3;
- (void)updateToNewState:(unint64_t)a3;
- (void)updateToNewTime:(double)a3;
@end

@implementation HUTimerCountdownView

- (HUTimerCountdownView)initWithRemainingTime:(double)a3 state:(unint64_t)a4 duration:(double)a5 delegate:(id)a6
{
  v11 = a6;
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
    v16->_remainingTime = a3;
    v16->_state = a4;
    v16->_duration = a5;
    objc_storeStrong(&v16->_delegate, a6);
    v18 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v12, v13, v14, v15}];
    circleBackgroundView = v17->_circleBackgroundView;
    v17->_circleBackgroundView = v18;

    v20 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v17->_circleBackgroundView setBackgroundColor:v20];

    if (([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials] & 1) == 0)
    {
      v21 = [MEMORY[0x277D75348] hf_keyColor];
      [(HUTimerCountdownView *)v17 setTintColor:v21];
    }

    v22 = objc_alloc(MEMORY[0x277D29778]);
    v23 = [(HUTimerCountdownView *)v17 tintColor];
    v24 = [MEMORY[0x277D75348] clearColor];
    v25 = [v22 initWithBarColor:v23 backgroundBarColor:v24 barWidth:2.0 remainingTime:a3 duration:a5];
    countdownView = v17->_countdownView;
    v17->_countdownView = v25;

    v27 = [MEMORY[0x277D75220] buttonWithType:0];
    pauseResumeButton = v17->_pauseResumeButton;
    v17->_pauseResumeButton = v27;

    [(UIButton *)v17->_pauseResumeButton addTarget:v17 action:sel_toggle_ forControlEvents:64];
    [(HUTimerCountdownView *)v17 addSubview:v17->_circleBackgroundView];
    [(HUTimerCountdownView *)v17 addSubview:v17->_countdownView];
    [(HUTimerCountdownView *)v17 addSubview:v17->_pauseResumeButton];
    v29 = [(HUTimerCountdownView *)v17 countdownView];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17->_currentState = 0;
    [(HUTimerCountdownView *)v17 updateToNewState:a4];
  }

  return v17;
}

- (HUTimerCountdownView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithCoder_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUTimerCountdownView.m" lineNumber:67 description:{@"%s is unavailable; use %@ instead", "-[HUTimerCountdownView initWithCoder:]", v6}];

  return 0;
}

- (HUTimerCountdownView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithFrame_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUTimerCountdownView.m" lineNumber:72 description:{@"%s is unavailable; use %@ instead", "-[HUTimerCountdownView initWithFrame:]", v6}];

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
  v9 = [(HUTimerCountdownView *)self circleBackgroundView];
  [v9 setBounds:{0.0, 0.0, v6, v8}];

  v10 = [(HUTimerCountdownView *)self circleBackgroundView];
  [v10 bounds];
  v12 = v11 * 0.5;
  v13 = [(HUTimerCountdownView *)self circleBackgroundView];
  [v13 _setContinuousCornerRadius:v12];

  v14 = [(HUTimerCountdownView *)self circleBackgroundView];
  [v14 setCenter:{MidX, MidY}];

  [(HUTimerCountdownView *)self bounds];
  v16 = v15;
  [(HUTimerCountdownView *)self bounds];
  v18 = v17;
  v19 = [(HUTimerCountdownView *)self countdownView];
  [v19 setBounds:{0.0, 0.0, v16, v18}];

  v20 = [(HUTimerCountdownView *)self countdownView];
  [v20 setCenter:{MidX, MidY}];

  [(HUTimerCountdownView *)self bounds];
  v22 = v21 * 0.7;
  [(HUTimerCountdownView *)self bounds];
  v24 = v23 * 0.7;
  v25 = [(HUTimerCountdownView *)self pauseResumeButton];
  [v25 setBounds:{0.0, 0.0, v22, v24}];

  v26 = [(HUTimerCountdownView *)self pauseResumeButton];
  [v26 setCenter:{MidX, MidY}];

  v27 = [(HUTimerCountdownView *)self tintColor];
  v28 = [(HUTimerCountdownView *)self pauseResumeButton];
  [v28 setTintColor:v27];
}

- (void)updateToNewTime:(double)a3
{
  v4 = [(HUTimerCountdownView *)self countdownView];
  [v4 setRemainingTime:a3];
}

- (void)updateToNewState:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(HUTimerCountdownView *)self currentState]!= a3)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v17 = self;
      v18 = 2080;
      v19 = "[HUTimerCountdownView updateToNewState:]";
      v20 = 2048;
      v21 = [(HUTimerCountdownView *)self currentState];
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s updating timer: old state (%lu) to newState (%lu)", buf, 0x2Au);
    }

    v6 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:20.0];
    if (a3 == 1)
    {
      v14 = [(HUTimerCountdownView *)self pauseResumeButton];
      [v14 setHidden:1];

      v15 = [(HUTimerCountdownView *)self circleBackgroundView];
      [v15 setHidden:1];

      v7 = [(HUTimerCountdownView *)self countdownView];
      [v7 setHidden:1];
    }

    else
    {
      if (a3 == 3)
      {
        v7 = [MEMORY[0x277D755B8] systemImageNamed:@"pause.fill" withConfiguration:v6];
        v10 = [(HUTimerCountdownView *)self pauseResumeButton];
        [v10 setImage:v7 forState:0];

        v11 = [(HUTimerCountdownView *)self countdownView];
        v12 = [v11 isStarted];

        v13 = [(HUTimerCountdownView *)self countdownView];
        v9 = v13;
        if (v12)
        {
          [v13 resume];
        }

        else
        {
          [v13 start];
        }
      }

      else
      {
        if (a3 != 2)
        {
          NSLog(&cfstr_UnexpectedSTim.isa, "[HUTimerCountdownView updateToNewState:]", a3);
LABEL_15:
          [(HUTimerCountdownView *)self setCurrentState:a3];

          return;
        }

        v7 = [MEMORY[0x277D755B8] systemImageNamed:@"play.fill" withConfiguration:v6];
        v8 = [(HUTimerCountdownView *)self pauseResumeButton];
        [v8 setImage:v7 forState:0];

        v9 = [(HUTimerCountdownView *)self countdownView];
        [v9 pause];
      }
    }

    goto LABEL_15;
  }
}

- (void)toggle:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[HUTimerCountdownView toggle:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User toggled pause/resume timer", &v6, 0x16u);
  }

  v5 = [(HUTimerCountdownView *)self delegate];
  [v5 toggleTimer];
}

@end