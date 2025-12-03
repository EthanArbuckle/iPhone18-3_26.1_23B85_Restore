@interface BRShareSettingsButton
- (BRShareSettingsButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation BRShareSettingsButton

- (BRShareSettingsButton)initWithFrame:(CGRect)frame
{
  v60.receiver = self;
  v60.super_class = BRShareSettingsButton;
  v3 = [(BRShareSettingsButton *)&v60 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v3;
  if (v3)
  {
    LODWORD(v4) = 1148846080;
    [(BRShareSettingsButton *)v3 setContentCompressionResistancePriority:1 forAxis:v4];
    LODWORD(v6) = 1148846080;
    [(BRShareSettingsButton *)v5 setContentHuggingPriority:1 forAxis:v6];
    v59 = +[NSMutableArray array];
    v7 = objc_alloc_init(UIStackView);
    [v7 setDirectionalLayoutMargins:{12.0, 16.0, 12.0, 16.0}];
    [v7 setAxis:0];
    [v7 setDistribution:0];
    [v7 setAlignment:3];
    [v7 setUserInteractionEnabled:0];
    [v7 setLayoutMarginsRelativeArrangement:1];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(BRShareSettingsButton *)v5 topAnchor];
    topAnchor2 = [v7 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v59 addObject:v10];

    bottomAnchor = [(BRShareSettingsButton *)v5 bottomAnchor];
    bottomAnchor2 = [v7 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v59 addObject:v13];

    [(BRShareSettingsButton *)v5 addSubview:v7];
    v58 = v7;
    [(BRShareSettingsButton *)v5 setHContainer:v7];
    v56 = objc_alloc_init(UIStackView);
    [v56 setAxis:1];
    [v56 setDistribution:0];
    [v56 setAlignment:1];
    [v56 setUserInteractionEnabled:0];
    [v56 setTranslatesAutoresizingMaskIntoConstraints:1];
    [v56 setSpacing:4.0];
    LODWORD(v14) = 1148846080;
    [v56 setContentCompressionResistancePriority:1 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [v56 setContentHuggingPriority:1 forAxis:v15];
    [v7 addArrangedSubview:v56];
    v16 = objc_alloc_init(BRShareSettingsSeparator);
    [(BRShareSettingsButton *)v5 addSubview:v16];
    leadingAnchor = [(BRShareSettingsButton *)v5 leadingAnchor];
    leadingAnchor2 = [(BRShareSettingsSeparator *)v16 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v61[0] = v18;
    trailingAnchor = [(BRShareSettingsButton *)v5 trailingAnchor];
    v57 = v16;
    trailingAnchor2 = [(BRShareSettingsSeparator *)v16 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v61[1] = v21;
    bottomAnchor3 = [(BRShareSettingsButton *)v5 bottomAnchor];
    bottomAnchor4 = [(BRShareSettingsSeparator *)v16 bottomAnchor];
    v24 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v61[2] = v24;
    v25 = [NSArray arrayWithObjects:v61 count:3];
    [NSLayoutConstraint activateConstraints:v25];

    v26 = +[UIFontMetrics defaultMetrics];
    v27 = objc_opt_new();
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v27;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v30 = [v29 localizedStringForKey:@"SETTINGS_ACTION_TEXT" value:@"Share Options" table:@"Localizable"];
    [(UILabel *)v5->_titleLabel setText:v30];

    v31 = +[UIColor labelColor];
    [(UILabel *)v5->_titleLabel setTextColor:v31];

    v32 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
    v33 = [v26 scaledFontForFont:v32];
    [(UILabel *)v5->_titleLabel setFont:v33];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    LODWORD(v34) = 1148846080;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:1 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(UILabel *)v5->_titleLabel setContentHuggingPriority:1 forAxis:v35];
    [v56 addArrangedSubview:v5->_titleLabel];
    v36 = objc_opt_new();
    detailLabel = v5->_detailLabel;
    v5->_detailLabel = v36;

    [(UILabel *)v5->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = +[UIColor secondaryLabelColor];
    [(UILabel *)v5->_detailLabel setTextColor:v38];

    v39 = [UIFont systemFontOfSize:12.0 weight:UIFontWeightRegular];
    v40 = [v26 scaledFontForFont:v39];
    [(UILabel *)v5->_detailLabel setFont:v40];

    [(UILabel *)v5->_detailLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_detailLabel setNumberOfLines:0];
    [(UILabel *)v5->_detailLabel setText:@" "];
    LODWORD(v41) = 1148846080;
    [(UILabel *)v5->_detailLabel setContentCompressionResistancePriority:1 forAxis:v41];
    LODWORD(v42) = 1148846080;
    [(UILabel *)v5->_detailLabel setContentHuggingPriority:1 forAxis:v42];
    [v56 addArrangedSubview:v5->_detailLabel];
    v43 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:1];
    v44 = [UIImageSymbolConfiguration configurationWithWeight:6];
    v45 = [v43 configurationByApplyingConfiguration:v44];

    v46 = [UIImageView alloc];
    v47 = [UIImage systemImageNamed:@"chevron.forward"];
    v48 = [v46 initWithImage:v47];

    [v48 setPreferredSymbolConfiguration:v45];
    v49 = +[UIColor secondaryLabelColor];
    [v48 setTintColor:v49];

    LODWORD(v50) = 1148846080;
    [v48 setContentCompressionResistancePriority:1 forAxis:v50];
    LODWORD(v51) = 1148846080;
    [v48 setContentHuggingPriority:1 forAxis:v51];
    LODWORD(v52) = 1148846080;
    [v48 setContentCompressionResistancePriority:0 forAxis:v52];
    LODWORD(v53) = 1148846080;
    [v48 setContentHuggingPriority:0 forAxis:v53];
    [v58 addArrangedSubview:v48];
    [NSLayoutConstraint activateConstraints:v59];
    [(BRShareSettingsButton *)v5 setHighlighted:0];
    [(BRShareSettingsButton *)v5 setEnabled:1];
  }

  return v5;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = BRShareSettingsButton;
  [(BRShareSettingsButton *)&v6 setHighlighted:?];
  if (highlightedCopy)
  {
    +[UIColor secondarySystemBackgroundColor];
  }

  else
  {
    +[UIColor systemBackgroundColor];
  }
  v5 = ;
  [(BRShareSettingsButton *)self setBackgroundColor:v5];
}

@end