@interface MCActivityViewController
- (MCActivityViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIActivityIndicatorView)spinnerView;
- (UIImageView)completionIconImageView;
- (UILabel)longWaitingWarningLabel;
- (UILabel)textLabel;
- (void)_scheduleLongWaitingWarning;
- (void)completeActivityAnimated:(BOOL)animated;
- (void)loadView;
- (void)setCompletionText:(id)text;
- (void)setInProgresText:(id)text;
- (void)setIsInProgress:(BOOL)progress;
- (void)viewDidLayoutSubviews;
@end

@implementation MCActivityViewController

- (MCActivityViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = MCActivityViewController;
  result = [(MCActivityViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_isInProgress = 1;
  }

  return result;
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = MCActivityViewController;
  [(MCActivityViewController *)&v13 loadView];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(MCActivityViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(MCActivityViewController *)self view];
  spinnerView = [(MCActivityViewController *)self spinnerView];
  [view2 addSubview:spinnerView];

  view3 = [(MCActivityViewController *)self view];
  textLabel = [(MCActivityViewController *)self textLabel];
  [view3 addSubview:textLabel];

  view4 = [(MCActivityViewController *)self view];
  completionIconImageView = [(MCActivityViewController *)self completionIconImageView];
  [view4 addSubview:completionIconImageView];

  view5 = [(MCActivityViewController *)self view];
  longWaitingWarningLabel = [(MCActivityViewController *)self longWaitingWarningLabel];
  [view5 addSubview:longWaitingWarningLabel];
}

- (void)viewDidLayoutSubviews
{
  v37.receiver = self;
  v37.super_class = MCActivityViewController;
  [(MCActivityViewController *)&v37 viewDidLayoutSubviews];
  view = [(MCActivityViewController *)self view];
  [view center];
  v5 = v4;
  v7 = v6;
  spinnerView = [(MCActivityViewController *)self spinnerView];
  [spinnerView setCenter:{v5, v7}];

  spinnerView2 = [(MCActivityViewController *)self spinnerView];
  [spinnerView2 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  completionIconImageView = [(MCActivityViewController *)self completionIconImageView];
  [completionIconImageView setFrame:{v11, v13, v15, v17}];

  textLabel = [(MCActivityViewController *)self textLabel];
  view2 = [(MCActivityViewController *)self view];
  [view2 bounds];
  [textLabel sizeThatFits:{CGRectGetWidth(v38) + -16.0, 1.79769313e308}];
  v22 = v21;

  spinnerView3 = [(MCActivityViewController *)self spinnerView];
  [spinnerView3 frame];
  v24 = CGRectGetMaxY(v39) + 8.0;
  view3 = [(MCActivityViewController *)self view];
  [view3 bounds];
  v26 = CGRectGetWidth(v40) + -16.0;
  textLabel2 = [(MCActivityViewController *)self textLabel];
  [textLabel2 setFrame:{8.0, v24, v26, v22}];

  longWaitingWarningLabel = [(MCActivityViewController *)self longWaitingWarningLabel];
  view4 = [(MCActivityViewController *)self view];
  [view4 bounds];
  [longWaitingWarningLabel sizeThatFits:{CGRectGetWidth(v41) + -16.0, 1.79769313e308}];
  v31 = v30;

  textLabel3 = [(MCActivityViewController *)self textLabel];
  [textLabel3 frame];
  v33 = CGRectGetMaxY(v42) + 8.0;
  view5 = [(MCActivityViewController *)self view];
  [view5 bounds];
  v35 = CGRectGetWidth(v43) + -16.0;
  longWaitingWarningLabel2 = [(MCActivityViewController *)self longWaitingWarningLabel];
  [longWaitingWarningLabel2 setFrame:{8.0, v33, v35, v31}];
}

- (void)completeActivityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(MCActivityViewController *)self setIsInProgress:0];
  v5 = 0.200000003;
  if (!animatedCopy)
  {
    v5 = 0.0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__MCActivityViewController_completeActivityAnimated___block_invoke;
  v6[3] = &unk_279861968;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5];
}

void __53__MCActivityViewController_completeActivityAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) spinnerView];
  [v2 stopAnimating];

  v3 = [*(a1 + 32) completionText];
  v4 = [*(a1 + 32) textLabel];
  [v4 setText:v3];

  v5 = [*(a1 + 32) completionIconImageView];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) view];
  [v6 setNeedsDisplay];
}

