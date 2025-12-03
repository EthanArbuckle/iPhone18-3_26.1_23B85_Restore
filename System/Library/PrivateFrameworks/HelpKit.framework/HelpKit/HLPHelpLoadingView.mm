@interface HLPHelpLoadingView
- (HLPHelpLoadingView)initWithFrame:(CGRect)frame;
- (HLPHelpLoadingViewDelegate)delegate;
- (void)removeContentMessage;
- (void)setSupportsDarkMode:(BOOL)mode;
- (void)showActivityIndicator:(BOOL)indicator;
- (void)showHelpBookInfo;
- (void)showMessageWithError:(id)error;
- (void)updateBackgroundColor;
@end

@implementation HLPHelpLoadingView

- (HLPHelpLoadingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HLPHelpLoadingView;
  v3 = [(HLPHelpLoadingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HLPHelpLoadingView *)v3 updateBackgroundColor];
    [(HLPHelpLoadingView *)v4 setUserInteractionEnabled:1];
  }

  return v4;
}

- (void)setSupportsDarkMode:(BOOL)mode
{
  if (self->_supportsDarkMode != mode)
  {
    self->_supportsDarkMode = mode;
    [(HLPHelpLoadingView *)self updateBackgroundColor];
  }
}

- (void)updateBackgroundColor
{
  if (+[HLPCommonDefines isVisionOS])
  {
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
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
    secondarySystemBackgroundColor = ;
  }

  v4 = secondarySystemBackgroundColor;
  [(HLPHelpLoadingView *)self setBackgroundColor:secondarySystemBackgroundColor];
}

- (void)showActivityIndicator:(BOOL)indicator
{
  if (indicator)
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
  contentMessageViewController = [(HLPHelpLoadingView *)self contentMessageViewController];
  view = [contentMessageViewController view];
  [view removeFromSuperview];

  [(HLPHelpLoadingView *)self setContentMessageViewController:0];
}

- (void)showMessageWithError:(id)error
{
  errorCopy = error;
  [(HLPHelpLoadingView *)self showActivityIndicator:0];
  [(HLPHelpLoadingView *)self setHidden:0];
  if (!self->_contentMessageViewController)
  {
    v5 = +[HLPCommonDefines HLPBundle];
    v6 = [v5 localizedStringForKey:@"Try again later." value:&stru_2864756F0 table:0];

    v7 = [objc_alloc(MEMORY[0x277D719C0]) initWithError:errorCopy defaultMessage:v6];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__HLPHelpLoadingView_showMessageWithError___block_invoke;
    v23[3] = &unk_279706B10;
    v23[4] = self;
    [v7 setDebugActionHandler:v23];
    v8 = [objc_alloc(MEMORY[0x277D719B8]) initWithContentMessageViewModel:v7];
    contentMessageViewController = self->_contentMessageViewController;
    self->_contentMessageViewController = v8;

    view = [(ContentMessageViewController *)self->_contentMessageViewController view];
    [(HLPHelpLoadingView *)self addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [view topAnchor];
    topAnchor2 = [(HLPHelpLoadingView *)self topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v13 setActive:1];

    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [(HLPHelpLoadingView *)self bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v16 setActive:1];

    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [(HLPHelpLoadingView *)self leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v19 setActive:1];

    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [(HLPHelpLoadingView *)self trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v22 setActive:1];
  }
}

- (void)showHelpBookInfo
{
  delegate = [(HLPHelpLoadingView *)self delegate];
  [delegate showHelpBookInfo:self];
}

- (HLPHelpLoadingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end