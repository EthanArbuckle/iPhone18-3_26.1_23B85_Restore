@interface HRMiniTilePlatterView
- (HRMiniTilePlatterView)initWithtitle:(id)a3 body:(id)a4 footnote:(id)a5 icon:(id)a6 actionText:(id)a7;
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

- (HRMiniTilePlatterView)initWithtitle:(id)a3 body:(id)a4 footnote:(id)a5 icon:(id)a6 actionText:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HRMiniTilePlatterView;
  v17 = [(HRMiniTilePlatterView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, a3);
    objc_storeStrong(&v18->_body, a4);
    objc_storeStrong(&v18->_footnote, a5);
    objc_storeStrong(&v18->_icon, a6);
    objc_storeStrong(&v18->_actionText, a7);
    [(HRMiniTilePlatterView *)v18 _setupView];
    [(HRMiniTilePlatterView *)v18 _setupConstraints];
  }

  return v18;
}

- (void)_setupView
{
  [(HRMiniTilePlatterView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [(HRMiniTilePlatterView *)self setBackgroundColor:v3];

  [(UIView *)self hrui_maskAllCornersWithRadius:*MEMORY[0x277D12798]];
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  v10 = [(HRMiniTilePlatterView *)self icon];
  [v9 setImage:v10];

  [v9 setContentMode:4];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HRMiniTilePlatterView *)self setIconImageView:v9];

  v11 = [(HRMiniTilePlatterView *)self iconImageView];
  [(HRMiniTilePlatterView *)self addSubview:v11];

  v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  v13 = [(HRMiniTilePlatterView *)self title];
  [v12 setText:v13];

  v14 = [(HRMiniTilePlatterView *)self _titleFont];
  [v12 setFont:v14];

  [v12 setAdjustsFontForContentSizeCategory:1];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setNumberOfLines:0];
  [(HRMiniTilePlatterView *)self setTitleLabel:v12];

  v15 = [(HRMiniTilePlatterView *)self titleLabel];
  [(HRMiniTilePlatterView *)self addSubview:v15];

  v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  v17 = [(HRMiniTilePlatterView *)self body];
  [v16 setText:v17];

  v18 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v16 setTextColor:v18];

  v19 = [(HRMiniTilePlatterView *)self _bodyFont];
  [v16 setFont:v19];

  [v16 setAdjustsFontForContentSizeCategory:1];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setNumberOfLines:0];
  [(HRMiniTilePlatterView *)self setBodyLabel:v16];

  v20 = [(HRMiniTilePlatterView *)self bodyLabel];
  [(HRMiniTilePlatterView *)self addSubview:v20];

  v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  v22 = [(HRMiniTilePlatterView *)self footnote];
  [v21 setText:v22];

  v23 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v21 setTextColor:v23];

  v24 = [(HRMiniTilePlatterView *)self _footnoteFont];
  [v21 setFont:v24];

  [v21 setAdjustsFontForContentSizeCategory:1];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setNumberOfLines:0];
  [(HRMiniTilePlatterView *)self setFootnoteLabel:v21];

  v25 = [(HRMiniTilePlatterView *)self footnoteLabel];
  [(HRMiniTilePlatterView *)self addSubview:v25];

  v26 = [objc_alloc(MEMORY[0x277D12A48]) initWithFrame:{v5, v6, v7, v8}];
  v27 = [MEMORY[0x277D75348] separatorColor];
  [v26 setColor:v27];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HRMiniTilePlatterView *)self setSeparatorView:v26];

  v28 = [(HRMiniTilePlatterView *)self separatorView];
  [(HRMiniTilePlatterView *)self addSubview:v28];

  v29 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
  v30 = [(HRMiniTilePlatterView *)self actionText];
  [v29 setText:v30];

  v31 = [MEMORY[0x277D75348] hk_appKeyColor];
  [v29 setTextColor:v31];

  v32 = [(HRMiniTilePlatterView *)self _actionFont];
  [v29 setFont:v32];

  [v29 setAdjustsFontForContentSizeCategory:1];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 setNumberOfLines:0];
  [(HRMiniTilePlatterView *)self setActionLabel:v29];

  v33 = [(HRMiniTilePlatterView *)self actionLabel];
  [(HRMiniTilePlatterView *)self addSubview:v33];
}

