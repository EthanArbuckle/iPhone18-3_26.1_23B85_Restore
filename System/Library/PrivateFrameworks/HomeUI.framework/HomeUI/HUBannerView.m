@interface HUBannerView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HUBannerView)initWithFrame:(CGRect)a3;
- (HUBannerViewDelegate)delegate;
- (NSString)description;
- (void)_dismissButtonTapped:(id)a3;
- (void)_footerViewTapped:(id)a3;
- (void)_subclass_updateConstraints;
- (void)layoutOptionsDidChange;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setLayoutOptions:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUBannerView

- (HUBannerView)initWithFrame:(CGRect)a3
{
  v50.receiver = self;
  v50.super_class = HUBannerView;
  v3 = [(HUBannerView *)&v50 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUBannerView *)v3 setClipsToBounds:1];
    v5 = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
    [(HUBannerView *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x277D75220] buttonWithType:7];
    dismissButton = v4->_dismissButton;
    v4->_dismissButton = v6;

    [(UIButton *)v4->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_dismissButton setContentMode:1];
    [(UIButton *)v4->_dismissButton setHidden:1];
    [(UIButton *)v4->_dismissButton addTarget:v4 action:sel__dismissButtonTapped_ forControlEvents:64];
    [(HUBannerView *)v4 addSubview:v4->_dismissButton];
    v8 = objc_alloc(MEMORY[0x277D755E8]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v13;

    [(UIImageView *)v4->_iconImageView setContentMode:4];
    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUBannerView *)v4 addSubview:v4->_iconImageView];
    v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v9, v10, v11, v12}];
    supplementaryIconImageView = v4->_supplementaryIconImageView;
    v4->_supplementaryIconImageView = v15;

    [(UIImageView *)v4->_supplementaryIconImageView setContentMode:4];
    [(UIImageView *)v4->_supplementaryIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView addSubview:v4->_supplementaryIconImageView];
    v17 = [objc_alloc(MEMORY[0x277D180D0]) initWithFrame:1 contentMode:{v9, v10, v11, v12}];
    iconView = v4->_iconView;
    v4->_iconView = v17;

    [(HUIconView *)v4->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUBannerView *)v4 addSubview:v4->_iconView];
    v19 = [objc_alloc(MEMORY[0x277D180D0]) initWithFrame:1 contentMode:{v9, v10, v11, v12}];
    supplementaryIconView = v4->_supplementaryIconView;
    v4->_supplementaryIconView = v19;

    [(HUIconView *)v4->_supplementaryIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUIconView *)v4->_iconView addSubview:v4->_supplementaryIconView];
    v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v21;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(HUBannerView *)v4 addSubview:v4->_titleLabel];
    v23 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v23;

    v25 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_descriptionLabel setTextColor:v25];

    [(UILabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
    [(HUBannerView *)v4 addSubview:v4->_descriptionLabel];
    v26 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    lineView = v4->_lineView;
    v4->_lineView = v26;

    v28 = [MEMORY[0x277D75348] tableSeparatorLightColor];
    [(UIView *)v4->_lineView setBackgroundColor:v28];
    [(UIView *)v4->_lineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUBannerView *)v4 addSubview:v4->_lineView];
    v29 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    footerView = v4->_footerView;
    v4->_footerView = v29;

    v31 = v4->_footerView;
    v32 = [(HUBannerView *)v4 backgroundColor];
    [(UIView *)v31 setBackgroundColor:v32];

    [(UIView *)v4->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [(HUBannerView *)v4 layoutOptions];
    [v33 cellCornerRadius];
    v35 = v34;
    v36 = [(UIView *)v4->_footerView layer];
    [v36 setCornerRadius:v35];

    v37 = [(UIView *)v4->_footerView layer];
    [v37 setMaskedCorners:12];

    [(HUBannerView *)v4 addSubview:v4->_footerView];
    v38 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    footerViewLabel = v4->_footerViewLabel;
    v4->_footerViewLabel = v38;

    [(UILabel *)v4->_footerViewLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_footerViewLabel setAdjustsFontForContentSizeCategory:1];
    v40 = [MEMORY[0x277D75348] hf_keyColor];
    [(UILabel *)v4->_footerViewLabel setTextColor:v40];

    [(UIView *)v4->_footerView addSubview:v4->_footerViewLabel];
    v41 = objc_alloc_init(MEMORY[0x277D75220]);
    continueButton = v4->_continueButton;
    v4->_continueButton = v41;

    [(UIButton *)v4->_continueButton setHidden:1];
    v43 = v4->_continueButton;
    v44 = HUCommonImageNamed();
    v45 = [v44 imageFlippedForRightToLeftLayoutDirection];
    [(UIButton *)v43 setImage:v45 forState:0];

    v46 = v4->_continueButton;
    v47 = [MEMORY[0x277D75348] tableSeparatorLightColor];
    [(UIButton *)v46 setTintColor:v47];

    [(UIButton *)v4->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_footerView addSubview:v4->_continueButton];
    v48 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel__footerViewTapped_];
    [v48 setDelegate:v4];
    [(UIView *)v4->_footerView addGestureRecognizer:v48];
  }

  return v4;
}

