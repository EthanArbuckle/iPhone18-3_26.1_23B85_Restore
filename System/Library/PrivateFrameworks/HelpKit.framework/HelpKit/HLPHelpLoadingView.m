@interface HLPHelpLoadingView
- (HLPHelpLoadingView)initWithFrame:(CGRect)a3;
- (HLPHelpLoadingViewDelegate)delegate;
- (void)removeContentMessage;
- (void)setSupportsDarkMode:(BOOL)a3;
- (void)showActivityIndicator:(BOOL)a3;
- (void)showHelpBookInfo;
- (void)showMessageWithError:(id)a3;
- (void)updateBackgroundColor;
@end

@implementation HLPHelpLoadingView

- (HLPHelpLoadingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HLPHelpLoadingView;
  v3 = [(HLPHelpLoadingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HLPHelpLoadingView *)v3 updateBackgroundColor];
    [(HLPHelpLoadingView *)v4 setUserInteractionEnabled:1];
  }

  return v4;
}

- (void)setSupportsDarkMode:(BOOL)a3
{
  if (self->_supportsDarkMode != a3)
  {
    self->_supportsDarkMode = a3;
    [(HLPHelpLoadingView *)self updateBackgroundColor];
  }
}

- (void)updateBackgroundColor
{
  if (+[HLPCommonDefines isVisionOS])
  {
    v3 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }

  else
  {
    if (self->_supportsDarkMode)
    {
      [MEMORY[0x277D75348] systemBackgroundColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v3 = ;
  }

  v4 = v3;
  [(HLPHelpLoadingView *)self setBackgroundColor:v3];
}

- (void)showActivityIndicator:(BOOL)a3
{
  if (a3)
  {
    [(HLPHelpLoadingView *)self setHidden:0];
    [(HLPHelpLoadingView *)self removeContentMessage];
    activityIndicatorView = self->_activityIndicatorView;
    if (!activityIndicatorView)
    {
      v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      v6 = self->_activityIndicatorView;
      self->_activityIndicatorView = v5;

      [(UIActivityIndicatorView *)self->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIActivityIndicatorView *)self->_activityIndicatorView sizeToFit];
      [(HLPHelpLoadingView *)self addSubview:self->_activityIndicatorView];
      v7 = [MEMORY[0x277CBEBF8] mutableCopy];
      v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_activityIndicatorView attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [v7 addObject:v8];

      v9 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_activityIndicatorView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
      [v7 addObject:v9];

      [(HLPHelpLoadingView *)self addConstraints:v7];
      activityIndicatorView = self->_activityIndicatorView;
    }

    [(UIActivityIndicatorView *)activityIndicatorView startAnimating];
  }

  else
  {
    [(HLPHelpLoadingView *)self setHidden:1];
    [(UIActivityIndicatorView *)self->_activityIndicatorView removeFromSuperview];
    v10 = self->_activityIndicatorView;
    self->_activityIndicatorView = 0;
  }
}

- (void)removeContentMessage
{
  v3 = [(HLPHelpLoadingView *)self contentMessageViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  [(HLPHelpLoadingView *)self setContentMessageViewController:0];
}

- (void)showMessageWithError:(id)a3
{
  v4 = a3;
  [(HLPHelpLoadingView *)self showActivityIndicator:0];
  [(HLPHelpLoadingView *)self setHidden:0];
  if (!self->_contentMessageViewController)
  {
    v5 = +[HLPCommonDefines HLPBundle];
    v6 = [v5 localizedStringForKey:@"Try again later." value:&stru_2864756F0 table:0];

    v7 = [objc_alloc(MEMORY[0x277D719C0]) initWithError:v4 defaultMessage:v6];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__HLPHelpLoadingView_showMessageWithError___block_invoke;
    v23[3] = &unk_279706B10;
    v23[4] = self;
    [v7 setDebugActionHandler:v23];
    v8 = [objc_alloc(MEMORY[0x277D719B8]) initWithContentMessageViewModel:v7];
    contentMessageViewController = self->_contentMessageViewController;
    self->_contentMessageViewController = v8;

    v10 = [(ContentMessageViewController *)self->_contentMessageViewController view];
    [(HLPHelpLoadingView *)self addSubview:v10];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v10 topAnchor];
    v12 = [(HLPHelpLoadingView *)self topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [v10 bottomAnchor];
    v15 = [(HLPHelpLoadingView *)self bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [v10 leadingAnchor];
    v18 = [(HLPHelpLoadingView *)self leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [v10 trailingAnchor];
    v21 = [(HLPHelpLoadingView *)self trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];
  }
}

- (void)showHelpBookInfo
{
  v3 = [(HLPHelpLoadingView *)self delegate];
  [v3 showHelpBookInfo:self];
}

- (HLPHelpLoadingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end