- (void)setInProgresText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_inProgresText isEqualToString:?])
  {
    v4 = [textCopy copy];
    inProgresText = self->_inProgresText;
    self->_inProgresText = v4;
  }

  if ([(MCActivityViewController *)self isInProgress])
  {
    v6 = self->_inProgresText;
    textLabel = [(MCActivityViewController *)self textLabel];
    [textLabel setText:v6];
  }
}

- (void)setIsInProgress:(BOOL)progress
{
  self->_isInProgress = progress;
  if (!progress)
  {
    longWaitingWarningLabel = [(MCActivityViewController *)self longWaitingWarningLabel];
    [longWaitingWarningLabel setHidden:1];
  }
}

- (void)setCompletionText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_completionText isEqualToString:?])
  {
    v4 = [textCopy copy];
    completionText = self->_completionText;
    self->_completionText = v4;
  }

  if (![(MCActivityViewController *)self isInProgress])
  {
    v6 = self->_completionText;
    textLabel = [(MCActivityViewController *)self textLabel];
    [textLabel setText:v6];
  }
}

- (UIActivityIndicatorView)spinnerView
{
  spinnerView = self->_spinnerView;
  if (!spinnerView)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v5 = self->_spinnerView;
    self->_spinnerView = v4;

    spinnerView = self->_spinnerView;
  }

  return spinnerView;
}

- (UIImageView)completionIconImageView
{
  completionIconImageView = self->_completionIconImageView;
  if (!completionIconImageView)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
    v6 = [v4 initWithImage:v5];

    dMCProfileVerifiedColor = [MEMORY[0x277D75348] DMCProfileVerifiedColor];
    [(UIImageView *)v6 setTintColor:dMCProfileVerifiedColor];

    image = [(UIImageView *)v6 image];
    v9 = [image imageWithRenderingMode:2];
    [(UIImageView *)v6 setImage:v9];

    [(UIImageView *)v6 setContentMode:1];
    [(UIImageView *)v6 setAlpha:0.0];
    v10 = self->_completionIconImageView;
    self->_completionIconImageView = v6;

    completionIconImageView = self->_completionIconImageView;
  }

  return completionIconImageView;
}

- (UILabel)textLabel
{
  textLabel = self->_textLabel;
  if (!textLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_textLabel;
    self->_textLabel = v4;

    [(UILabel *)self->_textLabel setLineBreakMode:0];
    [(UILabel *)self->_textLabel setNumberOfLines:0];
    [(UILabel *)self->_textLabel setTextAlignment:1];
    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (UILabel)longWaitingWarningLabel
{
  longWaitingWarningLabel = self->_longWaitingWarningLabel;
  if (!longWaitingWarningLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_longWaitingWarningLabel;
    self->_longWaitingWarningLabel = v4;

    [(UILabel *)self->_longWaitingWarningLabel setLineBreakMode:0];
    [(UILabel *)self->_longWaitingWarningLabel setNumberOfLines:0];
    [(UILabel *)self->_longWaitingWarningLabel setTextAlignment:1];
    v6 = self->_longWaitingWarningLabel;
    v7 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)self->_longWaitingWarningLabel setHidden:1];
    longWaitingWarningLabel = self->_longWaitingWarningLabel;
  }

  return longWaitingWarningLabel;
}

- (void)_scheduleLongWaitingWarning
{
  objc_initWeak(&location, self);
  [(MCActivityViewController *)self longWaitingWarningThreshold];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__MCActivityViewController__scheduleLongWaitingWarning__block_invoke;
  v5[3] = &unk_279861990;
  objc_copyWeak(&v6, &location);
  dispatch_after(v4, MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __55__MCActivityViewController__scheduleLongWaitingWarning__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if ([WeakRetained isInProgress])
    {
      v2 = [v7 longWaitingWarningText];
      v3 = [v7 longWaitingWarningLabel];
      [v3 setText:v2];

      v4 = [v7 longWaitingWarningLabel];
      [v4 setHidden:0];

      v5 = [v7 view];
      [v5 setNeedsLayout];
    }
  }

  return MEMORY[0x2821F96F8]();
}

@end