- (void)setLayoutOptions:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, a3);
    [(HUBannerView *)self layoutOptionsDidChange];
  }
}

- (void)updateConstraints
{
  [(HUBannerView *)self _subclass_updateConstraints];
  v3.receiver = self;
  v3.super_class = HUBannerView;
  [(HUBannerView *)&v3 updateConstraints];
}

- (void)_subclass_updateConstraints
{
  v3 = [(HUBannerView *)self layoutConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    objc_opt_class();
    v5 = [(HUBannerView *)self layoutOptions];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [(HUBannerView *)self dismissButton];
    v9 = [v8 topAnchor];
    v10 = [(HUBannerView *)self topAnchor];
    if (v7)
    {
      [v7 dismissButtonTopInset];
      v11 = [v9 constraintEqualToAnchor:v10 constant:?];
      [v4 addObject:v11];

      v12 = [(HUBannerView *)self dismissButton];
      v13 = [v12 trailingAnchor];
      v14 = [(HUBannerView *)self trailingAnchor];
      [v7 dismissButtonTrailingInset];
      v16 = [v13 constraintEqualToAnchor:v14 constant:-v15];
      [v4 addObject:v16];

      v17 = [(HUBannerView *)self dismissButton];
      v18 = [v17 heightAnchor];
      [v7 dismissButtonHeightAndWidth];
      v19 = [v18 constraintEqualToConstant:?];
      [v4 addObject:v19];

      v20 = [(HUBannerView *)self dismissButton];
      v21 = [v20 widthAnchor];
      [v7 dismissButtonHeightAndWidth];
      v23 = v21;
    }

    else
    {
      v24 = [v9 constraintEqualToAnchor:v10];
      [v4 addObject:v24];

      v25 = [(HUBannerView *)self dismissButton];
      v26 = [v25 trailingAnchor];
      v27 = [(HUBannerView *)self trailingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      [v4 addObject:v28];

      v29 = [(HUBannerView *)self dismissButton];
      v30 = [v29 heightAnchor];
      v31 = [v30 constraintEqualToConstant:0.0];
      [v4 addObject:v31];

      v20 = [(HUBannerView *)self dismissButton];
      v23 = [v20 widthAnchor];
      v21 = v23;
      v22 = 0.0;
    }

    v32 = [v23 constraintEqualToConstant:v22];
    [v4 addObject:v32];

    v33 = [(HUBannerView *)self iconView];
    v34 = [v33 leadingAnchor];
    v35 = [(HUBannerView *)self leadingAnchor];
    v36 = [(HUBannerView *)self layoutOptions];
    [v36 leadingInset];
    v37 = [v34 constraintEqualToAnchor:v35 constant:?];
    [v4 addObject:v37];

    v38 = [(HUBannerView *)self iconImageView];
    v39 = [v38 leadingAnchor];
    v40 = [(HUBannerView *)self iconView];
    v41 = [v40 leadingAnchor];
    v42 = [v39 constraintEqualToAnchor:v41];
    [v4 addObject:v42];

    v43 = [(HUBannerView *)self iconView];
    v44 = [v43 topAnchor];
    v45 = [(HUBannerView *)self topAnchor];
    v46 = [(HUBannerView *)self layoutOptions];
    [v46 titleTopInset];
    v47 = [v44 constraintEqualToAnchor:v45 constant:?];
    [v4 addObject:v47];

    v48 = [(HUBannerView *)self iconImageView];
    v49 = [v48 topAnchor];
    v50 = [(HUBannerView *)self iconView];
    v51 = [v50 topAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    [v4 addObject:v52];

    v53 = [(HUBannerView *)self iconView];
    v54 = [v53 heightAnchor];
    v55 = [(HUBannerView *)self layoutOptions];
    [v55 iconHeight];
    v56 = [v54 constraintEqualToConstant:?];
    [v4 addObject:v56];

    v57 = [(HUBannerView *)self iconImageView];
    v58 = [v57 heightAnchor];
    v59 = [(HUBannerView *)self iconImageView];
    v60 = [v59 image];
    if (v60)
    {
      v52 = [(HUBannerView *)self layoutOptions];
      [v52 iconHeight];
    }

    else
    {
      v61 = 0.0;
    }

    v62 = [v58 constraintEqualToConstant:v61];
    [v4 addObject:v62];

    if (v60)
    {
    }

    v63 = [(HUBannerView *)self iconView];
    v64 = [v63 widthAnchor];
    v65 = [(HUBannerView *)self iconView];
    v66 = [v65 heightAnchor];
    v67 = [v64 constraintEqualToAnchor:v66];
    [v4 addObject:v67];

    v68 = [(HUBannerView *)self iconImageView];
    v69 = [v68 widthAnchor];
    v70 = [(HUBannerView *)self iconImageView];
    v71 = [v70 heightAnchor];
    v72 = [v69 constraintEqualToAnchor:v71];
    [v4 addObject:v72];

    objc_opt_class();
    v73 = [(HUBannerView *)self item];
    v74 = [v73 latestResults];
    v75 = [v74 objectForKeyedSubscript:*MEMORY[0x277D13F38]];
    if (objc_opt_isKindOfClass())
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    v77 = v76;

    v238 = v77;
    if (v77)
    {
      [v77 floatValue];
      v79 = v78;
    }

    else
    {
      v79 = 1.0;
    }

    v80 = [(HUBannerView *)self supplementaryIconView];
    v81 = [v80 widthAnchor];
    v82 = [(HUBannerView *)self iconView];
    v83 = [v82 widthAnchor];
    v84 = [v81 constraintEqualToAnchor:v83];
    [v4 addObject:v84];

    v85 = [(HUBannerView *)self supplementaryIconView];
    v86 = [v85 heightAnchor];
    v87 = [(HUBannerView *)self iconView];
    v88 = [v87 heightAnchor];
    v89 = [v86 constraintEqualToAnchor:v88 multiplier:v79];
    [v4 addObject:v89];

    v90 = [(HUBannerView *)self supplementaryIconView];
    v91 = [v90 bottomAnchor];
    v92 = [(HUBannerView *)self iconView];
    v93 = [v92 bottomAnchor];
    v94 = [v91 constraintEqualToAnchor:v93];
    [v4 addObject:v94];

    v95 = [(HUBannerView *)self supplementaryIconImageView];
    v96 = [v95 widthAnchor];
    v97 = [(HUBannerView *)self iconImageView];
    v98 = [v97 widthAnchor];
    v99 = [v96 constraintEqualToAnchor:v98];
    [v4 addObject:v99];

    v100 = [(HUBannerView *)self supplementaryIconImageView];
    v101 = [v100 heightAnchor];
    v102 = [(HUBannerView *)self iconImageView];
    v103 = [v102 heightAnchor];
    v104 = [v101 constraintEqualToAnchor:v103 multiplier:v79];
    [v4 addObject:v104];

    v105 = [(HUBannerView *)self supplementaryIconImageView];
    v106 = [v105 bottomAnchor];
    v107 = [(HUBannerView *)self iconImageView];
    v108 = [v107 bottomAnchor];
    v109 = [v106 constraintEqualToAnchor:v108];
    [v4 addObject:v109];

    v110 = [(HUBannerView *)self traitCollection];
    v111 = [v110 preferredContentSizeCategory];
    v112 = *MEMORY[0x277D767F8];

    v113 = [(HUBannerView *)self titleLabel];
    v114 = [v113 topAnchor];
    if (v111 >= v112)
    {
      v124 = [(HUBannerView *)self iconView];
      v125 = [v124 bottomAnchor];
      v126 = [(HUBannerView *)self layoutOptions];
      [v126 verticalSpacingForLipElements];
      v127 = [v114 constraintEqualToAnchor:v125 constant:?];
      [v4 addObject:v127];

      v118 = [(HUBannerView *)self titleLabel];
      v119 = [v118 leadingAnchor];
      v120 = [(HUBannerView *)self leadingAnchor];
      v121 = [(HUBannerView *)self layoutOptions];
      [v121 leadingInset];
      v122 = [v119 constraintEqualToAnchor:v120 constant:?];
      [v4 addObject:v122];
    }

    else
    {
      v115 = [(HUBannerView *)self topAnchor];
      v116 = [(HUBannerView *)self layoutOptions];
      [v116 titleTopInset];
      v117 = [v114 constraintEqualToAnchor:v115 constant:?];
      [v4 addObject:v117];

      v118 = [(HUBannerView *)self titleLabel];
      v119 = [v118 leadingAnchor];
      v120 = [(HUBannerView *)self iconView];
      v121 = [v120 trailingAnchor];
      v122 = [(HUBannerView *)self layoutOptions];
      [v122 horizontalItemSpacing];
      v123 = [v119 constraintEqualToAnchor:v121 constant:?];
      [v4 addObject:v123];
    }

    v128 = [(HUBannerView *)self titleLabel];
    v129 = [v128 trailingAnchor];
    v130 = [(HUBannerView *)self trailingAnchor];
    v131 = [(HUBannerView *)self layoutOptions];
    [v131 trailingInset];
    v133 = [v129 constraintEqualToAnchor:v130 constant:-v132];
    [v4 addObject:v133];

    v134 = [(HUBannerView *)self descriptionLabel];
    v135 = [v134 topAnchor];
    v136 = [(HUBannerView *)self titleLabel];
    v137 = [v136 bottomAnchor];
    v138 = [(HUBannerView *)self layoutOptions];
    [v138 verticalLabelSpacing];
    v139 = [v135 constraintEqualToAnchor:v137 constant:?];
    [v4 addObject:v139];

    v140 = [(HUBannerView *)self traitCollection];
    v141 = [v140 preferredContentSizeCategory];

    v142 = [(HUBannerView *)self descriptionLabel];
    v143 = [v142 leadingAnchor];
    if (v141 >= v112)
    {
      v144 = [(HUBannerView *)self leadingAnchor];
      v145 = [(HUBannerView *)self layoutOptions];
      [v145 leadingInset];
      v146 = [v143 constraintEqualToAnchor:v144 constant:?];
      [v4 addObject:v146];
    }

    else
    {
      v144 = [(HUBannerView *)self iconView];
      v145 = [v144 trailingAnchor];
      v146 = [(HUBannerView *)self layoutOptions];
      [v146 horizontalItemSpacing];
      v147 = [v143 constraintEqualToAnchor:v145 constant:?];
      [v4 addObject:v147];
    }

    v148 = [(HUBannerView *)self descriptionLabel];
    v149 = [v148 trailingAnchor];
    v150 = [(HUBannerView *)self trailingAnchor];
    v151 = [(HUBannerView *)self layoutOptions];
    [v151 trailingInset];
    v153 = [v149 constraintEqualToAnchor:v150 constant:-v152];
    [v4 addObject:v153];

    v154 = [(HUBannerView *)self lineView];
    if ([v154 isHidden])
    {
      v155 = [(HUBannerView *)self footerView];
      v156 = [v155 isHidden];

      if (v156)
      {
        v157 = [(HUBannerView *)self descriptionLabel];
        v158 = [v157 bottomAnchor];
        v159 = [(HUBannerView *)self bottomAnchor];
        v160 = [(HUBannerView *)self layoutOptions];
        [v160 verticalSpacingForLineView];
        v162 = [v158 constraintEqualToAnchor:v159 constant:-v161];
        goto LABEL_34;
      }
    }

    else
    {
    }

    v163 = [(HUBannerView *)self lineView];
    v164 = [v163 topAnchor];
    v165 = [(HUBannerView *)self descriptionLabel];
    v166 = [v165 bottomAnchor];
    v167 = [(HUBannerView *)self layoutOptions];
    [v167 verticalSpacingForLineView];
    v168 = [v164 constraintEqualToAnchor:v166 constant:?];
    [v4 addObject:v168];

    v169 = [(HUBannerView *)self lineView];
    v170 = [v169 leadingAnchor];
    v171 = [(HUBannerView *)self descriptionLabel];
    v172 = [v171 leadingAnchor];
    v173 = [v170 constraintEqualToAnchor:v172];
    [v4 addObject:v173];

    v174 = [(HUBannerView *)self lineView];
    v175 = [v174 trailingAnchor];
    v176 = [(HUBannerView *)self trailingAnchor];
    v177 = [v175 constraintEqualToAnchor:v176];
    [v4 addObject:v177];

    v178 = [(HUBannerView *)self lineView];
    v179 = [v178 heightAnchor];
    v180 = [v179 constraintEqualToConstant:1.0];
    [v4 addObject:v180];

    v181 = [(HUBannerView *)self footerView];
    v182 = [v181 topAnchor];
    v183 = [(HUBannerView *)self lineView];
    v184 = [v183 bottomAnchor];
    v185 = [v182 constraintEqualToAnchor:v184];
    [v4 addObject:v185];

    v186 = [(HUBannerView *)self footerView];
    v187 = [v186 leadingAnchor];
    v188 = [(HUBannerView *)self leadingAnchor];
    v189 = [v187 constraintEqualToAnchor:v188];
    [v4 addObject:v189];

    v190 = [(HUBannerView *)self footerView];
    v191 = [v190 trailingAnchor];
    v192 = [(HUBannerView *)self trailingAnchor];
    v193 = [v191 constraintEqualToAnchor:v192];
    [v4 addObject:v193];

    v194 = [(HUBannerView *)self footerView];
    v195 = [v194 bottomAnchor];
    v196 = [(HUBannerView *)self bottomAnchor];
    v197 = [v195 constraintEqualToAnchor:v196];
    [v4 addObject:v197];

    v198 = [(HUBannerView *)self footerViewLabel];
    v199 = [v198 topAnchor];
    v200 = [(HUBannerView *)self footerView];
    v201 = [v200 topAnchor];
    v202 = [(HUBannerView *)self layoutOptions];
    [v202 verticalSpacingForLipElements];
    v203 = [v199 constraintEqualToAnchor:v201 constant:?];
    [v4 addObject:v203];

    v204 = [(HUBannerView *)self footerViewLabel];
    v205 = [v204 leadingAnchor];
    v206 = [(HUBannerView *)self descriptionLabel];
    v207 = [v206 leadingAnchor];
    v208 = [v205 constraintEqualToAnchor:v207];
    [v4 addObject:v208];

    v209 = [(HUBannerView *)self footerViewLabel];
    v210 = [v209 trailingAnchor];
    v211 = [(HUBannerView *)self continueButton];
    if ([v211 isHidden])
    {
      v212 = [(HUBannerView *)self footerView];
      [v212 trailingAnchor];
    }

    else
    {
      v212 = [(HUBannerView *)self continueButton];
      [v212 leadingAnchor];
    }
    v213 = ;
    v214 = [(HUBannerView *)self layoutOptions];
    [v214 trailingInset];
    v216 = [v210 constraintLessThanOrEqualToAnchor:v213 constant:-v215];
    [v4 addObject:v216];

    v217 = [(HUBannerView *)self footerViewLabel];
    v218 = [v217 bottomAnchor];
    v219 = [(HUBannerView *)self footerView];
    v220 = [v219 bottomAnchor];
    v221 = [(HUBannerView *)self layoutOptions];
    [v221 verticalSpacingForLipElements];
    v223 = [v218 constraintEqualToAnchor:v220 constant:-v222];
    [v4 addObject:v223];

    v224 = [(HUBannerView *)self continueButton];
    LOBYTE(v217) = [v224 isHidden];

    if (v217)
    {
      goto LABEL_35;
    }

    v225 = [(HUBannerView *)self continueButton];
    v226 = [v225 centerXAnchor];
    v227 = [(HUBannerView *)self footerViewLabel];
    v228 = [v227 centerXAnchor];
    v229 = [v226 constraintEqualToAnchor:v228];
    [v4 addObject:v229];

    v230 = [(HUBannerView *)self continueButton];
    v231 = [v230 trailingAnchor];
    v232 = [(HUBannerView *)self footerView];
    v233 = [v232 trailingAnchor];
    v234 = [(HUBannerView *)self layoutOptions];
    [v234 trailingInset];
    v236 = [v231 constraintEqualToAnchor:v233 constant:-v235];
    [v4 addObject:v236];

    v157 = [(HUBannerView *)self continueButton];
    v158 = [v157 centerYAnchor];
    v159 = [(HUBannerView *)self footerView];
    v160 = [v159 centerYAnchor];
    v162 = [v158 constraintEqualToAnchor:v160];
LABEL_34:
    v237 = v162;
    [v4 addObject:v162];

LABEL_35:
    [MEMORY[0x277CCAAD0] activateConstraints:v4];
    [(HUBannerView *)self setLayoutConstraints:v4];
  }

  v239.receiver = self;
  v239.super_class = HUBannerView;
  [(HUBannerView *)&v239 updateConstraints];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (![(HUBannerView *)self disableHighlighting])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__HUBannerView_setHighlighted_animated___block_invoke;
    v9[3] = &unk_277DB7EE0;
    v9[4] = self;
    v10 = a3;
    v7 = _Block_copy(v9);
    v8 = v7;
    if (v4)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.15];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

void __40__HUBannerView_setHighlighted_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [MEMORY[0x277D75348] systemLightGrayColor];
  }

  else
  {
    [*(a1 + 32) backgroundColor];
  }
  v3 = ;
  v2 = [*(a1 + 32) footerView];
  [v2 setBackgroundColor:v3];
}

