@interface HUTimerCancelButtonView
- (CGSize)intrinsicContentSize;
- (HUTimerCancelButtonView)initWithDelegate:(id)delegate;
- (void)_cancelTimer:(id)timer;
- (void)layoutSubviews;
@end

@implementation HUTimerCancelButtonView

- (HUTimerCancelButtonView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = HUTimerCancelButtonView;
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(HUTimerCancelButtonView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_delegate, delegate);
    v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
    circleBackgroundView = v11->_circleBackgroundView;
    v11->_circleBackgroundView = v12;

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v11->_circleBackgroundView setBackgroundColor:systemWhiteColor];

    v15 = [MEMORY[0x277D75220] buttonWithType:0];
    cancelButton = v11->_cancelButton;
    v11->_cancelButton = v15;

    [(UIButton *)v11->_cancelButton addTarget:v11 action:sel__cancelTimer_ forControlEvents:64];
    v17 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:20.0];
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v17];
    [(UIButton *)v11->_cancelButton setImage:v18 forState:0];
    if (([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials] & 1) == 0)
    {
      hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
      [(UIButton *)v11->_cancelButton setTintColor:hf_keyColor];
    }

    [(HUTimerCancelButtonView *)v11 addSubview:v11->_circleBackgroundView];
    [(HUTimerCancelButtonView *)v11 addSubview:v11->_cancelButton];
  }

  return v11;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = HUTimerCancelButtonView;
  [(HUTimerCancelButtonView *)&v21 layoutSubviews];
  [(HUTimerCancelButtonView *)self bounds];
  MidX = CGRectGetMidX(v22);
  [(HUTimerCancelButtonView *)self bounds];
  MidY = CGRectGetMidY(v23);
  [(HUTimerCancelButtonView *)self bounds];
  v6 = v5;
  [(HUTimerCancelButtonView *)self bounds];
  v8 = v7;
  circleBackgroundView = [(HUTimerCancelButtonView *)self circleBackgroundView];
  [circleBackgroundView setBounds:{0.0, 0.0, v6, v8}];

  circleBackgroundView2 = [(HUTimerCancelButtonView *)self circleBackgroundView];
  [circleBackgroundView2 bounds];
  v12 = v11 * 0.5;
  circleBackgroundView3 = [(HUTimerCancelButtonView *)self circleBackgroundView];
  [circleBackgroundView3 _setContinuousCornerRadius:v12];

  circleBackgroundView4 = [(HUTimerCancelButtonView *)self circleBackgroundView];
  [circleBackgroundView4 setCenter:{MidX, MidY}];

  [(HUTimerCancelButtonView *)self bounds];
  v16 = v15 * 0.7;
  [(HUTimerCancelButtonView *)self bounds];
  v18 = v17 * 0.7;
  cancelButton = [(HUTimerCancelButtonView *)self cancelButton];
  [cancelButton setBounds:{0.0, 0.0, v16, v18}];

  cancelButton2 = [(HUTimerCancelButtonView *)self cancelButton];
  [cancelButton2 setCenter:{MidX, MidY}];
}

- (CGSize)intrinsicContentSize
{
  v2 = 48.0;
  v3 = 48.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_cancelTimer:(id)timer
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2080;
    v9 = "[HUTimerCancelButtonView _cancelTimer:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped cancel timer", &v6, 0x16u);
  }

  delegate = [(HUTimerCancelButtonView *)self delegate];
  [delegate cancelTimer];
}

@end