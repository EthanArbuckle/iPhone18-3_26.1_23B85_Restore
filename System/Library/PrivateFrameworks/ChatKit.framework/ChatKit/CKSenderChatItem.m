@interface CKSenderChatItem
- (BOOL)shouldUnloadTranscriptTextForChangeFromTraitCollection:(id)a3 toTraitCollection:(id)a4;
- (BOOL)wantsAddToContactsButton;
- (BOOL)wantsDrawerLayout;
- (CGSize)_transcriptTextSizeThatFitsForSize:(CGSize)a3;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (Class)cellClass;
- (UIEdgeInsets)contentInsets;
- (id)cellIdentifier;
- (id)getAttributeTextForMessagesFromEmergencyUser:(id)a3 transcriptSharingMessageType:(int64_t)a4;
- (id)handle;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptText;
- (id)unknownSenderAttributedStringForControlState:(unint64_t)a3;
@end

@implementation CKSenderChatItem

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  v51 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4 - 1;
  if (a4 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v11 objectAtIndexedSubscript:a4 - 1];
  }

  if (a4 + 1 >= [v11 count])
  {
    v15 = 0;
  }

  else
  {
    v15 = [v11 objectAtIndexedSubscript:a4 + 1];
  }

  v16 = [CKChatItemLayoutUtilities nextItemIsOriginatorWithRepliesForIndex:a4 allDatasourceItems:v11];
  v17 = [v14 layoutType];
  if (v16)
  {
    v18 = v17 == 8;
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

  if (v17 <= 12)
  {
    if (v17 > 7)
    {
      if ((v17 - 8) >= 2 && (v17 - 11) >= 2)
      {
        goto LABEL_55;
      }
    }

    else if ((v17 - 2) >= 2)
    {
      if ((v17 - 5) < 2)
      {
        v22 = [CKChatItemLayoutUtilities prevMessageIsReplyForIndex:v13 allDatasourceItems:v11];
        v23 = +[CKUIBehavior sharedBehaviors];
        if (v22)
        {
          goto LABEL_36;
        }

        goto LABEL_32;
      }

      if (v17 == 1)
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

  if (v17 > 17)
  {
    if ((v17 - 23) < 2)
    {
LABEL_31:
      v23 = +[CKUIBehavior sharedBehaviors];
      goto LABEL_32;
    }

    if (v17 == 18)
    {
      goto LABEL_37;
    }

    if (v17 != 19)
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
    if ((v17 - 14) < 2)
    {
      goto LABEL_37;
    }

    if (v17 == 13)
    {
      v23 = +[CKUIBehavior sharedBehaviors];
LABEL_36:
      [v23 extraLargeTranscriptSpace];
      goto LABEL_38;
    }

    if (v17 != 16)
    {
      goto LABEL_55;
    }

    v25 = [(CKChatItem *)self itemIsFromMe];
    v26 = [v14 itemIsFromMe];
    v27 = +[CKUIBehavior sharedBehaviors];
    v23 = v27;
    if (v25 == v26)
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
  v29 = [v15 visibleAssociatedMessageChatItems];
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v30)
  {
    v31 = *v44;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(v29);
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

      v30 = [v29 countByEnumeratingWithState:&v43 objects:v50 count:16];
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
  v2 = [(CKChatItem *)self transcriptText];
  v3 = [v2 string];

  return v3;
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
  v3 = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CKChatItem *)self IMChatItem];
    v6 = [v5 handle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)wantsAddToContactsButton
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isIntroductionsEnabled];

  if (v4)
  {
    v5 = [(CKChatItem *)self IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(CKChatItem *)self IMChatItem];
      v8 = [(CKSenderChatItem *)self handle];
      v9 = v8;
      if (!v8 || ([v8 isBusiness] & 1) != 0 || (objc_msgSend(v9, "isMako") & 1) != 0 || (objc_msgSend(v7, "isMergedBusinessThread") & 1) != 0 || objc_msgSend(v7, "transcriptSharingMessageType") || (objc_msgSend(v9, "isStewie") & 1) != 0)
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        v4 = [v9 isContact] ^ 1;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (id)getAttributeTextForMessagesFromEmergencyUser:(id)a3 transcriptSharingMessageType:(int64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a4)
  {
    goto LABEL_7;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "transcriptSharingMessageType: %@", buf, 0xCu);
  }

  if (a4 == 2)
  {
    v12 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"TS_EMERGENCY_USER_ATTRIBUTE_INFORMATION" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    [v12 localizedStringWithFormat:v10, v14];
    goto LABEL_9;
  }

  if (a4 != 1)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_10;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"TS_EMERGENCY_USER_ATTRIBUTE_MESSAGE" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
  [v8 localizedStringWithFormat:v10, v5];
  v11 = LABEL_9:;

LABEL_10:

  return v11;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 senderTranscriptTextAttributes];

  v5 = [(CKChatItem *)self notification];

  if (v5)
  {
    v6 = [(CKChatItem *)self notification];
    v7 = [v6 request];
    v8 = [v7 content];
    v9 = [v8 title];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v13 = CKFrameworkBundle();
      v11 = [v13 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v4];
  }

  else
  {
    if ([(CKSenderChatItem *)self wantsAddToContactsButton])
    {
      v12 = [(CKSenderChatItem *)self _unknownSenderAttributedString];
      goto LABEL_26;
    }

    v14 = [(CKChatItem *)self IMChatItem];
    v15 = [(CKSenderChatItem *)self handle];
    v16 = [v15 name];
    v17 = v16;
    if (v16)
    {
      v11 = v16;
    }

    else
    {
      v18 = CKFrameworkBundle();
      v11 = [v18 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    v19 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v20 = [v19 isMergeBusinessSenderIndiaEnabled];

    if (v20)
    {
      if ([v14 isMergedBusinessThread])
      {
        v21 = [v14 displayName];
        v22 = [v21 length];

        if (v22)
        {
          v23 = [v14 displayName];

          v11 = v23;
        }
      }
    }

    v24 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v25 = [v24 isTranscriptSharingEnabled];

    if (v25 && [v14 transcriptSharingMessageType])
    {
      v26 = [v14 displayName];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v29 = CKFrameworkBundle();
        v28 = [v29 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];

        v11 = v29;
      }

      if ([v15 isStewieEmergencyServices])
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
        v11 = -[CKSenderChatItem getAttributeTextForMessagesFromEmergencyUser:transcriptSharingMessageType:](self, "getAttributeTextForMessagesFromEmergencyUser:transcriptSharingMessageType:", v28, [v14 transcriptSharingMessageType]);

        v33 = +[CKUIBehavior sharedBehaviors];
        [v33 stewieTranscriptEmergencyUserAttributes];
      }
      v34 = ;

      v4 = v34;
    }

    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v4];
  }

