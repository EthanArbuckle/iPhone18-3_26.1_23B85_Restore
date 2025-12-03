@interface CKSenderChatItem
- (BOOL)shouldUnloadTranscriptTextForChangeFromTraitCollection:(id)collection toTraitCollection:(id)traitCollection;
- (BOOL)wantsAddToContactsButton;
- (BOOL)wantsDrawerLayout;
- (CGSize)_transcriptTextSizeThatFitsForSize:(CGSize)size;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (Class)cellClass;
- (UIEdgeInsets)contentInsets;
- (id)cellIdentifier;
- (id)getAttributeTextForMessagesFromEmergencyUser:(id)user transcriptSharingMessageType:(int64_t)type;
- (id)handle;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptText;
- (id)unknownSenderAttributedStringForControlState:(unint64_t)state;
@end

@implementation CKSenderChatItem

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  v51 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  v13 = index - 1;
  if (index < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [itemsCopy objectAtIndexedSubscript:index - 1];
  }

  if (index + 1 >= [itemsCopy count])
  {
    v15 = 0;
  }

  else
  {
    v15 = [itemsCopy objectAtIndexedSubscript:index + 1];
  }

  v16 = [CKChatItemLayoutUtilities nextItemIsOriginatorWithRepliesForIndex:index allDatasourceItems:itemsCopy];
  layoutType = [v14 layoutType];
  if (v16)
  {
    v18 = layoutType == 8;
    v19 = +[CKUIBehavior sharedBehaviors];
    v20 = v19;
    if (v18)
    {
      [v19 mediumLargeTranscriptSpace];
    }

    else
    {
      [v19 extraLargeTranscriptSpace];
    }

    v24 = v21;

    goto LABEL_52;
  }

  if (layoutType <= 12)
  {
    if (layoutType > 7)
    {
      if ((layoutType - 8) >= 2 && (layoutType - 11) >= 2)
      {
        goto LABEL_55;
      }
    }

    else if ((layoutType - 2) >= 2)
    {
      if ((layoutType - 5) < 2)
      {
        v22 = [CKChatItemLayoutUtilities prevMessageIsReplyForIndex:v13 allDatasourceItems:itemsCopy];
        v23 = +[CKUIBehavior sharedBehaviors];
        if (v22)
        {
          goto LABEL_36;
        }

        goto LABEL_32;
      }

      if (layoutType == 1)
      {
LABEL_37:
        v23 = +[CKUIBehavior sharedBehaviors];
        [v23 mediumLargeTranscriptSpace];
        goto LABEL_38;
      }

      goto LABEL_55;
    }

    goto LABEL_31;
  }

  if (layoutType > 17)
  {
    if ((layoutType - 23) < 2)
    {
LABEL_31:
      v23 = +[CKUIBehavior sharedBehaviors];
      goto LABEL_32;
    }

    if (layoutType == 18)
    {
      goto LABEL_37;
    }

    if (layoutType != 19)
    {
LABEL_55:
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = objc_opt_class();
          *buf = 138412546;
          *&buf[4] = v38;
          *&buf[12] = 2112;
          *&buf[14] = objc_opt_class();
          v39 = *&buf[14];
          _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %@ shouldn't follow %@", buf, 0x16u);
        }
      }

      v40 = +[CKUIBehavior sharedBehaviors];
      [v40 smallTranscriptSpace];
      v24 = v41;

      goto LABEL_39;
    }

    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 smallTranscriptSpace];
  }

  else
  {
    if ((layoutType - 14) < 2)
    {
      goto LABEL_37;
    }

    if (layoutType == 13)
    {
      v23 = +[CKUIBehavior sharedBehaviors];
LABEL_36:
      [v23 extraLargeTranscriptSpace];
      goto LABEL_38;
    }

    if (layoutType != 16)
    {
      goto LABEL_55;
    }

    itemIsFromMe = [(CKChatItem *)self itemIsFromMe];
    itemIsFromMe2 = [v14 itemIsFromMe];
    v27 = +[CKUIBehavior sharedBehaviors];
    v23 = v27;
    if (itemIsFromMe == itemIsFromMe2)
    {
LABEL_32:
      [v23 mediumTranscriptSpace];
      goto LABEL_38;
    }

    [v27 minTranscriptSpace];
  }

LABEL_38:
  v24 = v28;

LABEL_39:
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  visibleAssociatedMessageChatItems = [v15 visibleAssociatedMessageChatItems];
  v30 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v30)
  {
    v31 = *v44;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
        }

        v33 = *(*(&v43 + 1) + 8 * i);
        v49 = 0;
        v48 = 0u;
        memset(buf, 0, sizeof(buf));
        if (v33)
        {
          [v33 geometryDescriptor];
          if (*buf == 10)
          {
            [CKChatItemLayoutUtilities transcriptTapbackMinSpacingForSenderChatItem:self withNextChatItem:v15 previousItem:v14 associatedChatItem:v33];
            if (v34 >= v24)
            {
              v24 = v34;
            }

            goto LABEL_51;
          }
        }
      }

      v30 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

