@interface CKConversationAvatarSearchResultCell
- (CKConversationAvatarSearchResultCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (double)_adjustedContentWidth;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_configureAvatarViewForConversation:(id)conversation;
- (void)_configureNameLabelForConversation:(id)conversation searchText:(id)text;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshForSearchTextIfNeeded:(id)needed;
@end

@implementation CKConversationAvatarSearchResultCell

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode
{
  textCopy = text;
  resultCopy = result;
  identifier = [resultCopy identifier];
  [(CKConversationAvatarSearchResultCell *)self setResultIdentifier:identifier];

  conversation = [resultCopy conversation];

  [(CKConversationAvatarSearchResultCell *)self setConversation:conversation];
  [(CKConversationAvatarSearchResultCell *)self _configureAvatarViewForConversation:conversation];
  [(CKConversationAvatarSearchResultCell *)self _configureNameLabelForConversation:conversation searchText:textCopy];
}

- (void)refreshForSearchTextIfNeeded:(id)needed
{
  neededCopy = needed;
  conversation = [(CKConversationAvatarSearchResultCell *)self conversation];
  [(CKConversationAvatarSearchResultCell *)self _configureNameLabelForConversation:conversation searchText:neededCopy];
}

- (CKConversationAvatarSearchResultCell)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = CKConversationAvatarSearchResultCell;
  v3 = [(CKConversationAvatarSearchResultCell *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [CKAvatarView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(CKAvatarView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    [(CNAvatarView *)v9 setAsynchronousRendering:1];
    [(CNAvatarView *)v9 setShowsContactOnTap:0];
    [(CNAvatarView *)v9 setDelegate:v3];
    [(CNAvatarView *)v9 setBypassActionValidation:1];
    [(CKConversationAvatarSearchResultCell *)v3 setAvatarView:v9];
    contentView = [(CKConversationAvatarSearchResultCell *)v3 contentView];
    [contentView addSubview:v9];

    v11 = [[CKLabel alloc] initWithFrame:v5, v6, v7, v8];
    [(CKLabel *)v11 setNumberOfLines:2];
    [(CKLabel *)v11 setTextAlignment:1];
    [(CKLabel *)v11 setLineBreakMode:4];
    contentView2 = [(CKConversationAvatarSearchResultCell *)v3 contentView];
    [contentView2 addSubview:v11];

    [(CKConversationAvatarSearchResultCell *)v3 setNameLabel:v11];
  }

  return v3;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKConversationAvatarSearchResultCell;
  [(CKConversationAvatarSearchResultCell *)&v30 layoutSubviews];
  contentView = [(CKConversationAvatarSearchResultCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  v8 = fmin(v7, 64.0);
  if (CKMainScreenScale_once_88 != -1)
  {
    [CKConversationAvatarSearchResultCell layoutSubviews];
  }

  v9 = *&CKMainScreenScale_sMainScreenScale_88;
  if (*&CKMainScreenScale_sMainScreenScale_88 == 0.0)
  {
    v9 = 1.0;
  }

  v10 = floor((v5 + (v7 - v8) * 0.5) * v9) / v9;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 searchConversationCellPadding];
  v13 = v12;

  avatarView = [(CKConversationAvatarSearchResultCell *)self avatarView];
  [avatarView setFrame:{v10, v13, v8, v8}];

  [(CKConversationAvatarSearchResultCell *)self _adjustedContentWidth];
  v16 = v15;
  nameLabel = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [nameLabel sizeThatFits:{v16, 1.79769313e308}];
  v19 = v18;
  v21 = v20;

  v31.origin.x = v10;
  v31.origin.y = v13;
  v31.size.width = v8;
  v31.size.height = v8;
  MaxY = CGRectGetMaxY(v31);
  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 searchConversationMinAvatarLabelSpacing];
  v25 = v24;

  if (CKMainScreenScale_once_88 != -1)
  {
    [CKConversationAvatarSearchResultCell layoutSubviews];
  }

  v26 = MaxY + v25;
  v27 = *&CKMainScreenScale_sMainScreenScale_88;
  if (*&CKMainScreenScale_sMainScreenScale_88 == 0.0)
  {
    v27 = 1.0;
  }

  v28 = floor((v5 + (v7 - v19) * 0.5) * v27) / v27;
  nameLabel2 = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [nameLabel2 setFrame:{v28, v26, v19, v21}];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = CKConversationAvatarSearchResultCell;
  [(CKConversationAvatarSearchResultCell *)&v6 prepareForReuse];
  [(CKConversationAvatarSearchResultCell *)self setResultIdentifier:0];
  [(CKConversationAvatarSearchResultCell *)self setConversation:0];
  avatarView = [(CKConversationAvatarSearchResultCell *)self avatarView];
  [avatarView setContacts:MEMORY[0x1E695E0F0]];

  avatarView2 = [(CKConversationAvatarSearchResultCell *)self avatarView];
  [avatarView2 setName:0];

  nameLabel = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [nameLabel setAttributedText:0];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy size];
  v6 = v5;
  v7 = fmin(v5, 64.0);
  nameLabel = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [(CKConversationAvatarSearchResultCell *)self _adjustedContentWidth];
  [nameLabel sizeThatFits:?];
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 searchConversationMinAvatarLabelSpacing];
  v13 = v10 + v7 + v12;
  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 searchConversationCellPadding];
  v16 = v13 + v15 * 2.0;

  [attributesCopy setSize:{v6, v16}];

  return attributesCopy;
}

