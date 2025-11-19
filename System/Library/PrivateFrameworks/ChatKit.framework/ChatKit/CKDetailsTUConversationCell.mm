@interface CKDetailsTUConversationCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKDetailsTUConversationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CKDetailsTUConversationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 conversation:(id)a5;
- (double)buttonInteritemSpacing;
- (double)buttonTitleHorizontalSpacing;
- (double)buttonTitleVerticalSpacing;
- (double)insetPadding;
- (double)interitemSpacing;
- (void)_handleMultiWayStateChange:(id)a3;
- (void)actionButtonTapped:(id)a3;
- (void)addConstraints;
- (void)configureActionButton;
- (void)configureIconView;
- (void)configureSubtitle;
- (void)formatIconViewForExpanse;
- (void)formatIconViewForFaceTime;
- (void)formatSubtitleForText;
- (void)formatTitle;
- (void)layoutSubviews;
- (void)setConversation:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)setupView;
- (void)updateView;
@end

@implementation CKDetailsTUConversationCell

- (CKDetailsTUConversationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = CKDetailsTUConversationCell;
  return [(CKDetailsCell *)&v5 initWithStyle:a3 reuseIdentifier:a4];
}

- (CKDetailsTUConversationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 conversation:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = CKDetailsTUConversationCell;
  v9 = [(CKDetailsCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v10 = v9;
  if (v9)
  {
    [(CKDetailsTUConversationCell *)v9 setConversation:v8];
    [(CKDetailsTUConversationCell *)v10 setupView];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v10 selector:sel__handleMultiWayStateChange_ name:*MEMORY[0x1E69A5840] object:0];
  }

  return v10;
}

- (void)setupView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(CKDetailsTUConversationCell *)self setIconView:v3];

  v4 = [(CKDetailsTUConversationCell *)self iconView];
  [v4 setContentMode:1];

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(CKDetailsTUConversationCell *)self setTitleLabel:v5];

  v6 = [(CKDetailsTUConversationCell *)self titleLabel];
  LODWORD(v7) = 1132068864;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];

  [(CKDetailsTUConversationCell *)self formatTitle];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(CKDetailsTUConversationCell *)self setSubtitleLabel:v8];

  v9 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  LODWORD(v10) = 1132068864;
  [v9 setContentCompressionResistancePriority:0 forAxis:v10];

  [(CKDetailsTUConversationCell *)self formatSubtitleForText];
  v11 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(CKDetailsTUConversationCell *)self setActionButton:v11];

  v12 = [(CKDetailsTUConversationCell *)self actionButton];
  v13 = [v12 titleLabel];
  [v13 setNumberOfLines:1];

  v14 = [(CKDetailsTUConversationCell *)self actionButton];
  v15 = [v14 titleLabel];
  v16 = +[CKUIBehavior sharedBehaviors];
  v17 = [v16 tuConversationViewActionButtonFont];
  [v15 setFont:v17];

  v18 = [(CKDetailsTUConversationCell *)self actionButton];
  v19 = CKFrameworkBundle();
  v20 = [v19 localizedStringForKey:@"JOIN" value:&stru_1F04268F8 table:@"ChatKit"];
  [v18 setTitle:v20 forState:0];

  v21 = [(CKDetailsTUConversationCell *)self actionButton];
  [v21 addTarget:self action:sel_actionButtonTapped_ forControlEvents:1];

  v22 = [(CKDetailsTUConversationCell *)self actionButton];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(CKDetailsTUConversationCell *)self actionButton];
  [v23 setContentEdgeInsets:{6.0, 17.0, 6.0, 17.0}];

  v24 = [(CKDetailsTUConversationCell *)self actionButton];
  [v24 sizeToFit];

  v25 = [(CKDetailsTUConversationCell *)self actionButton];
  v26 = [v25 layer];
  v27 = +[CKUIBehavior sharedBehaviors];
  if ([v27 isAccessibilityPreferredContentSizeCategory])
  {
    v28 = [(CKDetailsTUConversationCell *)self actionButton];
    [v28 frame];
    v30 = v29 * 0.5;
  }

  else
  {
    v28 = +[CKUIBehavior sharedBehaviors];
    [v28 tuConversationJoinButtonCornerRadius];
  }

  [v26 setCornerRadius:v30];

  v31 = [(CKDetailsTUConversationCell *)self actionButton];
  LODWORD(v32) = 1148846080;
  [v31 setContentCompressionResistancePriority:0 forAxis:v32];

  v33 = [(CKDetailsTUConversationCell *)self actionButton];
  LODWORD(v34) = 1148846080;
  [v33 setContentHuggingPriority:0 forAxis:v34];

  v35 = [(CKDetailsTUConversationCell *)self contentView];
  v36 = [(CKDetailsTUConversationCell *)self titleLabel];
  [v35 addSubview:v36];

  v37 = [(CKDetailsTUConversationCell *)self contentView];
  v38 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  [v37 addSubview:v38];

  v39 = [(CKDetailsTUConversationCell *)self contentView];
  v40 = [(CKDetailsTUConversationCell *)self iconView];
  [v39 addSubview:v40];

  v41 = [(CKDetailsTUConversationCell *)self contentView];
  v42 = [(CKDetailsTUConversationCell *)self actionButton];
  [v41 addSubview:v42];

  [(CKDetailsTUConversationCell *)self setClipsToBounds:0];
  [(CKDetailsTUConversationCell *)self updateView];

  [(CKDetailsTUConversationCell *)self addConstraints];
}

