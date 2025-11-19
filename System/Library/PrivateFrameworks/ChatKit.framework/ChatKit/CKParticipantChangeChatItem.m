@interface CKParticipantChangeChatItem
- (BOOL)failed;
- (BOOL)unattributed;
- (IMHandle)handle;
- (NSString)errorText;
- (id)activeTelephonyConversationUUID;
- (id)loadTranscriptText;
- (id)sender;
- (int64_t)changeType;
@end

@implementation CKParticipantChangeChatItem

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

  v11 = [(CKParticipantChangeChatItem *)self sender];
  v12 = [(CKParticipantChangeChatItem *)self handle];
  v13 = [v11 name];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1F04268F8;
  }

  v108 = v15;

  v16 = [v12 name];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1F04268F8;
  }

  v19 = v18;

  v107 = v4;
  v109 = v8;
  if ([(CKParticipantChangeChatItem *)self failed])
  {
    v20 = v8;
  }

  else
  {
    v20 = v4;
  }

  v112 = v20;
  if ([(CKParticipantChangeChatItem *)self failed])
  {
    v21 = v10;
  }

  else
  {
    v21 = v6;
  }

  v111 = v21;
  v22 = [(CKParticipantChangeChatItem *)self changeType];
  if (v22 != 1)
  {
    if (v22)
    {
      v110 = 0;
      goto LABEL_42;
    }

    if ([(CKParticipantChangeChatItem *)self unattributed])
    {
      v23 = CKFrameworkBundle();
      v24 = v23;
      v25 = @"GROUP_SYSTEM_ADD_STATUS";
    }

    else
    {
      if (v11)
      {
        v29 = CKFrameworkBundle();
        v24 = v29;
        if (v12)
        {
          [v29 localizedStringForKey:@"GROUP_ADD_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
        }

        else
        {
          [v29 localizedStringForKey:@"GROUP_ADD_YOU_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
        }
        v38 = ;
        CKAttributedFormatString(v112, v111, v38, v49, v50, v51, v52, v53, v108);
        goto LABEL_32;
      }

      v23 = CKFrameworkBundle();
      v24 = v23;
      v25 = @"GROUP_YOU_ADD_STATUS";
    }

    v38 = [v23 localizedStringForKey:v25 value:&stru_1F04268F8 table:@"ChatKit"];
    CKAttributedFormatString(v112, v111, v38, v39, v40, v41, v42, v43, v19);
    v110 = LABEL_32:;

    goto LABEL_42;
  }

  if ([(CKParticipantChangeChatItem *)self unattributed])
  {
    v26 = CKFrameworkBundle();
    v27 = v26;
    v28 = @"GROUP_LEAVE_STATUS";
LABEL_29:
    v36 = [v26 localizedStringForKey:v28 value:&stru_1F04268F8 table:@"ChatKit"];
    v102 = 0;
    v37 = v19;
    CKAttributedFormatString(v112, v111, v36, v44, v45, v46, v47, v48, v19);
    goto LABEL_35;
  }

  if (!v11)
  {
    v26 = CKFrameworkBundle();
    v27 = v26;
    v28 = @"GROUP_YOU_REMOVE_STATUS";
    goto LABEL_29;
  }

  v30 = CKFrameworkBundle();
  v27 = v30;
  if (v12)
  {
    v36 = [v30 localizedStringForKey:@"GROUP_REMOVE_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v102 = v19;
    v37 = v19;
  }

  else
  {
    v37 = v19;
    v36 = [v30 localizedStringForKey:@"GROUP_REMOVE_YOU_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v102 = 0;
  }

  CKAttributedFormatString(v112, v111, v36, v31, v32, v33, v34, v35, v108);
  v110 = LABEL_35:;

  v54 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v55 = [(CKParticipantChangeChatItem *)self activeTelephonyConversationUUID];
  v56 = [v54 existingConversationForTelephonyConversationUUID:v55];

  if (v56)
  {
    v103 = v12;
    v104 = v6;
    if (IMOSLoggingEnabled())
    {
      v57 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v57, OS_LOG_TYPE_INFO, "Chat participant was removed while there is an active FaceTime call", buf, 2u);
      }
    }

    v58 = [v110 mutableCopy];
    v59 = MEMORY[0x1E696AEC0];
    v60 = CKFrameworkBundle();
    v61 = [v60 localizedStringForKey:@"GROUP_MEMBER_ACTIVE_IN_FT_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v62 = [v59 stringWithFormat:@" %@", v61, v102];
    v68 = CKAttributedFormatString(v112, v111, v62, v63, v64, v65, v66, v67, v37);
    [v58 appendAttributedString:v68];

    v19 = v37;
    v110 = v58;
    v12 = v103;
    v6 = v104;
  }

  else
  {
    v19 = v37;
  }

LABEL_42:
  if (![(CKParticipantChangeChatItem *)self unattributed])
  {
    goto LABEL_48;
  }

  v69 = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![v69 isInternalInstall])
  {
    goto LABEL_46;
  }

  v105 = v19;
  v70 = IMGetDomainBoolForKey();

  if (v70)
  {
    v69 = objc_alloc_init(MEMORY[0x1E696AD40]);
    [v69 appendAttributedString:v110];
    v71 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [v69 appendAttributedString:v71];

    v72 = CKFrameworkBundle();
    [v72 localizedStringForKey:@"GROUP_SYSTEM_DEBUG_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v73 = v11;
    v74 = v10;
    v76 = v75 = v6;
    v82 = CKAttributedFormatString(v112, v111, v76, v77, v78, v79, v80, v81, v108);
    [v69 appendAttributedString:v82];

    v6 = v75;
    v10 = v74;
    v11 = v73;

    v83 = [v69 copy];
    v110 = v83;
    v19 = v105;
LABEL_46:

    goto LABEL_48;
  }

  v19 = v105;
LABEL_48:
  if ([(CKParticipantChangeChatItem *)self failed])
  {
    v84 = MEMORY[0x1E69DCAD8];
    +[CKUIBehavior sharedBehaviors];
    v85 = v106 = v19;
    [v85 transcriptLightFont];
    v86 = v12;
    v87 = v11;
    v88 = v10;
    v90 = v89 = v6;
    v91 = [v84 configurationWithFont:v90];

    v92 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v91];
    v93 = [MEMORY[0x1E69DC888] redColor];
    v94 = [v92 imageWithTintColor:v93];

    v95 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v95 setImage:v94];
    v96 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v95 attributes:v109];
    v97 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v96 appendAttributedString:v97];

    v98 = v110;
    [v96 appendAttributedString:v110];
    v99 = v96;
    v6 = v89;
    v10 = v88;
    v11 = v87;
    v12 = v86;
    v100 = v99;

    v19 = v106;
  }

  else
  {
    v98 = v110;
    v100 = v110;
  }

  return v100;
}

- (NSString)errorText
{
  if (![(CKParticipantChangeChatItem *)self changeType])
  {
    v3 = @"GROUP_ADD_ERROR_STATUS";
    goto LABEL_5;
  }

  if ([(CKParticipantChangeChatItem *)self changeType]== 1)
  {
    v3 = @"GROUP_REMOVE_ERROR_STATUS";
LABEL_5:
    v4 = MEMORY[0x1E696AEC0];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:v3 value:&stru_1F04268F8 table:@"ChatKit"];
    v7 = [(CKParticipantChangeChatItem *)self handle];
    v8 = [v7 name];
    v9 = [v4 stringWithFormat:v6, v8];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (int64_t)changeType
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 changeType];

  return v3;
}

- (IMHandle)handle
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 otherHandle];

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

- (id)sender
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 sender];

  return v3;
}

- (id)activeTelephonyConversationUUID
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 activeTelephonyConversationUUID];

  return v3;
}

@end