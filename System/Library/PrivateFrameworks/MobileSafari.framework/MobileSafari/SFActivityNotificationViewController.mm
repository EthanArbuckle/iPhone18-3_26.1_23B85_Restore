@interface SFActivityNotificationViewController
- (SFActivityNotificationViewController)initWithTitleText:(id)text messageText:(id)messageText;
- (void)_arrangeAndConfigureLeadingAccessoryView;
- (void)_arrangeAndConfigureTrailingAccessoryView;
- (void)setLeadingAccessoryView:(id)view;
- (void)setTrailingAccessoryView:(id)view;
- (void)viewDidLoad;
@end

@implementation SFActivityNotificationViewController

- (SFActivityNotificationViewController)initWithTitleText:(id)text messageText:(id)messageText
{
  textCopy = text;
  messageTextCopy = messageText;
  v15.receiver = self;
  v15.super_class = SFActivityNotificationViewController;
  v8 = [(SFActivityNotificationViewController *)&v15 init];
  if (v8)
  {
    v9 = [textCopy copy];
    titleText = v8->_titleText;
    v8->_titleText = v9;

    v11 = [messageTextCopy copy];
    messageText = v8->_messageText;
    v8->_messageText = v11;

    v13 = v8;
  }

  return v8;
}

- (void)viewDidLoad
{
  v36[4] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = SFActivityNotificationViewController;
  [(SFActivityNotificationViewController *)&v35 viewDidLoad];
  view = [(SFActivityNotificationViewController *)self view];
  [view setInsetsLayoutMarginsFromSafeArea:0];
  [view setLayoutMargins:{8.0, 8.0, 8.0, 8.0}];
  v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  containerStackView = self->_containerStackView;
  self->_containerStackView = v4;

  [(UIStackView *)self->_containerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_containerStackView setAlignment:3];
  [(UIStackView *)self->_containerStackView setSpacing:8.0];
  v31 = view;
  [view addSubview:self->_containerStackView];
  v6 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v6 setAxis:1];
  [v6 setAlignment:3];
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];
  [(UIStackView *)self->_containerStackView addArrangedSubview:v6];
  v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v8 = *MEMORY[0x1E69DDD28];
  v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB958]];
  [v34 setFont:v9];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v34 setTextColor:labelColor];

  [v34 setText:self->_titleText];
  v33 = v6;
  [v6 addArrangedSubview:v34];
  v32 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v11 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v8 weight:*MEMORY[0x1E69DB970]];
  [v32 setFont:v11];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v32 setTextColor:secondaryLabelColor];

  [v32 setText:self->_messageText];
  [v6 addArrangedSubview:v32];
  layoutMarginsGuide = [view layoutMarginsGuide];
  leadingAnchor = [(UIStackView *)self->_containerStackView leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
  containerLeadingConstraint = self->_containerLeadingConstraint;
  self->_containerLeadingConstraint = v16;

  trailingAnchor = [layoutMarginsGuide trailingAnchor];
  trailingAnchor2 = [(UIStackView *)self->_containerStackView trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:24.0];
  containerTrailingContraint = self->_containerTrailingContraint;
  self->_containerTrailingContraint = v20;

  v30 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIStackView *)self->_containerStackView topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[0] = v24;
  bottomAnchor = [(UIStackView *)self->_containerStackView bottomAnchor];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28 = self->_containerLeadingConstraint;
  v36[1] = v27;
  v36[2] = v28;
  v36[3] = self->_containerTrailingContraint;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
  [v30 activateConstraints:v29];

  [(SFActivityNotificationViewController *)self _arrangeAndConfigureLeadingAccessoryView];
  [(SFActivityNotificationViewController *)self _arrangeAndConfigureTrailingAccessoryView];
  [v31 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [(SFActivityNotificationViewController *)self setPreferredContentSize:?];
}

- (void)setLeadingAccessoryView:(id)view
{
  viewCopy = view;
  leadingAccessoryView = self->_leadingAccessoryView;
  if (leadingAccessoryView != viewCopy)
  {
    v7 = viewCopy;
    if (leadingAccessoryView)
    {
      [(UIStackView *)self->_containerStackView removeArrangedSubview:?];
    }

    objc_storeStrong(&self->_leadingAccessoryView, view);
    [(SFActivityNotificationViewController *)self _arrangeAndConfigureLeadingAccessoryView];
    viewCopy = v7;
  }
}

- (void)setTrailingAccessoryView:(id)view
{
  viewCopy = view;
  trailingAccessoryView = self->_trailingAccessoryView;
  if (trailingAccessoryView != viewCopy)
  {
    v7 = viewCopy;
    if (trailingAccessoryView)
    {
      [(UIStackView *)self->_containerStackView removeArrangedSubview:?];
    }

    objc_storeStrong(&self->_trailingAccessoryView, view);
    [(SFActivityNotificationViewController *)self _arrangeAndConfigureTrailingAccessoryView];
    viewCopy = v7;
  }
}

- (void)_arrangeAndConfigureLeadingAccessoryView
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  if (!self->_leadingAccessoryView)
  {
    v3 = 24.0;
  }

  [(NSLayoutConstraint *)self->_containerLeadingConstraint setConstant:v3];
  leadingAccessoryView = self->_leadingAccessoryView;
  if (leadingAccessoryView)
  {
    v5 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIView *)leadingAccessoryView widthAnchor];
    v7 = [widthAnchor constraintEqualToConstant:32.0];
    v11[0] = v7;
    heightAnchor = [(UIView *)self->_leadingAccessoryView heightAnchor];
    v9 = [heightAnchor constraintEqualToConstant:32.0];
    v11[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [v5 activateConstraints:v10];

    [(UIStackView *)self->_containerStackView insertArrangedSubview:self->_leadingAccessoryView atIndex:0];
  }
}

- (void)_arrangeAndConfigureTrailingAccessoryView
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  if (!self->_trailingAccessoryView)
  {
    v3 = 24.0;
  }

  [(NSLayoutConstraint *)self->_containerTrailingContraint setConstant:v3];
  trailingAccessoryView = self->_trailingAccessoryView;
  if (trailingAccessoryView)
  {
    v5 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIView *)trailingAccessoryView widthAnchor];
    v7 = [widthAnchor constraintEqualToConstant:32.0];
    v11[0] = v7;
    heightAnchor = [(UIView *)self->_trailingAccessoryView heightAnchor];
    v9 = [heightAnchor constraintEqualToConstant:32.0];
    v11[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [v5 activateConstraints:v10];

    [(UIStackView *)self->_containerStackView addArrangedSubview:self->_trailingAccessoryView];
  }
}

@end