- (void)addConstraints
{
  v103[14] = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 detailsTUConversationDetailsSummaryImageDiameter];
  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 contactImageSize];
  v8 = (v7 - v5) * 0.5;
  if (CKMainScreenScale_once_85 != -1)
  {
    [CKDetailsTUConversationCell addConstraints];
  }

  v9 = *&CKMainScreenScale_sMainScreenScale_85;
  if (*&CKMainScreenScale_sMainScreenScale_85 == 0.0)
  {
    v9 = 1.0;
  }

  v10 = round(v8 * v9) / v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 isAccessibilityPreferredContentSizeCategory];

  v101 = [(CKDetailsTUConversationCell *)self iconView];
  v100 = [v101 widthAnchor];
  v13 = [v100 constraintEqualToConstant:v5];
  v99 = v13;
  if (v12)
  {
    v103[0] = v13;
    v98 = [(CKDetailsTUConversationCell *)self iconView];
    v97 = [v98 heightAnchor];
    v96 = [v97 constraintEqualToConstant:v5];
    v103[1] = v96;
    v95 = [(CKDetailsTUConversationCell *)self iconView];
    v14 = [v95 leadingAnchor];
    v93 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v93 leadingAnchor];
    v92 = v94 = v14;
    v91 = [v14 constraintEqualToAnchor:v10 constant:?];
    v103[2] = v91;
    v90 = [(CKDetailsTUConversationCell *)self iconView];
    v15 = [v90 topAnchor];
    v88 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v88 topAnchor];
    v87 = v89 = v15;
    v86 = [v15 constraintEqualToAnchor:?];
    v103[3] = v86;
    v85 = [(CKDetailsTUConversationCell *)self titleLabel];
    v16 = [v85 leadingAnchor];
    v83 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v83 leadingAnchor];
    v82 = v84 = v16;
    v81 = [v16 constraintEqualToAnchor:v10 constant:?];
    v103[4] = v81;
    v80 = [(CKDetailsTUConversationCell *)self titleLabel];
    v17 = [v80 topAnchor];
    v78 = [(CKDetailsTUConversationCell *)self iconView];
    [v78 bottomAnchor];
    v77 = v79 = v17;
    v76 = [v17 constraintEqualToAnchor:?];
    v103[5] = v76;
    v75 = [(CKDetailsTUConversationCell *)self titleLabel];
    v18 = [v75 widthAnchor];
    v73 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v73 widthAnchor];
    v72 = v74 = v18;
    v71 = [v18 constraintEqualToAnchor:?];
    v103[6] = v71;
    v70 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    v19 = [v70 leadingAnchor];
    v68 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v68 leadingAnchor];
    v67 = v69 = v19;
    v66 = [v19 constraintEqualToAnchor:v10 constant:?];
    v103[7] = v66;
    v65 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    v20 = [v65 topAnchor];
    v63 = [(CKDetailsTUConversationCell *)self titleLabel];
    [v63 bottomAnchor];
    v62 = v64 = v20;
    v61 = [v20 constraintEqualToAnchor:?];
    v103[8] = v61;
    v60 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    v21 = [v60 widthAnchor];
    v58 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v58 widthAnchor];
    v57 = v59 = v21;
    v56 = [v21 constraintEqualToAnchor:?];
    v103[9] = v56;
    v55 = [(CKDetailsTUConversationCell *)self actionButton];
    v22 = [v55 leadingAnchor];
    v53 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v53 leadingAnchor];
    v52 = v54 = v22;
    v51 = [v22 constraintEqualToAnchor:v10 constant:?];
    v103[10] = v51;
    v50 = [(CKDetailsTUConversationCell *)self actionButton];
    v23 = [v50 topAnchor];
    v48 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    [v48 bottomAnchor];
    v47 = v49 = v23;
    v46 = [v23 constraintEqualToAnchor:?];
    v103[11] = v46;
    v24 = [(CKDetailsTUConversationCell *)self actionButton];
    v25 = [v24 heightAnchor];
    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 tuConversationJoinButtonHeight];
    v27 = [v25 constraintGreaterThanOrEqualToConstant:?];
    v103[12] = v27;
    v28 = v103;
  }

  else
  {
    v102[0] = v13;
    v98 = [(CKDetailsTUConversationCell *)self iconView];
    v97 = [v98 heightAnchor];
    v96 = [v97 constraintEqualToConstant:v5];
    v102[1] = v96;
    v95 = [(CKDetailsTUConversationCell *)self iconView];
    v29 = [v95 leadingAnchor];
    v93 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v93 leadingAnchor];
    v92 = v94 = v29;
    v91 = [v29 constraintEqualToAnchor:v10 constant:?];
    v102[2] = v91;
    v90 = [(CKDetailsTUConversationCell *)self iconView];
    v30 = [v90 centerYAnchor];
    v88 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v88 centerYAnchor];
    v87 = v89 = v30;
    v86 = [v30 constraintEqualToAnchor:?];
    v102[3] = v86;
    v85 = [(CKDetailsTUConversationCell *)self titleLabel];
    v31 = [v85 leadingAnchor];
    v83 = [(CKDetailsTUConversationCell *)self iconView];
    v32 = [v83 trailingAnchor];
    [(CKDetailsTUConversationCell *)self interitemSpacing];
    v84 = v31;
    v82 = v32;
    v81 = [v31 constraintEqualToAnchor:v32 constant:?];
    v102[4] = v81;
    v80 = [(CKDetailsTUConversationCell *)self titleLabel];
    v33 = [v80 bottomAnchor];
    v78 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v78 centerYAnchor];
    v77 = v79 = v33;
    v76 = [v33 constraintEqualToAnchor:?];
    v102[5] = v76;
    v75 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    v34 = [v75 leadingAnchor];
    v73 = [(CKDetailsTUConversationCell *)self titleLabel];
    [v73 leadingAnchor];
    v72 = v74 = v34;
    v71 = [v34 constraintEqualToAnchor:?];
    v102[6] = v71;
    v70 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    v35 = [v70 trailingAnchor];
    v68 = [(CKDetailsTUConversationCell *)self titleLabel];
    [v68 trailingAnchor];
    v67 = v69 = v35;
    v66 = [v35 constraintEqualToAnchor:?];
    v102[7] = v66;
    v65 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    v36 = [v65 topAnchor];
    v63 = [(CKDetailsTUConversationCell *)self titleLabel];
    [v63 bottomAnchor];
    v62 = v64 = v36;
    v61 = [v36 constraintEqualToAnchor:?];
    v102[8] = v61;
    v60 = [(CKDetailsTUConversationCell *)self actionButton];
    v37 = [v60 centerYAnchor];
    v58 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v58 centerYAnchor];
    v57 = v59 = v37;
    v56 = [v37 constraintEqualToAnchor:?];
    v102[9] = v56;
    v55 = [(CKDetailsTUConversationCell *)self actionButton];
    v38 = [v55 leadingAnchor];
    v53 = [(CKDetailsTUConversationCell *)self titleLabel];
    v39 = [v53 trailingAnchor];
    [(CKDetailsTUConversationCell *)self interitemSpacing];
    v54 = v38;
    v52 = v39;
    v51 = [v38 constraintEqualToAnchor:v39 constant:?];
    v102[10] = v51;
    v50 = [(CKDetailsTUConversationCell *)self actionButton];
    v40 = [v50 trailingAnchor];
    v48 = [(CKDetailsTUConversationCell *)self layoutMarginsGuide];
    [v48 trailingAnchor];
    v47 = v49 = v40;
    v46 = [v40 constraintEqualToAnchor:?];
    v102[11] = v46;
    v24 = [(CKDetailsTUConversationCell *)self actionButton];
    v25 = [v24 heightAnchor];
    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 tuConversationJoinButtonHeight];
    v27 = [v25 constraintEqualToConstant:?];
    v102[12] = v27;
    v28 = v102;
  }

  v41 = [(CKDetailsTUConversationCell *)self actionButton];
  v42 = [v41 widthAnchor];
  v43 = +[CKUIBehavior sharedBehaviors];
  [v43 tuConversationJoinButtonMinWidth];
  v44 = [v42 constraintGreaterThanOrEqualToConstant:?];
  v28[13] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:14];

  [MEMORY[0x1E696ACD8] activateConstraints:v45];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CKDetailsTUConversationCell *)self contentView];
  v7 = [v6 layoutMarginsGuide];
  [v7 layoutFrame];
  v9 = v8;

  v10 = [(CKDetailsTUConversationCell *)self titleLabel];
  [v10 sizeThatFits:{width, height}];
  v12 = v11;

  [(CKDetailsTUConversationCell *)self layoutMargins];
  v14 = v12 + v13;
  [(CKDetailsTUConversationCell *)self layoutMargins];
  v16 = v14 + v15;
  v17 = [(CKDetailsTUConversationCell *)self subtitleLabel];

  if (v17)
  {
    v18 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    [v18 sizeThatFits:{width, height}];
    v16 = v16 + v19;
  }

  v20 = +[CKUIBehavior sharedBehaviors];
  v21 = [v20 isAccessibilityPreferredContentSizeCategory];

  if (v21)
  {
    v22 = [(CKDetailsTUConversationCell *)self iconView];
    [v22 bounds];
    v24 = v23;
    v25 = [(CKDetailsTUConversationCell *)self actionButton];
    [v25 bounds];
    v27 = v24 + v26;
    [(CKDetailsTUConversationCell *)self layoutMargins];
    v29 = v28 + v27;
    [(CKDetailsTUConversationCell *)self layoutMargins];
    v16 = v16 + v30 + v29;
  }

  v31 = v9;
  v32 = v16;
  result.height = v32;
  result.width = v31;
  return result;
}

