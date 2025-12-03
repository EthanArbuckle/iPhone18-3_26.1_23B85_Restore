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
  _serviceName = [(CKServiceChatItem *)self _serviceName];
  if (_serviceName)
  {
    v4 = _serviceName;
  }

  else
  {
    v4 = &stru_1F04268F8;
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v5 transcriptEmphasizedFontAttributes];

  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4 attributes:transcriptEmphasizedFontAttributes];
  _subtext = [(CKServiceChatItem *)self _subtext];
  if (_subtext)
  {
    [v7 appendAttributedString:_subtext];
  }

  return v7;
}

- (id)_serviceName
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  iMChatItem2 = [(CKChatItem *)self IMChatItem];
  handle = [iMChatItem2 handle];
  isStewieEmergency = [handle isStewieEmergency];

  if (isStewieEmergency)
  {
    v7 = CKFrameworkBundle();
    service = v7;
    v9 = @"STEWIE_EMERGENCY_STATUS_SERVICE";
    v10 = @"ChatKit-SYDROB_FEATURES";
LABEL_7:
    __ck_displayName = [v7 localizedStringForKey:v9 value:&stru_1F04268F8 table:v10];
    goto LABEL_8;
  }

  iMChatItem3 = [(CKChatItem *)self IMChatItem];
  handle2 = [iMChatItem3 handle];
  isStewieRoadside = [handle2 isStewieRoadside];

  if (isStewieRoadside)
  {
    v7 = CKFrameworkBundle();
    service = v7;
    v9 = @"STEWIE_ROADSIDE_STATUS_SERVICE";
    v10 = @"ChatKit-Avocet";
    goto LABEL_7;
  }

  if ([iMChatItem isStewieSharingChat])
  {
    v7 = CKFrameworkBundle();
    service = v7;
    v9 = @"TS_DESCRIPTION_SERVICE_NAME";
    v10 = @"TranscriptSharing-SYDROB_FEATURES";
    goto LABEL_7;
  }

  service = [iMChatItem service];
  __ck_displayName = [service __ck_displayName];
LABEL_8:
  v15 = __ck_displayName;

  return v15;
}

- (id)_subtext
{
  if ([(CKServiceChatItem *)self _showsEncryptedSubtext])
  {
    _encryptionSubtext = [(CKServiceChatItem *)self _encryptionSubtext];
  }

  else
  {
    if (![(CKServiceChatItem *)self _showsSatelliteSMSSubtext])
    {
      v4 = 0;
      goto LABEL_8;
    }

    _encryptionSubtext = [(CKServiceChatItem *)self _satelliteSMSSubtext];
  }

  v4 = _encryptionSubtext;
  if (_encryptionSubtext)
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
  transcriptRegularFontAttributes = [v2 transcriptRegularFontAttributes];

  return transcriptRegularFontAttributes;
}

- (BOOL)_showsEncryptedSubtext
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRCSEncryptionEnabled = [mEMORY[0x1E69A8070] isRCSEncryptionEnabled];

  if (!isRCSEncryptionEnabled)
  {
    return 0;
  }

  iMChatItem = [(CKChatItem *)self IMChatItem];
  service = [iMChatItem service];
  if ([service __ck_isiMessage])
  {
    isEncrypted = 1;
  }

  else
  {
    iMChatItem2 = [(CKChatItem *)self IMChatItem];
    service2 = [iMChatItem2 service];
    if ([service2 __ck_isRCS])
    {
      iMChatItem3 = [(CKChatItem *)self IMChatItem];
      isEncrypted = [iMChatItem3 isEncrypted];
    }

    else
    {
      isEncrypted = 0;
    }
  }

  return isEncrypted;
}

- (id)_encryptionSubtext
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"MESSAGE_STATUS_ENCRYPTED" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = [v3 localizedStringWithFormat:@" %@", v5];

  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v6];
  v8 = +[CKUIBehavior sharedBehaviors];
  encryptedServiceIcon = [v8 encryptedServiceIcon];

  v10 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:encryptedServiceIcon];
  v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
  [v7 insertAttributedString:v11 atIndex:0];

  _subtextDefaultFontAttributes = [(CKServiceChatItem *)self _subtextDefaultFontAttributes];
  [v7 addAttributes:_subtextDefaultFontAttributes range:{0, objc_msgSend(v7, "length")}];

  return v7;
}

- (BOOL)_showsSatelliteSMSSubtext
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  service = [iMChatItem service];
  __ck_isSatelliteSMS = [service __ck_isSatelliteSMS];

  return __ck_isSatelliteSMS;
}

- (id)_satelliteSMSSubtext
{
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  _smsFallbackString = [(CKServiceChatItem *)self _smsFallbackString];
  _subtextDefaultFontAttributes = [(CKServiceChatItem *)self _subtextDefaultFontAttributes];
  v6 = [v3 initWithString:_smsFallbackString attributes:_subtextDefaultFontAttributes];

  return v6;
}

- (id)_smsFallbackString
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  handle = [iMChatItem handle];
  _displayNameWithAbbreviation = [handle _displayNameWithAbbreviation];

  LODWORD(handle) = [iMChatItem isLiteServiceCapable];
  v5 = MEMORY[0x1E696AEC0];
  v6 = CKFrameworkBundle();
  v7 = v6;
  if (handle)
  {
    v8 = @"SMS_FALLBACK_STATUS_MESSAGE";
  }

  else
  {
    v8 = @"SMS_FALLBACK_STATUS_MESSAGE_NO_REPLY";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
  v10 = [v5 localizedStringWithFormat:v9, _displayNameWithAbbreviation];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
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