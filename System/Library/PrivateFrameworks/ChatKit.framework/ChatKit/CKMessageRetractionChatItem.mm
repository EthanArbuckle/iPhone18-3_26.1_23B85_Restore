@interface CKMessageRetractionChatItem
- (BOOL)hasSelectableText;
- (BOOL)isRetractedReply;
- (BOOL)isRetractedReplyThreadOriginator;
- (UIEdgeInsets)contentInsets;
- (id)_loadTranscriptTextWithRetractionUnsupportedCount:(unint64_t)a3 unsupportedNames:(id)a4 isFromMe:(BOOL)a5 isFailedRetraction:(BOOL)a6 senderName:(id)a7;
- (id)_retractionUnsupportedByNamesFromHandles:(id)a3;
- (id)loadTranscriptText;
@end

@implementation CKMessageRetractionChatItem

- (BOOL)hasSelectableText
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isFailedRetraction];

  return v3;
}

- (id)_retractionUnsupportedByNamesFromHandles:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v14 + 1) + 8 * i) _displayNameWithAbbreviation];
        v11 = v10;
        if (v10 && [v10 length])
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (id)_loadTranscriptTextWithRetractionUnsupportedCount:(unint64_t)a3 unsupportedNames:(id)a4 isFromMe:(BOOL)a5 isFailedRetraction:(BOOL)a6 senderName:(id)a7
{
  v8 = a6;
  v9 = a5;
  v11 = a4;
  v12 = a7;
  v13 = +[CKUIBehavior sharedBehaviors];
  v14 = [v13 transcriptRegularPreferredFontAttributes];

  v15 = +[CKUIBehavior sharedBehaviors];
  v16 = [v15 transcriptEmphasizedPreferredFontAttributes];

  if (!v9)
  {
    v17 = CKFrameworkBundle();
    v21 = [v17 localizedStringForKey:@"MESSAGE_RETRACTED_BY_PERSON_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v14, v16, v21, v22, v23, v24, v25, v26, v12);
    v27 = LABEL_8:;
    v28 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
    v29 = CKFrameworkBundle();
    v17 = v29;
    if (v8)
    {
      v28 = [v29 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_RETRACTION_FAILED_STATUS_ERROR_SUBSTRING_HARDSPACE" value:&stru_1F04268F8 table:@"ChatKit"];

      v17 = CKFrameworkBundle();
      v21 = [v17 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_RETRACTION_FAILED_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      v27 = CKAttributedFormatString(v14, v16, v21, v30, v31, v32, v33, v34, v28);
      goto LABEL_22;
    }

    v21 = [v29 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v14, v16, v21, v77, v78, v79, v80, v81, 0);
    goto LABEL_8;
  }

  v17 = v11;
  if ([v17 count] >= 4)
  {
    v18 = [v17 subarrayWithRange:{0, 2}];

    v17 = v18;
  }

  v19 = [v17 count];
  v20 = a3 - v19;
  v84 = v12;
  v86 = v11;
  if (a3 != v19)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = CKFrameworkBundle();
    v37 = [v36 localizedStringForKey:@"N_OTHER_PEOPLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v38 = [v35 localizedStringWithFormat:v37, v20];

    v39 = [MEMORY[0x1E69DC668] sharedApplication];
    v40 = [v39 userInterfaceLayoutDirection];

    if (v40 == 1)
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
  if (v8)
  {
    v44 = CKFrameworkBundle();
    v28 = [v44 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_WITH_UNSUPPORTED_RECIPIENTS_AND_RETRACTION_FAILED_STATUS_ERROR_SUBSTRING_HARDSPACE" value:&stru_1F04268F8 table:@"ChatKit"];

    v45 = MEMORY[0x1E696AEC0];
    v46 = CKFrameworkBundle();
    v47 = [v46 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_WITH_N_UNSUPPORTED_RECIPIENTS_AND_RETRACTION_FAILED_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v48 = [v45 localizedStringWithFormat:v47, a3, v21, v28];
  }

  else
  {
    v49 = MEMORY[0x1E696AEC0];
    v46 = CKFrameworkBundle();
    v47 = [v46 localizedStringForKey:@"MESSAGE_RETRACTED_BY_ME_WITH_N_UNSUPPORTED_RECIPIENTS_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v48 = [v49 localizedStringWithFormat:v47, a3, v21];
    v28 = 0;
  }

  v50 = [MEMORY[0x1E69DC668] sharedApplication];
  v51 = [v50 userInterfaceLayoutDirection];

  if (v51 == 1)
  {
    v52 = @"\u200F";
  }

  else
  {
    v52 = @"\u200E";
  }

  v53 = [(__CFString *)v52 stringByAppendingString:v48];

  v27 = CKAttributedFormatString(v14, v16, v53, v54, v55, v56, v57, v58, 0);

  v12 = v84;
  v11 = v86;
LABEL_22:

  if (v27 && [v28 length])
  {
    v85 = v12;
    v87 = v11;
    v59 = [v27 string];
    v60 = [v59 rangeOfString:v28];
    v62 = v61;

    if (v60 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v85;
      v11 = v87;
    }

    else
    {
      v82 = v14;
      v63 = [v27 mutableCopy];
      v64 = +[CKUIBehavior sharedBehaviors];
      v65 = [v64 transcriptErrorStampPreferredFontAttributes];

      v83 = v65;
      [v63 setAttributes:v65 range:{v60, v62}];
      v66 = [v63 string];
      v67 = [v66 rangeOfString:@"(!)" options:0 range:{v60, v62}];
      v69 = v68;

      if (v67 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v63 replaceCharactersInRange:v67 withString:{v69, &stru_1F04268F8}];
        v70 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
        v71 = +[CKUIBehavior sharedBehaviors];
        v72 = [v71 messageStampWarningIconRed];

        [v70 setImage:v72];
        v73 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v70];
        v74 = [v73 mutableCopy];

        [v74 addAttributes:v83 range:{0, objc_msgSend(v74, "length")}];
        [v63 insertAttributedString:v74 atIndex:v67];
      }

      v75 = [v63 copy];

      v27 = v75;
      v12 = v85;
      v11 = v87;
      v14 = v82;
    }
  }

  return v27;
}

- (id)loadTranscriptText
{
  v3 = [(CKChatItem *)self IMChatItem];
  v4 = [v3 isFromMe];
  v5 = [v3 sender];
  v6 = [v5 name];

  v7 = [v3 isFailedRetraction];
  v8 = [v3 retractionUnsupportedByHandles];
  v9 = [(CKMessageRetractionChatItem *)self _retractionUnsupportedByNamesFromHandles:v8];
  v10 = -[CKMessageRetractionChatItem _loadTranscriptTextWithRetractionUnsupportedCount:unsupportedNames:isFromMe:isFailedRetraction:senderName:](self, "_loadTranscriptTextWithRetractionUnsupportedCount:unsupportedNames:isFromMe:isFailedRetraction:senderName:", [v8 count], v9, v4, v7, v6);

  return v10;
}

- (UIEdgeInsets)contentInsets
{
  v3 = [(CKMessageRetractionChatItem *)self isRetractedReply];
  v4 = [(CKMessageRetractionChatItem *)self isRetractedReplyThreadOriginator];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (v3 || v4)
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
  v2 = [(CKMessageRetractionChatItem *)self imMessageRetractionChatItem];
  v3 = [v2 itemIsReply];

  return v3;
}

- (BOOL)isRetractedReplyThreadOriginator
{
  v2 = [(CKMessageRetractionChatItem *)self imMessageRetractionChatItem];
  v3 = [v2 itemIsThreadOriginator];

  return v3;
}

@end