@interface BKUIPeriocularSelectionCell
- (BKUIPeriocularSelectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)BKUIPeriocularSelectionCellTopBottomPadding;
- (id)_descriptionFont;
- (id)_titleFont;
@end

@implementation BKUIPeriocularSelectionCell

- (double)BKUIPeriocularSelectionCellTopBottomPadding
{
  v2 = MGGetSInt32Answer();
  result = 30.0;
  if (v2 == 30)
  {
    return 28.0;
  }

  return result;
}

- (BKUIPeriocularSelectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v104[5] = *MEMORY[0x277D85DE8];
  v102.receiver = self;
  v102.super_class = BKUIPeriocularSelectionCell;
  v4 = [(BKUIPeriocularSelectionCell *)&v102 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    v6 = [MEMORY[0x277D755B8] imageNamed:@"faceid"];
    v7 = [v5 initWithImage:v6];
    iconView = v4->_iconView;
    v4->_iconView = v7;

    v9 = objc_alloc(MEMORY[0x277D756B8]);
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v14;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(BKUIPeriocularSelectionCell *)v4 _titleFont];
    [(UILabel *)v4->_titleLabel setFont:v16];

    v17 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v17];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v18) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:1 forAxis:v18];
    v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v19;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [(BKUIPeriocularSelectionCell *)v4 _descriptionFont];
    [(UILabel *)v4->_subtitleLabel setFont:v21];

    v22 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:v22];

    [(UILabel *)v4->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v23) = 1148846080;
    [(UILabel *)v4->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v23];
    [(UIImageView *)v4->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconView setContentMode:2];
    v24 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    [v24 setNumberOfLines:0];

    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v11, v12, v13}];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    [v25 addSubview:v26];

    v27 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    [v25 addSubview:v27];

    v28 = [(BKUIPeriocularSelectionCell *)v4 contentView];
    [v28 addSubview:v25];

    v29 = [(BKUIPeriocularSelectionCell *)v4 contentView];
    v30 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    [v29 addSubview:v30];

    v31 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(BKUIPeriocularSelectionCell *)v4 setBackgroundColor:v31];

    v83 = MEMORY[0x277CCAAD0];
    v97 = [v25 topAnchor];
    v99 = [(BKUIPeriocularSelectionCell *)v4 contentView];
    v95 = [v99 topAnchor];
    v93 = [v97 constraintGreaterThanOrEqualToAnchor:v95];
    v104[0] = v93;
    v101 = v25;
    v89 = [v25 bottomAnchor];
    v91 = [(BKUIPeriocularSelectionCell *)v4 contentView];
    v87 = [v91 bottomAnchor];
    v85 = [v89 constraintLessThanOrEqualToAnchor:v87];
    v104[1] = v85;
    v81 = [v25 leadingAnchor];
    v32 = [(BKUIPeriocularSelectionCell *)v4 leadingAnchor];
    v33 = [v81 constraintEqualToAnchor:v32];
    v104[2] = v33;
    v34 = [v25 trailingAnchor];
    v35 = [(BKUIPeriocularSelectionCell *)v4 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v104[3] = v36;
    v37 = [v25 centerYAnchor];
    v38 = [(BKUIPeriocularSelectionCell *)v4 centerYAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    v104[4] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:5];
    [v83 activateConstraints:v40];

    v72 = MEMORY[0x277CCAAD0];
    v100 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    v98 = [v100 leadingAnchor];
    v96 = [v101 leadingAnchor];
    v94 = [v98 constraintEqualToAnchor:v96 constant:21.0];
    v103[0] = v94;
    v92 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    v90 = [v92 widthAnchor];
    v88 = [v90 constraintEqualToConstant:37.0];
    v103[1] = v88;
    v86 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    v84 = [v86 heightAnchor];
    v82 = [v84 constraintEqualToConstant:37.0];
    v103[2] = v82;
    v80 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    v79 = [v80 centerYAnchor];
    v78 = [(BKUIPeriocularSelectionCell *)v4 centerYAnchor];
    v77 = [v79 constraintEqualToAnchor:v78];
    v103[3] = v77;
    v76 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    v75 = [v76 topAnchor];
    v74 = [v101 topAnchor];
    [(BKUIPeriocularSelectionCell *)v4 BKUIPeriocularSelectionCellTopBottomPadding];
    v73 = [v75 constraintEqualToAnchor:v74 constant:?];
    v103[4] = v73;
    v71 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    v69 = [v71 leadingAnchor];
    v70 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    v68 = [v70 trailingAnchor];
    v67 = [v69 constraintEqualToAnchor:v68 constant:20.0];
    v103[5] = v67;
    v66 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    v65 = [v66 trailingAnchor];
    v64 = [v101 trailingAnchor];
    v63 = [v65 constraintEqualToAnchor:v64 constant:-38.0];
    v103[6] = v63;
    v62 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    v60 = [v62 topAnchor];
    v61 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    v59 = [v61 bottomAnchor];
    v58 = [v60 constraintEqualToAnchor:v59 constant:1.0];
    v103[7] = v58;
    v57 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    v56 = [v57 bottomAnchor];
    v55 = [v101 bottomAnchor];
    [(BKUIPeriocularSelectionCell *)v4 BKUIPeriocularSelectionCellTopBottomPadding];
    v54 = [v56 constraintEqualToAnchor:v55 constant:-v41];
    v103[8] = v54;
    v53 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    v42 = [v53 leadingAnchor];
    v43 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    v44 = [v43 trailingAnchor];
    v45 = [v42 constraintEqualToAnchor:v44 constant:20.0];
    v103[9] = v45;
    v46 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    v47 = [v46 trailingAnchor];
    v48 = [v101 trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:-38.0];
    v103[10] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:11];
    [v72 activateConstraints:v50];
  }

  v51 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_titleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v3 = MEMORY[0x277D74300];
  v4 = [v2 fontDescriptorWithSymbolicTraits:2];
  v5 = [v3 fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (id)_descriptionFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v4 = [v2 fontWithDescriptor:v3 size:0.0];

  return v4;
}

@end