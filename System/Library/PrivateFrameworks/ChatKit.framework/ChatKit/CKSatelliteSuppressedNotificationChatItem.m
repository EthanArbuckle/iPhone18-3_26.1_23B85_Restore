@interface CKSatelliteSuppressedNotificationChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (UIEdgeInsets)contentInsets;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptText;
- (void)unloadTranscriptText;
@end

@implementation CKSatelliteSuppressedNotificationChatItem

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (a4 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v12 objectAtIndex:a4 - 1];
  }

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 smallTranscriptSpace];
  v17 = v16;

  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 largeTranscriptSpace];
  v20 = v19;

  if (!v14)
  {
    v25 = +[CKUIBehavior sharedBehaviors];
    [v25 topTranscriptSpace];
    v20 = v26;

    goto LABEL_12;
  }

  v21 = [v14 layoutType];
  if (v21 > 0x17)
  {
    goto LABEL_20;
  }

  if (((1 << v21) & 0xFF4C) == 0)
  {
    if (((1 << v21) & 0x22) != 0)
    {
      goto LABEL_12;
    }

    if (v21 == 23)
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CKSatelliteSuppressedNotificationChatItem(Layout) layoutItemSpacingWithEnvironment:v29 datasourceItemIndex:? allDatasourceItems:? supplementryItems:? sizeOverride:?];
      }

LABEL_22:

      v20 = v17;
      goto LABEL_12;
    }

LABEL_20:
    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [CKSatelliteSuppressedNotificationChatItem(Layout) layoutItemSpacingWithEnvironment:v14 datasourceItemIndex:v29 allDatasourceItems:? supplementryItems:? sizeOverride:?];
    }

    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v30 = 138412290;
      v31 = v24;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Satellite suppressed notification unexpectedly following a %@", &v30, 0xCu);
    }
  }

LABEL_12:
  v27 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v20 bottomSpacing:0.0];

  return v27;
}

- (void)unloadTranscriptText
{
  v4.receiver = self;
  v4.super_class = CKSatelliteSuppressedNotificationChatItem;
  [(CKChatItem *)&v4 unloadTranscriptText];
  satelliteNoNotificationTitleLabelAttributedText = self->_satelliteNoNotificationTitleLabelAttributedText;
  self->_satelliteNoNotificationTitleLabelAttributedText = 0;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 satelliteSuppressedNotificationIndicatorIcon];

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 transcriptSatelliteSuppressedNotificationFontAttributes];

  v7 = [(CKSatelliteSuppressedNotificationChatItem *)self imSatelliteSuppressedNotificationChatItem];
  v8 = [v7 handle];
  v9 = [v8 _displayNameWithAbbreviation];

  v10 = MEMORY[0x1E696AEC0];
  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"MESSAGE_STATUS_CHECK_VIA_SATELLITE" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
  v13 = [v10 localizedStringWithFormat:v12, v9];

  v14 = [MEMORY[0x1E69DC668] sharedApplication];
  v15 = [v14 userInterfaceLayoutDirection];

  if (v15 == 1)
  {
    v16 = @"\u200F";
  }

  else
  {
    v16 = @"\u200E";
  }

  v17 = [(__CFString *)v16 stringByAppendingString:v13];

  v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v17 attributes:0];
  [(NSAttributedString *)v18 replaceCharactersInRange:0 withString:0, @" "];
  v19 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v19 setImage:v4];
  v20 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v19];
  [(NSAttributedString *)v18 insertAttributedString:v20 atIndex:0];

  [(NSAttributedString *)v18 addAttributes:v6 range:0, [(NSAttributedString *)v18 length]];
  satelliteNoNotificationTitleLabelAttributedText = self->_satelliteNoNotificationTitleLabelAttributedText;
  self->_satelliteNoNotificationTitleLabelAttributedText = v18;
  v22 = v18;

  v23 = [(NSAttributedString *)v22 copy];

  return v23;
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

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (a4)
  {
    [v8 transcriptBoldTextAlignmentInsets];
    a4->top = v10;
    a4->left = v11;
    a4->bottom = v12;
    a4->right = v13;
  }

  v14 = +[CKTranscriptSatelliteSuppressedNotificationCell satelliteNoNotificationTitleLabel];
  v15 = [(CKChatItem *)self transcriptText];
  [v14 setAttributedText:v15];

  [v14 sizeThatFits:{width, height}];
  v17 = v16;

  v18 = 0.0;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

@end