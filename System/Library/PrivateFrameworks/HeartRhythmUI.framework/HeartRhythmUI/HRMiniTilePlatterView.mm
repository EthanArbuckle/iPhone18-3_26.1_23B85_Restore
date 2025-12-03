@interface HRMiniTilePlatterView
- (HRMiniTilePlatterView)initWithtitle:(id)withtitle body:(id)body footnote:(id)footnote icon:(id)icon actionText:(id)text;
- (double)_bodyBottomToFootnoteTop;
- (double)_titleBottomToBodyTop;
- (id)_actionFont;
- (id)_bodyFont;
- (id)_footnoteFont;
- (id)_titleFont;
- (void)_setupConstraints;
- (void)_setupView;
@end

@implementation HRMiniTilePlatterView

- (HRMiniTilePlatterView)initWithtitle:(id)withtitle body:(id)body footnote:(id)footnote icon:(id)icon actionText:(id)text
{
  withtitleCopy = withtitle;
  bodyCopy = body;
  footnoteCopy = footnote;
  iconCopy = icon;
  textCopy = text;
  v21.receiver = self;
  v21.super_class = HRMiniTilePlatterView;
  v17 = [(HRMiniTilePlatterView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, withtitle);
    objc_storeStrong(&v18->_body, body);
    objc_storeStrong(&v18->_footnote, footnote);
    objc_storeStrong(&v18->_icon, icon);
    objc_storeStrong(&v18->_actionText, text);
    [(HRMiniTilePlatterView *)v18 _setupView];
    [(HRMiniTilePlatterView *)v18 _setupConstraints];
  }

  return v18;
}

- (void)_setupView
{
  [(HRMiniTilePlatterView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [(HRMiniTilePlatterView *)self setBackgroundColor:systemGroupedBackgroundColor];

  [(UIView *)self hrui_maskAllCornersWithRadius:*MEMORY[0x277D12798]];
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  icon = [(HRMiniTilePlatterView *)self icon];
  [v9 setImage:icon];

  [v9 setContentMode:4];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HRMiniTilePlatterView *)self setIconImageView:v9];

  iconImageView = [(HRMiniTilePlatterView *)self iconImageView];
  [(HRMiniTilePlatterView *)self addSubview:iconImageView];

  v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  title = [(HRMiniTilePlatterView *)self title];
  [v12 setText:title];

  _titleFont = [(HRMiniTilePlatterView *)self _titleFont];
  [v12 setFont:_titleFont];

  [v12 setAdjustsFontForContentSizeCategory:1];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setNumberOfLines:0];
  [(HRMiniTilePlatterView *)self setTitleLabel:v12];

  titleLabel = [(HRMiniTilePlatterView *)self titleLabel];
  [(HRMiniTilePlatterView *)self addSubview:titleLabel];

  v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  body = [(HRMiniTilePlatterView *)self body];
  [v16 setText:body];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v16 setTextColor:secondaryLabelColor];

  _bodyFont = [(HRMiniTilePlatterView *)self _bodyFont];
  [v16 setFont:_bodyFont];

  [v16 setAdjustsFontForContentSizeCategory:1];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setNumberOfLines:0];
  [(HRMiniTilePlatterView *)self setBodyLabel:v16];

  bodyLabel = [(HRMiniTilePlatterView *)self bodyLabel];
  [(HRMiniTilePlatterView *)self addSubview:bodyLabel];

  v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  footnote = [(HRMiniTilePlatterView *)self footnote];
  [v21 setText:footnote];

  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v21 setTextColor:secondaryLabelColor2];

  _footnoteFont = [(HRMiniTilePlatterView *)self _footnoteFont];
  [v21 setFont:_footnoteFont];

  [v21 setAdjustsFontForContentSizeCategory:1];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setNumberOfLines:0];
  [(HRMiniTilePlatterView *)self setFootnoteLabel:v21];

  footnoteLabel = [(HRMiniTilePlatterView *)self footnoteLabel];
  [(HRMiniTilePlatterView *)self addSubview:footnoteLabel];

  v26 = [objc_alloc(MEMORY[0x277D12A48]) initWithFrame:{v5, v6, v7, v8}];
  separatorColor = [MEMORY[0x277D75348] separatorColor];
  [v26 setColor:separatorColor];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HRMiniTilePlatterView *)self setSeparatorView:v26];

  separatorView = [(HRMiniTilePlatterView *)self separatorView];
  [(HRMiniTilePlatterView *)self addSubview:separatorView];

  v29 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  actionText = [(HRMiniTilePlatterView *)self actionText];
  [v29 setText:actionText];

  hk_appKeyColor = [MEMORY[0x277D75348] hk_appKeyColor];
  [v29 setTextColor:hk_appKeyColor];

  _actionFont = [(HRMiniTilePlatterView *)self _actionFont];
  [v29 setFont:_actionFont];

  [v29 setAdjustsFontForContentSizeCategory:1];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 setNumberOfLines:0];
  [(HRMiniTilePlatterView *)self setActionLabel:v29];

  actionLabel = [(HRMiniTilePlatterView *)self actionLabel];
  [(HRMiniTilePlatterView *)self addSubview:actionLabel];
}