LABEL_51:

LABEL_52:
  v35 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v24 bottomSpacing:0.0];

  return v35;
}

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 senderTranscriptInsets];
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

- (Class)cellClass
{
  if ([(CKSenderChatItem *)self wantsAddToContactsButton])
  {
    v2 = objc_opt_class();
  }

  else
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 isAccessibilityPreferredContentSizeCategory];
    v2 = objc_opt_class();
  }

  return v2;
}

- (id)cellIdentifier
{
  transcriptText = [(CKChatItem *)self transcriptText];
  string = [transcriptText string];

  return string;
}

- (BOOL)wantsDrawerLayout
{
  v5.receiver = self;
  v5.super_class = CKSenderChatItem;
  if ([(CKChatItem *)&v5 wantsDrawerLayout])
  {
    v2 = +[CKUIBehavior sharedBehaviors];
    v3 = [v2 timestampsPushBalloons] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)handle
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    iMChatItem2 = [(CKChatItem *)self IMChatItem];
    handle = [iMChatItem2 handle];
  }

  else
  {
    handle = 0;
  }

  return handle;
}

- (BOOL)wantsAddToContactsButton
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    iMChatItem = [(CKChatItem *)self IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      iMChatItem2 = [(CKChatItem *)self IMChatItem];
      handle = [(CKSenderChatItem *)self handle];
      v9 = handle;
      if (!handle || ([handle isBusiness] & 1) != 0 || (objc_msgSend(v9, "isMako") & 1) != 0 || (objc_msgSend(iMChatItem2, "isMergedBusinessThread") & 1) != 0 || objc_msgSend(iMChatItem2, "transcriptSharingMessageType") || (objc_msgSend(v9, "isStewie") & 1) != 0)
      {
        LOBYTE(isIntroductionsEnabled) = 0;
      }

      else
      {
        isIntroductionsEnabled = [v9 isContact] ^ 1;
      }
    }

    else
    {
      LOBYTE(isIntroductionsEnabled) = 0;
    }
  }

  return isIntroductionsEnabled;
}

- (id)getAttributeTextForMessagesFromEmergencyUser:(id)user transcriptSharingMessageType:(int64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  userCopy = user;
  if (!type)
  {
    goto LABEL_7;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "transcriptSharingMessageType: %@", buf, 0xCu);
  }

  if (type == 2)
  {
    v12 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"TS_EMERGENCY_USER_ATTRIBUTE_INFORMATION" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    [v12 localizedStringWithFormat:v10, v14];
    goto LABEL_9;
  }

  if (type != 1)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_10;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"TS_EMERGENCY_USER_ATTRIBUTE_MESSAGE" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
  [v8 localizedStringWithFormat:v10, userCopy];
  v11 = LABEL_9:;

