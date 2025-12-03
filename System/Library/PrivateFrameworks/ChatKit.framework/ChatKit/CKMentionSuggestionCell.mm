@interface CKMentionSuggestionCell
- (CKMentionSuggestionCell)initWithFrame:(CGRect)frame;
- (UIView)hoverView;
- (void)didHoverOverCell:(id)cell;
- (void)setSuggestedEntity:(id)entity;
@end

@implementation CKMentionSuggestionCell

- (CKMentionSuggestionCell)initWithFrame:(CGRect)frame
{
  v102[13] = *MEMORY[0x1E69E9840];
  v101.receiver = self;
  v101.super_class = CKMentionSuggestionCell;
  v3 = [(CKMentionSuggestionCell *)&v101 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CKMentionSuggestionCell *)v3 setBackgroundColor:clearColor];

    v5 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v6 = objc_alloc(MEMORY[0x1E69DD298]);
    v100 = v5;
    v7 = [MEMORY[0x1E69DD248] effectForBlurEffect:v5 style:6];
    v8 = [v6 initWithEffect:v7];

    contentView = [v8 contentView];
    v10 = +[CKUIBehavior sharedBehaviors];
    theme = [v10 theme];
    paddleSelectionColor = [theme paddleSelectionColor];
    [contentView setBackgroundColor:paddleSelectionColor];

    v99 = v8;
    [(CKMentionSuggestionCell *)v3 setSelectedBackgroundView:v8];
    v13 = objc_alloc_init(CKAvatarView);
    [(CKMentionSuggestionCell *)v3 setAvatarView:v13];

    avatarView = [(CKMentionSuggestionCell *)v3 avatarView];
    [avatarView setAsynchronousRendering:1];

    avatarView2 = [(CKMentionSuggestionCell *)v3 avatarView];
    [avatarView2 setUserInteractionEnabled:0];

    avatarView3 = [(CKMentionSuggestionCell *)v3 avatarView];
    [avatarView3 setShowsContactOnTap:0];

    avatarView4 = [(CKMentionSuggestionCell *)v3 avatarView];
    [avatarView4 setBypassActionValidation:1];

    avatarView5 = [(CKMentionSuggestionCell *)v3 avatarView];
    [avatarView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView2 = [(CKMentionSuggestionCell *)v3 contentView];
    avatarView6 = [(CKMentionSuggestionCell *)v3 avatarView];
    [contentView2 addSubview:avatarView6];

    v21 = [CKLabel alloc];
    v22 = [(CKLabel *)v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKMentionSuggestionCell *)v3 setHandleLabel:v22];

    handleLabel = [(CKMentionSuggestionCell *)v3 handleLabel];
    v24 = +[CKUIBehavior sharedBehaviors];
    mentionsCellNameFont = [v24 mentionsCellNameFont];
    [handleLabel setFont:mentionsCellNameFont];

    handleLabel2 = [(CKMentionSuggestionCell *)v3 handleLabel];
    v27 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v27 theme];
    paddleNameColor = [theme2 paddleNameColor];
    [handleLabel2 setTextColor:paddleNameColor];

    handleLabel3 = [(CKMentionSuggestionCell *)v3 handleLabel];
    [handleLabel3 setLineBreakMode:4];

    handleLabel4 = [(CKMentionSuggestionCell *)v3 handleLabel];
    [handleLabel4 setNumberOfLines:2];

    handleLabel5 = [(CKMentionSuggestionCell *)v3 handleLabel];
    [handleLabel5 setTextAlignment:1];

    handleLabel6 = [(CKMentionSuggestionCell *)v3 handleLabel];
    [handleLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView3 = [(CKMentionSuggestionCell *)v3 contentView];
    handleLabel7 = [(CKMentionSuggestionCell *)v3 handleLabel];
    [contentView3 addSubview:handleLabel7];

    handleLabel8 = [(CKMentionSuggestionCell *)v3 handleLabel];
    LODWORD(v37) = 1148846080;
    [handleLabel8 setContentCompressionResistancePriority:1 forAxis:v37];

    v76 = MEMORY[0x1E696ACD8];
    handleLabel9 = [(CKMentionSuggestionCell *)v3 handleLabel];
    widthAnchor = [handleLabel9 widthAnchor];
    v96 = [widthAnchor constraintLessThanOrEqualToConstant:96.0];
    v102[0] = v96;
    handleLabel10 = [(CKMentionSuggestionCell *)v3 handleLabel];
    widthAnchor2 = [handleLabel10 widthAnchor];
    v93 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:62.0];
    v102[1] = v93;
    avatarView7 = [(CKMentionSuggestionCell *)v3 avatarView];
    topAnchor = [avatarView7 topAnchor];
    contentView4 = [(CKMentionSuggestionCell *)v3 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v88 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v102[2] = v88;
    avatarView8 = [(CKMentionSuggestionCell *)v3 avatarView];
    centerXAnchor = [avatarView8 centerXAnchor];
    contentView5 = [(CKMentionSuggestionCell *)v3 contentView];
    centerXAnchor2 = [contentView5 centerXAnchor];
    v83 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v102[3] = v83;
    avatarView9 = [(CKMentionSuggestionCell *)v3 avatarView];
    leadingAnchor = [avatarView9 leadingAnchor];
    contentView6 = [(CKMentionSuggestionCell *)v3 contentView];
    leadingAnchor2 = [contentView6 leadingAnchor];
    v78 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:12.0];
    v102[4] = v78;
    avatarView10 = [(CKMentionSuggestionCell *)v3 avatarView];
    trailingAnchor = [avatarView10 trailingAnchor];
    contentView7 = [(CKMentionSuggestionCell *)v3 contentView];
    trailingAnchor2 = [contentView7 trailingAnchor];
    v72 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-12.0];
    v102[5] = v72;
    avatarView11 = [(CKMentionSuggestionCell *)v3 avatarView];
    heightAnchor = [avatarView11 heightAnchor];
    v69 = [heightAnchor constraintEqualToConstant:40.0];
    v102[6] = v69;
    avatarView12 = [(CKMentionSuggestionCell *)v3 avatarView];
    widthAnchor3 = [avatarView12 widthAnchor];
    v66 = [widthAnchor3 constraintEqualToConstant:40.0];
    v102[7] = v66;
    handleLabel11 = [(CKMentionSuggestionCell *)v3 handleLabel];
    topAnchor3 = [handleLabel11 topAnchor];
    avatarView13 = [(CKMentionSuggestionCell *)v3 avatarView];
    bottomAnchor = [avatarView13 bottomAnchor];
    v61 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
    v102[8] = v61;
    handleLabel12 = [(CKMentionSuggestionCell *)v3 handleLabel];
    leadingAnchor3 = [handleLabel12 leadingAnchor];
    contentView8 = [(CKMentionSuggestionCell *)v3 contentView];
    leadingAnchor4 = [contentView8 leadingAnchor];
    v56 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:12.0];
    v102[9] = v56;
    handleLabel13 = [(CKMentionSuggestionCell *)v3 handleLabel];
    trailingAnchor3 = [handleLabel13 trailingAnchor];
    contentView9 = [(CKMentionSuggestionCell *)v3 contentView];
    trailingAnchor4 = [contentView9 trailingAnchor];
    v51 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-12.0];
    v102[10] = v51;
    handleLabel14 = [(CKMentionSuggestionCell *)v3 handleLabel];
    centerXAnchor3 = [handleLabel14 centerXAnchor];
    contentView10 = [(CKMentionSuggestionCell *)v3 contentView];
    centerXAnchor4 = [contentView10 centerXAnchor];
    v40 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v102[11] = v40;
    handleLabel15 = [(CKMentionSuggestionCell *)v3 handleLabel];
    bottomAnchor2 = [handleLabel15 bottomAnchor];
    contentView11 = [(CKMentionSuggestionCell *)v3 contentView];
    bottomAnchor3 = [contentView11 bottomAnchor];
    v45 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3 constant:-12.0];
    v102[12] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:13];
    [v76 activateConstraints:v46];

    if (CKIsRunningInMacCatalyst())
    {
      v47 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v3 action:sel_didHoverOverCell_];
      [(CKMentionSuggestionCell *)v3 addGestureRecognizer:v47];
      [(CKMentionSuggestionCell *)v3 setSelectedBackgroundView:0];
    }
  }

  return v3;
}