LABEL_26:

  return v12;
}

- (BOOL)shouldUnloadTranscriptTextForChangeFromTraitCollection:(id)a3 toTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isTranscriptBackgroundActive];
  if (v8 == [v7 isTranscriptBackgroundActive])
  {
    v11.receiver = self;
    v11.super_class = CKSenderChatItem;
    v9 = [(CKChatItem *)&v11 shouldUnloadTranscriptTextForChangeFromTraitCollection:v6 toTraitCollection:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)unknownSenderAttributedStringForControlState:(unint64_t)a3
{
  v3 = [(CKSenderChatItem *)self handle];
  v4 = [v3 hasName];
  v5 = [v3 name];

  if (v5)
  {
    v6 = [v3 name];
    if (v4)
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
    v6 = [v8 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];

    v7 = @"HANDLE_ADD_LINK_TEXT";
  }

  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"ADD_TO_CONTACTS_SHORT" value:&stru_1F04268F8 table:@"ChatKit"];

  v11 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle();
  v13 = [v12 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit"];
  v37 = v6;
  v14 = [v11 stringWithFormat:v13, v6, v10];

  v15 = [MEMORY[0x1E69DC668] sharedApplication];
  v16 = [v15 userInterfaceLayoutDirection];

  if (v16 == 1)
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
  v21 = [v20 senderTranscriptTextAttributes];
  v22 = [v21 mutableCopy];

  v23 = +[CKUIBehavior sharedBehaviors];
  v24 = [v23 senderAddToContactsTranscriptTextAttributes];
  v25 = [v24 mutableCopy];

  v26 = +[CKUIBehavior sharedBehaviors];
  v27 = [v26 theme];
  v28 = [v27 messageSenderAddToContactTextColor];

  [v19 addAttributes:v22 range:{0, objc_msgSend(v19, "length")}];
  v29 = [v19 string];
  v30 = [v29 rangeOfString:v10 options:4];
  v32 = v31;

  if (v32)
  {
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v19 addAttributes:v25 range:{v30, v32}];
      v33 = [(CKChatItem *)self transcriptTraitCollection];
      v34 = [v33 isTranscriptBackgroundActive];

      if (v34)
      {
        [CKMessageStatusChatItem appendChevronToStatusText:v19 withButtonTextColor:v28 textAttributes:v25];
      }
    }
  }

  return v19;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = v7;
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 isAccessibilityPreferredContentSizeCategory];

  if (v9)
  {
    v10 = [(CKSenderChatItem *)self wantsAddToContactsButton];
    v11 = [(CKSenderChatItem *)self cellClass];
    if (v10)
    {
      v12 = [(objc_class *)v11 createStampButtonView];
      v13 = [(CKChatItem *)self transcriptText];
      [v12 setAttributedTitle:v13 forState:0];
    }

    else
    {
      v12 = [(objc_class *)v11 createStampLabelView];
      v13 = [(CKChatItem *)self transcriptText];
      [v12 setAttributedText:v13];
    }

    [v12 sizeThatFits:{width, height}];
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

- (CGSize)_transcriptTextSizeThatFitsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CKChatItem *)self transcriptText];
  [v5 boundingRectWithSize:3 options:0 context:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end