LABEL_10:

  return v11;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  senderTranscriptTextAttributes = [v3 senderTranscriptTextAttributes];

  notification = [(CKChatItem *)self notification];

  if (notification)
  {
    notification2 = [(CKChatItem *)self notification];
    request = [notification2 request];
    content = [request content];
    title = [content title];
    v10 = title;
    if (title)
    {
      v11 = title;
    }

    else
    {
      v13 = CKFrameworkBundle();
      v11 = [v13 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    _unknownSenderAttributedString = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:senderTranscriptTextAttributes];
  }

  else
  {
    if ([(CKSenderChatItem *)self wantsAddToContactsButton])
    {
      _unknownSenderAttributedString = [(CKSenderChatItem *)self _unknownSenderAttributedString];
      goto LABEL_26;
    }

    iMChatItem = [(CKChatItem *)self IMChatItem];
    handle = [(CKSenderChatItem *)self handle];
    name = [handle name];
    v17 = name;
    if (name)
    {
      v11 = name;
    }

    else
    {
      v18 = CKFrameworkBundle();
      v11 = [v18 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isMergeBusinessSenderIndiaEnabled = [mEMORY[0x1E69A8070] isMergeBusinessSenderIndiaEnabled];

    if (isMergeBusinessSenderIndiaEnabled)
    {
      if ([iMChatItem isMergedBusinessThread])
      {
        displayName = [iMChatItem displayName];
        v22 = [displayName length];

        if (v22)
        {
          displayName2 = [iMChatItem displayName];

          v11 = displayName2;
        }
      }
    }

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isTranscriptSharingEnabled = [mEMORY[0x1E69A8070]2 isTranscriptSharingEnabled];

    if (isTranscriptSharingEnabled && [iMChatItem transcriptSharingMessageType])
    {
      displayName3 = [iMChatItem displayName];
      v27 = displayName3;
      if (displayName3)
      {
        v28 = displayName3;
      }

      else
      {
        v29 = CKFrameworkBundle();
        v28 = [v29 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];

        v11 = v29;
      }

      if ([handle isStewieEmergencyServices])
      {
        v30 = MEMORY[0x1E696AEC0];
        v31 = CKFrameworkBundle();
        v32 = [v31 localizedStringForKey:@"TS_EMERGENCY_SERVICE_ATTRIBUTE_TEXT" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
        v11 = [v30 localizedStringWithFormat:v32];

        v33 = +[CKUIBehavior sharedBehaviors];
        [v33 stewieTranscriptEmergencyServiceAttributes];
      }

      else
      {
        v11 = -[CKSenderChatItem getAttributeTextForMessagesFromEmergencyUser:transcriptSharingMessageType:](self, "getAttributeTextForMessagesFromEmergencyUser:transcriptSharingMessageType:", v28, [iMChatItem transcriptSharingMessageType]);

        v33 = +[CKUIBehavior sharedBehaviors];
        [v33 stewieTranscriptEmergencyUserAttributes];
      }
      v34 = ;

      senderTranscriptTextAttributes = v34;
    }

    _unknownSenderAttributedString = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:senderTranscriptTextAttributes];
  }

LABEL_26:

  return _unknownSenderAttributedString;
}

- (BOOL)shouldUnloadTranscriptTextForChangeFromTraitCollection:(id)collection toTraitCollection:(id)traitCollection
{
  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  isTranscriptBackgroundActive = [collectionCopy isTranscriptBackgroundActive];
  if (isTranscriptBackgroundActive == [traitCollectionCopy isTranscriptBackgroundActive])
  {
    v11.receiver = self;
    v11.super_class = CKSenderChatItem;
    v9 = [(CKChatItem *)&v11 shouldUnloadTranscriptTextForChangeFromTraitCollection:collectionCopy toTraitCollection:traitCollectionCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)unknownSenderAttributedStringForControlState:(unint64_t)state
{
  handle = [(CKSenderChatItem *)self handle];
  hasName = [handle hasName];
  name = [handle name];

  if (name)
  {
    name2 = [handle name];
    if (hasName)
    {
      v7 = @"HANDLE_ADD_LINK_TEXT";
    }

    else
    {
      v7 = @"NAME_ADD_LINK_TEXT";
    }
  }

  else
  {
    v8 = CKFrameworkBundle();
    name2 = [v8 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];

    v7 = @"HANDLE_ADD_LINK_TEXT";
  }

  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"ADD_TO_CONTACTS_SHORT" value:&stru_1F04268F8 table:@"ChatKit"];

  v11 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle();
  v13 = [v12 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit"];
  v37 = name2;
  v14 = [v11 stringWithFormat:v13, name2, v10];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v17 = @"\u200F";
  }

  else
  {
    v17 = @"\u200E";
  }

  v18 = [(__CFString *)v17 stringByAppendingString:v14];

  v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v18];
  v20 = +[CKUIBehavior sharedBehaviors];
  senderTranscriptTextAttributes = [v20 senderTranscriptTextAttributes];
  v22 = [senderTranscriptTextAttributes mutableCopy];

  v23 = +[CKUIBehavior sharedBehaviors];
  senderAddToContactsTranscriptTextAttributes = [v23 senderAddToContactsTranscriptTextAttributes];
  v25 = [senderAddToContactsTranscriptTextAttributes mutableCopy];

  v26 = +[CKUIBehavior sharedBehaviors];
  theme = [v26 theme];
  messageSenderAddToContactTextColor = [theme messageSenderAddToContactTextColor];

  [v19 addAttributes:v22 range:{0, objc_msgSend(v19, "length")}];
  string = [v19 string];
  v30 = [string rangeOfString:v10 options:4];
  v32 = v31;

  if (v32)
  {
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v19 addAttributes:v25 range:{v30, v32}];
      transcriptTraitCollection = [(CKChatItem *)self transcriptTraitCollection];
      isTranscriptBackgroundActive = [transcriptTraitCollection isTranscriptBackgroundActive];

      if (isTranscriptBackgroundActive)
      {
        [CKMessageStatusChatItem appendChevronToStatusText:v19 withButtonTextColor:messageSenderAddToContactTextColor textAttributes:v25];
      }
    }
  }

  return v19;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v7;
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v8 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
  {
    wantsAddToContactsButton = [(CKSenderChatItem *)self wantsAddToContactsButton];
    cellClass = [(CKSenderChatItem *)self cellClass];
    if (wantsAddToContactsButton)
    {
      createStampButtonView = [(objc_class *)cellClass createStampButtonView];
      transcriptText = [(CKChatItem *)self transcriptText];
      [createStampButtonView setAttributedTitle:transcriptText forState:0];
    }

    else
    {
      createStampButtonView = [(objc_class *)cellClass createStampLabelView];
      transcriptText = [(CKChatItem *)self transcriptText];
      [createStampButtonView setAttributedText:transcriptText];
    }

    [createStampButtonView sizeThatFits:{width, height}];
    v17 = v16;
    v19 = v18;

    v14 = v17;
    v15 = v19;
  }

  else
  {

    [(CKSenderChatItem *)self _transcriptTextSizeThatFitsForSize:width, height];
  }

  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)_transcriptTextSizeThatFitsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  transcriptText = [(CKChatItem *)self transcriptText];
  [transcriptText boundingRectWithSize:3 options:0 context:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end