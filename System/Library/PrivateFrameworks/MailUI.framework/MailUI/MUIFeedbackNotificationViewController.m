@interface MUIFeedbackNotificationViewController
- (MUIFeedbackNotificationViewController)initWithTitleText:(id)a3 messageText:(id)a4;
- (void)_arrangeAndConfigureLeadingAccessoryView;
- (void)_arrangeAndConfigureTrailingAccessoryView;
- (void)setLeadingAccessoryView:(id)a3;
- (void)setTrailingAccessoryView:(id)a3;
- (void)viewDidLoad;
@end

@implementation MUIFeedbackNotificationViewController

- (MUIFeedbackNotificationViewController)initWithTitleText:(id)a3 messageText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MUIFeedbackNotificationViewController;
  v8 = [(MUIFeedbackNotificationViewController *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    titleText = v8->_titleText;
    v8->_titleText = v9;

    v11 = [v7 copy];
    messageText = v8->_messageText;
    v8->_messageText = v11;
  }

  return v8;
}

- (void)viewDidLoad
{
  v36[4] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = MUIFeedbackNotificationViewController;
  [(MUIFeedbackNotificationViewController *)&v35 viewDidLoad];
  v3 = [(MUIFeedbackNotificationViewController *)self view];
  [v3 setInsetsLayoutMarginsFromSafeArea:0];
  [v3 setLayoutMargins:{8.0, 8.0, 8.0, 8.0}];
  v4 = objc_alloc_init(MEMORY[0x277D75A68]);
  containerStackView = self->_containerStackView;
  self->_containerStackView = v4;

  [(UIStackView *)self->_containerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_containerStackView setAlignment:3];
  [(UIStackView *)self->_containerStackView setSpacing:8.0];
  v31 = v3;
  [v3 addSubview:self->_containerStackView];
  v6 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v6 setAxis:1];
  [v6 setAlignment:3];
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];
  [(UIStackView *)self->_containerStackView addArrangedSubview:v6];
  v34 = objc_alloc_init(MEMORY[0x277D756B8]);
  v8 = *MEMORY[0x277D76968];
  v9 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] weight:*MEMORY[0x277D743F8]];
  [v34 setFont:v9];

  v10 = [MEMORY[0x277D75348] labelColor];
  [v34 setTextColor:v10];

  [v34 setText:self->_titleText];
  v33 = v6;
  [v6 addArrangedSubview:v34];
  v32 = objc_alloc_init(MEMORY[0x277D756B8]);
  v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v8 weight:*MEMORY[0x277D74410]];
  [v32 setFont:v11];

  v12 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v32 setTextColor:v12];

  [v32 setText:self->_messageText];
  [v6 addArrangedSubview:v32];
  v13 = [v3 layoutMarginsGuide];
  v14 = [(UIStackView *)self->_containerStackView leadingAnchor];
  v15 = [v13 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:24.0];
  containerLeadingConstraint = self->_containerLeadingConstraint;
  self->_containerLeadingConstraint = v16;

  v18 = [v13 trailingAnchor];
  v19 = [(UIStackView *)self->_containerStackView trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:24.0];
  containerTrailingContraint = self->_containerTrailingContraint;
  self->_containerTrailingContraint = v20;

  v30 = MEMORY[0x277CCAAD0];
  v22 = [(UIStackView *)self->_containerStackView topAnchor];
  v23 = [v13 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v36[0] = v24;
  v25 = [(UIStackView *)self->_containerStackView bottomAnchor];
  v26 = [v13 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v28 = self->_containerLeadingConstraint;
  v36[1] = v27;
  v36[2] = v28;
  v36[3] = self->_containerTrailingContraint;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [v30 activateConstraints:v29];

  [(MUIFeedbackNotificationViewController *)self _arrangeAndConfigureLeadingAccessoryView];
  [(MUIFeedbackNotificationViewController *)self _arrangeAndConfigureTrailingAccessoryView];
  [v31 systemLayoutSizeFittingSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [(MUIFeedbackNotificationViewController *)self setPreferredContentSize:?];
}

- (void)setLeadingAccessoryView:(id)a3
{
  v5 = a3;
  leadingAccessoryView = self->_leadingAccessoryView;
  if (leadingAccessoryView != v5)
  {
    v7 = v5;
    if (leadingAccessoryView)
    {
      [(UIStackView *)self->_containerStackView removeArrangedSubview:?];
    }

    objc_storeStrong(&self->_leadingAccessoryView, a3);
    [(MUIFeedbackNotificationViewController *)self _arrangeAndConfigureLeadingAccessoryView];
    v5 = v7;
  }
}

- (void)setTrailingAccessoryView:(id)a3
{
  v5 = a3;
  trailingAccessoryView = self->_trailingAccessoryView;
  if (trailingAccessoryView != v5)
  {
    v7 = v5;
    if (trailingAccessoryView)
    {
      [(UIStackView *)self->_containerStackView removeArrangedSubview:?];
    }

    objc_storeStrong(&self->_trailingAccessoryView, a3);
    [(MUIFeedbackNotificationViewController *)self _arrangeAndConfigureTrailingAccessoryView];
    v5 = v7;
  }
}

- (void)_arrangeAndConfigureLeadingAccessoryView
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (!self->_leadingAccessoryView)
  {
    v3 = 24.0;
  }

  [(NSLayoutConstraint *)self->_containerLeadingConstraint setConstant:v3];
  leadingAccessoryView = self->_leadingAccessoryView;
  if (leadingAccessoryView)
  {
    v5 = MEMORY[0x277CCAAD0];
    v6 = [(UIView *)leadingAccessoryView widthAnchor];
    v7 = [v6 constraintEqualToConstant:32.0];
    v11[0] = v7;
    v8 = [(UIView *)self->_leadingAccessoryView heightAnchor];
    v9 = [v8 constraintEqualToConstant:32.0];
    v11[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    [v5 activateConstraints:v10];

    [(UIStackView *)self->_containerStackView insertArrangedSubview:self->_leadingAccessoryView atIndex:0];
  }
}

- (void)_arrangeAndConfigureTrailingAccessoryView
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (!self->_trailingAccessoryView)
  {
    v3 = 24.0;
  }

  [(NSLayoutConstraint *)self->_containerTrailingContraint setConstant:v3];
  trailingAccessoryView = self->_trailingAccessoryView;
  if (trailingAccessoryView)
  {
    v5 = MEMORY[0x277CCAAD0];
    v6 = [(UIView *)trailingAccessoryView widthAnchor];
    v7 = [v6 constraintEqualToConstant:32.0];
    v11[0] = v7;
    v8 = [(UIView *)self->_trailingAccessoryView heightAnchor];
    v9 = [v8 constraintEqualToConstant:32.0];
    v11[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    [v5 activateConstraints:v10];

    [(UIStackView *)self->_containerStackView addArrangedSubview:self->_trailingAccessoryView];
  }
}

@end