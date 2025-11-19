@interface CKServiceChatItem
- (BOOL)_showsEncryptedSubtext;
- (BOOL)_showsSatelliteSMSSubtext;
- (id)_encryptionSubtext;
- (id)_satelliteSMSSubtext;
- (id)_serviceName;
- (id)_smsFallbackString;
- (id)_subtext;
- (id)_subtextDefaultFontAttributes;
- (id)loadTranscriptText;
@end

@implementation CKServiceChatItem

- (id)loadTranscriptText
{
  v3 = [(CKServiceChatItem *)self _serviceName];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F04268F8;
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 transcriptEmphasizedFontAttributes];

  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4 attributes:v6];
  v8 = [(CKServiceChatItem *)self _subtext];
  if (v8)
  {
    [v7 appendAttributedString:v8];
  }

  return v7;
}

- (id)_serviceName
{
  v3 = [(CKChatItem *)self IMChatItem];
  v4 = [(CKChatItem *)self IMChatItem];
  v5 = [v4 handle];
  v6 = [v5 isStewieEmergency];

  if (v6)
  {
    v7 = CKFrameworkBundle();
    v8 = v7;
    v9 = @"STEWIE_EMERGENCY_STATUS_SERVICE";
    v10 = @"ChatKit-SYDROB_FEATURES";
LABEL_7:
    v14 = [v7 localizedStringForKey:v9 value:&stru_1F04268F8 table:v10];
    goto LABEL_8;
  }

  v11 = [(CKChatItem *)self IMChatItem];
  v12 = [v11 handle];
  v13 = [v12 isStewieRoadside];

  if (v13)
  {
    v7 = CKFrameworkBundle();
    v8 = v7;
    v9 = @"STEWIE_ROADSIDE_STATUS_SERVICE";
    v10 = @"ChatKit-Avocet";
    goto LABEL_7;
  }

  if ([v3 isStewieSharingChat])
  {
    v7 = CKFrameworkBundle();
    v8 = v7;
    v9 = @"TS_DESCRIPTION_SERVICE_NAME";
    v10 = @"TranscriptSharing-SYDROB_FEATURES";
    goto LABEL_7;
  }

  v8 = [v3 service];
  v14 = [v8 __ck_displayName];
LABEL_8:
  v15 = v14;

  return v15;
}

- (id)_subtext
{
  if ([(CKServiceChatItem *)self _showsEncryptedSubtext])
  {
    v3 = [(CKServiceChatItem *)self _encryptionSubtext];
  }

  else
  {
    if (![(CKServiceChatItem *)self _showsSatelliteSMSSubtext])
    {
      v4 = 0;
      goto LABEL_8;
    }

    v3 = [(CKServiceChatItem *)self _satelliteSMSSubtext];
  }

  v4 = v3;
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [v4 insertAttributedString:v5 atIndex:0];
    [(CKServiceChatItem *)self setHasInformativeText:1];
  }

LABEL_8:

  return v4;
}

- (id)_subtextDefaultFontAttributes
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 transcriptRegularFontAttributes];

  return v3;
}

- (BOOL)_showsEncryptedSubtext
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isRCSEncryptionEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKChatItem *)self IMChatItem];
  v6 = [v5 service];
  if ([v6 __ck_isiMessage])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CKChatItem *)self IMChatItem];
    v9 = [v8 service];
    if ([v9 __ck_isRCS])
    {
      v10 = [(CKChatItem *)self IMChatItem];
      v7 = [v10 isEncrypted];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_encryptionSubtext
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"MESSAGE_STATUS_ENCRYPTED" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = [v3 localizedStringWithFormat:@" %@", v5];

  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v6];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 encryptedServiceIcon];

  v10 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v9];
  v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
  [v7 insertAttributedString:v11 atIndex:0];

  v12 = [(CKServiceChatItem *)self _subtextDefaultFontAttributes];
  [v7 addAttributes:v12 range:{0, objc_msgSend(v7, "length")}];

  return v7;
}

- (BOOL)_showsSatelliteSMSSubtext
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 service];
  v4 = [v3 __ck_isSatelliteSMS];

  return v4;
}

- (id)_satelliteSMSSubtext
{
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  v4 = [(CKServiceChatItem *)self _smsFallbackString];
  v5 = [(CKServiceChatItem *)self _subtextDefaultFontAttributes];
  v6 = [v3 initWithString:v4 attributes:v5];

  return v6;
}

- (id)_smsFallbackString
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 handle];
  v4 = [v3 _displayNameWithAbbreviation];

  LODWORD(v3) = [v2 isLiteServiceCapable];
  v5 = MEMORY[0x1E696AEC0];
  v6 = CKFrameworkBundle();
  v7 = v6;
  if (v3)
  {
    v8 = @"SMS_FALLBACK_STATUS_MESSAGE";
  }

  else
  {
    v8 = @"SMS_FALLBACK_STATUS_MESSAGE_NO_REPLY";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
  v10 = [v5 localizedStringWithFormat:v9, v4];

  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection];

  if (v12 == 1)
  {
    v13 = @"\u200F";
  }

  else
  {
    v13 = @"\u200E";
  }

  v14 = [(__CFString *)v13 stringByAppendingString:v10];

  return v14;
}

@end