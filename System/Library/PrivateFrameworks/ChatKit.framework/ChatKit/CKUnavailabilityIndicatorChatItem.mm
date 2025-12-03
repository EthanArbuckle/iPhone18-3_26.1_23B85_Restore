@interface CKUnavailabilityIndicatorChatItem
- (BOOL)displayNotifyAnywayButton;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (NSAttributedString)unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton;
- (NSAttributedString)unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton;
- (UIEdgeInsets)contentInsets;
- (id)_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:(BOOL)button;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptText;
- (void)_loadUnavailableTitleLabelTextVariants;
- (void)unloadTranscriptText;
@end

@implementation CKUnavailabilityIndicatorChatItem

- (BOOL)displayNotifyAnywayButton
{
  imUnavailabilityIndicatorChatItem = [(CKUnavailabilityIndicatorChatItem *)self imUnavailabilityIndicatorChatItem];
  displayNotifyAnywayButton = [imUnavailabilityIndicatorChatItem displayNotifyAnywayButton];

  return displayNotifyAnywayButton;
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

- (id)_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:(BOOL)button
{
  buttonCopy = button;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (buttonCopy)
  {
    transcriptAvailabilityDeemphasizedFontAttributes = [v5 transcriptAvailabilityDeemphasizedFontAttributes];

    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 unavailabilityIndicatorDeemphasizedIcon];
  }

  else
  {
    transcriptAvailabilityDeemphasizedFontAttributes = [v5 transcriptAvailabilityFontAttributes];

    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 unavailabilityIndicatorIcon];
  }
  v9 = ;

  imUnavailabilityIndicatorChatItem = [(CKUnavailabilityIndicatorChatItem *)self imUnavailabilityIndicatorChatItem];
  handle = [imUnavailabilityIndicatorChatItem handle];
  _displayNameWithAbbreviation = [handle _displayNameWithAbbreviation];

  v13 = MEMORY[0x1E696AEC0];
  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"UNAVAILABILITY_INDICATOR_TITLE_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
  v16 = [v13 stringWithFormat:v15, _displayNameWithAbbreviation];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
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

  [v21 addAttributes:transcriptAvailabilityDeemphasizedFontAttributes range:{0, objc_msgSend(v21, "length")}];

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

  v14 = +[CKTranscriptUnavailabilityIndicatorCell unavailableTitleLabel];
  transcriptText = [(CKChatItem *)self transcriptText];
  [v14 setAttributedText:transcriptText];

  [v14 sizeThatFits:{width, height}];
  v17 = v16;

  v18 = 0.0;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  v32 = *MEMORY[0x1E69E9840];
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

  layoutType = [v14 layoutType];
  if (layoutType > 5)
  {
    if (layoutType <= 0x1B)
    {
      if (((1 << layoutType) & 0x840E740) != 0)
      {
        goto LABEL_8;
      }

      if (layoutType == 11)
      {
        v27 = IMLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CKUnavailabilityIndicatorChatItem(Layout) layoutItemSpacingWithEnvironment:v27 datasourceItemIndex:? allDatasourceItems:? supplementryItems:? sizeOverride:?];
        }

        goto LABEL_27;
      }

      if (layoutType == 12)
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

  if ((layoutType - 2) >= 2)
  {
    if (layoutType == 1 || layoutType == 5)
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