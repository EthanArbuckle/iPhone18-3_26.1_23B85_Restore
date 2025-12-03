@interface SUUIComposeReviewSampleCardView
- (SUUIComposeReviewSampleCardView)initWithFrame:(CGRect)frame;
- (void)_setupView;
@end

@implementation SUUIComposeReviewSampleCardView

- (SUUIComposeReviewSampleCardView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUUIComposeReviewSampleCardView;
  v3 = [(SUUIComposeReviewSampleCardView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(SUUIComposeReviewSampleCardView *)v3 setBackgroundColor:secondarySystemBackgroundColor];

    [(SUUIComposeReviewSampleCardView *)v3 _setupView];
  }

  return v3;
}

- (void)_setupView
{
  layer = [(SUUIComposeReviewSampleCardView *)self layer];
  [layer setCornerRadius:12.0];

  [(SUUIComposeReviewSampleCardView *)self setClipsToBounds:0];
  v99 = objc_opt_new();
  [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v99 setBackgroundColor:tertiarySystemFillColor];

  layer2 = [v99 layer];
  [layer2 setCornerRadius:5.0];

  [(SUUIComposeReviewSampleCardView *)self addSubview:v99];
  topAnchor = [v99 topAnchor];
  topAnchor2 = [(SUUIComposeReviewSampleCardView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [v8 setActive:1];

  leadingAnchor = [v99 leadingAnchor];
  leadingAnchor2 = [(SUUIComposeReviewSampleCardView *)self leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  [v11 setActive:1];

  widthAnchor = [v99 widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:66.0];
  [v13 setActive:1];

  heightAnchor = [v99 heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:11.0];
  [v15 setActive:1];

  v16 = objc_opt_new();
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SUUIComposeReviewSampleCardView *)self addSubview:v16];
  [v16 layoutSubviews];
  firstBaselineAnchor = [v16 firstBaselineAnchor];
  topAnchor3 = [(SUUIComposeReviewSampleCardView *)self topAnchor];
  v19 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:50.0];
  [v19 setActive:1];

  leadingAnchor3 = [v16 leadingAnchor];
  leadingAnchor4 = [(SUUIComposeReviewSampleCardView *)self leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  [v22 setActive:1];

  v23 = objc_opt_new();
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = SUUIFontLimitedPreferredFontForTextStyle(11, 7);
  [v23 setFont:v24];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v23 setTextColor:secondaryLabelColor];

  [(SUUIComposeReviewSampleCardView *)self addSubview:v23];
  firstBaselineAnchor2 = [v23 firstBaselineAnchor];
  firstBaselineAnchor3 = [v16 firstBaselineAnchor];
  v28 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:5.0];
  [v28 setActive:1];

  trailingAnchor = [v23 trailingAnchor];
  trailingAnchor2 = [(SUUIComposeReviewSampleCardView *)self trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  [v31 setActive:1];

  leadingAnchor5 = [v23 leadingAnchor];
  centerXAnchor = [(SUUIComposeReviewSampleCardView *)self centerXAnchor];
  v34 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:centerXAnchor constant:20.0];
  [v34 setActive:1];

  v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v36 = [v35 localizedStringForKey:@"NICKNAME_VIEW_PLACEHOLDER" value:&stru_286AECDE0 table:0];
  [v23 setText:v36];

  v37 = objc_opt_new();
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = MEMORY[0x277D755D0];
  v39 = SUUIFontLimitedPreferredFontForTextStyle(30, 7);
  v98 = [v38 configurationWithFont:v39];

  v40 = MEMORY[0x277D755B8];
  v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v42 = [v40 imageNamed:@"arrow.backward.extended" inBundle:v41];
  v97 = [v42 imageWithSymbolConfiguration:v98];

  [v37 setImage:v97];
  [(SUUIComposeReviewSampleCardView *)self addSubview:v37];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v37 setTintColor:systemOrangeColor];

  leadingAnchor6 = [v37 leadingAnchor];
  trailingAnchor3 = [v23 trailingAnchor];
  v46 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor3 constant:14.0];
  [v46 setActive:1];

  centerYAnchor = [v37 centerYAnchor];
  centerYAnchor2 = [v23 centerYAnchor];
  v49 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v49 setActive:1];

  v50 = objc_opt_new();
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  tertiarySystemFillColor2 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v50 setBackgroundColor:tertiarySystemFillColor2];

  layer3 = [v50 layer];
  [layer3 setCornerRadius:5.0];

  [(SUUIComposeReviewSampleCardView *)self addSubview:v50];
  topAnchor4 = [v50 topAnchor];
  firstBaselineAnchor4 = [v23 firstBaselineAnchor];
  v55 = [topAnchor4 constraintEqualToAnchor:firstBaselineAnchor4 constant:13.0];
  [v55 setActive:1];

  widthAnchor2 = [v50 widthAnchor];
  v57 = [widthAnchor2 constraintEqualToConstant:222.0];
  [v57 setActive:1];

  leadingAnchor7 = [v50 leadingAnchor];
  leadingAnchor8 = [(SUUIComposeReviewSampleCardView *)self leadingAnchor];
  v60 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:20.0];
  [v60 setActive:1];

  trailingAnchor4 = [v50 trailingAnchor];
  trailingAnchor5 = [(SUUIComposeReviewSampleCardView *)self trailingAnchor];
  v63 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-20.0];
  [v63 setActive:1];

  heightAnchor2 = [v50 heightAnchor];
  v65 = [heightAnchor2 constraintEqualToConstant:11.0];
  [v65 setActive:1];

  v66 = objc_opt_new();
  [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  tertiarySystemFillColor3 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v66 setBackgroundColor:tertiarySystemFillColor3];

  layer4 = [v66 layer];
  [layer4 setCornerRadius:5.0];

  [(SUUIComposeReviewSampleCardView *)self addSubview:v66];
  topAnchor5 = [v66 topAnchor];
  bottomAnchor = [v50 bottomAnchor];
  v71 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:7.0];
  [v71 setActive:1];

  leadingAnchor9 = [v66 leadingAnchor];
  leadingAnchor10 = [(SUUIComposeReviewSampleCardView *)self leadingAnchor];
  v74 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:20.0];
  [v74 setActive:1];

  trailingAnchor6 = [v66 trailingAnchor];
  trailingAnchor7 = [(SUUIComposeReviewSampleCardView *)self trailingAnchor];
  v77 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-20.0];
  [v77 setActive:1];

  heightAnchor3 = [v66 heightAnchor];
  v79 = [heightAnchor3 constraintEqualToConstant:11.0];
  [v79 setActive:1];

  v80 = objc_opt_new();
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  tertiarySystemFillColor4 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v80 setBackgroundColor:tertiarySystemFillColor4];

  layer5 = [v80 layer];
  [layer5 setCornerRadius:5.0];

  [(SUUIComposeReviewSampleCardView *)self addSubview:v80];
  topAnchor6 = [v80 topAnchor];
  bottomAnchor2 = [v66 bottomAnchor];
  v85 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:7.0];
  [v85 setActive:1];

  leadingAnchor11 = [v80 leadingAnchor];
  leadingAnchor12 = [(SUUIComposeReviewSampleCardView *)self leadingAnchor];
  v88 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:20.0];
  [v88 setActive:1];

  trailingAnchor8 = [v80 trailingAnchor];
  trailingAnchor9 = [(SUUIComposeReviewSampleCardView *)self trailingAnchor];
  v91 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-20.0];
  [v91 setActive:1];

  heightAnchor4 = [v80 heightAnchor];
  v93 = [heightAnchor4 constraintEqualToConstant:11.0];
  [v93 setActive:1];

  bottomAnchor3 = [v80 bottomAnchor];
  bottomAnchor4 = [(SUUIComposeReviewSampleCardView *)self bottomAnchor];
  v96 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-20.0];
  [v96 setActive:1];
}

@end