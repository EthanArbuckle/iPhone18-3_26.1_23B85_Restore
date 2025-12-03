@interface CKConversationLargeTextSearchCell
+ (id)annotatedResultStringWithSearchText:(id)text resultText:(id)resultText primaryTextColor:(id)color primaryFont:(id)font annotatedTextColor:(id)textColor annotatedFont:(id)annotatedFont;
- (UIEdgeInsets)marginInsets;
- (void)configureWithQueryResult:(id)result searchText:(id)text;
- (void)layoutSubviews;
@end

@implementation CKConversationLargeTextSearchCell

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKConversationLargeTextSearchCell;
  [(CKConversationLargeTextSearchCell *)&v3 layoutSubviews];
  [(CKConversationLargeTextSearchCell *)self setUserInteractionEnabled:0];
}

- (void)configureWithQueryResult:(id)result searchText:(id)text
{
  textCopy = text;
  resultCopy = result;
  conversation = [resultCopy conversation];
  [(CKConversationListCell *)self setFreezeSummaryText:0];
  [(CKConversationListLargeTextCell *)self updateContentsForConversation:conversation fastPreview:0];
  [(CKConversationListCell *)self setFreezeSummaryText:1];
  item = [resultCopy item];

  v32 = item;
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

  summaryLabel = [(CKConversationListCell *)self summaryLabel];
  [summaryLabel setAttributedText:v26];

  attributeSet2 = [v32 attributeSet];
  contentCreationDate = [attributeSet2 contentCreationDate];

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