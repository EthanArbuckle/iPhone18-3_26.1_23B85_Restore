@interface MUPlaceSectionHeaderView
- (MUPlaceSectionHeaderView)initWithViewModel:(id)a3;
- (void)_contentSizeDidChange;
- (void)_setupHeader;
- (void)beginAnimatingActivityIndicator;
- (void)endAnimatingActivityIndicatorWithError:(id)a3;
@end

@implementation MUPlaceSectionHeaderView

- (void)endAnimatingActivityIndicatorWithError:(id)a3
{
  [(UIButton *)self->_seeAllButton setAlpha:a3, 1.0];
  seeAllButton = self->_seeAllButton;

  [(UIButton *)seeAllButton setUserInteractionEnabled:1];
}

- (void)beginAnimatingActivityIndicator
{
  [(UIButton *)self->_seeAllButton setAlpha:0.3];
  seeAllButton = self->_seeAllButton;

  [(UIButton *)seeAllButton setUserInteractionEnabled:0];
}

- (void)_contentSizeDidChange
{
  v3 = MUPlaceSectionHeaderFont();
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = MUPlaceSectionHeaderSubtitleFont();
  [(UILabel *)self->_subtitleLabel setFont:v4];
}

- (void)_setupHeader
{
  v106[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel titleString];
  [(UILabel *)self->_titleLabel set_mapsui_text:v5];

  v6 = MUPlaceSectionHeaderFont();
  [(UILabel *)self->_titleLabel setFont:v6];

  v7 = +[MUInfoCardStyle sectionHeaderTextColor];
  [(UILabel *)self->_titleLabel setTextColor:v7];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"PlaceSectionHeaderTitle"];
  [(MUPlaceSectionHeaderView *)self addSubview:self->_titleLabel];
  v8 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel subtitleString];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [MUInfoCardStyle vibrantLabelForProminence:1];
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v10;

    [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel subtitleString];
    [(UILabel *)self->_subtitleLabel set_mapsui_text:v12];

    v13 = MUPlaceSectionHeaderSubtitleFont();
    [(UILabel *)self->_subtitleLabel setFont:v13];

    [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:@"PlaceSectionHeaderSubtitle"];
    [(MUPlaceSectionHeaderView *)self addSubview:self->_subtitleLabel];
  }

  v14 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel seeMoreButtonText];
  if (![v14 length])
  {

    goto LABEL_18;
  }

  v15 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel target];
  [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel selector];
  if (objc_opt_respondsToSelector())
  {
  }

  else
  {
    v16 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel seeMoreButtonMenu];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  v17 = [MEMORY[0x1E69DC738] _mapsui_sectionHeaderButton];
  seeAllButton = self->_seeAllButton;
  self->_seeAllButton = v17;

  [(UIButton *)self->_seeAllButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel seeMoreButtonText];
  [(UIButton *)self->_seeAllButton set_mapsui_title:v19];

  v20 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel seeMoreButtonMenu];

  headerViewModel = self->_headerViewModel;
  if (v20)
  {
    v22 = [(MUPlaceSectionHeaderViewModel *)headerViewModel seeMoreButtonMenu];
    [(UIButton *)self->_seeAllButton setMenu:v22];

    [(UIButton *)self->_seeAllButton setShowsMenuAsPrimaryAction:1];
    [(UIButton *)self->_seeAllButton setPreferredMenuElementOrder:2];
    v23 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel target];
    [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel selector];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = self->_seeAllButton;
      v26 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel target];
      [(UIButton *)v25 addTarget:v26 action:[(MUPlaceSectionHeaderViewModel *)self->_headerViewModel selector] forControlEvents:0x4000];
LABEL_13:
    }
  }

  else
  {
    v27 = [(MUPlaceSectionHeaderViewModel *)headerViewModel target];
    [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel selector];
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      v29 = self->_seeAllButton;
      v26 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel target];
      [(UIButton *)v29 _mapsui_setTarget:v26 action:[(MUPlaceSectionHeaderViewModel *)self->_headerViewModel selector]];
      goto LABEL_13;
    }
  }

  v30 = +[MUInfoCardStyle tintColor];
  [(UIButton *)self->_seeAllButton setTintColor:v30];

  if (+[MUInfoCardStyle sectionHeaderStyle]== 1)
  {
    v31 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    [v31 setTitleTextAttributesTransformer:&__block_literal_global_2329];
    [v31 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [(UIButton *)self->_seeAllButton setConfiguration:v31];
  }

  else
  {
    v32 = [(UIButton *)self->_seeAllButton titleLabel];
    [v32 setAdjustsFontForContentSizeCategory:1];

    v31 = MUPlaceSectionHeaderAccessoryButtonFont();
    v33 = [(UIButton *)self->_seeAllButton titleLabel];
    [v33 setFont:v31];
  }

  [(UIButton *)self->_seeAllButton setAccessibilityIdentifier:@"PlaceSectionHeaderButton"];
  [(MUPlaceSectionHeaderView *)self addSubview:self->_seeAllButton];
  v34 = objc_alloc_init(MEMORY[0x1E69DCA20]);
  headerFocusGuide = self->_headerFocusGuide;
  self->_headerFocusGuide = v34;

  v106[0] = self->_seeAllButton;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:1];
  [(UIFocusGuide *)self->_headerFocusGuide setPreferredFocusEnvironments:v36];

  [(MUPlaceSectionHeaderView *)self addLayoutGuide:self->_headerFocusGuide];