- (void)layoutOptionsDidChange
{
  v3 = [(HUBannerView *)self layoutOptions];
  v4 = [v3 font];
  v5 = [(HUBannerView *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(HUBannerView *)self layoutOptions];
  v7 = [v6 descriptionFont];
  v8 = [(HUBannerView *)self descriptionLabel];
  [v8 setFont:v7];

  v9 = [(HUBannerView *)self layoutOptions];
  [v9 cellCornerRadius];
  [(HUBannerView *)self _setContinuousCornerRadius:?];

  v10 = [(HUBannerView *)self layoutOptions];
  [v10 cellCornerRadius];
  v12 = v11;
  v13 = [(HUBannerView *)self footerView];
  v14 = [v13 layer];
  [v14 setCornerRadius:v12];

  v15 = [(HUBannerView *)self layoutOptions];
  v16 = [v15 footerViewLabelFont];
  v17 = [(HUBannerView *)self footerViewLabel];
  [v17 setFont:v16];

  v18 = [(HUBannerView *)self layoutConstraints];

  if (v18)
  {
    v19 = MEMORY[0x277CCAAD0];
    v20 = [(HUBannerView *)self layoutConstraints];
    [v19 deactivateConstraints:v20];
  }

  [(HUBannerView *)self setLayoutConstraints:0];

  [(HUBannerView *)self setNeedsUpdateConstraints];
}

- (void)prepareForReuse
{
  v3 = [(HUBannerView *)self layoutOptions];
  v4 = [v3 font];
  v5 = [(HUBannerView *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(HUBannerView *)self layoutOptions];
  v7 = [v6 descriptionFont];
  v8 = [(HUBannerView *)self descriptionLabel];
  [v8 setFont:v7];

  v9 = [(HUBannerView *)self layoutOptions];
  v10 = [v9 footerViewLabelFont];
  v11 = [(HUBannerView *)self footerViewLabel];
  [v11 setFont:v10];

  v12 = [(HUBannerView *)self iconImageView];
  [v12 setImage:0];

  v13 = [(HUBannerView *)self iconView];
  [v13 updateWithIconDescriptor:0 displayStyle:1 animated:0];

  v14 = [(HUBannerView *)self supplementaryIconImageView];
  [v14 setImage:0];

  v15 = [(HUBannerView *)self supplementaryIconView];
  [v15 updateWithIconDescriptor:0 displayStyle:1 animated:0];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v82[2] = *MEMORY[0x277D85DE8];
  v5 = [(HUBannerView *)self item];
  v6 = [v5 latestResults];

  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v8 = [(HUBannerView *)self titleLabel];
  [v8 setText:v7];

  v9 = [(HUBannerView *)self layoutOptions];
  v10 = [v9 maxNumberOfTitleLines];
  v11 = [(HUBannerView *)self titleLabel];
  [v11 setNumberOfLines:v10];

  v12 = [(HUBannerView *)self titleLabel];
  [v12 sizeToFit];

  v13 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  v81[0] = *MEMORY[0x277D740A8];
  v14 = [(HUBannerView *)self descriptionLabel];
  v15 = [v14 font];
  v82[0] = v15;
  v81[1] = *MEMORY[0x277D740C0];
  v16 = [(HUBannerView *)self descriptionLabel];
  v17 = [v16 textColor];
  v82[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];

  if ([v13 prefersDynamicString])
  {
    v19 = [(HUBannerView *)self descriptionLabel];
    [v19 bounds];
    v22 = [v13 dynamicStringForSize:v18 attributes:{v20, v21}];
    v23 = [(HUBannerView *)self descriptionLabel];
    [v23 setAttributedText:v22];
  }

  else
  {
    v19 = [v13 stringWithAttributes:v18];
    v22 = [(HUBannerView *)self descriptionLabel];
    [v22 setAttributedText:v19];
  }

  v24 = [(HUBannerView *)self layoutOptions];
  v25 = [v24 maxNumberOfDescriptionLines];
  v26 = [(HUBannerView *)self descriptionLabel];
  [v26 setNumberOfLines:v25];

  v27 = [(HUBannerView *)self descriptionLabel];
  [v27 sizeToFit];

  v28 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
  v29 = [(HUBannerView *)self footerViewLabel];
  [v29 setText:v28];

  v30 = [(HUBannerView *)self footerViewLabel];
  [v30 setAccessibilityIdentifier:@"Home.Banners.Cells.Footer.Text"];

  v31 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13DF0]];
  if (v31)
  {
    v32 = [(HUBannerView *)self footerViewLabel];
    [v32 setTextColor:v31];
  }

  v33 = [(HUBannerView *)self item];
  v34 = [v33 latestResults];
  v35 = [v34 objectForKeyedSubscript:*MEMORY[0x277D13E98]];

  v80 = v18;
  if (v35)
  {
    v36 = [(HUBannerView *)self iconImageView];
    [v36 setContentMode:1];

    v37 = [(HUBannerView *)self iconImageView];
    [v37 setImage:v35];

    v38 = [(HUBannerView *)self iconImageView];
    [v38 setHidden:0];

    v39 = [(HUBannerView *)self iconView];
    [v39 setHidden:1];

    v40 = [(HUBannerView *)self item];
    v41 = [v40 latestResults];
    v42 = [v41 objectForKeyedSubscript:*MEMORY[0x277D13F58]];

    if (v42)
    {
      v43 = [(HUBannerView *)self iconImageView];
      [v43 setTintColor:v42];
    }

    v44 = [(HUBannerView *)self item];
    v45 = [v44 latestResults];
    v46 = [v45 objectForKeyedSubscript:*MEMORY[0x277D13F40]];

    v47 = [(HUBannerView *)self supplementaryIconImageView];
    v48 = v47;
    if (v46)
    {
      [v47 setContentMode:1];

      v49 = [(HUBannerView *)self supplementaryIconImageView];
      [v49 setImage:v46];

      if (v42)
      {
        v50 = [(HUBannerView *)self supplementaryIconImageView];
        [v50 setTintColor:v42];
      }

      v47 = [(HUBannerView *)self supplementaryIconImageView];
      v48 = v47;
      v51 = 0;
    }

    else
    {
      v51 = 1;
    }
  }

  else
  {
    v52 = [(HUBannerView *)self item];
    v53 = [v52 latestResults];
    v42 = [v53 objectForKeyedSubscript:*MEMORY[0x277D13E88]];

    objc_opt_class();
    v79 = v3;
    if (objc_opt_isKindOfClass())
    {
      v54 = MEMORY[0x277D14440];
      v55 = v42;
      v56 = [v54 alloc];
      [v55 packageIdentifier];
      v58 = v57 = v3;

      v59 = [v56 initWithPackageIdentifier:v58 state:*MEMORY[0x277D13758]];
      v60 = [(HUBannerView *)self iconView];
      [v60 updateWithIconDescriptor:v59 displayStyle:1 animated:v57];
    }

    else
    {
      v59 = [(HUBannerView *)self iconView];
      [v59 updateWithIconDescriptor:v42 displayStyle:1 animated:v3];
    }

    v61 = [(HUBannerView *)self iconView];
    [v61 setHidden:0];

    v62 = [(HUBannerView *)self iconImageView];
    [v62 setHidden:1];

    v63 = [(HUBannerView *)self item];
    v64 = [v63 latestResults];
    v46 = [v64 objectForKeyedSubscript:*MEMORY[0x277D13F30]];

    if (v46)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v65 = MEMORY[0x277D14440];
        v66 = v42;
        v67 = [v65 alloc];
        v68 = [v66 packageIdentifier];

        v69 = [v67 initWithPackageIdentifier:v68 state:*MEMORY[0x277D13758]];
        v70 = [(HUBannerView *)self supplementaryIconView];
        [v70 updateWithIconDescriptor:v69 displayStyle:1 animated:v79];
      }

      else
      {
        v69 = [(HUBannerView *)self supplementaryIconView];
        [v69 updateWithIconDescriptor:v46 displayStyle:1 animated:v79];
      }
    }

    v47 = [(HUBannerView *)self supplementaryIconView];
    v48 = v47;
    v51 = v46 == 0;
  }

  [v47 setHidden:v51];

  v71 = [(HUBannerView *)self footerViewLabel];
  v72 = [v71 text];
  v73 = [(HUBannerView *)self lineView];
  [v73 setHidden:v72 == 0];

  v74 = [(HUBannerView *)self footerViewLabel];
  v75 = [v74 text];
  v76 = [(HUBannerView *)self footerView];
  [v76 setHidden:v75 == 0];

  v77 = [(HUBannerView *)self footerViewLabel];
  [v77 setNumberOfLines:0];

  v78 = [(HUBannerView *)self footerViewLabel];
  [v78 setLineBreakMode:0];

  [(HUBannerView *)self setNeedsUpdateConstraints];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUBannerView *)self titleLabel];
  v5 = [v4 text];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 appendString:v5 withName:v7];

  v8 = [v3 build];

  return v8;
}