- (void)setConversation:(id)a3
{
  objc_storeStrong(&self->_conversation, a3);

  [(CKDetailsTUConversationCell *)self updateView];
}

- (void)setState:(unint64_t)a3
{
  self->_state = a3;
  [(CKDetailsTUConversationCell *)self configureIconView];
  [(CKDetailsTUConversationCell *)self formatTitle];
  [(CKDetailsTUConversationCell *)self configureSubtitle];
  [(CKDetailsTUConversationCell *)self configureActionButton];

  [(CKDetailsTUConversationCell *)self setNeedsLayout];
}

- (void)configureIconView
{
  state = self->_state;
  if (state - 3 < 2 || !state && [MEMORY[0x1E69A5B78] activeTUConversationHasActivitySession:self->_conversation])
  {

    [(CKDetailsTUConversationCell *)self formatIconViewForExpanse];
  }

  else
  {

    [(CKDetailsTUConversationCell *)self formatIconViewForFaceTime];
  }
}

- (void)configureSubtitle
{
  [(CKDetailsTUConversationCell *)self formatSubtitleForText];
  state = self->_state;
  if (state - 1 >= 4)
  {
    if (state)
    {
      return;
    }

    v7 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"CALL_ENDED" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v7 = [(CKDetailsTUConversationCell *)self subtitleLabel];
    v4 = [(CKDetailsTUConversationCell *)self conversation];
    v5 = [CKTUConversationViewUtilities joinStateStatusStringForTUConversation:v4];
  }

  v6 = v5;
  [v7 setText:v5];
}