LABEL_18:
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = [(UILabel *)self->_titleLabel leadingAnchor];
  v39 = [(MUPlaceSectionHeaderView *)self leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v105[0] = v40;
  v41 = [(UILabel *)self->_titleLabel topAnchor];
  v42 = [(MUPlaceSectionHeaderView *)self topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:10.0];
  v105[1] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
  v101 = v37;
  [v37 addObjectsFromArray:v44];

  v45 = self->_titleLabel;
  v46 = self->_subtitleLabel;
  if (v46)
  {
    v98 = [(UILabel *)v46 leadingAnchor];
    v96 = [(MUPlaceSectionHeaderView *)self leadingAnchor];
    v47 = [v98 constraintEqualToAnchor:v96];
    v104[0] = v47;
    v48 = [(UILabel *)self->_subtitleLabel topAnchor];
    v49 = [(UILabel *)self->_titleLabel bottomAnchor];
    [v48 constraintEqualToAnchor:v49 constant:4.0];
    v50 = v94 = v45;
    v104[1] = v50;
    v51 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    v52 = [(MUPlaceSectionHeaderView *)self bottomAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    v104[2] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:3];
    [v101 addObjectsFromArray:v54];

    v45 = self->_subtitleLabel;
  }

  v55 = [(UILabel *)v45 bottomAnchor];
  v56 = [(MUPlaceSectionHeaderView *)self bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  v58 = v101;
  [v101 addObject:v57];

  v59 = self->_seeAllButton;
  if (v59)
  {
    v60 = [(UIButton *)v59 bottomAnchor];
    v61 = [(MUPlaceSectionHeaderView *)self bottomAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];

    LODWORD(v63) = 1132068864;
    [v62 setPriority:v63];
    v89 = [(UILabel *)self->_titleLabel trailingAnchor];
    v90 = [(UIButton *)self->_seeAllButton leadingAnchor];
    v99 = [v89 constraintLessThanOrEqualToAnchor:v90 constant:-8.0];
    v103[0] = v99;
    v97 = [(UIButton *)self->_seeAllButton trailingAnchor];
    v95 = [(MUPlaceSectionHeaderView *)self trailingAnchor];
    v93 = [v97 constraintEqualToAnchor:v95];
    v103[1] = v93;
    v92 = [(UIButton *)self->_seeAllButton firstBaselineAnchor];
    v100 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v91 = [v92 constraintEqualToAnchor:v100];
    v103[2] = v91;
    v88 = [(UIButton *)self->_seeAllButton topAnchor];
    v87 = [(MUPlaceSectionHeaderView *)self topAnchor];
    v86 = [v88 constraintGreaterThanOrEqualToAnchor:v87];
    v103[3] = v86;
    v103[4] = v62;
    v85 = [(UIFocusGuide *)self->_headerFocusGuide leadingAnchor];
    v84 = [(MUPlaceSectionHeaderView *)self leadingAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v103[5] = v83;
    v82 = [(UIFocusGuide *)self->_headerFocusGuide trailingAnchor];
    v81 = [(MUPlaceSectionHeaderView *)self trailingAnchor];
    v80 = [v82 constraintEqualToAnchor:v81];
    v103[6] = v80;
    v64 = [(UIFocusGuide *)self->_headerFocusGuide topAnchor];
    v65 = [(MUPlaceSectionHeaderView *)self topAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    v103[7] = v66;
    v67 = [(UIFocusGuide *)self->_headerFocusGuide bottomAnchor];
    v68 = [(MUPlaceSectionHeaderView *)self bottomAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
    v103[8] = v69;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:9];
    [v101 addObjectsFromArray:v70];

    v71 = v62;
    v72 = v89;

    v73 = v90;
    v58 = v101;
  }

  else
  {
    v71 = [(UILabel *)self->_titleLabel trailingAnchor];
    v72 = [(MUPlaceSectionHeaderView *)self trailingAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];
    [v101 addObject:v73];
  }

  v74 = MEMORY[0x1E696ACD8];
  v75 = [v58 copy];
  [v74 activateConstraints:v75];

  v76 = objc_opt_self();
  v102 = v76;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  v78 = [(MUPlaceSectionHeaderView *)self registerForTraitChanges:v77 withAction:sel__contentSizeDidChange];

  v79 = *MEMORY[0x1E69E9840];
}

id __40__MUPlaceSectionHeaderView__setupHeader__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = MUPlaceSectionHeaderAccessoryButtonFont();
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (MUPlaceSectionHeaderView)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPlaceSectionHeaderView;
  v6 = [(MUPlaceSectionHeaderView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headerViewModel, a3);
    [(MUPlaceSectionHeaderView *)v7 _setupHeader];
  }

  return v7;
}

@end