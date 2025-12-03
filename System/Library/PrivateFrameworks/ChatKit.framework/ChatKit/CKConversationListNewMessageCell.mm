@interface CKConversationListNewMessageCell
+ (id)identifier;
- (BOOL)_boundsShouldCollapseContent:(CGRect)content;
- (BOOL)_isCollapsed;
- (CKConversationListCellDelegate)delegate;
- (CKConversationListNewMessageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)leadingLayoutMargin;
- (void)_updateLabelVisibility;
- (void)deleteButtonTapped;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateContentsForConversation:(id)conversation;
- (void)updateFontSize;
- (void)updateWithForwardedConfigurationState:(id)state;
@end

@implementation CKConversationListNewMessageCell

+ (id)identifier
{
  v2 = identifier___identifier;
  if (!identifier___identifier)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@Identifier", objc_opt_class()];
    v4 = identifier___identifier;
    identifier___identifier = v3;

    v2 = identifier___identifier;
  }

  return v2;
}

- (CKConversationListNewMessageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34.receiver = self;
  v34.super_class = CKConversationListNewMessageCell;
  v4 = [(CKConversationListNewMessageCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    theme = [v5 theme];

    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    textLabel = [(CKConversationListNewMessageCell *)v4 textLabel];
    [textLabel setText:v8];

    textLabel2 = [(CKConversationListNewMessageCell *)v4 textLabel];
    conversationListSenderColor = [theme conversationListSenderColor];
    [textLabel2 setTextColor:conversationListSenderColor];

    textLabel3 = [(CKConversationListNewMessageCell *)v4 textLabel];
    [textLabel3 setHighlightedTextColor:0];

    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 conversationListContactImageDiameter];
    v17 = v16;

    v18 = [[CKAvatarView alloc] initWithFrame:v13, v14, v17, v17];
    avatarView = v4->_avatarView;
    v4->_avatarView = v18;

    contentView = [(CKConversationListNewMessageCell *)v4 contentView];
    [contentView addSubview:v4->_avatarView];

    v21 = +[CKUIBehavior sharedBehaviors];
    preferredDeleteButtonVisibilityForNewCompose = [v21 preferredDeleteButtonVisibilityForNewCompose];

    if ((preferredDeleteButtonVisibilityForNewCompose - 1) <= 1)
    {
      v23 = [MEMORY[0x1E69DC738] buttonWithType:0];
      closeButton = v4->_closeButton;
      v4->_closeButton = v23;

      v25 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB980]];
      v26 = [MEMORY[0x1E69DCAD8] configurationWithFont:v25 scale:2];
      v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v26];
      [(UIButton *)v4->_closeButton setImage:v27 forState:0];
      [(UIButton *)v4->_closeButton addTarget:v4 action:sel_deleteButtonTapped forEvents:64];
      imageView = [(UIButton *)v4->_closeButton imageView];
      v29 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v29 theme];
      conversationListSummaryColor = [theme2 conversationListSummaryColor];
      [imageView setTintColor:conversationListSummaryColor];

      contentView2 = [(CKConversationListNewMessageCell *)v4 contentView];
      [contentView2 addSubview:v4->_closeButton];

      [(UIButton *)v4->_closeButton setHidden:preferredDeleteButtonVisibilityForNewCompose == 2];
    }

    [(CKConversationListNewMessageCell *)v4 updateFontSize];
  }

  return v4;
}

- (void)updateWithForwardedConfigurationState:(id)state
{
  stateCopy = state;
  v5 = +[CKUIBehavior sharedBehaviors];
  traitCollection = [(CKConversationListNewMessageCell *)self traitCollection];
  v7 = [v5 useSelectedAppearanceForConversationCellState:stateCopy traitCollection:traitCollection];

  v8 = +[CKUIBehavior sharedBehaviors];
  theme = [v8 theme];
  v10 = theme;
  if (v7)
  {
    [theme conversationListCellSelectedTextColor];
  }

  else
  {
    [theme conversationListSenderColor];
  }
  v16 = ;

  textLabel = [(CKConversationListNewMessageCell *)self textLabel];
  textColor = [textLabel textColor];

  if (textColor != v16)
  {
    textLabel2 = [(CKConversationListNewMessageCell *)self textLabel];
    [textLabel2 setTextColor:v16];
  }

  listPlainCellConfiguration = [MEMORY[0x1E69DC6E8] listPlainCellConfiguration];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [listPlainCellConfiguration setBackgroundColor:clearColor];

  [(CKConversationListNewMessageCell *)self setBackgroundConfiguration:listPlainCellConfiguration];
}