- (void)_setupConstraints
{
  v3 = [(HRMiniTilePlatterView *)self iconImageView];
  v4 = [v3 widthAnchor];
  v5 = [v4 constraintEqualToConstant:45.0];
  [v5 setActive:1];

  v6 = [(HRMiniTilePlatterView *)self iconImageView];
  v7 = [v6 heightAnchor];
  v8 = [v7 constraintEqualToConstant:45.0];
  [v8 setActive:1];

  v9 = [(HRMiniTilePlatterView *)self iconImageView];
  v10 = [v9 topAnchor];
  v11 = [(HRMiniTilePlatterView *)self topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:12.0];
  [v12 setActive:1];

  v13 = [(HRMiniTilePlatterView *)self iconImageView];
  v14 = [v13 leadingAnchor];
  v15 = [(HRMiniTilePlatterView *)self leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:14.0];
  [v16 setActive:1];

  v17 = [(HRMiniTilePlatterView *)self titleLabel];
  v18 = [v17 topAnchor];
  v19 = [(HRMiniTilePlatterView *)self iconImageView];
  v20 = [v19 topAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(HRMiniTilePlatterView *)self titleLabel];
  v23 = [v22 leadingAnchor];
  v24 = [(HRMiniTilePlatterView *)self iconImageView];
  v25 = [v24 trailingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25 constant:11.0];
  [v26 setActive:1];

  v27 = [(HRMiniTilePlatterView *)self titleLabel];
  v28 = [v27 trailingAnchor];
  v29 = [(HRMiniTilePlatterView *)self trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-14.0];
  [v30 setActive:1];

  v31 = [(HRMiniTilePlatterView *)self bodyLabel];
  v32 = [v31 topAnchor];
  v33 = [(HRMiniTilePlatterView *)self titleLabel];
  v34 = [v33 bottomAnchor];
  [(HRMiniTilePlatterView *)self _titleBottomToBodyTop];
  v35 = [v32 constraintEqualToAnchor:v34 constant:?];
  [v35 setActive:1];

  v36 = [(HRMiniTilePlatterView *)self bodyLabel];
  v37 = [(HRMiniTilePlatterView *)self titleLabel];
  [v36 hk_alignHorizontalConstraintsWithView:v37 margin:0.0];

  v38 = [(HRMiniTilePlatterView *)self footnoteLabel];
  v39 = [v38 topAnchor];
  v40 = [(HRMiniTilePlatterView *)self bodyLabel];
  v41 = [v40 bottomAnchor];
  [(HRMiniTilePlatterView *)self _bodyBottomToFootnoteTop];
  v42 = [v39 constraintEqualToAnchor:v41 constant:?];
  [v42 setActive:1];

  v43 = [(HRMiniTilePlatterView *)self footnoteLabel];
  v44 = [(HRMiniTilePlatterView *)self bodyLabel];
  [v43 hk_alignHorizontalConstraintsWithView:v44 margin:0.0];

  v45 = [(HRMiniTilePlatterView *)self separatorView];
  v46 = [v45 topAnchor];
  v47 = [(HRMiniTilePlatterView *)self footnoteLabel];
  v48 = [v47 bottomAnchor];
  v49 = [v46 constraintEqualToAnchor:v48 constant:12.0];
  [v49 setActive:1];

  v50 = [(HRMiniTilePlatterView *)self separatorView];
  v51 = [v50 heightAnchor];
  v52 = [(HRMiniTilePlatterView *)self separatorView];
  [v52 separatorThickness];
  v53 = [v51 constraintEqualToConstant:?];
  [v53 setActive:1];

  v54 = [(HRMiniTilePlatterView *)self separatorView];
  v55 = [v54 leadingAnchor];
  v56 = [(HRMiniTilePlatterView *)self footnoteLabel];
  v57 = [v56 leadingAnchor];
  v58 = [v55 constraintEqualToAnchor:v57];
  [v58 setActive:1];

  v59 = [(HRMiniTilePlatterView *)self separatorView];
  v60 = [v59 trailingAnchor];
  v61 = [(HRMiniTilePlatterView *)self trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  [v62 setActive:1];

  v63 = [(HRMiniTilePlatterView *)self actionLabel];
  v64 = [v63 topAnchor];
  v65 = [(HRMiniTilePlatterView *)self separatorView];
  v66 = [v65 bottomAnchor];
  v67 = [v64 constraintEqualToAnchor:v66 constant:12.0];
  [v67 setActive:1];

  v68 = [(HRMiniTilePlatterView *)self actionLabel];
  v69 = [v68 bottomAnchor];
  v70 = [(HRMiniTilePlatterView *)self bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:-12.0];
  [v71 setActive:1];

  v73 = [(HRMiniTilePlatterView *)self actionLabel];
  v72 = [(HRMiniTilePlatterView *)self footnoteLabel];
  [v73 hk_alignHorizontalConstraintsWithView:v72 margin:0.0];
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRMiniTilePlatterView *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRMiniTilePlatterView *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (id)_footnoteFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRMiniTilePlatterView *)self _footnoteTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (id)_actionFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRMiniTilePlatterView *)self _actionTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (double)_titleBottomToBodyTop
{
  v2 = [(HRMiniTilePlatterView *)self _bodyFont];
  [v2 _scaledValueForValue:4.0];
  v4 = v3;

  return v4;
}

- (double)_bodyBottomToFootnoteTop
{
  v2 = [(HRMiniTilePlatterView *)self _bodyFont];
  [v2 _scaledValueForValue:6.0];
  v4 = v3;

  return v4;
}

@end