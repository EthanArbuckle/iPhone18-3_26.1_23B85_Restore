@interface CKStickerDetailCell
- (CKStickerDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CKStickerDetailCellDelegate)delegate;
- (void)_configureConstraintsForCurrentAction;
- (void)_saveButtonSelected;
- (void)_viewButtonSelected;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAdditionalActionType:(unint64_t)type;
- (void)setStickerPreview:(id)preview;
- (void)setSubtitleText:(id)text;
- (void)setTimestampDate:(id)date;
- (void)setTitleText:(id)text;
@end

@implementation CKStickerDetailCell

- (CKStickerDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v162[20] = *MEMORY[0x1E69E9840];
  v158.receiver = self;
  v158.super_class = CKStickerDetailCell;
  identifierCopy = identifier;
  val = [(CKStickerDetailCell *)&v158 initWithStyle:style reuseIdentifier:?];
  if (val)
  {
    v144 = +[CKUIBehavior sharedBehaviors];
    contentView = [(CKStickerDetailCell *)val contentView];
    stickerDetailsCellBackgroundColor = [v144 stickerDetailsCellBackgroundColor];
    [(CKStickerDetailCell *)val setBackgroundColor:stickerDetailsCellBackgroundColor];

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
    [contentView addSubview:v148];
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
    [contentView addSubview:v152];
    v149 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    stickerDetailsCellTitleFont = [v144 stickerDetailsCellTitleFont];
    [v149 setFont:stickerDetailsCellTitleFont];

    v16 = +[CKUIBehavior sharedBehaviors];
    theme = [v16 theme];
    stickerDetailsCellTitleTextColor = [theme stickerDetailsCellTitleTextColor];
    [v149 setTextColor:stickerDetailsCellTitleTextColor];

    [v149 setNumberOfLines:1];
    [v149 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [v149 setContentCompressionResistancePriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [v149 setContentHuggingPriority:1 forAxis:v20];
    [(CKStickerDetailCell *)val setTitleLabel:v149];
    [v152 addSubview:v149];
    v147 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    stickerDetailsCellSubtitleFont = [v144 stickerDetailsCellSubtitleFont];
    [v147 setFont:stickerDetailsCellSubtitleFont];

    v22 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v22 theme];
    stickerDetailsCellSubtitleTextColor = [theme2 stickerDetailsCellSubtitleTextColor];
    [v147 setTextColor:stickerDetailsCellSubtitleTextColor];

    [v147 setNumberOfLines:2];
    [v147 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v25) = 1148846080;
    [v147 setContentCompressionResistancePriority:1 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [v147 setContentHuggingPriority:1 forAxis:v26];
    [(CKStickerDetailCell *)val setSubtitleLabel:v147];
    [v152 addSubview:v147];
    v146 = [objc_alloc(MEMORY[0x1E69DC918]) initWithFrame:{v7, v8, v9, v10}];
    stickerDetailsCellTimestampFont = [v144 stickerDetailsCellTimestampFont];
    [v146 setFont:stickerDetailsCellTimestampFont];

    v28 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v28 theme];
    stickerDetailsCellTimestampTextColor = [theme3 stickerDetailsCellTimestampTextColor];
    [v146 setTextColor:stickerDetailsCellTimestampTextColor];

    [v146 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v31) = 1148846080;
    [v146 setContentCompressionResistancePriority:1 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [v146 setContentHuggingPriority:1 forAxis:v32];
    [(CKStickerDetailCell *)val setTimestampLabel:v146];
    [v152 addSubview:v146];
    objc_initWeak(&location, val);
    stickerSaveButtonConfiguration = [v144 stickerSaveButtonConfiguration];
    v33 = MEMORY[0x1E69DC628];
    v155[0] = MEMORY[0x1E69E9820];
    v155[1] = 3221225472;
    v155[2] = __53__CKStickerDetailCell_initWithStyle_reuseIdentifier___block_invoke;
    v155[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v156, &location);
    v94 = [v33 actionWithHandler:v155];
    v34 = [MEMORY[0x1E69DC738] buttonWithConfiguration:stickerSaveButtonConfiguration primaryAction:?];
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
    [contentView addSubview:v34];
    v143 = v34;
    stickerViewButtonConfiguration = [v144 stickerViewButtonConfiguration];
    v39 = MEMORY[0x1E69DC628];
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = __53__CKStickerDetailCell_initWithStyle_reuseIdentifier___block_invoke_2;
    v153[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v154, &location);
    v93 = [v39 actionWithHandler:v153];
    v145 = [MEMORY[0x1E69DC738] buttonWithConfiguration:stickerViewButtonConfiguration primaryAction:?];
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
    [contentView addSubview:v145];
    topAnchor = [v147 topAnchor];
    bottomAnchor = [v149 bottomAnchor];
    v46 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
    subtitleLabelTopSpacingConstraint = val->_subtitleLabelTopSpacingConstraint;
    val->_subtitleLabelTopSpacingConstraint = v46;

    topAnchor2 = [v146 topAnchor];
    bottomAnchor2 = [v147 bottomAnchor];
    v50 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    timestampLabelTopSpacingConstraint = val->_timestampLabelTopSpacingConstraint;
    val->_timestampLabelTopSpacingConstraint = v50;

    v95 = MEMORY[0x1E696ACD8];
    widthAnchor = [(CKAnimatedImageView *)v148 widthAnchor];
    v139 = [widthAnchor constraintEqualToConstant:60.0];
    v162[0] = v139;
    heightAnchor = [(CKAnimatedImageView *)v148 heightAnchor];
    v137 = [heightAnchor constraintEqualToConstant:60.0];
    v162[1] = v137;
    topAnchor3 = [(CKAnimatedImageView *)v148 topAnchor];
    topAnchor4 = [contentView topAnchor];
    v134 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:12.0];
    v162[2] = v134;
    bottomAnchor3 = [contentView bottomAnchor];
    bottomAnchor4 = [(CKAnimatedImageView *)v148 bottomAnchor];
    v131 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:12.0];
    v162[3] = v131;
    centerYAnchor = [(CKAnimatedImageView *)v148 centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v128 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v162[4] = v128;
    leadingAnchor = [(CKAnimatedImageView *)v148 leadingAnchor];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v123 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v162[5] = v123;
    leadingAnchor3 = [v152 leadingAnchor];
    trailingAnchor = [(CKAnimatedImageView *)v148 trailingAnchor];
    v120 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
    v162[6] = v120;
    leadingAnchor4 = [v149 leadingAnchor];
    leadingAnchor5 = [v152 leadingAnchor];
    v117 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v162[7] = v117;
    leadingAnchor6 = [v147 leadingAnchor];
    leadingAnchor7 = [v152 leadingAnchor];
    v114 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v162[8] = v114;
    leadingAnchor8 = [v146 leadingAnchor];
    leadingAnchor9 = [v152 leadingAnchor];
    v111 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v162[9] = v111;
    trailingAnchor2 = [v149 trailingAnchor];
    trailingAnchor3 = [v152 trailingAnchor];
    v108 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v162[10] = v108;
    trailingAnchor4 = [v147 trailingAnchor];
    trailingAnchor5 = [v152 trailingAnchor];
    v105 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v162[11] = v105;
    trailingAnchor6 = [v146 trailingAnchor];
    trailingAnchor7 = [v152 trailingAnchor];
    v102 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v162[12] = v102;
    topAnchor5 = [v152 topAnchor];
    topAnchor6 = [contentView topAnchor];
    v99 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6 constant:12.0];
    v162[13] = v99;
    bottomAnchor5 = [contentView bottomAnchor];
    bottomAnchor6 = [v152 bottomAnchor];
    v96 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:12.0];
    v162[14] = v96;
    centerYAnchor3 = [v152 centerYAnchor];
    centerYAnchor4 = [contentView centerYAnchor];
    v54 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v162[15] = v54;
    topAnchor7 = [v149 topAnchor];
    topAnchor8 = [v152 topAnchor];
    v57 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v162[16] = v57;
    v162[17] = val->_subtitleLabelTopSpacingConstraint;
    v162[18] = val->_timestampLabelTopSpacingConstraint;
    bottomAnchor7 = [v146 bottomAnchor];
    bottomAnchor8 = [v152 bottomAnchor];
    v60 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v162[19] = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:20];
    [v95 activateConstraints:v61];

    centerYAnchor5 = [v143 centerYAnchor];
    centerYAnchor6 = [contentView centerYAnchor];
    v64 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v161[0] = v64;
    trailingAnchor8 = [v152 trailingAnchor];
    leadingAnchor10 = [v143 leadingAnchor];
    v67 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:leadingAnchor10 constant:-16.0];
    v161[1] = v67;
    trailingAnchor9 = [v143 trailingAnchor];
    layoutMarginsGuide2 = [contentView layoutMarginsGuide];
    trailingAnchor10 = [layoutMarginsGuide2 trailingAnchor];
    v71 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v161[2] = v71;
    v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:3];
    saveButtonVisibleConstraints = val->_saveButtonVisibleConstraints;
    val->_saveButtonVisibleConstraints = v72;

    centerYAnchor7 = [v145 centerYAnchor];
    centerYAnchor8 = [contentView centerYAnchor];
    v76 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v160[0] = v76;
    trailingAnchor11 = [v152 trailingAnchor];
    leadingAnchor11 = [v145 leadingAnchor];
    v79 = [trailingAnchor11 constraintLessThanOrEqualToAnchor:leadingAnchor11 constant:-16.0];
    v160[1] = v79;
    trailingAnchor12 = [v145 trailingAnchor];
    layoutMarginsGuide3 = [contentView layoutMarginsGuide];
    trailingAnchor13 = [layoutMarginsGuide3 trailingAnchor];
    v83 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
    v160[2] = v83;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:3];
    viewButtonVisibleConstraints = val->_viewButtonVisibleConstraints;
    val->_viewButtonVisibleConstraints = v84;

    trailingAnchor14 = [v152 trailingAnchor];
    layoutMarginsGuide4 = [contentView layoutMarginsGuide];
    trailingAnchor15 = [layoutMarginsGuide4 trailingAnchor];
    v89 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
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
  labelContainerView = [(CKStickerDetailCell *)self labelContainerView];
  [labelContainerView frame];
  v5 = v4;

  [(CKStickerDetailCell *)self setSeparatorInset:0.0, v5, 0.0, 0.0];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CKStickerDetailCell;
  [(CKStickerDetailCell *)&v4 didMoveToWindow];
  stickerView = [(CKStickerDetailCell *)self stickerView];
  [stickerView updateAnimationTimerObserving];
}

