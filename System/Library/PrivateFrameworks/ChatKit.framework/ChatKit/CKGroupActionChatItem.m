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
  v4 = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 transcriptEmphasizedFontAttributes];

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 transcriptGroupModificationErrorRegularFontAttributes];

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 transcriptGroupModificationErrorEmphasizedFontAttributes];

  v11 = [(CKGroupActionChatItem *)self sender];
  v12 = [v11 name];
  v13 = v12;
  v14 = &stru_1F04268F8;
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v91 = v4;
  if ([(CKGroupActionChatItem *)self failed])
  {
    v16 = v8;
  }

  else
  {
    v16 = v4;
  }

  v17 = v16;
  v94 = v10;
  if ([(CKGroupActionChatItem *)self failed])
  {
    v18 = v10;
  }

  else
  {
    v18 = v6;
  }

  v19 = v18;
  v98 = self;
  v20 = [(CKGroupActionChatItem *)self actionType];
  v21 = 0;
  v95 = v17;
  if (v20 <= 3)
  {
    if (!v20)
    {
      if (v11)
      {
        v25 = [v11 isBusiness];
        v26 = CKFrameworkBundle();
        v23 = v26;
        if (v25)
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

    if (v20 == 1)
    {
      if ([(CKGroupActionChatItem *)self unattributed])
      {
        v22 = CKFrameworkBundle();
        v23 = v22;
        v24 = @"GROUP_SYSTEM_UPDATE_PHOTO_STATUS";
        goto LABEL_49;
      }

      v23 = CKFrameworkBundle();
      if (v11)
      {
        v28 = @"GROUP_UPDATE_PHOTO_STATUS";
        goto LABEL_37;
      }

      v24 = @"GROUP_YOU_UPDATE_PHOTO_STATUS";
    }

    else
    {
      v97 = 0;
      if (v20 != 2)
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
      if (v11)
      {
        v28 = @"GROUP_DELETE_PHOTO_STATUS";
        goto LABEL_37;
      }

      v24 = @"GROUP_YOU_DELETE_PHOTO_STATUS";
    }

    goto LABEL_48;
  }

  if (v20 == 4)
  {
    if ([(CKGroupActionChatItem *)self unattributed])
    {
      v22 = CKFrameworkBundle();
      v23 = v22;
      v24 = @"GROUP_SYSTEM_UPDATE_BACKGROUND_STATUS";
      goto LABEL_49;
    }

    v23 = CKFrameworkBundle();
    if (v11)
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

  if (v20 != 5)
  {
    v97 = 0;
    if (v20 != 6)
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
    if (v11)
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
  if (!v11)
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
  if (![(CKGroupActionChatItem *)v98 unattributed])
  {
    goto LABEL_57;
  }

  v53 = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([v53 isInternalInstall])
  {
    v54 = IMGetDomainBoolForKey();

    if (!v54)
    {
      goto LABEL_57;
    }

    v53 = objc_alloc_init(MEMORY[0x1E696AD40]);
    [v53 appendAttributedString:v97];
    v55 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [v53 appendAttributedString:v55];

    v56 = CKFrameworkBundle();
    v57 = [v56 localizedStringForKey:@"GROUP_SYSTEM_DEBUG_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v17, v96, v57, v58, v59, v60, v61, v62, v15);
    v64 = v63 = v8;
    [v53 appendAttributedString:v64];

    v8 = v63;
    v65 = [v53 copy];

    v52 = 0x1E696A000uLL;
    v97 = v65;
  }

LABEL_57:
  v92 = v15;
  v93 = v11;
  if (v21)
  {
    v99[0] = *MEMORY[0x1E69DB648];
    v66 = +[CKUIBehavior sharedBehaviors];
    v67 = [v66 transcriptBoldFont];
    v100[0] = v67;
    v99[1] = *MEMORY[0x1E69DB650];
    +[CKUIBehavior sharedBehaviors];
    v69 = v68 = v8;
    [v69 theme];
    v70 = v6;
    v72 = v71 = v52;
    v73 = [v72 appTintColor];
    v100[1] = v73;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];

    v52 = v71;
    v6 = v70;

    v8 = v68;
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

  if ([(CKGroupActionChatItem *)v98 failed])
  {
    v79 = MEMORY[0x1E69DCAD8];
    +[CKUIBehavior sharedBehaviors];
    v81 = v80 = v78;
    v82 = [v81 transcriptLightFont];
    v83 = [v79 configurationWithFont:v82];

    v84 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v83];
    v85 = [MEMORY[0x1E69DC888] redColor];
    v86 = [v84 imageWithTintColor:v85];

    v87 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v87 setImage:v86];
    v88 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v87 attributes:v8];
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
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 actionType];

  return v3;
}

- (IMHandle)sender
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 sender];

  return v3;
}

- (BOOL)failed
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 failed];

  return v3;
}

- (BOOL)unattributed
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 unattributed];

  return v3;
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
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 fileTransferGUIDs];

  return v3;
}

@end