- (void)configureActionButton
{
  state = self->_state;
  if (state <= 1)
  {
    if (!state)
    {
      v16 = [(CKDetailsTUConversationCell *)self actionButton];
      [v16 setHidden:1];
      goto LABEL_10;
    }

    if (state != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (state != 2)
  {
    if (state != 3)
    {
      if (state != 4)
      {
        return;
      }

      goto LABEL_5;
    }

LABEL_8:
    v10 = [(CKDetailsTUConversationCell *)self actionButton];
    [v10 setHidden:0];

    v11 = [(CKDetailsTUConversationCell *)self actionButton];
    v12 = +[CKUIBehavior sharedBehaviors];
    v13 = [v12 theme];
    v14 = [v13 multiwayButtonColor];
    [v11 setBackgroundColor:v14];

    v16 = [(CKDetailsTUConversationCell *)self actionButton];
    v7 = CKFrameworkBundle();
    v8 = v7;
    v9 = @"JOIN";
    goto LABEL_9;
  }

LABEL_5:
  v4 = [(CKDetailsTUConversationCell *)self actionButton];
  [v4 setHidden:0];

  v5 = [(CKDetailsTUConversationCell *)self actionButton];
  v6 = [MEMORY[0x1E69DC888] systemRedColor];
  [v5 setBackgroundColor:v6];

  v16 = [(CKDetailsTUConversationCell *)self actionButton];
  v7 = CKFrameworkBundle();
  v8 = v7;
  v9 = @"LEAVE";
LABEL_9:
  v15 = [v7 localizedStringForKey:v9 value:&stru_1F04268F8 table:@"ChatKit"];
  [v16 setTitle:v15 forState:0];

LABEL_10:
}

- (void)actionButtonTapped:(id)a3
{
  if ([(CKDetailsTUConversationCell *)self state]== 1 || [(CKDetailsTUConversationCell *)self state]== 3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "actionButtonTapped joining existing conversation", buf, 2u);
    }

    v5 = MEMORY[0x1E69A5B78];
    v6 = [(CKDetailsTUConversationCell *)self conversation];
    v7 = [v5 conversationIsVideoCall:v6];

    if (v7)
    {
      v8 = [MEMORY[0x1E69A5B78] platformSupportsStagingArea];
    }

    else
    {
      v8 = 0;
    }

    v9 = MEMORY[0x1E69A5B78];
    v10 = [(CKDetailsTUConversationCell *)self conversation];
    [v9 joinExistingConversationForTUCoversation:v10 videoEnabled:v7 wantsStagingArea:v8];
  }

  else if ([(CKDetailsTUConversationCell *)self state]== 2 || [(CKDetailsTUConversationCell *)self state]== 4)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "actionButtonTapped leaving active TUConversation", v12, 2u);
    }

    [MEMORY[0x1E69A5B78] leaveTUConversation];
    [(CKDetailsTUConversationCell *)self updateView];
  }
}

