@interface SUUIComposeReviewSampleCardView
- (SUUIComposeReviewSampleCardView)initWithFrame:(CGRect)a3;
- (void)_setupView;
@end

@implementation SUUIComposeReviewSampleCardView

- (SUUIComposeReviewSampleCardView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SUUIComposeReviewSampleCardView;
  v3 = [(SUUIComposeReviewSampleCardView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(SUUIComposeReviewSampleCardView *)v3 setBackgroundColor:v4];

    [(SUUIComposeReviewSampleCardView *)v3 _setupView];
  }

  return v3;
}

- (void)_setupView
{
  v3 = [(SUUIComposeReviewSampleCardView *)self layer];
  [v3 setCornerRadius:12.0];

  [(SUUIComposeReviewSampleCardView *)self setClipsToBounds:0];
  v99 = objc_opt_new();
  [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v99 setBackgroundColor:v4];

  v5 = [v99 layer];
  [v5 setCornerRadius:5.0];

  [(SUUIComposeReviewSampleCardView *)self addSubview:v99];
  v6 = [v99 topAnchor];
  v7 = [(SUUIComposeReviewSampleCardView *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:16.0];
  [v8 setActive:1];

  v9 = [v99 leadingAnchor];
  v10 = [(SUUIComposeReviewSampleCardView *)self leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:20.0];
  [v11 setActive:1];

  v12 = [v99 widthAnchor];
  v13 = [v12 constraintEqualToConstant:66.0];
  [v13 setActive:1];

  v14 = [v99 heightAnchor];
  v15 = [v14 constraintEqualToConstant:11.0];
  [v15 setActive:1];

  v16 = objc_opt_new();
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SUUIComposeReviewSampleCardView *)self addSubview:v16];
  [v16 layoutSubviews];
  v17 = [v16 firstBaselineAnchor];
  v18 = [(SUUIComposeReviewSampleCardView *)self topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:50.0];
  [v19 setActive:1];

  v20 = [v16 leadingAnchor];
  v21 = [(SUUIComposeReviewSampleCardView *)self leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:20.0];
  [v22 setActive:1];

  v23 = objc_opt_new();
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = SUUIFontLimitedPreferredFontForTextStyle(11, 7);
  [v23 setFont:v24];

  v25 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v23 setTextColor:v25];

  [(SUUIComposeReviewSampleCardView *)self addSubview:v23];
  v26 = [v23 firstBaselineAnchor];
  v27 = [v16 firstBaselineAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:5.0];
  [v28 setActive:1];

  v29 = [v23 trailingAnchor];
  v30 = [(SUUIComposeReviewSampleCardView *)self trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-20.0];
  [v31 setActive:1];

  v32 = [v23 leadingAnchor];
  v33 = [(SUUIComposeReviewSampleCardView *)self centerXAnchor];
  v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:20.0];
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
  v43 = [MEMORY[0x277D75348] systemOrangeColor];
  [v37 setTintColor:v43];

  v44 = [v37 leadingAnchor];
  v45 = [v23 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:14.0];
  [v46 setActive:1];

  v47 = [v37 centerYAnchor];
  v48 = [v23 centerYAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = objc_opt_new();
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v50 setBackgroundColor:v51];

  v52 = [v50 layer];
  [v52 setCornerRadius:5.0];

  [(SUUIComposeReviewSampleCardView *)self addSubview:v50];
  v53 = [v50 topAnchor];
  v54 = [v23 firstBaselineAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:13.0];
  [v55 setActive:1];

  v56 = [v50 widthAnchor];
  v57 = [v56 constraintEqualToConstant:222.0];
  [v57 setActive:1];

  v58 = [v50 leadingAnchor];
  v59 = [(SUUIComposeReviewSampleCardView *)self leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:20.0];
  [v60 setActive:1];

  v61 = [v50 trailingAnchor];
  v62 = [(SUUIComposeReviewSampleCardView *)self trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:-20.0];
  [v63 setActive:1];

  v64 = [v50 heightAnchor];
  v65 = [v64 constraintEqualToConstant:11.0];
  [v65 setActive:1];

  v66 = objc_opt_new();
  [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  v67 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v66 setBackgroundColor:v67];

  v68 = [v66 layer];
  [v68 setCornerRadius:5.0];

  [(SUUIComposeReviewSampleCardView *)self addSubview:v66];
  v69 = [v66 topAnchor];
  v70 = [v50 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:7.0];
  [v71 setActive:1];

  v72 = [v66 leadingAnchor];
  v73 = [(SUUIComposeReviewSampleCardView *)self leadingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:20.0];
  [v74 setActive:1];

  v75 = [v66 trailingAnchor];
  v76 = [(SUUIComposeReviewSampleCardView *)self trailingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:-20.0];
  [v77 setActive:1];

  v78 = [v66 heightAnchor];
  v79 = [v78 constraintEqualToConstant:11.0];
  [v79 setActive:1];

  v80 = objc_opt_new();
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  v81 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v80 setBackgroundColor:v81];

  v82 = [v80 layer];
  [v82 setCornerRadius:5.0];

  [(SUUIComposeReviewSampleCardView *)self addSubview:v80];
  v83 = [v80 topAnchor];
  v84 = [v66 bottomAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:7.0];
  [v85 setActive:1];

  v86 = [v80 leadingAnchor];
  v87 = [(SUUIComposeReviewSampleCardView *)self leadingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:20.0];
  [v88 setActive:1];

  v89 = [v80 trailingAnchor];
  v90 = [(SUUIComposeReviewSampleCardView *)self trailingAnchor];
  v91 = [v89 constraintEqualToAnchor:v90 constant:-20.0];
  [v91 setActive:1];

  v92 = [v80 heightAnchor];
  v93 = [v92 constraintEqualToConstant:11.0];
  [v93 setActive:1];

  v94 = [v80 bottomAnchor];
  v95 = [(SUUIComposeReviewSampleCardView *)self bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95 constant:-20.0];
  [v96 setActive:1];
}

@end