- (void)setSuggestedEntity:(id)entity
{
  entityCopy = entity;
  if (self->_suggestedEntity != entityCopy)
  {
    avatarView = [(CKMentionSuggestionCell *)self avatarView];

    if (avatarView)
    {
      v7 = [(CKEntity *)entityCopy cnContactWithKeys:MEMORY[0x1E695E0F0]];
      if (v7)
      {
        avatarView2 = [(CKMentionSuggestionCell *)self avatarView];
        [avatarView2 setContact:v7];
      }

      else
      {
        avatarView2 = IMLogHandleForCategory();
        if (os_log_type_enabled(avatarView2, OS_LOG_TYPE_ERROR))
        {
          [CKMentionSuggestionCell setSuggestedEntity:avatarView2];
        }
      }
    }

    handleLabel = [(CKMentionSuggestionCell *)self handleLabel];

    if (handleLabel)
    {
      handleLabel2 = [(CKMentionSuggestionCell *)self handleLabel];
      fullName = [(CKEntity *)entityCopy fullName];
      [handleLabel2 setText:fullName];
    }

    objc_storeStrong(&self->_suggestedEntity, entity);
  }
}

- (UIView)hoverView
{
  hoverView = self->_hoverView;
  if (!hoverView)
  {
    [(CKMentionSuggestionCell *)self bounds];
    v13 = CGRectInset(v12, 6.0, 6.0);
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
    v5 = self->_hoverView;
    self->_hoverView = v4;

    v6 = self->_hoverView;
    v7 = +[CKUIBehavior sharedBehaviors];
    theme = [v7 theme];
    appTintColor = [theme appTintColor];
    [(UIView *)v6 setBackgroundColor:appTintColor];

    [(UIView *)self->_hoverView _setContinuousCornerRadius:5.0];
    hoverView = self->_hoverView;
  }

  return hoverView;
}

- (void)didHoverOverCell:(id)cell
{
  state = [cell state];
  if (state == 3)
  {
    hoverView = [(CKMentionSuggestionCell *)self hoverView];
    [hoverView removeFromSuperview];

    handleLabel = [(CKMentionSuggestionCell *)self handleLabel];
    whiteColor = +[CKUIBehavior sharedBehaviors];
    theme = [whiteColor theme];
    paddleNameColor = [theme paddleNameColor];
    [handleLabel setTextColor:paddleNameColor];
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    hoverView2 = [(CKMentionSuggestionCell *)self hoverView];
    [(CKMentionSuggestionCell *)self insertSubview:hoverView2 atIndex:0];

    handleLabel = [(CKMentionSuggestionCell *)self handleLabel];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [handleLabel setTextColor:whiteColor];
  }
}

@end