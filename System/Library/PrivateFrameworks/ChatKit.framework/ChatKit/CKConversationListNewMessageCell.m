@interface CKConversationListNewMessageCell
+ (id)identifier;
- (BOOL)_boundsShouldCollapseContent:(CGRect)a3;
- (BOOL)_isCollapsed;
- (CKConversationListCellDelegate)delegate;
- (CKConversationListNewMessageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)leadingLayoutMargin;
- (void)_updateLabelVisibility;
- (void)deleteButtonTapped;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateContentsForConversation:(id)a3;
- (void)updateFontSize;
- (void)updateWithForwardedConfigurationState:(id)a3;
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

- (CKConversationListNewMessageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v34.receiver = self;
  v34.super_class = CKConversationListNewMessageCell;
  v4 = [(CKConversationListNewMessageCell *)&v34 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];

    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    v9 = [(CKConversationListNewMessageCell *)v4 textLabel];
    [v9 setText:v8];

    v10 = [(CKConversationListNewMessageCell *)v4 textLabel];
    v11 = [v6 conversationListSenderColor];
    [v10 setTextColor:v11];

    v12 = [(CKConversationListNewMessageCell *)v4 textLabel];
    [v12 setHighlightedTextColor:0];

    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 conversationListContactImageDiameter];
    v17 = v16;

    v18 = [[CKAvatarView alloc] initWithFrame:v13, v14, v17, v17];
    avatarView = v4->_avatarView;
    v4->_avatarView = v18;

    v20 = [(CKConversationListNewMessageCell *)v4 contentView];
    [v20 addSubview:v4->_avatarView];

    v21 = +[CKUIBehavior sharedBehaviors];
    v22 = [v21 preferredDeleteButtonVisibilityForNewCompose];

    if ((v22 - 1) <= 1)
    {
      v23 = [MEMORY[0x1E69DC738] buttonWithType:0];
      closeButton = v4->_closeButton;
      v4->_closeButton = v23;

      v25 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB980]];
      v26 = [MEMORY[0x1E69DCAD8] configurationWithFont:v25 scale:2];
      v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v26];
      [(UIButton *)v4->_closeButton setImage:v27 forState:0];
      [(UIButton *)v4->_closeButton addTarget:v4 action:sel_deleteButtonTapped forEvents:64];
      v28 = [(UIButton *)v4->_closeButton imageView];
      v29 = +[CKUIBehavior sharedBehaviors];
      v30 = [v29 theme];
      v31 = [v30 conversationListSummaryColor];
      [v28 setTintColor:v31];

      v32 = [(CKConversationListNewMessageCell *)v4 contentView];
      [v32 addSubview:v4->_closeButton];

      [(UIButton *)v4->_closeButton setHidden:v22 == 2];
    }

    [(CKConversationListNewMessageCell *)v4 updateFontSize];
  }

  return v4;
}

- (void)updateWithForwardedConfigurationState:(id)a3
{
  v4 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [(CKConversationListNewMessageCell *)self traitCollection];
  v7 = [v5 useSelectedAppearanceForConversationCellState:v4 traitCollection:v6];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = v9;
  if (v7)
  {
    [v9 conversationListCellSelectedTextColor];
  }

  else
  {
    [v9 conversationListSenderColor];
  }
  v16 = ;

  v11 = [(CKConversationListNewMessageCell *)self textLabel];
  v12 = [v11 textColor];

  if (v12 != v16)
  {
    v13 = [(CKConversationListNewMessageCell *)self textLabel];
    [v13 setTextColor:v16];
  }

  v14 = [MEMORY[0x1E69DC6E8] listPlainCellConfiguration];
  v15 = [MEMORY[0x1E69DC888] clearColor];
  [v14 setBackgroundColor:v15];

  [(CKConversationListNewMessageCell *)self setBackgroundConfiguration:v14];
}

- (void)layoutSubviews
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CKConversationListNewMessageCell.m" lineNumber:150 description:{@"%@ needs a cell layout.", v6}];
}

- (void)_updateLabelVisibility
{
  if (CKIsRunningInMacCatalyst())
  {
    v3 = [(CKConversationListNewMessageCell *)self _isCollapsed];
    v4 = [(CKConversationListNewMessageCell *)self textLabel];
    [v4 setHidden:v3];

    v5 = [(CKConversationListNewMessageCell *)self conversation];

    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = [(CKConversationListNewMessageCell *)self conversation];
    v7 = [v6 hasDisplayName];

    v8 = [(CKConversationListNewMessageCell *)self conversation];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 displayName];
    }

    else
    {
      v10 = [v8 name];

      v9 = [(CKConversationListNewMessageCell *)self conversation];
      [v9 fetchSuggestedNameIfNecessary];
    }

    if (v10)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = CKFrameworkBundle();
      v13 = [v12 localizedStringForKey:@"NEW_MESSAGE_TO" value:&stru_1F04268F8 table:@"ChatKit"];
      v14 = [v11 stringWithFormat:v13, v10];

      v15 = [MEMORY[0x1E69DC668] sharedApplication];
      v16 = [v15 userInterfaceLayoutDirection];

      if (v16 == 1)
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
      v10 = [v18 stringWithFormat:v20];

      v21 = [MEMORY[0x1E69DC668] sharedApplication];
      v22 = [v21 userInterfaceLayoutDirection];

      if (v22 == 1)
      {
        v23 = @"\u200F";
      }

      else
      {
        v23 = @"\u200E";
      }

      v25 = [(__CFString *)v23 stringByAppendingString:v10];
    }

    v24 = [(CKConversationListNewMessageCell *)self textLabel];
    [v24 setText:v25];
  }
}

- (BOOL)_isCollapsed
{
  v2 = self;
  v3 = [(CKConversationListNewMessageCell *)self contentView];
  [v3 bounds];
  LOBYTE(v2) = [(CKConversationListNewMessageCell *)v2 _boundsShouldCollapseContent:?];

  return v2;
}

- (BOOL)_boundsShouldCollapseContent:(CGRect)a3
{
  width = a3.size.width;
  if (!CKIsRunningInMacCatalyst())
  {
    return 0;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 minConversationListWidth];
  v6 = width <= v5;

  return v6;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKConversationListNewMessageCell;
  [(CKConversationListNewMessageCell *)&v11 setSelected:a3 animated:a4];
  v6 = [(UIButton *)self->_closeButton imageView];
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 theme];
  v9 = v8;
  if (v4)
  {
    [v8 conversationListCellNewComposeCloseColor];
  }

  else
  {
    [v8 conversationListSummaryColor];
  }
  v10 = ;
  [v6 setTintColor:v10];
}

- (void)updateFontSize
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 conversationListSenderFont];
  v5 = [(CKConversationListNewMessageCell *)self textLabel];
  [v5 setFont:v4];

  [(CKConversationListNewMessageCell *)self setNeedsLayout];
}

- (void)deleteButtonTapped
{
  v3 = [(CKConversationListNewMessageCell *)self delegate];
  [v3 selectedDeleteButtonForConversation:0 inCell:self];
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

- (void)updateContentsForConversation:(id)a3
{
  [(CKConversationListNewMessageCell *)self setConversation:a3];

  [(CKConversationListNewMessageCell *)self _updateLabelVisibility];
}

- (CKConversationListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end