- (void)setStickerPreview:(id)preview
{
  v8[1] = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  if (self->_stickerPreview != previewCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [CKAnimatedImage alloc];
      v8[0] = previewCopy;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      v7 = [(CKAnimatedImage *)v5 initWithImages:v6 durations:&unk_1F04E67E0];

      previewCopy = v7;
    }

    objc_storeStrong(&self->_stickerPreview, previewCopy);
    [(CKAnimatedImageView *)self->_stickerView setAnimatedImage:self->_stickerPreview];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    v4 = [textCopy copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    [(UILabel *)self->_titleLabel setText:self->_titleText];
    [(CKStickerDetailCell *)self setNeedsLayout];
  }
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_subtitleText isEqualToString:?])
  {
    v4 = [textCopy copy];
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

- (void)setTimestampDate:(id)date
{
  dateCopy = date;
  if (self->_timestampDate != dateCopy)
  {
    v7 = dateCopy;
    objc_storeStrong(&self->_timestampDate, date);
    [(UIDateLabel *)self->_timestampLabel setDate:self->_timestampDate];
    v6 = 3.0;
    if (!self->_timestampDate)
    {
      v6 = 0.0;
    }

    [(NSLayoutConstraint *)self->_timestampLabelTopSpacingConstraint setConstant:v6];
    [(CKStickerDetailCell *)self setNeedsLayout];
    dateCopy = v7;
  }
}

- (void)setAdditionalActionType:(unint64_t)type
{
  if (self->_additionalActionType != type)
  {
    self->_additionalActionType = type;
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
    contentView = [(CKStickerDetailCell *)self contentView];
    [contentView addSubview:self->_saveButton];

    v4 = &OBJC_IVAR___CKStickerDetailCell__saveButtonVisibleConstraints;
  }

  else if (additionalActionType == 1)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_buttonsHiddenConstraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_saveButtonVisibleConstraints];
    [(UIButton *)self->_saveButton removeFromSuperview];
    contentView2 = [(CKStickerDetailCell *)self contentView];
    [contentView2 addSubview:self->_viewButton];

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
  _tableView = [(CKStickerDetailCell *)self _tableView];
  v5 = [_tableView indexPathForCell:self];

  delegate = [(CKStickerDetailCell *)self delegate];
  [delegate saveStickerButtonSelectedAtIndexPath:v5];
}

- (void)_viewButtonSelected
{
  _tableView = [(CKStickerDetailCell *)self _tableView];
  v5 = [_tableView indexPathForCell:self];

  delegate = [(CKStickerDetailCell *)self delegate];
  [delegate viewStickerAppButtonSelectedAtIndexPath:v5];
}

- (CKStickerDetailCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end