- (void)_configureAvatarViewForConversation:(id)conversation
{
  v20[5] = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  maxContactAvatars = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v6 = [conversationCopy conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:maxContactAvatars];
  v7 = [(CNAvatarView *)self->_avatarView updateViewWithGroupIdentity:v6];
  if ([conversationCopy hasDisplayName])
  {
    [conversationCopy displayName];
  }

  else
  {
    [conversationCopy name];
  }
  v8 = ;
  avatarView = [(CKConversationAvatarSearchResultCell *)self avatarView];
  [avatarView setName:v8];

  recipientCount = [conversationCopy recipientCount];
  avatarView2 = [(CKConversationAvatarSearchResultCell *)self avatarView];
  if (recipientCount == 1)
  {
    v12 = *MEMORY[0x1E695D070];
    v20[0] = *MEMORY[0x1E695D068];
    v20[1] = v12;
    v13 = *MEMORY[0x1E695D078];
    v20[2] = *MEMORY[0x1E695D080];
    v20[3] = v13;
    v20[4] = *MEMORY[0x1E695D060];
    v14 = MEMORY[0x1E695DEC8];
    v15 = v20;
    v16 = 5;
  }

  else
  {
    v19 = *MEMORY[0x1E695D070];
    v14 = MEMORY[0x1E695DEC8];
    v15 = &v19;
    v16 = 1;
  }

  v17 = [v14 arrayWithObjects:v15 count:v16];
  [avatarView2 setActionCategories:v17];

  avatarView3 = [(CKConversationAvatarSearchResultCell *)self avatarView];
  [avatarView3 setStyle:{objc_msgSend(conversationCopy, "shouldHaveRoundRectAvatar")}];

  [(CKConversationAvatarSearchResultCell *)self setNeedsLayout];
}

- (void)_configureNameLabelForConversation:(id)conversation searchText:(id)text
{
  conversationCopy = conversation;
  textCopy = text;
  if ([conversationCopy hasDisplayName])
  {
    [conversationCopy displayName];
  }

  else
  {
    [conversationCopy name];
  }
  v20 = ;
  v18 = +[CKUIBehavior sharedBehaviors];
  theme = [v18 theme];
  conversationListSummaryColor = [theme conversationListSummaryColor];
  v6 = +[CKUIBehavior sharedBehaviors];
  searchResultLabelFont = [v6 searchResultLabelFont];
  v8 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v8 theme];
  conversationListSenderColor = [theme2 conversationListSenderColor];
  v11 = +[CKUIBehavior sharedBehaviors];
  searchResultLabelFont2 = [v11 searchResultLabelFont];
  v13 = [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:textCopy resultText:v20 primaryTextColor:conversationListSummaryColor primaryFont:searchResultLabelFont annotatedTextColor:conversationListSenderColor annotatedFont:searchResultLabelFont2];

  nameLabel = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [nameLabel setAttributedText:v13];

  nameLabel2 = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [nameLabel2 setTitleIconImageType:{+[CKConversationAvatarSearchResultCell _titleIconImageTypeForConversation:](CKConversationAvatarSearchResultCell, "_titleIconImageTypeForConversation:", conversationCopy)}];

  [(CKConversationAvatarSearchResultCell *)self setNeedsLayout];
}

- (double)_adjustedContentWidth
{
  contentView = [(CKConversationAvatarSearchResultCell *)self contentView];
  [contentView bounds];
  v4 = v3;
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 searchConversationCellPadding];
  v7 = v4 - v6;

  return v7;
}

- (UIEdgeInsets)marginInsets
{
  top = self->marginInsets.top;
  left = self->marginInsets.left;
  bottom = self->marginInsets.bottom;
  right = self->marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end