@interface CKAudioMessagesExpireDurationSelectionList
- (id)expireDescription;
@end

@implementation CKAudioMessagesExpireDurationSelectionList

- (id)expireDescription
{
  v2 = [CKSettingsMessagesController currentMessageAutoKeepOptionForType:1];
  if (v2 > 2)
  {
    v7 = &stru_2856D3978;
  }

  else
  {
    v3 = off_278DE8DF8[v2];
    v4 = MEMORY[0x277CCACA8];
    v5 = MessagesSettingsLocalizedString(@"AUDIO_MESSAGES_EXPIRE_DESCRIPTION");
    v6 = MessagesSettingsLocalizedString(v3);
    v7 = [v4 stringWithFormat:v5, v6];
  }

  return v7;
}

@end