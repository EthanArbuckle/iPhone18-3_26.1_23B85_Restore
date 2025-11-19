@interface CKStickerDetailCell
- (CKStickerDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CKStickerDetailCellDelegate)delegate;
- (void)_configureConstraintsForCurrentAction;
- (void)_saveButtonSelected;
- (void)_viewButtonSelected;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAdditionalActionType:(unint64_t)a3;
- (void)setStickerPreview:(id)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTimestampDate:(id)a3;
- (void)setTitleText:(id)a3;
@end

@implementation CKStickerDetailCell

- (CKStickerDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v162[20] = *MEMORY[0x1E69E9840];
  v158.receiver = self;
  v158.super_class = CKStickerDetailCell;
  v142 = a4;
  val = [(CKStickerDetailCell *)&v158 initWithStyle:a3 reuseIdentifier:?];
  if (val)
  {
    v144 = +[CKUIBehavior sharedBehaviors];
    v150 = [(CKStickerDetailCell *)val contentView];
    v5 = [v144 stickerDetailsCellBackgroundColor];
    [(CKStickerDetailCell *)val setBackgroundColor:v5];

    v6 = [CKAnimatedImageView alloc];
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v148 = [(CKAnimatedImageView *)v6 initWithFrame:*MEMORY[0x1E695F058], v8, v9, v10];
    [(CKAnimatedImageView *)v148 setContentMode:1];
    [(CKAnimatedImageView *)v148 setClipsToBounds:1];
    [(CKAnimatedImageView *)v148 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CKStickerDetailCell *)val setStickerView:v148];
    [v150 addSubview:v148];
    v152 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v152 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v11) = 1148846080;
    [v152 setContentCompressionResistancePriority:0 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [v152 setContentHuggingPriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [v152 setContentCompressionResistancePriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [v152 setContentHuggingPriority:1 forAxis:v14];
    [(CKStickerDetailCell *)val setLabelContainerView:v152];
    [v150 addSubview:v152];
    v149 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    v15 = [v144 stickerDetailsCellTitleFont];
    [v149 setFont:v15];

    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 theme];
    v18 = [v17 stickerDetailsCellTitleTextColor];
    [v149 setTextColor:v18];

    [v149 setNumberOfLines:1];
    [v149 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [v149 setContentCompressionResistancePriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [v149 setContentHuggingPriority:1 forAxis:v20];
    [(CKStickerDetailCell *)val setTitleLabel:v149];
    [v152 addSubview:v149];
    v147 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    v21 = [v144 stickerDetailsCellSubtitleFont];
    [v147 setFont:v21];

    v22 = +[CKUIBehavior sharedBehaviors];
    v23 = [v22 theme];
    v24 = [v23 stickerDetailsCellSubtitleTextColor];
    [v147 setTextColor:v24];

    [v147 setNumberOfLines:2];
    [v147 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v25) = 1148846080;
    [v147 setContentCompressionResistancePriority:1 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [v147 setContentHuggingPriority:1 forAxis:v26];
    [(CKStickerDetailCell *)val setSubtitleLabel:v147];
    [v152 addSubview:v147];
    v146 = [objc_alloc(MEMORY[0x1E69DC918]) initWithFrame:{v7, v8, v9, v10}];
    v27 = [v144 stickerDetailsCellTimestampFont];
    [v146 setFont:v27];

    v28 = +[CKUIBehavior sharedBehaviors];
    v29 = [v28 theme];
    v30 = [v29 stickerDetailsCellTimestampTextColor];
    [v146 setTextColor:v30];

    [v146 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v31) = 1148846080;
    [v146 setContentCompressionResistancePriority:1 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [v146 setContentHuggingPriority:1 forAxis:v32];
    [(CKStickerDetailCell *)val setTimestampLabel:v146];
    [v152 addSubview:v146];
    objc_initWeak(&location, val);
    v141 = [v144 stickerSaveButtonConfiguration];
    v33 = MEMORY[0x1E69DC628];
    v155[0] = MEMORY[0x1E69E9820];
    v155[1] = 3221225472;
    v155[2] = __53__CKStickerDetailCell_initWithStyle_reuseIdentifier___block_invoke;
    v155[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v156, &location);
    v94 = [v33 actionWithHandler:v155];
    v34 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v141 primaryAction:?];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v35) = 1148846080;
    [v34 setContentCompressionResistancePriority:0 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [v34 setContentHuggingPriority:0 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [v34 setContentCompressionResistancePriority:1 forAxis:v37];
    LODWORD(v38) = 1148846080;
    [v34 setContentHuggingPriority:1 forAxis:v38];
    [(CKStickerDetailCell *)val setSaveButton:v34];
    [v150 addSubview:v34];
    v143 = v34;
    v126 = [v144 stickerViewButtonConfiguration];
    v39 = MEMORY[0x1E69DC628];
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = __53__CKStickerDetailCell_initWithStyle_reuseIdentifier___block_invoke_2;
    v153[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v154, &location);
    v93 = [v39 actionWithHandler:v153];
    v145 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v126 primaryAction:?];
    [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v40) = 1148846080;
    [v145 setContentCompressionResistancePriority:0 forAxis:v40];
    LODWORD(v41) = 1148846080;
    [v145 setContentHuggingPriority:0 forAxis:v41];
    LODWORD(v42) = 1148846080;
    [v145 setContentCompressionResistancePriority:1 forAxis:v42];
    LODWORD(v43) = 1148846080;
    [v145 setContentHuggingPriority:1 forAxis:v43];
    [(CKStickerDetailCell *)val setViewButton:v145];
    [v150 addSubview:v145];
    v44 = [v147 topAnchor];
    v45 = [v149 bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:0.0];
    subtitleLabelTopSpacingConstraint = val->_subtitleLabelTopSpacingConstraint;
    val->_subtitleLabelTopSpacingConstraint = v46;

    v48 = [v146 topAnchor];
    v49 = [v147 bottomAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:0.0];
    timestampLabelTopSpacingConstraint = val->_timestampLabelTopSpacingConstraint;
    val->_timestampLabelTopSpacingConstraint = v50;

    v95 = MEMORY[0x1E696ACD8];
    v140 = [(CKAnimatedImageView *)v148 widthAnchor];
    v139 = [v140 constraintEqualToConstant:60.0];
    v162[0] = v139;
    v138 = [(CKAnimatedImageView *)v148 heightAnchor];
    v137 = [v138 constraintEqualToConstant:60.0];
    v162[1] = v137;
    v136 = [(CKAnimatedImageView *)v148 topAnchor];
    v135 = [v150 topAnchor];
    v134 = [v136 constraintGreaterThanOrEqualToAnchor:v135 constant:12.0];
    v162[2] = v134;
    v133 = [v150 bottomAnchor];
    v132 = [(CKAnimatedImageView *)v148 bottomAnchor];
    v131 = [v133 constraintGreaterThanOrEqualToAnchor:v132 constant:12.0];
    v162[3] = v131;
    v130 = [(CKAnimatedImageView *)v148 centerYAnchor];
    v129 = [v150 centerYAnchor];
    v128 = [v130 constraintEqualToAnchor:v129];
    v162[4] = v128;
    v125 = [(CKAnimatedImageView *)v148 leadingAnchor];
    v127 = [v150 layoutMarginsGuide];
    v124 = [v127 leadingAnchor];
    v123 = [v125 constraintEqualToAnchor:v124];
    v162[5] = v123;
    v122 = [v152 leadingAnchor];
    v121 = [(CKAnimatedImageView *)v148 trailingAnchor];
    v120 = [v122 constraintEqualToAnchor:v121 constant:8.0];
    v162[6] = v120;
    v119 = [v149 leadingAnchor];
    v118 = [v152 leadingAnchor];
    v117 = [v119 constraintEqualToAnchor:v118];
    v162[7] = v117;
    v116 = [v147 leadingAnchor];
    v115 = [v152 leadingAnchor];
    v114 = [v116 constraintEqualToAnchor:v115];
    v162[8] = v114;
    v113 = [v146 leadingAnchor];
    v112 = [v152 leadingAnchor];
    v111 = [v113 constraintEqualToAnchor:v112];
    v162[9] = v111;
    v110 = [v149 trailingAnchor];
    v109 = [v152 trailingAnchor];
    v108 = [v110 constraintEqualToAnchor:v109];
    v162[10] = v108;
    v107 = [v147 trailingAnchor];
    v106 = [v152 trailingAnchor];
    v105 = [v107 constraintEqualToAnchor:v106];
    v162[11] = v105;
    v104 = [v146 trailingAnchor];
    v103 = [v152 trailingAnchor];
    v102 = [v104 constraintEqualToAnchor:v103];
    v162[12] = v102;
    v101 = [v152 topAnchor];
    v100 = [v150 topAnchor];
    v99 = [v101 constraintGreaterThanOrEqualToAnchor:v100 constant:12.0];
    v162[13] = v99;
    v98 = [v150 bottomAnchor];
    v97 = [v152 bottomAnchor];
    v96 = [v98 constraintGreaterThanOrEqualToAnchor:v97 constant:12.0];
    v162[14] = v96;
    v52 = [v152 centerYAnchor];
    v53 = [v150 centerYAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    v162[15] = v54;
    v55 = [v149 topAnchor];
    v56 = [v152 topAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    v162[16] = v57;
    v162[17] = val->_subtitleLabelTopSpacingConstraint;
    v162[18] = val->_timestampLabelTopSpacingConstraint;
    v58 = [v146 bottomAnchor];
    v59 = [v152 bottomAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
    v162[19] = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:20];
    [v95 activateConstraints:v61];

    v62 = [v143 centerYAnchor];
    v63 = [v150 centerYAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
    v161[0] = v64;
    v65 = [v152 trailingAnchor];
    v66 = [v143 leadingAnchor];
    v67 = [v65 constraintLessThanOrEqualToAnchor:v66 constant:-16.0];
    v161[1] = v67;
    v68 = [v143 trailingAnchor];
    v69 = [v150 layoutMarginsGuide];
    v70 = [v69 trailingAnchor];
    v71 = [v68 constraintEqualToAnchor:v70];
    v161[2] = v71;
    v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:3];
    saveButtonVisibleConstraints = val->_saveButtonVisibleConstraints;
    val->_saveButtonVisibleConstraints = v72;

    v74 = [v145 centerYAnchor];
    v75 = [v150 centerYAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    v160[0] = v76;
    v77 = [v152 trailingAnchor];
    v78 = [v145 leadingAnchor];
    v79 = [v77 constraintLessThanOrEqualToAnchor:v78 constant:-16.0];
    v160[1] = v79;
    v80 = [v145 trailingAnchor];
    v81 = [v150 layoutMarginsGuide];
    v82 = [v81 trailingAnchor];
    v83 = [v80 constraintEqualToAnchor:v82];
    v160[2] = v83;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:3];
    viewButtonVisibleConstraints = val->_viewButtonVisibleConstraints;
    val->_viewButtonVisibleConstraints = v84;

    v86 = [v152 trailingAnchor];
    v87 = [v150 layoutMarginsGuide];
    v88 = [v87 trailingAnchor];
    v89 = [v86 constraintEqualToAnchor:v88];
    v159 = v89;
    v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v159 count:1];
    buttonsHiddenConstraints = val->_buttonsHiddenConstraints;
    val->_buttonsHiddenConstraints = v90;

    [(CKStickerDetailCell *)val _configureConstraintsForCurrentAction];
    objc_destroyWeak(&v154);

    objc_destroyWeak(&v156);
    objc_destroyWeak(&location);
  }

  return val;
}

void __53__CKStickerDetailCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveButtonSelected];
}

void __53__CKStickerDetailCell_initWithStyle_reuseIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _viewButtonSelected];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKStickerDetailCell;
  [(CKStickerDetailCell *)&v3 prepareForReuse];
  [(CKStickerDetailCell *)self setStickerPreview:0];
  [(CKStickerDetailCell *)self setTitleText:0];
  [(CKStickerDetailCell *)self setSubtitleText:0];
  [(CKStickerDetailCell *)self setTimestampDate:0];
  [(CKStickerDetailCell *)self setAdditionalActionType:0];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CKStickerDetailCell;
  [(CKStickerDetailCell *)&v6 layoutSubviews];
  v3 = [(CKStickerDetailCell *)self labelContainerView];
  [v3 frame];
  v5 = v4;

  [(CKStickerDetailCell *)self setSeparatorInset:0.0, v5, 0.0, 0.0];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CKStickerDetailCell;
  [(CKStickerDetailCell *)&v4 didMoveToWindow];
  v3 = [(CKStickerDetailCell *)self stickerView];
  [v3 updateAnimationTimerObserving];
}

