@interface CKPinnedConversationSummaryBubbleActivityItem
- (CKPinnedConversationSummaryBubbleActivityItem)initWithMessage:(id)message chat:(id)chat contentScale:(double)scale attachedContactItemIdentifier:(id)identifier;
- (CKPinnedConversationSummaryBubbleActivityItem)initWithSummaryText:(id)text;
- (id)activityItemView;
- (id)summaryAttributedStringForContentScale:(int64_t)scale userInterfaceStyle:(int64_t)style;
- (id)summaryLabelFontForContentScale:(int64_t)scale;
- (id)summaryLabelTextColorForUserInterfaceStyle:(int64_t)style;
@end

@implementation CKPinnedConversationSummaryBubbleActivityItem

- (CKPinnedConversationSummaryBubbleActivityItem)initWithMessage:(id)message chat:(id)chat contentScale:(double)scale attachedContactItemIdentifier:(id)identifier
{
  messageCopy = message;
  chatCopy = chat;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = CKPinnedConversationSummaryBubbleActivityItem;
  v14 = [(CKPinnedConversationSummaryBubbleActivityItem *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_message, message);
    objc_storeStrong(&v15->_chat, chat);
    v15->_activityItemContentScale = scale;
    v16 = [identifierCopy copy];
    attachedContactItemIdentifier = v15->_attachedContactItemIdentifier;
    v15->_attachedContactItemIdentifier = v16;
  }

  return v15;
}

- (CKPinnedConversationSummaryBubbleActivityItem)initWithSummaryText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = CKPinnedConversationSummaryBubbleActivityItem;
  v6 = [(CKPinnedConversationSummaryBubbleActivityItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_summaryText, text);
  }

  return v7;
}

- (id)activityItemView
{
  v2 = [[CKPinnedConversationSummaryBubble alloc] initWithSummaryBubbleActivityItem:self];

  return v2;
}

- (id)summaryLabelFontForContentScale:(int64_t)scale
{
  if (scale == 1)
  {
    v3 = *MEMORY[0x1E69DDD80];
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 conversationListPinnedConversationPreviewFontSizeOverrideLarge];
    goto LABEL_5;
  }

  if (!scale)
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

- (id)summaryLabelTextColorForUserInterfaceStyle:(int64_t)style
{
  if (style >= 2)
  {
    if (style != 2)
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

- (id)summaryAttributedStringForContentScale:(int64_t)scale userInterfaceStyle:(int64_t)style
{
  message = [(CKPinnedConversationSummaryBubbleActivityItem *)self message];
  chat = [(CKPinnedConversationSummaryBubbleActivityItem *)self chat];
  v9 = [message __ck_previewTextWithChat:chat];
  summaryText = [(CKPinnedConversationSummaryBubbleActivityItem *)self summaryText];

  if (summaryText)
  {
    summaryText2 = [(CKPinnedConversationSummaryBubbleActivityItem *)self summaryText];

    v9 = summaryText2;
    v12 = v9;
  }

  else
  {
    v13 = [(CKPinnedConversationSummaryBubbleActivityItem *)self summaryLabelFontForContentScale:scale];
    v14 = [(CKPinnedConversationSummaryBubbleActivityItem *)self summaryLabelTextColorForUserInterfaceStyle:style];
    v15 = objc_alloc_init(CKPreviewTextDisplayContext);
    [(CKPreviewTextDisplayContext *)v15 setBaseTextFont:v13];
    [(CKPreviewTextDisplayContext *)v15 setBaseTextColor:v14];
    v16 = MEMORY[0x1E69DB878];
    fontDescriptor = [v13 fontDescriptor];
    v18 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
    v19 = [v16 fontWithDescriptor:v18 size:0.0];
    [(CKPreviewTextDisplayContext *)v15 setMentionsFont:v19];

    v20 = +[CKUIBehavior sharedBehaviors];
    theme = [v20 theme];
    meMentionTextColor = [theme meMentionTextColor];
    [(CKPreviewTextDisplayContext *)v15 setMentionsColor:meMentionTextColor];

    v12 = CKPreviewTextForDisplay(v9, v15);
  }

  return v12;
}

@end