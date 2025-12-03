@interface CKNotifyAnywayChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (UIEdgeInsets)contentInsets;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptText;
@end

@implementation CKNotifyAnywayChatItem

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if (index < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [itemsCopy objectAtIndex:index - 1];
  }

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 mediumLargeTranscriptSpace];
  v17 = v16;

  if (v14)
  {
    if ([v14 layoutType] == 11)
    {
      goto LABEL_10;
    }

    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CKNotifyAnywayChatItem(Layout) layoutItemSpacingWithEnvironment:v14 datasourceItemIndex:v18 allDatasourceItems:? supplementryItems:? sizeOverride:?];
    }
  }

  else
  {
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 topTranscriptSpace];
    v17 = v19;
  }

LABEL_10:
  v20 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v17 bottomSpacing:0.0];

  return v20;
}

- (id)loadTranscriptText
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFY_ANYWAY_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v3 attributes:0];
  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptNotifyAnywayFontAttributes = [v5 transcriptNotifyAnywayFontAttributes];

  [v4 addAttributes:transcriptNotifyAnywayFontAttributes range:{0, objc_msgSend(v4, "length")}];

  return v4;
}

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 stampTranscriptInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (insets)
  {
    [v8 transcriptBoldTextAlignmentInsets];
    insets->top = v10;
    insets->left = v11;
    insets->bottom = v12;
    insets->right = v13;
  }

  v14 = +[CKTranscriptNotifyAnywayButtonCell notifyAnywayButton];
  transcriptText = [(CKChatItem *)self transcriptText];
  [v14 setAttributedTitle:transcriptText forState:0];
  [v14 sizeThatFits:{width, height}];
  v17 = v16;

  v18 = 0.0;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

@end