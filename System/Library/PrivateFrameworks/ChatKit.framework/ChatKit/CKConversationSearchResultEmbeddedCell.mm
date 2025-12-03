@interface CKConversationSearchResultEmbeddedCell
+ (id)annotatedResultStringWithSearchText:(id)text resultText:(id)resultText primaryTextColor:(id)color primaryFont:(id)font annotatedTextColor:(id)textColor annotatedFont:(id)annotatedFont;
- (UIEdgeInsets)marginInsets;
- (double)leadingLayoutMargin;
- (void)configureWithQueryResult:(id)result searchText:(id)text;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKConversationSearchResultEmbeddedCell

- (void)configureWithQueryResult:(id)result searchText:(id)text
{
  textCopy = text;
  resultCopy = result;
  conversation = [resultCopy conversation];
  [(CKConversationListCell *)self setFreezeSummaryText:0];
  [(CKConversationListStandardCell *)self updateContentsForConversation:conversation fastPreview:0];
  [(CKConversationListCell *)self setFreezeSummaryText:1];
  item = [resultCopy item];

  v33 = item;
  attributeSet = [item attributeSet];
  __ck_spotlightItemSnippet = [attributeSet __ck_spotlightItemSnippet];

  v10 = [__ck_spotlightItemSnippet length];
  v11 = +[CKUIBehavior sharedBehaviors];
  conversationListCellMaxSummaryLength = [v11 conversationListCellMaxSummaryLength];

  if (v10 > conversationListCellMaxSummaryLength)
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [__ck_spotlightItemSnippet substringWithRange:{0, objc_msgSend(v13, "conversationListCellMaxSummaryLength")}];

    __ck_spotlightItemSnippet = v14;
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
  theme = [v20 theme];
  conversationListSummaryColor = [theme conversationListSummaryColor];
  v23 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v23 theme];
  conversationListSenderColor = [theme2 conversationListSenderColor];
  v26 = [v19 annotatedResultStringWithSearchText:textCopy resultText:__ck_spotlightItemSnippet primaryTextColor:conversationListSummaryColor primaryFont:v18 annotatedTextColor:conversationListSenderColor annotatedFont:v18];

  if (![v26 length])
  {
    previewText = [conversation previewText];

    v26 = previewText;
  }

  summaryLabel = [(CKConversationListCell *)self summaryLabel];
  [summaryLabel setAttributedText:v26];

  attributeSet2 = [v33 attributeSet];
  contentCreationDate = [attributeSet2 contentCreationDate];

  if (!contentCreationDate)
  {
    contentCreationDate = [conversation date];
  }

  dateLabel = [(CKConversationListCell *)self dateLabel];
  [dateLabel setDate:contentCreationDate];
}

+ (id)annotatedResultStringWithSearchText:(id)text resultText:(id)resultText primaryTextColor:(id)color primaryFont:(id)font annotatedTextColor:(id)textColor annotatedFont:(id)annotatedFont
{
  textCopy = text;
  resultTextCopy = resultText;
  colorCopy = color;
  fontCopy = font;
  textColorCopy = textColor;
  annotatedFontCopy = annotatedFont;
  if ([resultTextCopy length])
  {
    v29 = colorCopy;
    v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:resultTextCopy];
    v20 = [v19 length];
    v27 = textCopy;
    if ([textCopy length])
    {
      v21 = [resultTextCopy rangeOfString:textCopy options:129];
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = *MEMORY[0x1E69DB648];
    [v19 addAttribute:*MEMORY[0x1E69DB648] value:fontCopy range:{0, v20, v27}];
    v25 = *MEMORY[0x1E69DB650];
    [v19 addAttribute:*MEMORY[0x1E69DB650] value:v29 range:{0, v20}];
    if (v23)
    {
      [v19 addAttribute:v25 value:textColorCopy range:{v21, v23}];
      [v19 addAttribute:v24 value:annotatedFontCopy range:{v21, v23}];
    }

    textCopy = v28;
    colorCopy = v29;
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
  unreadIndicatorImageView = [(CKConversationListStandardCell *)self unreadIndicatorImageView];
  [unreadIndicatorImageView setHidden:1];

  indicatorContainerView = [(CKConversationListStandardCell *)self indicatorContainerView];
  [indicatorContainerView setHidden:1];

  avatarView = [(CKConversationListStandardCell *)self avatarView];
  [avatarView setAsynchronousRendering:1];

  avatarView2 = [(CKConversationListStandardCell *)self avatarView];
  [avatarView2 setUserInteractionEnabled:0];

  avatarView3 = [(CKConversationListStandardCell *)self avatarView];
  [avatarView3 setShowsContactOnTap:0];

  avatarView4 = [(CKConversationListStandardCell *)self avatarView];
  [avatarView4 setBypassActionValidation:1];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKConversationSearchResultEmbeddedCell;
  [(CKConversationListStandardCell *)&v4 prepareForReuse];
  summaryLabel = [(CKConversationListCell *)self summaryLabel];
  [summaryLabel setAttributedText:0];
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
    contactPhotosEnabled = [v12 contactPhotosEnabled];

    if (contactPhotosEnabled)
    {
      _shouldReverseLayoutDirection = [(CKConversationSearchResultEmbeddedCell *)self _shouldReverseLayoutDirection];
      v15 = 2.0;
      if (_shouldReverseLayoutDirection)
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