- (void)_handleMultiWayStateChange:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A5838]];

  v5 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v6 = [v5 existingConversationForTelephonyConversationUUID:v7];

  [(CKDetailsTUConversationCell *)self setConversation:v6];
}

- (void)updateView
{
  v3 = [(CKDetailsTUConversationCell *)self conversation];
  [(CKDetailsTUConversationCell *)self setState:[CKTUConversationViewUtilities ckTUConversationStateForTUConversation:v3]];

  [(CKDetailsTUConversationCell *)self setNeedsLayout];

  [(CKDetailsTUConversationCell *)self layoutIfNeeded];
}

- (void)formatIconViewForFaceTime
{
  v3 = [(CKDetailsTUConversationCell *)self iconView];
  v4 = [(CKDetailsTUConversationCell *)self conversation];
  v5 = [CKTUConversationViewUtilities faceTimeIconForTUConversation:v4];
  [v3 setImage:v5];

  v6 = [(CKDetailsTUConversationCell *)self iconView];
  [v6 setBackgroundColor:0];

  v7 = [(CKDetailsTUConversationCell *)self iconView];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 expanseActivityViewIconTintColor];
  [v7 setTintColor:v10];

  v11 = [(CKDetailsTUConversationCell *)self iconView];
  [v11 _setCornerRadius:0.0];

  v12 = [(CKDetailsTUConversationCell *)self iconView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)formatIconViewForExpanse
{
  v3 = [(CKDetailsTUConversationCell *)self iconView];
  v4 = +[CKTUConversationViewUtilities sharePlayIcon];
  [v3 setImage:v4];

  v5 = [(CKDetailsTUConversationCell *)self iconView];
  [v5 setBackgroundColor:0];

  v6 = [(CKDetailsTUConversationCell *)self iconView];
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 theme];
  v9 = [v8 expanseActivityViewIconTintColor];
  [v6 setTintColor:v9];

  v10 = [(CKDetailsTUConversationCell *)self iconView];
  [v10 _setCornerRadius:0.0];

  v11 = [(CKDetailsTUConversationCell *)self iconView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CKDetailsTUConversationCell *)self iconView];
  [v12 setBackgroundColor:0];
}

