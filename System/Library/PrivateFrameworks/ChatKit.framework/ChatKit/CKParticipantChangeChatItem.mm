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
  transcriptRegularFontAttributes = [v3 transcriptRegularFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v5 transcriptEmphasizedFontAttributes];

  v7 = +[CKUIBehavior sharedBehaviors];
  transcriptGroupModificationErrorRegularFontAttributes = [v7 transcriptGroupModificationErrorRegularFontAttributes];

  v9 = +[CKUIBehavior sharedBehaviors];
  transcriptGroupModificationErrorEmphasizedFontAttributes = [v9 transcriptGroupModificationErrorEmphasizedFontAttributes];

  sender = [(CKParticipantChangeChatItem *)self sender];
  handle = [(CKParticipantChangeChatItem *)self handle];
  name = [sender name];
  v14 = name;
  if (name)
  {
    v15 = name;
  }

  else
  {
    v15 = &stru_1F04268F8;
  }

  v108 = v15;

  name2 = [handle name];
  v17 = name2;
  if (name2)
  {
    v18 = name2;
  }

  else
  {
    v18 = &stru_1F04268F8;
  }

  v19 = v18;

  v107 = transcriptRegularFontAttributes;
  v109 = transcriptGroupModificationErrorRegularFontAttributes;
  if ([(CKParticipantChangeChatItem *)self failed])
  {
    v20 = transcriptGroupModificationErrorRegularFontAttributes;
  }

  else
  {
    v20 = transcriptRegularFontAttributes;
  }

  v112 = v20;
  if ([(CKParticipantChangeChatItem *)self failed])
  {
    v21 = transcriptGroupModificationErrorEmphasizedFontAttributes;
  }

  else
  {
    v21 = transcriptEmphasizedFontAttributes;
  }

  v111 = v21;
  changeType = [(CKParticipantChangeChatItem *)self changeType];
  if (changeType != 1)
  {
    if (changeType)
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
      if (sender)
      {
        v29 = CKFrameworkBundle();
        v24 = v29;
        if (handle)
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

  if (!sender)
  {
    v26 = CKFrameworkBundle();
    v27 = v26;
    v28 = @"GROUP_YOU_REMOVE_STATUS";
    goto LABEL_29;
  }

  v30 = CKFrameworkBundle();
  v27 = v30;
  if (handle)
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

  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  activeTelephonyConversationUUID = [(CKParticipantChangeChatItem *)self activeTelephonyConversationUUID];
  v56 = [mEMORY[0x1E69A5AF8] existingConversationForTelephonyConversationUUID:activeTelephonyConversationUUID];

  if (v56)
  {
    v103 = handle;
    v104 = transcriptEmphasizedFontAttributes;
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
    v102 = [v59 stringWithFormat:@" %@", v61, v102];
    v68 = CKAttributedFormatString(v112, v111, v102, v63, v64, v65, v66, v67, v37);
    [v58 appendAttributedString:v68];

    v19 = v37;
    v110 = v58;
    handle = v103;
    transcriptEmphasizedFontAttributes = v104;
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

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![mEMORY[0x1E69A60F0] isInternalInstall])
  {
    goto LABEL_46;
  }

  v105 = v19;
  v70 = IMGetDomainBoolForKey();

  if (v70)
  {
    mEMORY[0x1E69A60F0] = objc_alloc_init(MEMORY[0x1E696AD40]);
    [mEMORY[0x1E69A60F0] appendAttributedString:v110];
    v71 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [mEMORY[0x1E69A60F0] appendAttributedString:v71];

    v72 = CKFrameworkBundle();
    [v72 localizedStringForKey:@"GROUP_SYSTEM_DEBUG_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    v73 = sender;
    v74 = transcriptGroupModificationErrorEmphasizedFontAttributes;
    v76 = v75 = transcriptEmphasizedFontAttributes;
    v82 = CKAttributedFormatString(v112, v111, v76, v77, v78, v79, v80, v81, v108);
    [mEMORY[0x1E69A60F0] appendAttributedString:v82];

    transcriptEmphasizedFontAttributes = v75;
    transcriptGroupModificationErrorEmphasizedFontAttributes = v74;
    sender = v73;

    v83 = [mEMORY[0x1E69A60F0] copy];
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
    v86 = handle;
    v87 = sender;
    v88 = transcriptGroupModificationErrorEmphasizedFontAttributes;
    v90 = v89 = transcriptEmphasizedFontAttributes;
    v91 = [v84 configurationWithFont:v90];

    v92 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v91];
    redColor = [MEMORY[0x1E69DC888] redColor];
    v94 = [v92 imageWithTintColor:redColor];

    v95 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v95 setImage:v94];
    v96 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v95 attributes:v109];
    v97 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v96 appendAttributedString:v97];

    v98 = v110;
    [v96 appendAttributedString:v110];
    v99 = v96;
    transcriptEmphasizedFontAttributes = v89;
    transcriptGroupModificationErrorEmphasizedFontAttributes = v88;
    sender = v87;
    handle = v86;
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
    handle = [(CKParticipantChangeChatItem *)self handle];
    name = [handle name];
    v9 = [v4 stringWithFormat:v6, name];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (int64_t)changeType
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  changeType = [iMChatItem changeType];

  return changeType;
}

- (IMHandle)handle
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  otherHandle = [iMChatItem otherHandle];

  return otherHandle;
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

- (id)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];

  return sender;
}

- (id)activeTelephonyConversationUUID
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  activeTelephonyConversationUUID = [iMChatItem activeTelephonyConversationUUID];

  return activeTelephonyConversationUUID;
}

@end