- (void)_dismissButtonTapped:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2080;
    v12 = "[HUBannerView _dismissButtonTapped:]";
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped dismiss button", &v9, 0x16u);
  }

  v6 = [(HUBannerView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HUBannerView *)self delegate];
    [v8 bannerView:self dismissButtonTapped:v4];
  }
}

- (void)_footerViewTapped:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = self;
    v11 = 2080;
    v12 = "[HUBannerView _footerViewTapped:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped footer view %@", &v9, 0x20u);
  }

  v6 = [(HUBannerView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HUBannerView *)self delegate];
    [v8 bannerView:self footerViewTapped:v4];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = [a4 view];
  v6 = [(HUBannerView *)self footerView];
  if (v5 == v6)
  {
    v8 = [(HUBannerView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return 0;
    }

    v10 = [(HUBannerView *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return 1;
    }

    v5 = [(HUBannerView *)self delegate];
    v6 = [(HUBannerView *)self footerView];
    v7 = [v5 bannerView:self shouldReceiveFooterViewTaps:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(HUBannerView *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  v12 = *MEMORY[0x277D767F8];

  v13 = [(HUBannerView *)self layoutOptions];
  [v13 leadingInset];
  v15 = v14;
  v16 = [(HUBannerView *)self layoutOptions];
  v17 = v16;
  if (v11 >= v12)
  {
    [v16 trailingInset];
    v25 = v15 + v26;
  }

  else
  {
    [v16 iconWidth];
    v19 = v15 + v18;
    v20 = [(HUBannerView *)self layoutOptions];
    [v20 horizontalItemSpacing];
    v22 = v19 + v21;
    v23 = [(HUBannerView *)self layoutOptions];
    [v23 trailingInset];
    v25 = v22 + v24;
  }

  v27 = width - v25;
  v28 = [(HUBannerView *)self titleLabel];
  *&v29 = a4;
  *&v30 = a5;
  [v28 systemLayoutSizeFittingSize:v27 withHorizontalFittingPriority:height verticalFittingPriority:{v29, v30}];
  v32 = v31;

  v33 = [(HUBannerView *)self layoutOptions];
  [v33 verticalLabelSpacing];
  v35 = ceil(v32) + 0.0 + v34;

  v36 = [(HUBannerView *)self descriptionLabel];
  *&v37 = a4;
  *&v38 = a5;
  [v36 systemLayoutSizeFittingSize:v27 withHorizontalFittingPriority:height verticalFittingPriority:{v37, v38}];
  v40 = v39;

  v41 = v35 + ceil(v40);
  if (v11 < v12)
  {
    v42 = [(HUBannerView *)self footerViewLabel];
    v43 = [v42 text];
    if ([v43 length])
    {
    }

    else
    {
      v44 = [(HUBannerView *)self layoutOptions];
      [v44 iconHeight];
      v46 = v45;

      if (v46 <= v41)
      {
        goto LABEL_10;
      }

      v42 = [(HUBannerView *)self layoutOptions];
      [v42 iconHeight];
      v41 = v47;
    }
  }

LABEL_10:
  v48 = [(HUBannerView *)self layoutOptions];
  [v48 titleTopInset];
  v50 = v41 + v49;

  if (v11 >= v12)
  {
    v51 = [(HUBannerView *)self layoutOptions];
    [v51 iconHeight];
    v53 = v52;
    v54 = [(HUBannerView *)self layoutOptions];
    [v54 verticalSpacingForLipElements];
    v50 = v50 + v53 + v55;
  }

  v56 = [(HUBannerView *)self footerViewLabel];
  v57 = [v56 text];
  v58 = [v57 length];

  if (v58)
  {
    v59 = [(HUBannerView *)self layoutOptions];
    [v59 verticalSpacingForLineView];
    v61 = v50 + v60 + 1.0;

    v62 = [(HUBannerView *)self footerViewLabel];
    *&v63 = a4;
    *&v64 = a5;
    [v62 systemLayoutSizeFittingSize:v27 withHorizontalFittingPriority:height verticalFittingPriority:{v63, v64}];
    v66 = v65;

    v67 = [(HUBannerView *)self layoutOptions];
    [v67 verticalSpacingForLipElements];
    v50 = v61 + ceil(v66) + v68 * 2.0;
LABEL_14:

    goto LABEL_17;
  }

  if (v11 < v12)
  {
    v69 = [(HUBannerView *)self layoutOptions];
    [v69 iconHeight];
    v71 = v70;

    if (v41 >= v71)
    {
      v67 = [(HUBannerView *)self layoutOptions];
      [v67 verticalSpacingForLineView];
      v50 = v50 + v74 + 1.0;
      goto LABEL_14;
    }
  }

LABEL_17:
  v72 = width;
  v73 = v50;
  result.height = v73;
  result.width = v72;
  return result;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  v8 = a6 - 3;
  if ((a6 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = [MEMORY[0x277D148E8] sharedInstance];
    v10 = [v9 openURL:v7];
  }

  return v8 < 0xFFFFFFFFFFFFFFFELL;
}

- (HUBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end