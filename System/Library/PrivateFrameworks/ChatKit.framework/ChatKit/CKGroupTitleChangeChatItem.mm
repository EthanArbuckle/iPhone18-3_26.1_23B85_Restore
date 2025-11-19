@interface CKGroupTitleChangeChatItem
- (BOOL)failed;
- (BOOL)unattributed;
- (NSString)errorText;
- (NSString)title;
- (id)loadTranscriptText;
- (id)sender;
@end

@implementation CKGroupTitleChangeChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 transcriptEmphasizedFontAttributes];

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 transcriptGroupModificationErrorRegularFontAttributes];

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 transcriptGroupModificationErrorEmphasizedFontAttributes];

  if ([(CKGroupTitleChangeChatItem *)self failed])
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;
  if ([(CKGroupTitleChangeChatItem *)self failed])
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  v14 = v13;
  v15 = [(CKGroupTitleChangeChatItem *)self sender];
  v16 = [v15 name];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1F04268F8;
  }

  v89 = v18;

  v19 = [(CKGroupTitleChangeChatItem *)self title];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_1F04268F8;
  }

  v22 = v21;

  v87 = v15;
  v88 = v22;
  if (![(CKGroupTitleChangeChatItem *)self unattributed])
  {
    v33 = [(__CFString *)v22 length];
    v34 = CKFrameworkBundle();
    v35 = v34;
    if (v15)
    {
      if (v33)
      {
        [v34 localizedStringForKey:@"GROUP_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        [v34 localizedStringForKey:@"GROUP_REMOVE_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      }
      v41 = ;
      v62 = v89;
    }

    else
    {
      if (!v33)
      {
        v41 = [v34 localizedStringForKey:@"GROUP_YOU_REMOVE_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
        CKAttributedFormatString(v12, v14, v41, v78, v79, v80, v81, v82, 0);
        goto LABEL_28;
      }

      v41 = [v34 localizedStringForKey:@"GROUP_YOU_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      v62 = v88;
    }

    CKAttributedFormatString(v12, v14, v41, v57, v58, v59, v60, v61, v62);
    v56 = LABEL_28:;
    goto LABEL_29;
  }

  v23 = v22;
  v24 = [(__CFString *)v22 length];
  v25 = CKFrameworkBundle();
  v26 = v25;
  if (v24)
  {
    v27 = [v25 localizedStringForKey:@"GROUP_SYSTEM_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v12, v14, v27, v28, v29, v30, v31, v32, v23);
  }

  else
  {
    v27 = [v25 localizedStringForKey:@"GROUP_SYSTEM_REMOVE_NAME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v12, v14, v27, v36, v37, v38, v39, v40, 0);
  }
  v41 = ;

  v35 = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![v35 isInternalInstall])
  {
    goto LABEL_30;
  }

  v42 = IMGetDomainBoolForKey();

  if (!v42)
  {
    goto LABEL_31;
  }

  v35 = objc_alloc_init(MEMORY[0x1E696AD40]);
  [v35 appendAttributedString:v41];
  v43 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  [v35 appendAttributedString:v43];

  v44 = CKFrameworkBundle();
  [v44 localizedStringForKey:@"GROUP_SYSTEM_DEBUG_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
  v83 = v4;
  v45 = v85 = v10;
  CKAttributedFormatString(v12, v14, v45, v46, v47, v48, v49, v50, v89);
  v51 = v14;
  v52 = v12;
  v53 = v8;
  v55 = v54 = v6;
  [v35 appendAttributedString:v55];

  v6 = v54;
  v8 = v53;
  v12 = v52;
  v14 = v51;

  v4 = v83;
  v10 = v85;

  v56 = [v35 copy];
LABEL_29:
  v63 = v56;

  v41 = v63;
LABEL_30:

LABEL_31:
  if ([(CKGroupTitleChangeChatItem *)self failed])
  {
    v64 = MEMORY[0x1E69DCAD8];
    v65 = +[CKUIBehavior sharedBehaviors];
    [v65 transcriptLightFont];
    v84 = v4;
    v66 = v86 = v10;
    v67 = [v64 configurationWithFont:v66];

    v68 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v67];
    [MEMORY[0x1E69DC888] redColor];
    v69 = v14;
    v70 = v12;
    v72 = v71 = v6;
    v73 = [v68 imageWithTintColor:v72];

    v74 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v74 setImage:v73];
    v75 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v74 attributes:v8];
    v76 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v75 appendAttributedString:v76];

    v6 = v71;
    v12 = v70;
    v14 = v69;
    [v75 appendAttributedString:v41];

    v4 = v84;
    v10 = v86;
  }

  else
  {
    v75 = v41;
  }

  return v75;
}

- (BOOL)failed
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 failed];

  return v3;
}

- (NSString)title
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 title];

  return v3;
}

- (NSString)errorText
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"GROUP_NAME_CHANGE_ERROR_ALERT_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)sender
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 sender];

  return v3;
}

- (BOOL)unattributed
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 unattributed];

  return v3;
}

@end