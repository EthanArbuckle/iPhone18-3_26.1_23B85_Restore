@interface CKMessageRetractionChatItem
- (BOOL)hasSelectableText;
- (BOOL)isRetractedReply;
- (BOOL)isRetractedReplyThreadOriginator;
- (UIEdgeInsets)contentInsets;
- (id)_loadTranscriptTextWithRetractionUnsupportedCount:(unint64_t)count unsupportedNames:(id)names isFromMe:(BOOL)me isFailedRetraction:(BOOL)retraction senderName:(id)name;
- (id)_retractionUnsupportedByNamesFromHandles:(id)handles;
- (id)loadTranscriptText;
@end

@implementation CKMessageRetractionChatItem

- (BOOL)hasSelectableText
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isFailedRetraction = [iMChatItem isFailedRetraction];

  return isFailedRetraction;
}

- (id)_retractionUnsupportedByNamesFromHandles:(id)handles
{
  v19 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = handlesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        _displayNameWithAbbreviation = [*(*(&v14 + 1) + 8 * i) _displayNameWithAbbreviation];
        v11 = _displayNameWithAbbreviation;
        if (_displayNameWithAbbreviation && [_displayNameWithAbbreviation length])
        {
          [array addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [array copy];

  return v12;
}

- (id)_loadTranscriptTextWithRetractionUnsupportedCount:(unint64_t)count unsupportedNames:(id)names isFromMe:(BOOL)me isFailedRetraction:(BOOL)retraction senderName:(id)name
{
  retractionCopy = retraction;
  meCopy = me;
  namesCopy = names;
  nameCopy = name;
  v13 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularPreferredFontAttributes = [v13 transcriptRegularPreferredFontAttributes];

  v15 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedPreferredFontAttributes = [v15 transcriptEmphasizedPreferredFontAttributes];

  if (!meCopy)
  {
    v17 = CKFrameworkBundle();
    v21 = [v17 localizedStringForKey:@"MESSAGE_RETRACTED_BY_PERSON_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(transcriptRegularPreferredFontAttributes, transcriptEmphasizedPreferredFontAttributes, v21, v22, v23, v24, v25, v26, nameCopy);
    v27 = LABEL_8:;
    v28 = 0;
    goto LABEL_22;
  }

  if (!count)
  {
    v29 = CKFrameworkBundle();
    v17 = v29;
    if (retractionCopy)
    {
      v28 = [v29 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_RETRACTION_FAILED_STATUS_ERROR_SUBSTRING_HARDSPACE" value:&stru_1F04268F8 table:@"ChatKit"];

      v17 = CKFrameworkBundle();
      v21 = [v17 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_RETRACTION_FAILED_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      v27 = CKAttributedFormatString(transcriptRegularPreferredFontAttributes, transcriptEmphasizedPreferredFontAttributes, v21, v30, v31, v32, v33, v34, v28);
      goto LABEL_22;
    }

    v21 = [v29 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(transcriptRegularPreferredFontAttributes, transcriptEmphasizedPreferredFontAttributes, v21, v77, v78, v79, v80, v81, 0);
    goto LABEL_8;
  }

  v17 = namesCopy;
  if ([v17 count] >= 4)
  {
    v18 = [v17 subarrayWithRange:{0, 2}];

    v17 = v18;
  }

  v19 = [v17 count];
  v20 = count - v19;
  v84 = nameCopy;
  v86 = namesCopy;
  if (count != v19)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = CKFrameworkBundle();
    v37 = [v36 localizedStringForKey:@"N_OTHER_PEOPLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v38 = [v35 localizedStringWithFormat:v37, v20];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v41 = @"\u200F";
    }

    else
    {
      v41 = @"\u200E";
    }

    v42 = [(__CFString *)v41 stringByAppendingString:v38];

    v43 = [v17 arrayByAddingObject:v42];

    v17 = v43;
  }

  v21 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v17];
  if (retractionCopy)
  {
    v44 = CKFrameworkBundle();
    v28 = [v44 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_WITH_UNSUPPORTED_RECIPIENTS_AND_RETRACTION_FAILED_STATUS_ERROR_SUBSTRING_HARDSPACE" value:&stru_1F04268F8 table:@"ChatKit"];

    v45 = MEMORY[0x1E696AEC0];
    v46 = CKFrameworkBundle();
    v47 = [v46 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_WITH_N_UNSUPPORTED_RECIPIENTS_AND_RETRACTION_FAILED_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v48 = [v45 localizedStringWithFormat:v47, count, v21, v28];
  }

  else
  {
    v49 = MEMORY[0x1E696AEC0];
    v46 = CKFrameworkBundle();
    v47 = [v46 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_WITH_N_UNSUPPORTED_RECIPIENTS_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v48 = [v49 localizedStringWithFormat:v47, count, v21];
    v28 = 0;
  }

  mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection2 == 1)
  {
    v52 = @"\u200F";
  }

  else
  {
    v52 = @"\u200E";
  }

  v53 = [(__CFString *)v52 stringByAppendingString:v48];

  v27 = CKAttributedFormatString(transcriptRegularPreferredFontAttributes, transcriptEmphasizedPreferredFontAttributes, v53, v54, v55, v56, v57, v58, 0);

  nameCopy = v84;
  namesCopy = v86;
LABEL_22:

  if (v27 && [v28 length])
  {
    v85 = nameCopy;
    v87 = namesCopy;
    string = [v27 string];
    v60 = [string rangeOfString:v28];
    v62 = v61;

    if (v60 == 0x7FFFFFFFFFFFFFFFLL)
    {
      nameCopy = v85;
      namesCopy = v87;
    }

    else
    {
      v82 = transcriptRegularPreferredFontAttributes;
      v63 = [v27 mutableCopy];
      v64 = +[CKUIBehavior sharedBehaviors];
      transcriptErrorStampPreferredFontAttributes = [v64 transcriptErrorStampPreferredFontAttributes];

      v83 = transcriptErrorStampPreferredFontAttributes;
      [v63 setAttributes:transcriptErrorStampPreferredFontAttributes range:{v60, v62}];
      string2 = [v63 string];
      v67 = [string2 rangeOfString:@"(!)" options:0 range:{v60, v62}];
      v69 = v68;

      if (v67 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v63 replaceCharactersInRange:v67 withString:{v69, &stru_1F04268F8}];
        v70 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
        v71 = +[CKUIBehavior sharedBehaviors];
        messageStampWarningIconRed = [v71 messageStampWarningIconRed];

        [v70 setImage:messageStampWarningIconRed];
        v73 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v70];
        v74 = [v73 mutableCopy];

        [v74 addAttributes:v83 range:{0, objc_msgSend(v74, "length")}];
        [v63 insertAttributedString:v74 atIndex:v67];
      }

      v75 = [v63 copy];

      v27 = v75;
      nameCopy = v85;
      namesCopy = v87;
      transcriptRegularPreferredFontAttributes = v82;
    }
  }

  return v27;
}

- (id)loadTranscriptText
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isFromMe = [iMChatItem isFromMe];
  sender = [iMChatItem sender];
  name = [sender name];

  isFailedRetraction = [iMChatItem isFailedRetraction];
  retractionUnsupportedByHandles = [iMChatItem retractionUnsupportedByHandles];
  v9 = [(CKMessageRetractionChatItem *)self _retractionUnsupportedByNamesFromHandles:retractionUnsupportedByHandles];
  v10 = -[CKMessageRetractionChatItem _loadTranscriptTextWithRetractionUnsupportedCount:unsupportedNames:isFromMe:isFailedRetraction:senderName:](self, "_loadTranscriptTextWithRetractionUnsupportedCount:unsupportedNames:isFromMe:isFailedRetraction:senderName:", [retractionUnsupportedByHandles count], v9, isFromMe, isFailedRetraction, name);

  return v10;
}

- (UIEdgeInsets)contentInsets
{
  isRetractedReply = [(CKMessageRetractionChatItem *)self isRetractedReply];
  isRetractedReplyThreadOriginator = [(CKMessageRetractionChatItem *)self isRetractedReplyThreadOriginator];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (isRetractedReply || isRetractedReplyThreadOriginator)
  {
    [v5 retractedReplyStampInsets];
  }

  else
  {
    [v5 stampTranscriptInsets];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (BOOL)isRetractedReply
{
  imMessageRetractionChatItem = [(CKMessageRetractionChatItem *)self imMessageRetractionChatItem];
  itemIsReply = [imMessageRetractionChatItem itemIsReply];

  return itemIsReply;
}

- (BOOL)isRetractedReplyThreadOriginator
{
  imMessageRetractionChatItem = [(CKMessageRetractionChatItem *)self imMessageRetractionChatItem];
  itemIsThreadOriginator = [imMessageRetractionChatItem itemIsThreadOriginator];

  return itemIsThreadOriginator;
}

@end