@interface CKConversationLargeTextSearchCell
+ (id)annotatedResultStringWithSearchText:(id)a3 resultText:(id)a4 primaryTextColor:(id)a5 primaryFont:(id)a6 annotatedTextColor:(id)a7 annotatedFont:(id)a8;
- (UIEdgeInsets)marginInsets;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4;
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

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4
{
  v31 = a4;
  v6 = a3;
  v33 = [v6 conversation];
  [(CKConversationListCell *)self setFreezeSummaryText:0];
  [(CKConversationListLargeTextCell *)self updateContentsForConversation:v33 fastPreview:0];
  [(CKConversationListCell *)self setFreezeSummaryText:1];
  v7 = [v6 item];

  v32 = v7;
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
  v26 = [v19 annotatedResultStringWithSearchText:v31 resultText:v9 primaryTextColor:v22 primaryFont:v18 annotatedTextColor:v25 annotatedFont:v18];

  v27 = [(CKConversationListCell *)self summaryLabel];
  [v27 setAttributedText:v26];

  v28 = [v32 attributeSet];
  v29 = [v28 contentCreationDate];

  v30 = [(CKConversationListCell *)self dateLabel];
  [v30 setDate:v29];
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