- (void)_setupConstraints
{
  iconImageView = [(HRMiniTilePlatterView *)self iconImageView];
  widthAnchor = [iconImageView widthAnchor];
  v5 = [widthAnchor constraintEqualToConstant:45.0];
  [v5 setActive:1];

  iconImageView2 = [(HRMiniTilePlatterView *)self iconImageView];
  heightAnchor = [iconImageView2 heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:45.0];
  [v8 setActive:1];

  iconImageView3 = [(HRMiniTilePlatterView *)self iconImageView];
  topAnchor = [iconImageView3 topAnchor];
  topAnchor2 = [(HRMiniTilePlatterView *)self topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
  [v12 setActive:1];

  iconImageView4 = [(HRMiniTilePlatterView *)self iconImageView];
  leadingAnchor = [iconImageView4 leadingAnchor];
  leadingAnchor2 = [(HRMiniTilePlatterView *)self leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:14.0];
  [v16 setActive:1];

  titleLabel = [(HRMiniTilePlatterView *)self titleLabel];
  topAnchor3 = [titleLabel topAnchor];
  iconImageView5 = [(HRMiniTilePlatterView *)self iconImageView];
  topAnchor4 = [iconImageView5 topAnchor];
  v21 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v21 setActive:1];

  titleLabel2 = [(HRMiniTilePlatterView *)self titleLabel];
  leadingAnchor3 = [titleLabel2 leadingAnchor];
  iconImageView6 = [(HRMiniTilePlatterView *)self iconImageView];
  trailingAnchor = [iconImageView6 trailingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:11.0];
  [v26 setActive:1];

  titleLabel3 = [(HRMiniTilePlatterView *)self titleLabel];
  trailingAnchor2 = [titleLabel3 trailingAnchor];
  trailingAnchor3 = [(HRMiniTilePlatterView *)self trailingAnchor];
  v30 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-14.0];
  [v30 setActive:1];

  bodyLabel = [(HRMiniTilePlatterView *)self bodyLabel];
  topAnchor5 = [bodyLabel topAnchor];
  titleLabel4 = [(HRMiniTilePlatterView *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  [(HRMiniTilePlatterView *)self _titleBottomToBodyTop];
  v35 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:?];
  [v35 setActive:1];

  bodyLabel2 = [(HRMiniTilePlatterView *)self bodyLabel];
  titleLabel5 = [(HRMiniTilePlatterView *)self titleLabel];
  [bodyLabel2 hk_alignHorizontalConstraintsWithView:titleLabel5 margin:0.0];

  footnoteLabel = [(HRMiniTilePlatterView *)self footnoteLabel];
  topAnchor6 = [footnoteLabel topAnchor];
  bodyLabel3 = [(HRMiniTilePlatterView *)self bodyLabel];
  bottomAnchor2 = [bodyLabel3 bottomAnchor];
  [(HRMiniTilePlatterView *)self _bodyBottomToFootnoteTop];
  v42 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:?];
  [v42 setActive:1];

  footnoteLabel2 = [(HRMiniTilePlatterView *)self footnoteLabel];
  bodyLabel4 = [(HRMiniTilePlatterView *)self bodyLabel];
  [footnoteLabel2 hk_alignHorizontalConstraintsWithView:bodyLabel4 margin:0.0];

  separatorView = [(HRMiniTilePlatterView *)self separatorView];
  topAnchor7 = [separatorView topAnchor];
  footnoteLabel3 = [(HRMiniTilePlatterView *)self footnoteLabel];
  bottomAnchor3 = [footnoteLabel3 bottomAnchor];
  v49 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:12.0];
  [v49 setActive:1];

  separatorView2 = [(HRMiniTilePlatterView *)self separatorView];
  heightAnchor2 = [separatorView2 heightAnchor];
  separatorView3 = [(HRMiniTilePlatterView *)self separatorView];
  [separatorView3 separatorThickness];
  v53 = [heightAnchor2 constraintEqualToConstant:?];
  [v53 setActive:1];

  separatorView4 = [(HRMiniTilePlatterView *)self separatorView];
  leadingAnchor4 = [separatorView4 leadingAnchor];
  footnoteLabel4 = [(HRMiniTilePlatterView *)self footnoteLabel];
  leadingAnchor5 = [footnoteLabel4 leadingAnchor];
  v58 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  [v58 setActive:1];

  separatorView5 = [(HRMiniTilePlatterView *)self separatorView];
  trailingAnchor4 = [separatorView5 trailingAnchor];
  trailingAnchor5 = [(HRMiniTilePlatterView *)self trailingAnchor];
  v62 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  [v62 setActive:1];

  actionLabel = [(HRMiniTilePlatterView *)self actionLabel];
  topAnchor8 = [actionLabel topAnchor];
  separatorView6 = [(HRMiniTilePlatterView *)self separatorView];
  bottomAnchor4 = [separatorView6 bottomAnchor];
  v67 = [topAnchor8 constraintEqualToAnchor:bottomAnchor4 constant:12.0];
  [v67 setActive:1];

  actionLabel2 = [(HRMiniTilePlatterView *)self actionLabel];
  bottomAnchor5 = [actionLabel2 bottomAnchor];
  bottomAnchor6 = [(HRMiniTilePlatterView *)self bottomAnchor];
  v71 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-12.0];
  [v71 setActive:1];

  actionLabel3 = [(HRMiniTilePlatterView *)self actionLabel];
  footnoteLabel5 = [(HRMiniTilePlatterView *)self footnoteLabel];
  [actionLabel3 hk_alignHorizontalConstraintsWithView:footnoteLabel5 margin:0.0];
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  _titleFontTextStyle = [(HRMiniTilePlatterView *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_titleFontTextStyle symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HRMiniTilePlatterView *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_bodyFontTextStyle];

  return v4;
}

- (id)_footnoteFont
{
  v2 = MEMORY[0x277D74300];
  _footnoteTextStyle = [(HRMiniTilePlatterView *)self _footnoteTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_footnoteTextStyle symbolicTraits:2];

  return v4;
}

- (id)_actionFont
{
  v2 = MEMORY[0x277D74300];
  _actionTextStyle = [(HRMiniTilePlatterView *)self _actionTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_actionTextStyle symbolicTraits:2];

  return v4;
}

- (double)_titleBottomToBodyTop
{
  _bodyFont = [(HRMiniTilePlatterView *)self _bodyFont];
  [_bodyFont _scaledValueForValue:4.0];
  v4 = v3;

  return v4;
}

- (double)_bodyBottomToFootnoteTop
{
  _bodyFont = [(HRMiniTilePlatterView *)self _bodyFont];
  [_bodyFont _scaledValueForValue:6.0];
  v4 = v3;

  return v4;
}

@end