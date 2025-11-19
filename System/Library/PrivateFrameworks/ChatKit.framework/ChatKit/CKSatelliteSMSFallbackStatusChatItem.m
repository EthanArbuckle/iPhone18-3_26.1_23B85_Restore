@interface CKSatelliteSMSFallbackStatusChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (UIEdgeInsets)contentInsets;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6;
- (id)loadTranscriptText;
- (void)unloadTranscriptText;
@end

@implementation CKSatelliteSMSFallbackStatusChatItem

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v11 objectAtIndex:a4 - 1];
  }

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 smallTranscriptSpace];
  v16 = v15;

  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 largeTranscriptSpace];
  v19 = v18;

  if (!v13)
  {
    v24 = +[CKUIBehavior sharedBehaviors];
    [v24 topTranscriptSpace];
    v19 = v25;

    goto LABEL_12;
  }

  v20 = [v13 layoutType];
  if (v20 <= 0x18)
  {
    if (((1 << v20) & 0x180FF4C) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v29 = 138412290;
          v30 = v23;
          _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Satellite SMS fallback indicator  unexpectedly following a %@", &v29, 0xCu);
        }
      }

      goto LABEL_12;
    }

    if (((1 << v20) & 0x22) != 0)
    {
      goto LABEL_12;
    }
  }

  v28 = IMLogHandleForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [CKSatelliteSMSFallbackStatusChatItem(Layout) layoutItemSpacingWithEnvironment:v13 datasourceItemIndex:v28 allDatasourceItems:? supplementryItems:?];
  }

  v19 = v16;
LABEL_12:
  v26 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v13 topSpacing:v19 bottomSpacing:0.0];

  return v26;
}

- (void)unloadTranscriptText
{
  v4.receiver = self;
  v4.super_class = CKSatelliteSMSFallbackStatusChatItem;
  [(CKChatItem *)&v4 unloadTranscriptText];
  smsFallbackStatusTitleLabelAttributedText = self->_smsFallbackStatusTitleLabelAttributedText;
  self->_smsFallbackStatusTitleLabelAttributedText = 0;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v28 = [v3 transcriptEmphasizedFontAttributes];

  v4 = +[CKUIBehavior sharedBehaviors];
  v27 = [v4 transcriptRegularFontAttributes];

  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE_SMS" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];

  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v6 attributes:v28];
  v8 = [(CKChatItem *)self IMChatItem];
  v9 = [v8 handle];
  v10 = [v9 _displayNameWithAbbreviation];

  LODWORD(v9) = [v8 canSMSReply];
  v11 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle();
  v13 = v12;
  if (v9)
  {
    v14 = @"SMS_FALLBACK_STATUS_MESSAGE";
  }

  else
  {
    v14 = @"SMS_FALLBACK_STATUS_MESSAGE_NO_REPLY";
  }

  v15 = [v12 localizedStringForKey:v14 value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
  v16 = [v11 localizedStringWithFormat:v15, v10];

  v17 = [MEMORY[0x1E69DC668] sharedApplication];
  v18 = [v17 userInterfaceLayoutDirection];

  if (v18 == 1)
  {
    v19 = @"\u200F";
  }

  else
  {
    v19 = @"\u200E";
  }

  v20 = [(__CFString *)v19 stringByAppendingString:v16];

  v21 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v20 attributes:v27];
  v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  [(NSAttributedString *)v7 appendLocalizedFormat:v22];
  [(NSAttributedString *)v7 appendLocalizedFormat:v21];
  smsFallbackStatusTitleLabelAttributedText = self->_smsFallbackStatusTitleLabelAttributedText;
  self->_smsFallbackStatusTitleLabelAttributedText = v7;
  v24 = v7;

  v25 = [(NSAttributedString *)v24 copy];

  return v25;
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
  v9 = [(CKSatelliteSMSFallbackStatusChatItem *)self loadTranscriptText];
  [v9 boundingRectWithSize:1 options:0 context:{width, height}];
  v11 = v10;

  [v8 smallTranscriptSpace];
  v13 = v12;
  [v8 transcriptBoldTextAlignmentInsets];
  if (a4)
  {
    a4->top = v14;
    a4->left = v15;
    a4->bottom = v16;
    a4->right = v17;
  }

  v18 = v11 - v14 + v13 + v11 - v16;

  v19 = 0.0;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

@end