- (void)formatTitle
{
  v3 = [(CKDetailsTUConversationCell *)self titleLabel];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 recipientNameFont];
  [v3 setFont:v5];

  v6 = [(CKDetailsTUConversationCell *)self titleLabel];
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 theme];
  v9 = [v8 primaryLabelColor];
  [v6 setTextColor:v9];

  v10 = [(CKDetailsTUConversationCell *)self titleLabel];
  [v10 setNumberOfLines:1];

  v11 = [(CKDetailsTUConversationCell *)self titleLabel];
  [v11 setLineBreakMode:4];

  v12 = [(CKDetailsTUConversationCell *)self conversation];
  v19 = +[CKTUConversationViewUtilities titleForAVMode:](CKTUConversationViewUtilities, "titleForAVMode:", [v12 avMode]);

  v13 = MEMORY[0x1E69A5B78];
  v14 = [(CKDetailsTUConversationCell *)self conversation];
  LODWORD(v13) = [v13 activeTUConversationHasActivitySession:v14];

  if (v13)
  {
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"EXPANSE_DEFAULT" value:&stru_1F04268F8 table:@"ChatKit"];

    v19 = v16;
  }

  v17 = [(CKDetailsTUConversationCell *)self titleLabel];
  [v17 setText:v19];

  v18 = [(CKDetailsTUConversationCell *)self titleLabel];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)formatSubtitleForText
{
  v3 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  [v3 setNumberOfLines:1];

  v4 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  [v4 setLineBreakMode:4];

  v5 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 locationSubtitleFont];
  [v5 setFont:v7];

  v8 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 theme];
  v11 = [v10 secondaryLabelColor];
  [v8 setTextColor:v11];

  v12 = [(CKDetailsTUConversationCell *)self subtitleLabel];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CKDetailsTUConversationCell;
  [(CKDetailsCell *)&v6 layoutSubviews];
  v3 = [(CKDetailsCell *)self topSeperator];
  [v3 setHidden:1];

  v4 = [(CKDetailsCell *)self bottomSeperator];
  [v4 setUserInteractionEnabled:1];

  v5 = [(CKDetailsCell *)self bottomSeperator];
  [v5 setHidden:0];
}

- (double)insetPadding
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationInsetPadding];
  v4 = v3;

  return v4;
}

- (double)buttonInteritemSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationButtonInteritemSpacing];
  v4 = v3;

  return v4;
}

- (double)interitemSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationInteritemSpacing];
  v4 = v3;

  return v4;
}

- (double)buttonTitleHorizontalSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationButtonTitleHorizontalSpacing];
  v4 = v3;

  return v4;
}

- (double)buttonTitleVerticalSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationButtonTitleVerticalSpacing];
  v4 = v3;

  return v4;
}

@end