- (void)layoutSubviews
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKConversationListNewMessageCell.m" lineNumber:150 description:{@"%@ needs a cell layout.", v6}];
}

- (void)_updateLabelVisibility
{
  if (CKIsRunningInMacCatalyst())
  {
    _isCollapsed = [(CKConversationListNewMessageCell *)self _isCollapsed];
    textLabel = [(CKConversationListNewMessageCell *)self textLabel];
    [textLabel setHidden:_isCollapsed];

    conversation = [(CKConversationListNewMessageCell *)self conversation];

    if (!conversation)
    {
      goto LABEL_12;
    }

    conversation2 = [(CKConversationListNewMessageCell *)self conversation];
    hasDisplayName = [conversation2 hasDisplayName];

    conversation3 = [(CKConversationListNewMessageCell *)self conversation];
    conversation4 = conversation3;
    if (hasDisplayName)
    {
      displayName = [conversation3 displayName];
    }

    else
    {
      displayName = [conversation3 name];

      conversation4 = [(CKConversationListNewMessageCell *)self conversation];
      [conversation4 fetchSuggestedNameIfNecessary];
    }

    if (displayName)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = CKFrameworkBundle();
      v13 = [v12 localizedStringForKey:@"NEW_MESSAGE_TO" value:&stru_1F04268F8 table:@"ChatKit"];
      v14 = [v11 stringWithFormat:v13, displayName];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v17 = @"\u200F";
      }

      else
      {
        v17 = @"\u200E";
      }

      v25 = [(__CFString *)v17 stringByAppendingString:v14];
    }

    else
    {
LABEL_12:
      v18 = MEMORY[0x1E696AEC0];
      v19 = CKFrameworkBundle();
      v20 = [v19 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
      displayName = [v18 stringWithFormat:v20];

      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection2 == 1)
      {
        v23 = @"\u200F";
      }

      else
      {
        v23 = @"\u200E";
      }

      v25 = [(__CFString *)v23 stringByAppendingString:displayName];
    }

    textLabel2 = [(CKConversationListNewMessageCell *)self textLabel];
    [textLabel2 setText:v25];
  }
}

- (BOOL)_isCollapsed
{
  selfCopy = self;
  contentView = [(CKConversationListNewMessageCell *)self contentView];
  [contentView bounds];
  LOBYTE(selfCopy) = [(CKConversationListNewMessageCell *)selfCopy _boundsShouldCollapseContent:?];

  return selfCopy;
}

- (BOOL)_boundsShouldCollapseContent:(CGRect)content
{
  width = content.size.width;
  if (!CKIsRunningInMacCatalyst())
  {
    return 0;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 minConversationListWidth];
  v6 = width <= v5;

  return v6;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v11.receiver = self;
  v11.super_class = CKConversationListNewMessageCell;
  [(CKConversationListNewMessageCell *)&v11 setSelected:selected animated:animated];
  imageView = [(UIButton *)self->_closeButton imageView];
  v7 = +[CKUIBehavior sharedBehaviors];
  theme = [v7 theme];
  v9 = theme;
  if (selectedCopy)
  {
    [theme conversationListCellNewComposeCloseColor];
  }

  else
  {
    [theme conversationListSummaryColor];
  }
  v10 = ;
  [imageView setTintColor:v10];
}

- (void)updateFontSize
{
  v3 = +[CKUIBehavior sharedBehaviors];
  conversationListSenderFont = [v3 conversationListSenderFont];
  textLabel = [(CKConversationListNewMessageCell *)self textLabel];
  [textLabel setFont:conversationListSenderFont];

  [(CKConversationListNewMessageCell *)self setNeedsLayout];
}

- (void)deleteButtonTapped
{
  delegate = [(CKConversationListNewMessageCell *)self delegate];
  [delegate selectedDeleteButtonForConversation:0 inCell:self];
}

- (double)leadingLayoutMargin
{
  v2 = 16.0;
  if (![(CKConversationListNewMessageCell *)self showingEditControl])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 conversationListCellLeftMargin];
    *&v4 = v4;
    v2 = *&v4;
  }

  return v2;
}

- (void)updateContentsForConversation:(id)conversation
{
  [(CKConversationListNewMessageCell *)self setConversation:conversation];

  [(CKConversationListNewMessageCell *)self _updateLabelVisibility];
}

- (CKConversationListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end