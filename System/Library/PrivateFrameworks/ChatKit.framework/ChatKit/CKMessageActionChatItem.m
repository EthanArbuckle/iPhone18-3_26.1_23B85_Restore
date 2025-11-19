@interface CKMessageActionChatItem
- (id)handle;
- (id)loadTranscriptText;
- (id)sender;
- (int64_t)actionType;
- (void)loadTranscriptText;
@end

@implementation CKMessageActionChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 transcriptEmphasizedFontAttributes];

  v7 = [(CKMessageActionChatItem *)self sender];
  v8 = [(CKMessageActionChatItem *)self handle];
  v9 = [v7 name];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = CKFrameworkBundle();
    v11 = [v12 localizedStringForKey:@"SOMEONE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v13 = [v8 name];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = CKFrameworkBundle();
    v15 = [v16 localizedStringForKey:@"SOMEONE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v17 = [(CKMessageActionChatItem *)self actionType];
  switch(v17)
  {
    case 2:
      v22 = [(CKChatItem *)self IMChatItem];
      v23 = [v22 balloonBundleID];

      if (v23)
      {
        v24 = [MEMORY[0x1E69A5AD0] sharedInstance];
        v25 = [v24 dataSourceClassForBundleID:v23];

        if (v25)
        {
          v21 = [v25 previewSummaryForPluginBundle:v23];
        }

        else
        {
          v35 = CKFrameworkBundle();
          v21 = [v35 localizedStringForKey:@"A_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
        }
      }

      else
      {
        v33 = CKFrameworkBundle();
        v21 = [v33 localizedStringForKey:@"A_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

        v34 = IMLogHandleForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [(CKMessageActionChatItem *)self loadTranscriptText];
        }
      }

      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    case 1:
      v18 = CKFrameworkBundle();
      v19 = v18;
      v20 = @"VIDEO_SAVE_ACTION";
LABEL_12:
      v21 = [v18 localizedStringForKey:v20 value:&stru_1F04268F8 table:@"ChatKit"];

      if (!v7)
      {
        goto LABEL_18;
      }

LABEL_24:
      v36 = CKFrameworkBundle();
      v26 = v36;
      if (v8)
      {
        [v36 localizedStringForKey:@"MESSAGE_SAVE_ACTION_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        [v36 localizedStringForKey:@"MESSAGE_SAVE_YOU_ACTION_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      }
      v27 = ;
      CKAttributedFormatString(v4, v6, v27, v37, v38, v39, v40, v41, v11);
      goto LABEL_28;
    case 0:
      v18 = CKFrameworkBundle();
      v19 = v18;
      v20 = @"AUDIO_SAVE_ACTION";
      goto LABEL_12;
  }

  v21 = 0;
  if (v7)
  {
    goto LABEL_24;
  }

LABEL_18:
  v26 = CKFrameworkBundle();
  v27 = [v26 localizedStringForKey:@"MESSAGE_YOU_SAVE_ACTION_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
  CKAttributedFormatString(v4, v6, v27, v28, v29, v30, v31, v32, v21);
  v42 = LABEL_28:;

  return v42;
}

- (int64_t)actionType
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 actionType];

  return v3;
}

- (id)sender
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 sender];

  return v3;
}

- (id)handle
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 otherHandle];

  return v3;
}

- (void)loadTranscriptText
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 IMChatItem];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Unable to find a bundle ID for IMChatItem: %@", &v4, 0xCu);
}

@end