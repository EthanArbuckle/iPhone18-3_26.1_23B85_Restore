@interface MUPlaceSectionHeaderView
- (MUPlaceSectionHeaderView)initWithViewModel:(id)model;
- (void)_contentSizeDidChange;
- (void)_setupHeader;
- (void)beginAnimatingActivityIndicator;
- (void)endAnimatingActivityIndicatorWithError:(id)error;
@end

@implementation MUPlaceSectionHeaderView

- (void)endAnimatingActivityIndicatorWithError:(id)error
{
  [(UIButton *)self->_seeAllButton setAlpha:error, 1.0];
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
  _mapsui_defaultLabel = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = _mapsui_defaultLabel;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  titleString = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel titleString];
  [(UILabel *)self->_titleLabel set_mapsui_text:titleString];

  v6 = MUPlaceSectionHeaderFont();
  [(UILabel *)self->_titleLabel setFont:v6];

  v7 = +[MUInfoCardStyle sectionHeaderTextColor];
  [(UILabel *)self->_titleLabel setTextColor:v7];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"PlaceSectionHeaderTitle"];
  [(MUPlaceSectionHeaderView *)self addSubview:self->_titleLabel];
  subtitleString = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel subtitleString];
  v9 = [subtitleString length];

  if (v9)
  {
    v10 = [MUInfoCardStyle vibrantLabelForProminence:1];
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v10;

    [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    subtitleString2 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel subtitleString];
    [(UILabel *)self->_subtitleLabel set_mapsui_text:subtitleString2];

    v13 = MUPlaceSectionHeaderSubtitleFont();
    [(UILabel *)self->_subtitleLabel setFont:v13];

    [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:@"PlaceSectionHeaderSubtitle"];
    [(MUPlaceSectionHeaderView *)self addSubview:self->_subtitleLabel];
  }

  seeMoreButtonText = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel seeMoreButtonText];
  if (![seeMoreButtonText length])
  {

    goto LABEL_18;
  }

  target = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel target];
  [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel selector];
  if (objc_opt_respondsToSelector())
  {
  }

  else
  {
    seeMoreButtonMenu = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel seeMoreButtonMenu];

    if (!seeMoreButtonMenu)
    {
      goto LABEL_18;
    }
  }

  _mapsui_sectionHeaderButton = [MEMORY[0x1E69DC738] _mapsui_sectionHeaderButton];
  seeAllButton = self->_seeAllButton;
  self->_seeAllButton = _mapsui_sectionHeaderButton;

  [(UIButton *)self->_seeAllButton setTranslatesAutoresizingMaskIntoConstraints:0];
  seeMoreButtonText2 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel seeMoreButtonText];
  [(UIButton *)self->_seeAllButton set_mapsui_title:seeMoreButtonText2];

  seeMoreButtonMenu2 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel seeMoreButtonMenu];

  headerViewModel = self->_headerViewModel;
  if (seeMoreButtonMenu2)
  {
    seeMoreButtonMenu3 = [(MUPlaceSectionHeaderViewModel *)headerViewModel seeMoreButtonMenu];
    [(UIButton *)self->_seeAllButton setMenu:seeMoreButtonMenu3];

    [(UIButton *)self->_seeAllButton setShowsMenuAsPrimaryAction:1];
    [(UIButton *)self->_seeAllButton setPreferredMenuElementOrder:2];
    target2 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel target];
    [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel selector];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = self->_seeAllButton;
      target3 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel target];
      [(UIButton *)v25 addTarget:target3 action:[(MUPlaceSectionHeaderViewModel *)self->_headerViewModel selector] forControlEvents:0x4000];
