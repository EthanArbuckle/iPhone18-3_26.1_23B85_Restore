@interface CKUnavailabilityIndicatorChatItem
- (BOOL)displayNotifyAnywayButton;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (NSAttributedString)unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton;
- (NSAttributedString)unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton;
- (UIEdgeInsets)contentInsets;
- (id)_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:(BOOL)a3;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptText;
- (void)_loadUnavailableTitleLabelTextVariants;
- (void)unloadTranscriptText;
@end

@implementation CKUnavailabilityIndicatorChatItem

- (BOOL)displayNotifyAnywayButton
{
  v2 = [(CKUnavailabilityIndicatorChatItem *)self imUnavailabilityIndicatorChatItem];
  v3 = [v2 displayNotifyAnywayButton];

  return v3;
}

- (id)loadTranscriptText
{
  [(CKUnavailabilityIndicatorChatItem *)self _loadUnavailableTitleLabelTextVariants];
  unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton = self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton;

  return unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton;
}

- (void)unloadTranscriptText
{
  v5.receiver = self;
  v5.super_class = CKUnavailabilityIndicatorChatItem;
  [(CKChatItem *)&v5 unloadTranscriptText];
  unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton = self->_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton;
  self->_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton = 0;

  unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton = self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton;
  self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton = 0;
}

- (NSAttributedString)unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton
{
  unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton = self->_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton;
  if (!unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton)
  {
    [(CKUnavailabilityIndicatorChatItem *)self _loadUnavailableTitleLabelTextVariants];
    unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton = self->_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton;
  }

  return unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton;
}

- (NSAttributedString)unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton
{
  unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton = self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton;
  if (!unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton)
  {
    [(CKUnavailabilityIndicatorChatItem *)self _loadUnavailableTitleLabelTextVariants];
    unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton = self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton;
  }

  return unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton;
}

- (void)_loadUnavailableTitleLabelTextVariants
{
  v3 = [(CKUnavailabilityIndicatorChatItem *)self _unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:1];
  unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton = self->_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton;
  self->_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton = v3;

  v5 = [(CKUnavailabilityIndicatorChatItem *)self _unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:0];
  unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton = self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton;
  self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton = v5;
}

- (id)_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:(BOOL)a3
{
  v3 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 transcriptAvailabilityDeemphasizedFontAttributes];

    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 unavailabilityIndicatorDeemphasizedIcon];
  }

  else
  {
    v7 = [v5 transcriptAvailabilityFontAttributes];

    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 unavailabilityIndicatorIcon];
  }
  v9 = ;

  v10 = [(CKUnavailabilityIndicatorChatItem *)self imUnavailabilityIndicatorChatItem];
  v11 = [v10 handle];
  v12 = [v11 _displayNameWithAbbreviation];

  v13 = MEMORY[0x1E696AEC0];
  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"UNAVAILABILITY_INDICATOR_TITLE_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
  v16 = [v13 stringWithFormat:v15, v12];

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

  v21 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v20 attributes:0];
  [v21 replaceCharactersInRange:0 withString:{0, @" "}];
  v22 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v22 setImage:v9];
  v23 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v22];
  [v21 insertAttributedString:v23 atIndex:0];

  [v21 addAttributes:v7 range:{0, objc_msgSend(v21, "length")}];

  return v21;
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

  v14 = +[CKTranscriptUnavailabilityIndicatorCell unavailableTitleLabel];
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

    goto LABEL_28;
  }

  v21 = [v14 layoutType];
  if (v21 > 5)
  {
    if (v21 <= 0x1B)
    {
      if (((1 << v21) & 0x840E740) != 0)
      {
        goto LABEL_8;
      }

      if (v21 == 11)
      {
        v27 = IMLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CKUnavailabilityIndicatorChatItem(Layout) layoutItemSpacingWithEnvironment:v27 datasourceItemIndex:? allDatasourceItems:? supplementryItems:? sizeOverride:?];
        }

        goto LABEL_27;
      }

      if (v21 == 12)
      {
        v27 = IMLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CKUnavailabilityIndicatorChatItem(Layout) layoutItemSpacingWithEnvironment:v27 datasourceItemIndex:? allDatasourceItems:? supplementryItems:? sizeOverride:?];
        }

LABEL_27:

        v20 = v17;
        goto LABEL_28;
      }
    }

LABEL_25:
    v27 = IMLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CKUnavailabilityIndicatorChatItem(Layout) layoutItemSpacingWithEnvironment:v14 datasourceItemIndex:v27 allDatasourceItems:? supplementryItems:? sizeOverride:?];
    }

    goto LABEL_27;
  }

  if ((v21 - 2) >= 2)
  {
    if (v21 == 1 || v21 == 5)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_8:
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v30 = 138412290;
      v31 = v24;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Unavailability indicator unexpectedly following a %@", &v30, 0xCu);
    }
  }

LABEL_28:
  v28 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v20 bottomSpacing:0.0];

  return v28;
}

@end