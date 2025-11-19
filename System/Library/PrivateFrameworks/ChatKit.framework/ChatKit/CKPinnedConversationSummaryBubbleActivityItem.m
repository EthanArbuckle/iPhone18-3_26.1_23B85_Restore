@interface CKPinnedConversationSummaryBubbleActivityItem
- (CKPinnedConversationSummaryBubbleActivityItem)initWithMessage:(id)a3 chat:(id)a4 contentScale:(double)a5 attachedContactItemIdentifier:(id)a6;
- (CKPinnedConversationSummaryBubbleActivityItem)initWithSummaryText:(id)a3;
- (id)activityItemView;
- (id)summaryAttributedStringForContentScale:(int64_t)a3 userInterfaceStyle:(int64_t)a4;
- (id)summaryLabelFontForContentScale:(int64_t)a3;
- (id)summaryLabelTextColorForUserInterfaceStyle:(int64_t)a3;
@end

@implementation CKPinnedConversationSummaryBubbleActivityItem

- (CKPinnedConversationSummaryBubbleActivityItem)initWithMessage:(id)a3 chat:(id)a4 contentScale:(double)a5 attachedContactItemIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = CKPinnedConversationSummaryBubbleActivityItem;
  v14 = [(CKPinnedConversationSummaryBubbleActivityItem *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_message, a3);
    objc_storeStrong(&v15->_chat, a4);
    v15->_activityItemContentScale = a5;
    v16 = [v13 copy];
    attachedContactItemIdentifier = v15->_attachedContactItemIdentifier;
    v15->_attachedContactItemIdentifier = v16;
  }

  return v15;
}

- (CKPinnedConversationSummaryBubbleActivityItem)initWithSummaryText:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKPinnedConversationSummaryBubbleActivityItem;
  v6 = [(CKPinnedConversationSummaryBubbleActivityItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_summaryText, a3);
  }

  return v7;
}

- (id)activityItemView
{
  v2 = [[CKPinnedConversationSummaryBubble alloc] initWithSummaryBubbleActivityItem:self];

  return v2;
}

- (id)summaryLabelFontForContentScale:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = *MEMORY[0x1E69DDD80];
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 conversationListPinnedConversationPreviewFontSizeOverrideLarge];
    goto LABEL_5;
  }

  if (!a3)
  {
    v3 = *MEMORY[0x1E69DDD28];
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 conversationListPinnedConversationPreviewFontSizeOverrideStandard];
LABEL_5:
    v6 = v5;

    goto LABEL_7;
  }

  v3 = 0;
  v6 = 0.0;
LABEL_7:
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v3 addingSymbolicTraits:0x8000 options:1];
  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:v6];

  return v8;
}

- (id)summaryLabelTextColorForUserInterfaceStyle:(int64_t)a3
{
  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v3 = MEMORY[0x1E69DC888];
    v4 = 0.9;
    v5 = 1.0;
  }

  else
  {
    v3 = MEMORY[0x1E69DC888];
    v4 = 0.8;
    v5 = 0.0;
  }

  v6 = [v3 colorWithWhite:v5 alpha:v4];
LABEL_7:

  return v6;
}

- (id)summaryAttributedStringForContentScale:(int64_t)a3 userInterfaceStyle:(int64_t)a4
{
  v7 = [(CKPinnedConversationSummaryBubbleActivityItem *)self message];
  v8 = [(CKPinnedConversationSummaryBubbleActivityItem *)self chat];
  v9 = [v7 __ck_previewTextWithChat:v8];
  v10 = [(CKPinnedConversationSummaryBubbleActivityItem *)self summaryText];

  if (v10)
  {
    v11 = [(CKPinnedConversationSummaryBubbleActivityItem *)self summaryText];

    v9 = v11;
    v12 = v9;
  }

  else
  {
    v13 = [(CKPinnedConversationSummaryBubbleActivityItem *)self summaryLabelFontForContentScale:a3];
    v14 = [(CKPinnedConversationSummaryBubbleActivityItem *)self summaryLabelTextColorForUserInterfaceStyle:a4];
    v15 = objc_alloc_init(CKPreviewTextDisplayContext);
    [(CKPreviewTextDisplayContext *)v15 setBaseTextFont:v13];
    [(CKPreviewTextDisplayContext *)v15 setBaseTextColor:v14];
    v16 = MEMORY[0x1E69DB878];
    v17 = [v13 fontDescriptor];
    v18 = [v17 fontDescriptorWithSymbolicTraits:2];
    v19 = [v16 fontWithDescriptor:v18 size:0.0];
    [(CKPreviewTextDisplayContext *)v15 setMentionsFont:v19];

    v20 = +[CKUIBehavior sharedBehaviors];
    v21 = [v20 theme];
    v22 = [v21 meMentionTextColor];
    [(CKPreviewTextDisplayContext *)v15 setMentionsColor:v22];

    v12 = CKPreviewTextForDisplay(v9, v15);
  }

  return v12;
}

@end