LABEL_13:
    }
  }

  else
  {
    target4 = [(MUPlaceSectionHeaderViewModel *)headerViewModel target];
    [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel selector];
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      v29 = self->_seeAllButton;
      target3 = [(MUPlaceSectionHeaderViewModel *)self->_headerViewModel target];
      [(UIButton *)v29 _mapsui_setTarget:target3 action:[(MUPlaceSectionHeaderViewModel *)self->_headerViewModel selector]];
      goto LABEL_13;
    }
  }

  v30 = +[MUInfoCardStyle tintColor];
  [(UIButton *)self->_seeAllButton setTintColor:v30];

  if (+[MUInfoCardStyle sectionHeaderStyle]== 1)
  {
    borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    [borderlessButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_2329];
    [borderlessButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [(UIButton *)self->_seeAllButton setConfiguration:borderlessButtonConfiguration];
  }

  else
  {
    titleLabel = [(UIButton *)self->_seeAllButton titleLabel];
    [titleLabel setAdjustsFontForContentSizeCategory:1];

    borderlessButtonConfiguration = MUPlaceSectionHeaderAccessoryButtonFont();
    titleLabel2 = [(UIButton *)self->_seeAllButton titleLabel];
    [titleLabel2 setFont:borderlessButtonConfiguration];
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
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(MUPlaceSectionHeaderView *)self leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v105[0] = v40;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(MUPlaceSectionHeaderView *)self topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v105[1] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
  v101 = v37;
  [v37 addObjectsFromArray:v44];

  v45 = self->_titleLabel;
  v46 = self->_subtitleLabel;
  if (v46)
  {
    leadingAnchor3 = [(UILabel *)v46 leadingAnchor];
    leadingAnchor4 = [(MUPlaceSectionHeaderView *)self leadingAnchor];
    v47 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v104[0] = v47;
    topAnchor3 = [(UILabel *)self->_subtitleLabel topAnchor];
    bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
    [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
    v50 = v94 = v45;
    v104[1] = v50;
    bottomAnchor2 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    bottomAnchor3 = [(MUPlaceSectionHeaderView *)self bottomAnchor];
    v53 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v104[2] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:3];
    [v101 addObjectsFromArray:v54];

    v45 = self->_subtitleLabel;
  }

  bottomAnchor4 = [(UILabel *)v45 bottomAnchor];
  bottomAnchor5 = [(MUPlaceSectionHeaderView *)self bottomAnchor];
  v57 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v58 = v101;
  [v101 addObject:v57];

  v59 = self->_seeAllButton;
  if (v59)
  {
    bottomAnchor6 = [(UIButton *)v59 bottomAnchor];
    bottomAnchor7 = [(MUPlaceSectionHeaderView *)self bottomAnchor];
    v62 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];

    LODWORD(v63) = 1132068864;
    [v62 setPriority:v63];
    trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
    leadingAnchor5 = [(UIButton *)self->_seeAllButton leadingAnchor];
    v99 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor5 constant:-8.0];
    v103[0] = v99;
    trailingAnchor2 = [(UIButton *)self->_seeAllButton trailingAnchor];
    trailingAnchor3 = [(MUPlaceSectionHeaderView *)self trailingAnchor];
    v93 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v103[1] = v93;
    firstBaselineAnchor = [(UIButton *)self->_seeAllButton firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v91 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v103[2] = v91;
    topAnchor4 = [(UIButton *)self->_seeAllButton topAnchor];
    topAnchor5 = [(MUPlaceSectionHeaderView *)self topAnchor];
    v86 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5];
    v103[3] = v86;
    v103[4] = v62;
    leadingAnchor6 = [(UIFocusGuide *)self->_headerFocusGuide leadingAnchor];
    leadingAnchor7 = [(MUPlaceSectionHeaderView *)self leadingAnchor];
    v83 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v103[5] = v83;
    trailingAnchor4 = [(UIFocusGuide *)self->_headerFocusGuide trailingAnchor];
    trailingAnchor5 = [(MUPlaceSectionHeaderView *)self trailingAnchor];
    v80 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v103[6] = v80;
    topAnchor6 = [(UIFocusGuide *)self->_headerFocusGuide topAnchor];
    topAnchor7 = [(MUPlaceSectionHeaderView *)self topAnchor];
    v66 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v103[7] = v66;
    bottomAnchor8 = [(UIFocusGuide *)self->_headerFocusGuide bottomAnchor];
    bottomAnchor9 = [(MUPlaceSectionHeaderView *)self bottomAnchor];
    v69 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v103[8] = v69;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:9];
    [v101 addObjectsFromArray:v70];

    trailingAnchor6 = v62;
    trailingAnchor7 = trailingAnchor;

    v73 = leadingAnchor5;
    v58 = v101;
  }

  else
  {
    trailingAnchor6 = [(UILabel *)self->_titleLabel trailingAnchor];
    trailingAnchor7 = [(MUPlaceSectionHeaderView *)self trailingAnchor];
    v73 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
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

- (MUPlaceSectionHeaderView)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = MUPlaceSectionHeaderView;
  v6 = [(MUPlaceSectionHeaderView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headerViewModel, model);
    [(MUPlaceSectionHeaderView *)v7 _setupHeader];
  }

  return v7;
}

@end