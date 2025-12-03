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
  transcriptRegularFontAttributes = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v5 transcriptEmphasizedFontAttributes];

  v7 = +[CKUIBehavior sharedBehaviors];
  transcriptGroupModificationErrorRegularFontAttributes = [v7 transcriptGroupModificationErrorRegularFontAttributes];

  v9 = +[CKUIBehavior sharedBehaviors];
  transcriptGroupModificationErrorEmphasizedFontAttributes = [v9 transcriptGroupModificationErrorEmphasizedFontAttributes];

  if ([(CKGroupTitleChangeChatItem *)self failed])
  {
    v11 = transcriptGroupModificationErrorRegularFontAttributes;
  }

  else
  {
    v11 = transcriptRegularFontAttributes;
  }

  v12 = v11;
  if ([(CKGroupTitleChangeChatItem *)self failed])
  {
    v13 = transcriptGroupModificationErrorEmphasizedFontAttributes;
  }

  else
  {
    v13 = transcriptEmphasizedFontAttributes;
  }

  v14 = v13;
  sender = [(CKGroupTitleChangeChatItem *)self sender];
  name = [sender name];
  v17 = name;
  if (name)
  {
    v18 = name;
  }

  else
  {
    v18 = &stru_1F04268F8;
  }

  v89 = v18;

  title = [(CKGroupTitleChangeChatItem *)self title];
  v20 = title;
  if (title)
  {
    v21 = title;
  }

  else
  {
    v21 = &stru_1F04268F8;
  }

  v22 = v21;

  v87 = sender;
  v88 = v22;
  if (![(CKGroupTitleChangeChatItem *)self unattributed])
  {
    v33 = [(__CFString *)v22 length];
    v34 = CKFrameworkBundle();
    mEMORY[0x1E69A60F0] = v34;
    if (sender)
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

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![mEMORY[0x1E69A60F0] isInternalInstall])
  {
    goto LABEL_30;
  }

  v42 = IMGetDomainBoolForKey();

  if (!v42)
  {
    goto LABEL_31;
  }

  mEMORY[0x1E69A60F0] = objc_alloc_init(MEMORY[0x1E696AD40]);
  [mEMORY[0x1E69A60F0] appendAttributedString:v41];
  v43 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  [mEMORY[0x1E69A60F0] appendAttributedString:v43];

  v44 = CKFrameworkBundle();
  [v44 localizedStringForKey:@"GROUP_SYSTEM_DEBUG_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
  v83 = transcriptRegularFontAttributes;
  v45 = v85 = transcriptGroupModificationErrorEmphasizedFontAttributes;
  CKAttributedFormatString(v12, v14, v45, v46, v47, v48, v49, v50, v89);
  v51 = v14;
  v52 = v12;
  v53 = transcriptGroupModificationErrorRegularFontAttributes;
  v55 = v54 = transcriptEmphasizedFontAttributes;
  [mEMORY[0x1E69A60F0] appendAttributedString:v55];

  transcriptEmphasizedFontAttributes = v54;
  transcriptGroupModificationErrorRegularFontAttributes = v53;
  v12 = v52;
  v14 = v51;

  transcriptRegularFontAttributes = v83;
  transcriptGroupModificationErrorEmphasizedFontAttributes = v85;

  v56 = [mEMORY[0x1E69A60F0] copy];
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
    v84 = transcriptRegularFontAttributes;
    v66 = v86 = transcriptGroupModificationErrorEmphasizedFontAttributes;
    v67 = [v64 configurationWithFont:v66];

    v68 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v67];
    [MEMORY[0x1E69DC888] redColor];
    v69 = v14;
    v70 = v12;
    v72 = v71 = transcriptEmphasizedFontAttributes;
    v73 = [v68 imageWithTintColor:v72];

    v74 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v74 setImage:v73];
    v75 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v74 attributes:transcriptGroupModificationErrorRegularFontAttributes];
    v76 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v75 appendAttributedString:v76];

    transcriptEmphasizedFontAttributes = v71;
    v12 = v70;
    v14 = v69;
    [v75 appendAttributedString:v41];

    transcriptRegularFontAttributes = v84;
    transcriptGroupModificationErrorEmphasizedFontAttributes = v86;
  }

  else
  {
    v75 = v41;
  }

  return v75;
}

- (BOOL)failed
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  failed = [iMChatItem failed];

  return failed;
}

- (NSString)title
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  title = [iMChatItem title];

  return title;
}

- (NSString)errorText
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"GROUP_NAME_CHANGE_ERROR_ALERT_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];

  return sender;
}

- (BOOL)unattributed
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  unattributed = [iMChatItem unattributed];

  return unattributed;
}

@end