@interface ICUnsupportedNoteView
- (ICUnsupportedNoteView)initWithReason:(unint64_t)reason;
- (UIButton)actionButton;
- (UILabel)summaryLabel;
- (UILabel)titleLabel;
- (UIStackView)stackView;
- (id)action;
- (id)summary;
- (id)title;
- (void)createLayout;
@end

@implementation ICUnsupportedNoteView

- (ICUnsupportedNoteView)initWithReason:(unint64_t)reason
{
  v7.receiver = self;
  v7.super_class = ICUnsupportedNoteView;
  v4 = [(ICUnsupportedNoteView *)&v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_reason = reason;
    [(ICUnsupportedNoteView *)v4 createLayout];
  }

  return v5;
}

- (UIStackView)stackView
{
  v11[2] = *MEMORY[0x277D85DE8];
  stackView = self->_stackView;
  if (!stackView)
  {
    v4 = objc_alloc(MEMORY[0x277D75A68]);
    titleLabel = [(ICUnsupportedNoteView *)self titleLabel];
    v11[0] = titleLabel;
    summaryLabel = [(ICUnsupportedNoteView *)self summaryLabel];
    v11[1] = summaryLabel;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [v4 initWithArrangedSubviews:v7];
    v9 = self->_stackView;
    self->_stackView = v8;

    [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView setAxis:1];
    [(UIStackView *)self->_stackView setAlignment:3];
    [(UIStackView *)self->_stackView setDistribution:3];
    [(UIStackView *)self->_stackView setSpacing:9.0];
    stackView = self->_stackView;
  }

  return stackView;
}

- (id)title
{
  reason = [(ICUnsupportedNoteView *)self reason];
  if (reason)
  {
    if (reason != 1)
    {
      goto LABEL_6;
    }

    v4 = @"Can’t View Note";
  }

  else
  {
    v4 = @"Unsupported Note";
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [mainBundle localizedStringForKey:v4 value:&stru_282757698 table:0];

LABEL_6:

  return v2;
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    title = [(ICUnsupportedNoteView *)self title];
    [(UILabel *)self->_titleLabel setText:title];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    v7 = [MEMORY[0x277D74300] ic_preferredFontForStyle:*MEMORY[0x277D76A28] symbolicTraits:2];
    [(UILabel *)self->_titleLabel setFont:v7];

    [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_titleLabel setMaximumContentSizeCategory:*MEMORY[0x277D76800]];
    LODWORD(v8) = 1148846080;
    [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v8];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (id)summary
{
  reason = [(ICUnsupportedNoteView *)self reason];
  if (reason == 1)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = mainBundle;
    v8 = @"This note can’t be viewed because the encryption key wasn’t found in iCloud Keychain. Resetting your end-to-end encrypted data can cause this.";
  }

  else
  {
    if (reason)
    {
      goto LABEL_10;
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = mainBundle;
    if (userInterfaceIdiom == 6)
    {
      v8 = @"This note uses unsupported features. To view or edit it, upgrade to the latest version of visionOS.";
    }

    else if (userInterfaceIdiom == 1)
    {
      v8 = @"This note uses unsupported features. To view or edit it, upgrade to the latest version of iPadOS.";
    }

    else
    {
      v8 = @"This note uses unsupported features. To view or edit it, upgrade to the latest version of iOS.";
    }
  }

  v2 = [mainBundle localizedStringForKey:v8 value:&stru_282757698 table:0];

LABEL_10:

  return v2;
}

- (UILabel)summaryLabel
{
  summaryLabel = self->_summaryLabel;
  if (!summaryLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_summaryLabel;
    self->_summaryLabel = v4;

    [(UILabel *)self->_summaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    summary = [(ICUnsupportedNoteView *)self summary];
    [(UILabel *)self->_summaryLabel setText:summary];

    [(UILabel *)self->_summaryLabel setTextAlignment:1];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_summaryLabel setTextColor:secondaryLabelColor];

    [(UILabel *)self->_summaryLabel setNumberOfLines:0];
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    ic_fontWithSingleLineA = [v8 ic_fontWithSingleLineA];
    [(UILabel *)self->_summaryLabel setFont:ic_fontWithSingleLineA];

    [(UILabel *)self->_summaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_summaryLabel setMaximumContentSizeCategory:*MEMORY[0x277D76800]];
    LODWORD(v10) = 1148846080;
    [(UILabel *)self->_summaryLabel setContentCompressionResistancePriority:1 forAxis:v10];
    summaryLabel = self->_summaryLabel;
  }

  return summaryLabel;
}

- (id)action
{
  if ([(ICUnsupportedNoteView *)self reason]== 1)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v3 = [mainBundle localizedStringForKey:@"Delete Note" value:&stru_282757698 table:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIButton)actionButton
{
  if (!self->_actionButton)
  {
    action = [(ICUnsupportedNoteView *)self action];

    if (action)
    {
      objc_initWeak(&location, self);
      v4 = MEMORY[0x277D750C8];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __37__ICUnsupportedNoteView_actionButton__block_invoke;
      v18 = &unk_2781ADD08;
      objc_copyWeak(&v19, &location);
      v5 = [v4 actionWithHandler:&v15];
      borderlessButtonConfiguration = [MEMORY[0x277D75230] borderlessButtonConfiguration];
      action2 = [(ICUnsupportedNoteView *)self action];
      [borderlessButtonConfiguration setTitle:action2];

      [borderlessButtonConfiguration setButtonSize:2];
      v8 = [MEMORY[0x277D75220] buttonWithConfiguration:borderlessButtonConfiguration primaryAction:v5];
      actionButton = self->_actionButton;
      self->_actionButton = v8;

      [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
      titleLabel = [(UIButton *)self->_actionButton titleLabel];
      [titleLabel setAdjustsFontForContentSizeCategory:1];

      if ([(ICUnsupportedNoteView *)self isActionDestructive])
      {
        [MEMORY[0x277D75348] systemRedColor];
      }

      else
      {
        [MEMORY[0x277D75348] tintColor];
      }
      v11 = ;
      [(UIButton *)self->_actionButton setTintColor:v11];

      [(UIButton *)self->_actionButton setShowsLargeContentViewer:1];
      LODWORD(v12) = 1148846080;
      [(UIButton *)self->_actionButton setContentCompressionResistancePriority:0 forAxis:v12];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  v13 = self->_actionButton;

  return v13;
}

void __37__ICUnsupportedNoteView_actionButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained didTapActionButton];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v4 = [v5 didTapActionButton];
    v4[2]();
  }
}

- (void)createLayout
{
  [(ICUnsupportedNoteView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(ICUnsupportedNoteView *)self setBackgroundColor:systemBackgroundColor];

  stackView = [(ICUnsupportedNoteView *)self stackView];
  [(ICUnsupportedNoteView *)self addSubview:stackView];

  stackView2 = [(ICUnsupportedNoteView *)self stackView];
  [stackView2 ic_addAnchorsToFillSuperview];

  actionButton = [(ICUnsupportedNoteView *)self actionButton];

  if (actionButton)
  {
    stackView3 = [(ICUnsupportedNoteView *)self stackView];
    actionButton2 = [(ICUnsupportedNoteView *)self actionButton];
    [stackView3 addArrangedSubview:actionButton2];

    stackView4 = [(ICUnsupportedNoteView *)self stackView];
    summaryLabel = [(ICUnsupportedNoteView *)self summaryLabel];
    [stackView4 setCustomSpacing:summaryLabel afterView:16.0];
  }
}

@end