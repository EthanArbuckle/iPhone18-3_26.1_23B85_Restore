@interface CKGroupActionChatItem
- (BOOL)failed;
- (BOOL)unattributed;
- (IMHandle)sender;
- (NSArray)fileTransferGUIDs;
- (NSString)errorText;
- (id)loadTranscriptText;
- (int64_t)actionType;
@end

@implementation CKGroupActionChatItem

- (id)loadTranscriptText
{
  v100[2] = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v5 transcriptEmphasizedFontAttributes];

  v7 = +[CKUIBehavior sharedBehaviors];
  transcriptGroupModificationErrorRegularFontAttributes = [v7 transcriptGroupModificationErrorRegularFontAttributes];

  v9 = +[CKUIBehavior sharedBehaviors];
  transcriptGroupModificationErrorEmphasizedFontAttributes = [v9 transcriptGroupModificationErrorEmphasizedFontAttributes];

  sender = [(CKGroupActionChatItem *)self sender];
  name = [sender name];
  v13 = name;
  v14 = &stru_1F04268F8;
  if (name)
  {
    v14 = name;
  }

  v15 = v14;

  v91 = transcriptRegularFontAttributes;
  if ([(CKGroupActionChatItem *)self failed])
  {
    v16 = transcriptGroupModificationErrorRegularFontAttributes;
  }

  else
  {
    v16 = transcriptRegularFontAttributes;
  }

  v17 = v16;
  v94 = transcriptGroupModificationErrorEmphasizedFontAttributes;
  if ([(CKGroupActionChatItem *)self failed])
  {
    v18 = transcriptGroupModificationErrorEmphasizedFontAttributes;
  }

  else
  {
    v18 = transcriptEmphasizedFontAttributes;
  }

  v19 = v18;
  selfCopy = self;
  actionType = [(CKGroupActionChatItem *)self actionType];
  v21 = 0;
  v95 = v17;
  if (actionType <= 3)
  {
    if (!actionType)
    {
      if (sender)
      {
        isBusiness = [sender isBusiness];
        v26 = CKFrameworkBundle();
        v23 = v26;
        if (isBusiness)
        {
          v27 = @"BIA_LEAVE_CONVERSATION";
        }

        else
        {
          v27 = @"GROUP_LEAVE_STATUS";
        }

        v29 = [v26 localizedStringForKey:v27 value:&stru_1F04268F8 table:@"ChatKit"];
        v17 = v95;
        CKAttributedFormatString(v95, v19, v29, v42, v43, v44, v45, v46, v15);
        goto LABEL_50;
      }

      v22 = CKFrameworkBundle();
      v23 = v22;
      v24 = @"GROUP_YOU_LEAVE_STATUS";
      goto LABEL_49;
    }

    if (actionType == 1)
    {
      if ([(CKGroupActionChatItem *)self unattributed])
      {
        v22 = CKFrameworkBundle();
        v23 = v22;
        v24 = @"GROUP_SYSTEM_UPDATE_PHOTO_STATUS";
        goto LABEL_49;
      }

      v23 = CKFrameworkBundle();
      if (sender)
      {
        v28 = @"GROUP_UPDATE_PHOTO_STATUS";
        goto LABEL_37;
      }

      v24 = @"GROUP_YOU_UPDATE_PHOTO_STATUS";
    }

    else
    {
      v97 = 0;
      if (actionType != 2)
      {
        goto LABEL_52;
      }

      if ([(CKGroupActionChatItem *)self unattributed])
      {
        v22 = CKFrameworkBundle();
        v23 = v22;
        v24 = @"GROUP_SYSTEM_DELETE_PHOTO_STATUS";
LABEL_49:
        v29 = [v22 localizedStringForKey:v24 value:&stru_1F04268F8 table:@"ChatKit"];
        CKAttributedFormatString(v17, v19, v29, v47, v48, v49, v50, v51, 0);
        goto LABEL_50;
      }

      v23 = CKFrameworkBundle();
      if (sender)
      {
        v28 = @"GROUP_DELETE_PHOTO_STATUS";
        goto LABEL_37;
      }

      v24 = @"GROUP_YOU_DELETE_PHOTO_STATUS";
    }

    goto LABEL_48;
  }

  if (actionType == 4)
  {
    if ([(CKGroupActionChatItem *)self unattributed])
    {
      v22 = CKFrameworkBundle();
      v23 = v22;
      v24 = @"GROUP_SYSTEM_UPDATE_BACKGROUND_STATUS";
      goto LABEL_49;
    }

    v23 = CKFrameworkBundle();
    if (sender)
    {
      v28 = @"GROUP_UPDATE_BACKGROUND_STATUS";
LABEL_37:
      v29 = [v23 localizedStringForKey:v28 value:&stru_1F04268F8 table:@"ChatKit"];
      CKAttributedFormatString(v17, v19, v29, v30, v31, v32, v33, v34, v15);
      v97 = LABEL_50:;

      v21 = 0;
      goto LABEL_51;
    }

    v24 = @"GROUP_YOU_UPDATE_BACKGROUND_STATUS";
LABEL_48:
    v22 = v23;
    goto LABEL_49;
  }

  if (actionType != 5)
  {
    v97 = 0;
    if (actionType != 6)
    {
      goto LABEL_52;
    }

    if ([(CKGroupActionChatItem *)self unattributed])
    {
      v22 = CKFrameworkBundle();
      v23 = v22;
      v24 = @"GROUP_SYSTEM_DELETE_BACKGROUND_STATUS";
      goto LABEL_49;
    }

    v23 = CKFrameworkBundle();
    if (sender)
    {
      v28 = @"GROUP_DELETE_BACKGROUND_STATUS";
      goto LABEL_37;
    }

    v24 = @"GROUP_YOU_DELETE_BACKGROUND_STATUS";
    goto LABEL_48;
  }

  if ([(CKGroupActionChatItem *)self unattributed])
  {
    v22 = CKFrameworkBundle();
    v23 = v22;
    v24 = @"GROUP_SYSTEM_UPDATE_BACKGROUND_STATUS_SENSITIVE";
    goto LABEL_49;
  }

  v35 = CKFrameworkBundle();
  v23 = v35;
  if (!sender)
  {
    v24 = @"GROUP_YOU_UPDATE_BACKGROUND_STATUS_SENSITIVE";
    goto LABEL_48;
  }

  v36 = [v35 localizedStringForKey:@"GROUP_UPDATE_BACKGROUND_STATUS_SENSITIVE" value:&stru_1F04268F8 table:@"ChatKit"];
  v97 = CKAttributedFormatString(v17, v19, v36, v37, v38, v39, v40, v41, v15);

  v23 = CKFrameworkBundle();
  v21 = [v23 localizedStringForKey:@"GROUP_UPDATE_SENSITIVE_BACKGROUND_OPTIONS" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_51:

LABEL_52:
  v52 = 0x1E696A000;
  v96 = v19;
  if (![(CKGroupActionChatItem *)selfCopy unattributed])
  {
    goto LABEL_57;
  }

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([mEMORY[0x1E69A60F0] isInternalInstall])
  {
    v54 = IMGetDomainBoolForKey();

    if (!v54)
    {
      goto LABEL_57;
    }

    mEMORY[0x1E69A60F0] = objc_alloc_init(MEMORY[0x1E696AD40]);
    [mEMORY[0x1E69A60F0] appendAttributedString:v97];
    v55 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [mEMORY[0x1E69A60F0] appendAttributedString:v55];

    v56 = CKFrameworkBundle();
    v57 = [v56 localizedStringForKey:@"GROUP_SYSTEM_DEBUG_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v17, v96, v57, v58, v59, v60, v61, v62, v15);
    v64 = v63 = transcriptGroupModificationErrorRegularFontAttributes;
    [mEMORY[0x1E69A60F0] appendAttributedString:v64];

    transcriptGroupModificationErrorRegularFontAttributes = v63;
    v65 = [mEMORY[0x1E69A60F0] copy];

    v52 = 0x1E696A000uLL;
    v97 = v65;
  }

LABEL_57:
  v92 = v15;
  v93 = sender;
  if (v21)
  {
    v99[0] = *MEMORY[0x1E69DB648];
    v66 = +[CKUIBehavior sharedBehaviors];
    transcriptBoldFont = [v66 transcriptBoldFont];
    v100[0] = transcriptBoldFont;
    v99[1] = *MEMORY[0x1E69DB650];
    +[CKUIBehavior sharedBehaviors];
    v69 = v68 = transcriptGroupModificationErrorRegularFontAttributes;
    [v69 theme];
    v70 = transcriptEmphasizedFontAttributes;
    v72 = v71 = v52;
    appTintColor = [v72 appTintColor];
    v100[1] = appTintColor;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];

    v52 = v71;
    transcriptEmphasizedFontAttributes = v70;

    transcriptGroupModificationErrorRegularFontAttributes = v68;
    v75 = [objc_alloc(*(v52 + 2736)) initWithString:v21 attributes:v74];
    v76 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v97];
    v77 = [objc_alloc(*(v52 + 2736)) initWithString:@" " attributes:v74];
    [v76 appendAttributedString:v77];

    [v76 appendAttributedString:v75];
    v78 = [v76 copy];
  }

  else
  {
    v78 = v97;
  }

  if ([(CKGroupActionChatItem *)selfCopy failed])
  {
    v79 = MEMORY[0x1E69DCAD8];
    +[CKUIBehavior sharedBehaviors];
    v81 = v80 = v78;
    transcriptLightFont = [v81 transcriptLightFont];
    v83 = [v79 configurationWithFont:transcriptLightFont];

    v84 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v83];
    redColor = [MEMORY[0x1E69DC888] redColor];
    v86 = [v84 imageWithTintColor:redColor];

    v87 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v87 setImage:v86];
    v88 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v87 attributes:transcriptGroupModificationErrorRegularFontAttributes];
    v89 = [objc_alloc(*(v52 + 2736)) initWithString:@" "];
    [v88 appendAttributedString:v89];

    [v88 appendAttributedString:v80];
    v78 = v80;
  }

  else
  {
    v88 = v78;
  }

  return v88;
}

- (int64_t)actionType
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  actionType = [iMChatItem actionType];

  return actionType;
}

- (IMHandle)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];

  return sender;
}

- (BOOL)failed
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  failed = [iMChatItem failed];

  return failed;
}

- (BOOL)unattributed
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  unattributed = [iMChatItem unattributed];

  return unattributed;
}

- (NSString)errorText
{
  if ([(CKGroupActionChatItem *)self actionType])
  {
    v2 = CKFrameworkBundle();
    v3 = [v2 localizedStringForKey:@"GROUP_PHOTO_CHANGE_ERROR_ALERT_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)fileTransferGUIDs
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  fileTransferGUIDs = [iMChatItem fileTransferGUIDs];

  return fileTransferGUIDs;
}

@end