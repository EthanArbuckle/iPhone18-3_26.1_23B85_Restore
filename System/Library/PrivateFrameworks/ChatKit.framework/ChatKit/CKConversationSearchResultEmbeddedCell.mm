@interface CKConversationSearchResultEmbeddedCell
+ (id)annotatedResultStringWithSearchText:(id)a3 resultText:(id)a4 primaryTextColor:(id)a5 primaryFont:(id)a6 annotatedTextColor:(id)a7 annotatedFont:(id)a8;
- (UIEdgeInsets)marginInsets;
- (double)leadingLayoutMargin;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKConversationSearchResultEmbeddedCell

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4
{
  v32 = a4;
  v6 = a3;
  v34 = [v6 conversation];
  [(CKConversationListCell *)self setFreezeSummaryText:0];
  [(CKConversationListStandardCell *)self updateContentsForConversation:v34 fastPreview:0];
  [(CKConversationListCell *)self setFreezeSummaryText:1];
  v7 = [v6 item];

  v33 = v7;
  v8 = [v7 attributeSet];
  v9 = [v8 __ck_spotlightItemSnippet];

  v10 = [v9 length];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 conversationListCellMaxSummaryLength];

  if (v10 > v12)
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [v9 substringWithRange:{0, objc_msgSend(v13, "conversationListCellMaxSummaryLength")}];

    v9 = v14;
  }

  v15 = CKIsRunningInMacCatalyst();
  v16 = +[CKUIBehavior sharedBehaviors];
  v17 = v16;
  if (v15)
  {
    [v16 searchMessageBodyTextFont];
  }

  else
  {
    [v16 conversationListSummaryFont];
  }
  v18 = ;

  v19 = objc_opt_class();
  v20 = +[CKUIBehavior sharedBehaviors];
  v21 = [v20 theme];
  v22 = [v21 conversationListSummaryColor];
  v23 = +[CKUIBehavior sharedBehaviors];
  v24 = [v23 theme];
  v25 = [v24 conversationListSenderColor];
  v26 = [v19 annotatedResultStringWithSearchText:v32 resultText:v9 primaryTextColor:v22 primaryFont:v18 annotatedTextColor:v25 annotatedFont:v18];

  if (![v26 length])
  {
    v27 = [v34 previewText];

    v26 = v27;
  }

  v28 = [(CKConversationListCell *)self summaryLabel];
  [v28 setAttributedText:v26];

  v29 = [v33 attributeSet];
  v30 = [v29 contentCreationDate];

  if (!v30)
  {
    v30 = [v34 date];
  }

  v31 = [(CKConversationListCell *)self dateLabel];
  [v31 setDate:v30];
}

+ (id)annotatedResultStringWithSearchText:(id)a3 resultText:(id)a4 primaryTextColor:(id)a5 primaryFont:(id)a6 annotatedTextColor:(id)a7 annotatedFont:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([v14 length])
  {
    v29 = v15;
    v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v14];
    v20 = [v19 length];
    v27 = v13;
    if ([v13 length])
    {
      v21 = [v14 rangeOfString:v13 options:129];
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = *MEMORY[0x1E69DB648];
    [v19 addAttribute:*MEMORY[0x1E69DB648] value:v16 range:{0, v20, v27}];
    v25 = *MEMORY[0x1E69DB650];
    [v19 addAttribute:*MEMORY[0x1E69DB650] value:v29 range:{0, v20}];
    if (v23)
    {
      [v19 addAttribute:v25 value:v17 range:{v21, v23}];
      [v19 addAttribute:v24 value:v18 range:{v21, v23}];
    }

    v13 = v28;
    v15 = v29;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CKConversationSearchResultEmbeddedCell;
  [(CKConversationListStandardCell *)&v9 layoutSubviews];
  [(CKConversationSearchResultEmbeddedCell *)self setUserInteractionEnabled:0];
  v3 = [(CKConversationListStandardCell *)self unreadIndicatorImageView];
  [v3 setHidden:1];

  v4 = [(CKConversationListStandardCell *)self indicatorContainerView];
  [v4 setHidden:1];

  v5 = [(CKConversationListStandardCell *)self avatarView];
  [v5 setAsynchronousRendering:1];

  v6 = [(CKConversationListStandardCell *)self avatarView];
  [v6 setUserInteractionEnabled:0];

  v7 = [(CKConversationListStandardCell *)self avatarView];
  [v7 setShowsContactOnTap:0];

  v8 = [(CKConversationListStandardCell *)self avatarView];
  [v8 setBypassActionValidation:1];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKConversationSearchResultEmbeddedCell;
  [(CKConversationListStandardCell *)&v4 prepareForReuse];
  v3 = [(CKConversationListCell *)self summaryLabel];
  [v3 setAttributedText:0];
}

- (double)leadingLayoutMargin
{
  [(CKConversationSearchResultEmbeddedCell *)self marginInsets];
  v4 = v3;
  [(CKConversationSearchResultEmbeddedCell *)self bounds];
  v6 = v5;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 conversationListMinimumWidthForHiddenContactImage];
  v9 = v8;

  v10 = +[CKUIBehavior sharedBehaviors];
  if ([v10 canShowContactPhotosInConversationList])
  {
    v11 = v6 <= v9;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
  }

  else
  {
    v12 = +[CKUIBehavior sharedBehaviors];
    v13 = [v12 contactPhotosEnabled];

    if (v13)
    {
      v14 = [(CKConversationSearchResultEmbeddedCell *)self _shouldReverseLayoutDirection];
      v15 = 2.0;
      if (v14)
      {
        v15 = -2.0;
      }

      return v4 + v15;
    }
  }

  return v4;
}

- (UIEdgeInsets)marginInsets
{
  top = self->_marginInsets.top;
  left = self->_marginInsets.left;
  bottom = self->_marginInsets.bottom;
  right = self->_marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end