- (void)setStickerPreview:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_stickerPreview != v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [CKAnimatedImage alloc];
      v8[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      v7 = [(CKAnimatedImage *)v5 initWithImages:v6 durations:&unk_1F04E67E0];

      v4 = v7;
    }

    objc_storeStrong(&self->_stickerPreview, v4);
    [(CKAnimatedImageView *)self->_stickerView setAnimatedImage:self->_stickerPreview];
  }
}

- (void)setTitleText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    v4 = [v6 copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    [(UILabel *)self->_titleLabel setText:self->_titleText];
    [(CKStickerDetailCell *)self setNeedsLayout];
  }
}

- (void)setSubtitleText:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_subtitleText isEqualToString:?])
  {
    v4 = [v8 copy];
    subtitleText = self->_subtitleText;
    self->_subtitleText = v4;

    [(UILabel *)self->_subtitleLabel setText:self->_subtitleText];
    v6 = [(NSString *)self->_subtitleText length];
    v7 = 2.0;
    if (!v6)
    {
      v7 = 0.0;
    }

    [(NSLayoutConstraint *)self->_subtitleLabelTopSpacingConstraint setConstant:v7];
    [(CKStickerDetailCell *)self setNeedsLayout];
  }
}

- (void)setTimestampDate:(id)a3
{
  v5 = a3;
  if (self->_timestampDate != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_timestampDate, a3);
    [(UIDateLabel *)self->_timestampLabel setDate:self->_timestampDate];
    v6 = 3.0;
    if (!self->_timestampDate)
    {
      v6 = 0.0;
    }

    [(NSLayoutConstraint *)self->_timestampLabelTopSpacingConstraint setConstant:v6];
    [(CKStickerDetailCell *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setAdditionalActionType:(unint64_t)a3
{
  if (self->_additionalActionType != a3)
  {
    self->_additionalActionType = a3;
    [(CKStickerDetailCell *)self _configureConstraintsForCurrentAction];
  }
}

- (void)_configureConstraintsForCurrentAction
{
  additionalActionType = self->_additionalActionType;
  if (additionalActionType == 2)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_buttonsHiddenConstraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_viewButtonVisibleConstraints];
    [(UIButton *)self->_viewButton removeFromSuperview];
    v6 = [(CKStickerDetailCell *)self contentView];
    [v6 addSubview:self->_saveButton];

    v4 = &OBJC_IVAR___CKStickerDetailCell__saveButtonVisibleConstraints;
  }

  else if (additionalActionType == 1)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_buttonsHiddenConstraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_saveButtonVisibleConstraints];
    [(UIButton *)self->_saveButton removeFromSuperview];
    v5 = [(CKStickerDetailCell *)self contentView];
    [v5 addSubview:self->_viewButton];

    v4 = &OBJC_IVAR___CKStickerDetailCell__viewButtonVisibleConstraints;
  }

  else
  {
    if (additionalActionType)
    {
      return;
    }

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_saveButtonVisibleConstraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_viewButtonVisibleConstraints];
    [(UIButton *)self->_viewButton removeFromSuperview];
    [(UIButton *)self->_saveButton removeFromSuperview];
    v4 = &OBJC_IVAR___CKStickerDetailCell__buttonsHiddenConstraints;
  }

  v7 = MEMORY[0x1E696ACD8];
  v8 = *(&self->super.super.super.super.isa + *v4);

  [v7 activateConstraints:v8];
}

- (void)_saveButtonSelected
{
  v3 = [(CKStickerDetailCell *)self _tableView];
  v5 = [v3 indexPathForCell:self];

  v4 = [(CKStickerDetailCell *)self delegate];
  [v4 saveStickerButtonSelectedAtIndexPath:v5];
}

- (void)_viewButtonSelected
{
  v3 = [(CKStickerDetailCell *)self _tableView];
  v5 = [v3 indexPathForCell:self];

  v4 = [(CKStickerDetailCell *)self delegate];
  [v4 viewStickerAppButtonSelectedAtIndexPath:v5];
}

- (CKStickerDetailCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end