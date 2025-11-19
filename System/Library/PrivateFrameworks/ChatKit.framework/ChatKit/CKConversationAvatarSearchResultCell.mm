@interface CKConversationAvatarSearchResultCell
- (CKConversationAvatarSearchResultCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marginInsets;
- (double)_adjustedContentWidth;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_configureAvatarViewForConversation:(id)a3;
- (void)_configureNameLabelForConversation:(id)a3 searchText:(id)a4;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshForSearchTextIfNeeded:(id)a3;
@end

@implementation CKConversationAvatarSearchResultCell

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 identifier];
  [(CKConversationAvatarSearchResultCell *)self setResultIdentifier:v9];

  v10 = [v8 conversation];

  [(CKConversationAvatarSearchResultCell *)self setConversation:v10];
  [(CKConversationAvatarSearchResultCell *)self _configureAvatarViewForConversation:v10];
  [(CKConversationAvatarSearchResultCell *)self _configureNameLabelForConversation:v10 searchText:v7];
}

- (void)refreshForSearchTextIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationAvatarSearchResultCell *)self conversation];
  [(CKConversationAvatarSearchResultCell *)self _configureNameLabelForConversation:v5 searchText:v4];
}

- (CKConversationAvatarSearchResultCell)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = CKConversationAvatarSearchResultCell;
  v3 = [(CKConversationAvatarSearchResultCell *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v10 = [(CKConversationAvatarSearchResultCell *)v3 contentView];
    [v10 addSubview:v9];

    v11 = [[CKLabel alloc] initWithFrame:v5, v6, v7, v8];
    [(CKLabel *)v11 setNumberOfLines:2];
    [(CKLabel *)v11 setTextAlignment:1];
    [(CKLabel *)v11 setLineBreakMode:4];
    v12 = [(CKConversationAvatarSearchResultCell *)v3 contentView];
    [v12 addSubview:v11];

    [(CKConversationAvatarSearchResultCell *)v3 setNameLabel:v11];
  }

  return v3;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKConversationAvatarSearchResultCell;
  [(CKConversationAvatarSearchResultCell *)&v30 layoutSubviews];
  v3 = [(CKConversationAvatarSearchResultCell *)self contentView];
  [v3 bounds];
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

  v14 = [(CKConversationAvatarSearchResultCell *)self avatarView];
  [v14 setFrame:{v10, v13, v8, v8}];

  [(CKConversationAvatarSearchResultCell *)self _adjustedContentWidth];
  v16 = v15;
  v17 = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [v17 sizeThatFits:{v16, 1.79769313e308}];
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
  v29 = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [v29 setFrame:{v28, v26, v19, v21}];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = CKConversationAvatarSearchResultCell;
  [(CKConversationAvatarSearchResultCell *)&v6 prepareForReuse];
  [(CKConversationAvatarSearchResultCell *)self setResultIdentifier:0];
  [(CKConversationAvatarSearchResultCell *)self setConversation:0];
  v3 = [(CKConversationAvatarSearchResultCell *)self avatarView];
  [v3 setContacts:MEMORY[0x1E695E0F0]];

  v4 = [(CKConversationAvatarSearchResultCell *)self avatarView];
  [v4 setName:0];

  v5 = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [v5 setAttributedText:0];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [v4 size];
  v6 = v5;
  v7 = fmin(v5, 64.0);
  v8 = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [(CKConversationAvatarSearchResultCell *)self _adjustedContentWidth];
  [v8 sizeThatFits:?];
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 searchConversationMinAvatarLabelSpacing];
  v13 = v10 + v7 + v12;
  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 searchConversationCellPadding];
  v16 = v13 + v15 * 2.0;

  [v4 setSize:{v6, v16}];

  return v4;
}

- (void)_configureAvatarViewForConversation:(id)a3
{
  v20[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695D0C0] maxContactAvatars];
  v6 = [v4 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:v5];
  v7 = [(CNAvatarView *)self->_avatarView updateViewWithGroupIdentity:v6];
  if ([v4 hasDisplayName])
  {
    [v4 displayName];
  }

  else
  {
    [v4 name];
  }
  v8 = ;
  v9 = [(CKConversationAvatarSearchResultCell *)self avatarView];
  [v9 setName:v8];

  v10 = [v4 recipientCount];
  v11 = [(CKConversationAvatarSearchResultCell *)self avatarView];
  if (v10 == 1)
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
  [v11 setActionCategories:v17];

  v18 = [(CKConversationAvatarSearchResultCell *)self avatarView];
  [v18 setStyle:{objc_msgSend(v4, "shouldHaveRoundRectAvatar")}];

  [(CKConversationAvatarSearchResultCell *)self setNeedsLayout];
}

- (void)_configureNameLabelForConversation:(id)a3 searchText:(id)a4
{
  v21 = a3;
  v17 = a4;
  if ([v21 hasDisplayName])
  {
    [v21 displayName];
  }

  else
  {
    [v21 name];
  }
  v20 = ;
  v18 = +[CKUIBehavior sharedBehaviors];
  v16 = [v18 theme];
  v5 = [v16 conversationListSummaryColor];
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 searchResultLabelFont];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 conversationListSenderColor];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 searchResultLabelFont];
  v13 = [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:v17 resultText:v20 primaryTextColor:v5 primaryFont:v7 annotatedTextColor:v10 annotatedFont:v12];

  v14 = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [v14 setAttributedText:v13];

  v15 = [(CKConversationAvatarSearchResultCell *)self nameLabel];
  [v15 setTitleIconImageType:{+[CKConversationAvatarSearchResultCell _titleIconImageTypeForConversation:](CKConversationAvatarSearchResultCell, "_titleIconImageTypeForConversation:", v21)}];

  [(CKConversationAvatarSearchResultCell *)self setNeedsLayout];
}

- (double)_adjustedContentWidth
{
  v2 = [(CKConversationAvatarSearchResultCell *)self contentView];
  [v2 bounds];
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