@interface CCSetLibraryConfigurationRegistry
+ (id)allSetConfigurations;
+ (id)configurationForSetIdentifier:(id)a3;
+ (id)configurationForSet_AppCuratedEntity;
+ (id)configurationForSet_AppCustomCarName;
+ (id)configurationForSet_AppCustomCarProfileName;
+ (id)configurationForSet_AppCustomContactGroupName;
+ (id)configurationForSet_AppCustomContactName;
+ (id)configurationForSet_AppCustomMediaAudiobookAuthorName;
+ (id)configurationForSet_AppCustomMediaAudiobookTitle;
+ (id)configurationForSet_AppCustomMediaMusicArtistName;
+ (id)configurationForSet_AppCustomMediaPlaylistTitle;
+ (id)configurationForSet_AppCustomMediaShowTitle;
+ (id)configurationForSet_AppCustomNotebookItemGroupName;
+ (id)configurationForSet_AppCustomNotebookItemTitle;
+ (id)configurationForSet_AppCustomPaymentsAccountNickname;
+ (id)configurationForSet_AppCustomPaymentsOrganizationName;
+ (id)configurationForSet_AppCustomPhotoAlbumName;
+ (id)configurationForSet_AppCustomPhotoTag;
+ (id)configurationForSet_AppCustomVoiceCommandName;
+ (id)configurationForSet_AppCustomWorkoutActivityName;
+ (id)configurationForSet_AppGlobalMediaAudiobookAuthor;
+ (id)configurationForSet_AppGlobalMediaAudiobookTitle;
+ (id)configurationForSet_AppGlobalMediaMusicArtistName;
+ (id)configurationForSet_AppGlobalMediaPlaylistTitle;
+ (id)configurationForSet_AppGlobalMediaShowTitle;
+ (id)configurationForSet_AppIntentsExtractedEntity;
+ (id)configurationForSet_AppIntentsIndexedEntity;
+ (id)configurationForSet_AppIntentsIndexedEnum;
+ (id)configurationForSet_AppShortcutEntity;
+ (id)configurationForSet_AppShortcutPhrase;
+ (id)configurationForSet_CalendarEvent;
+ (id)configurationForSet_Contact;
+ (id)configurationForSet_FindMyDevice;
+ (id)configurationForSet_FitnessGuest;
+ (id)configurationForSet_HealthMedication;
+ (id)configurationForSet_Home;
+ (id)configurationForSet_HomeServiceArea;
+ (id)configurationForSet_InstalledApp;
+ (id)configurationForSet_Media;
+ (id)configurationForSet_MontaraSharedPreferences;
+ (id)configurationForSet_PeopleSuggesterContactPrior;
+ (id)configurationForSet_PhotosPetRelationship;
+ (id)configurationForSet_Podcast;
+ (id)configurationForSet_RadioStation;
+ (id)configurationForSet_SignificantLocation;
+ (id)configurationForSet_SiriCompanionContextAudio;
+ (id)configurationForSet_SiriLearnedContact;
+ (id)configurationForSet_SiriLearnedMedia;
+ (id)configurationForSet_ToolKitTool;
+ (id)configurationForSet_ToolKitToolDefinition;
+ (id)configurationForSet_UserAccountIdentity;
+ (id)configurationForSet_WalletExtractedOrder;
+ (id)configurationForSet_WalletPass;
+ (id)syncPolicyForSet_ToolKitTool;
@end

@implementation CCSetLibraryConfigurationRegistry

+ (id)allSetConfigurations
{
  v57[51] = *MEMORY[0x1E69E9840];
  v56 = [a1 configurationForSet_AppCuratedEntity];
  v57[0] = v56;
  v55 = [a1 configurationForSet_AppCustomCarName];
  v57[1] = v55;
  v54 = [a1 configurationForSet_AppCustomCarProfileName];
  v57[2] = v54;
  v53 = [a1 configurationForSet_AppCustomContactGroupName];
  v57[3] = v53;
  v52 = [a1 configurationForSet_AppCustomContactName];
  v57[4] = v52;
  v51 = [a1 configurationForSet_AppCustomMediaAudiobookAuthorName];
  v57[5] = v51;
  v50 = [a1 configurationForSet_AppCustomMediaAudiobookTitle];
  v57[6] = v50;
  v49 = [a1 configurationForSet_AppCustomMediaMusicArtistName];
  v57[7] = v49;
  v48 = [a1 configurationForSet_AppCustomMediaPlaylistTitle];
  v57[8] = v48;
  v47 = [a1 configurationForSet_AppCustomMediaShowTitle];
  v57[9] = v47;
  v46 = [a1 configurationForSet_AppCustomNotebookItemGroupName];
  v57[10] = v46;
  v45 = [a1 configurationForSet_AppCustomNotebookItemTitle];
  v57[11] = v45;
  v44 = [a1 configurationForSet_AppCustomPaymentsAccountNickname];
  v57[12] = v44;
  v43 = [a1 configurationForSet_AppCustomPaymentsOrganizationName];
  v57[13] = v43;
  v42 = [a1 configurationForSet_AppCustomPhotoAlbumName];
  v57[14] = v42;
  v41 = [a1 configurationForSet_AppCustomPhotoTag];
  v57[15] = v41;
  v40 = [a1 configurationForSet_AppCustomVoiceCommandName];
  v57[16] = v40;
  v39 = [a1 configurationForSet_AppCustomWorkoutActivityName];
  v57[17] = v39;
  v38 = [a1 configurationForSet_AppGlobalMediaAudiobookAuthor];
  v57[18] = v38;
  v37 = [a1 configurationForSet_AppGlobalMediaAudiobookTitle];
  v57[19] = v37;
  v36 = [a1 configurationForSet_AppGlobalMediaMusicArtistName];
  v57[20] = v36;
  v35 = [a1 configurationForSet_AppGlobalMediaPlaylistTitle];
  v57[21] = v35;
  v34 = [a1 configurationForSet_AppGlobalMediaShowTitle];
  v57[22] = v34;
  v33 = [a1 configurationForSet_AppIntentsExtractedEntity];
  v57[23] = v33;
  v32 = [a1 configurationForSet_AppIntentsIndexedEntity];
  v57[24] = v32;
  v31 = [a1 configurationForSet_AppIntentsIndexedEnum];
  v57[25] = v31;
  v30 = [a1 configurationForSet_AppShortcutEntity];
  v57[26] = v30;
  v29 = [a1 configurationForSet_AppShortcutPhrase];
  v57[27] = v29;
  v28 = [a1 configurationForSet_CalendarEvent];
  v57[28] = v28;
  v27 = [a1 configurationForSet_Contact];
  v57[29] = v27;
  v26 = [a1 configurationForSet_FindMyDevice];
  v57[30] = v26;
  v25 = [a1 configurationForSet_FitnessGuest];
  v57[31] = v25;
  v24 = [a1 configurationForSet_HealthMedication];
  v57[32] = v24;
  v23 = [a1 configurationForSet_Home];
  v57[33] = v23;
  v22 = [a1 configurationForSet_HomeServiceArea];
  v57[34] = v22;
  v21 = [a1 configurationForSet_InstalledApp];
  v57[35] = v21;
  v20 = [a1 configurationForSet_Media];
  v57[36] = v20;
  v19 = [a1 configurationForSet_MontaraSharedPreferences];
  v57[37] = v19;
  v18 = [a1 configurationForSet_PeopleSuggesterContactPrior];
  v57[38] = v18;
  v17 = [a1 configurationForSet_PhotosPetRelationship];
  v57[39] = v17;
  v16 = [a1 configurationForSet_Podcast];
  v57[40] = v16;
  v3 = [a1 configurationForSet_RadioStation];
  v57[41] = v3;
  v4 = [a1 configurationForSet_SignificantLocation];
  v57[42] = v4;
  v5 = [a1 configurationForSet_SiriCompanionContextAudio];
  v57[43] = v5;
  v6 = [a1 configurationForSet_SiriLearnedContact];
  v57[44] = v6;
  v7 = [a1 configurationForSet_SiriLearnedMedia];
  v57[45] = v7;
  v8 = [a1 configurationForSet_ToolKitTool];
  v57[46] = v8;
  v9 = [a1 configurationForSet_ToolKitToolDefinition];
  v57[47] = v9;
  v10 = [a1 configurationForSet_UserAccountIdentity];
  v57[48] = v10;
  v11 = [a1 configurationForSet_WalletExtractedOrder];
  v57[49] = v11;
  v12 = [a1 configurationForSet_WalletPass];
  v57[50] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:51];

  v13 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)configurationForSetIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"App.Intents.CuratedEntity"])
  {
    v5 = [a1 configurationForSet_AppCuratedEntity];
LABEL_103:
    v6 = v5;
    goto LABEL_104;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomCarName"])
  {
    v5 = [a1 configurationForSet_AppCustomCarName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomCarProfileName"])
  {
    v5 = [a1 configurationForSet_AppCustomCarProfileName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomContactGroupName"])
  {
    v5 = [a1 configurationForSet_AppCustomContactGroupName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomContactName"])
  {
    v5 = [a1 configurationForSet_AppCustomContactName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomMediaAudiobookAuthorName"])
  {
    v5 = [a1 configurationForSet_AppCustomMediaAudiobookAuthorName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomMediaAudiobookTitle"])
  {
    v5 = [a1 configurationForSet_AppCustomMediaAudiobookTitle];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomMediaMusicArtistName"])
  {
    v5 = [a1 configurationForSet_AppCustomMediaMusicArtistName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomMediaPlaylistTitle"])
  {
    v5 = [a1 configurationForSet_AppCustomMediaPlaylistTitle];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomMediaShowTitle"])
  {
    v5 = [a1 configurationForSet_AppCustomMediaShowTitle];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomNotebookItemGroupName"])
  {
    v5 = [a1 configurationForSet_AppCustomNotebookItemGroupName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomNotebookItemTitle"])
  {
    v5 = [a1 configurationForSet_AppCustomNotebookItemTitle];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomPaymentsAccountNickname"])
  {
    v5 = [a1 configurationForSet_AppCustomPaymentsAccountNickname];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomPaymentsOrganizationName"])
  {
    v5 = [a1 configurationForSet_AppCustomPaymentsOrganizationName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomPhotoAlbumName"])
  {
    v5 = [a1 configurationForSet_AppCustomPhotoAlbumName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomPhotoTag"])
  {
    v5 = [a1 configurationForSet_AppCustomPhotoTag];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomVoiceCommandName"])
  {
    v5 = [a1 configurationForSet_AppCustomVoiceCommandName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.CustomWorkoutActivityName"])
  {
    v5 = [a1 configurationForSet_AppCustomWorkoutActivityName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.GlobalMediaAudiobookAuthor"])
  {
    v5 = [a1 configurationForSet_AppGlobalMediaAudiobookAuthor];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.GlobalMediaAudiobookTitle"])
  {
    v5 = [a1 configurationForSet_AppGlobalMediaAudiobookTitle];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.GlobalMediaMusicArtistName"])
  {
    v5 = [a1 configurationForSet_AppGlobalMediaMusicArtistName];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.GlobalMediaPlaylistTitle"])
  {
    v5 = [a1 configurationForSet_AppGlobalMediaPlaylistTitle];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.IntentVocabulary.GlobalMediaShowTitle"])
  {
    v5 = [a1 configurationForSet_AppGlobalMediaShowTitle];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.Intents.ExtractedEntity"])
  {
    v5 = [a1 configurationForSet_AppIntentsExtractedEntity];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.Intents.IndexedEntity"])
  {
    v5 = [a1 configurationForSet_AppIntentsIndexedEntity];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.Intents.IndexedEnum"])
  {
    v5 = [a1 configurationForSet_AppIntentsIndexedEnum];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.Shortcut.Entity"])
  {
    v5 = [a1 configurationForSet_AppShortcutEntity];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.Shortcut.Phrase"])
  {
    v5 = [a1 configurationForSet_AppShortcutPhrase];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Calendar.Event"])
  {
    v5 = [a1 configurationForSet_CalendarEvent];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Contacts.Contact"])
  {
    v5 = [a1 configurationForSet_Contact];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"FindMy.Device"])
  {
    v5 = [a1 configurationForSet_FindMyDevice];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Fitness.Guest"])
  {
    v5 = [a1 configurationForSet_FitnessGuest];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Health.Medication"])
  {
    v5 = [a1 configurationForSet_HealthMedication];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"HomeKit.Home"])
  {
    v5 = [a1 configurationForSet_Home];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"HomeKit.HomeServiceArea"])
  {
    v5 = [a1 configurationForSet_HomeServiceArea];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"App.InstalledApp"])
  {
    v5 = [a1 configurationForSet_InstalledApp];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"MediaLibrary.Media"])
  {
    v5 = [a1 configurationForSet_Media];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Siri.Montara.SharedPreferences"])
  {
    v5 = [a1 configurationForSet_MontaraSharedPreferences];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"PeopleSuggester.ContactPrior"])
  {
    v5 = [a1 configurationForSet_PeopleSuggesterContactPrior];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Photos.PetRelationship"])
  {
    v5 = [a1 configurationForSet_PhotosPetRelationship];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Podcasts.Podcast"])
  {
    v5 = [a1 configurationForSet_Podcast];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"CarPlay.RadioStation"])
  {
    v5 = [a1 configurationForSet_RadioStation];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Location.SignificantLocation"])
  {
    v5 = [a1 configurationForSet_SignificantLocation];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Siri.CompanionContext.Audio"])
  {
    v5 = [a1 configurationForSet_SiriCompanionContextAudio];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Siri.PrivateLearning.Contact"])
  {
    v5 = [a1 configurationForSet_SiriLearnedContact];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Siri.PrivateLearning.Media"])
  {
    v5 = [a1 configurationForSet_SiriLearnedMedia];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"ToolKit.Tool"])
  {
    v5 = [a1 configurationForSet_ToolKitTool];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"ToolKitToolDefinition"])
  {
    v5 = [a1 configurationForSet_ToolKitToolDefinition];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"UserAccount.Identity"])
  {
    v5 = [a1 configurationForSet_UserAccountIdentity];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Wallet.PaymentsCommerce.ExtractedOrder"])
  {
    v5 = [a1 configurationForSet_WalletExtractedOrder];
    goto LABEL_103;
  }

  if ([v4 isEqualToString:@"Wallet.Pass"])
  {
    v5 = [a1 configurationForSet_WalletPass];
    goto LABEL_103;
  }

  v6 = 0;
LABEL_104:

  return v6;
}

+ (id)configurationForSet_WalletPass
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_WalletPass];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9F5CD5E5-7B47-4D00-9C37-F1B6A0A54348"];
  v7 = [v5 initWithSetIdentifier:@"Wallet.Pass" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_WalletExtractedOrder
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_WalletExtractedOrder];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4B76474F-C98E-4A83-8EC2-8B34086BE533"];
  v7 = [v5 initWithSetIdentifier:@"Wallet.PaymentsCommerce.ExtractedOrder" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_UserAccountIdentity
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_UserAccountIdentity];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A397B588-ECB0-492D-9081-1BD6A6C89258"];
  v7 = [v5 initWithSetIdentifier:@"UserAccount.Identity" setUUID:v6 resourceDomain:1 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_ToolKitToolDefinition
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_ToolKitToolDefinition];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9A6207E7-E36E-4477-94B2-CDA2A744F94E"];
  v7 = [v5 initWithSetIdentifier:@"ToolKitToolDefinition" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_ToolKitTool
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_ToolKitTool];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1A76C72B-DD36-48A0-B13E-ACEDBE0B5743"];
  v7 = [v5 initWithSetIdentifier:@"ToolKit.Tool" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)syncPolicyForSet_ToolKitTool
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698EA00]) initWithPlatform:2 transportType:2 direction:3];
  v15[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698EA00]) initWithPlatform:1 transportType:2 direction:3];
  v14 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v12[0] = v6;
  v13[0] = v3;
  v7 = BMDevicePlatformAsKeyString();
  v12[1] = v7;
  v13[1] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v9 = [objc_alloc(MEMORY[0x1E6993A88]) initWithPolicyDictionary:v8 forSetIdentifier:@"ToolKit.Tool"];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)configurationForSet_SiriLearnedMedia
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_SiriLearnedMedia];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0ED4EA3B-1D63-4D6D-B40B-4DE4C650176A"];
  v7 = [v5 initWithSetIdentifier:@"Siri.PrivateLearning.Media" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_SiriLearnedContact
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_SiriLearnedContact];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"391C69C7-2DAA-4641-9760-032767E8BCA7"];
  v7 = [v5 initWithSetIdentifier:@"Siri.PrivateLearning.Contact" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_SiriCompanionContextAudio
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_SiriCompanionContextAudio];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"234B44F4-7E93-45AF-928C-3CADFB167AC7"];
  v7 = [v5 initWithSetIdentifier:@"Siri.CompanionContext.Audio" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_SignificantLocation
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_SignificantLocation];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B603F574-65F6-4E08-B2A9-056AD07A3273"];
  v7 = [v5 initWithSetIdentifier:@"Location.SignificantLocation" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_RadioStation
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_RadioStation];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8142DC35-A0AF-4467-ACB7-D9E422302981"];
  v7 = [v5 initWithSetIdentifier:@"CarPlay.RadioStation" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_Podcast
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_Podcast];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"61008964-523B-438A-B47F-5323C06957AC"];
  v7 = [v5 initWithSetIdentifier:@"Podcasts.Podcast" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_PhotosPetRelationship
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_PhotosPetRelationship];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A334B4F6-B901-4EF2-93EF-8D5889416CDE"];
  v7 = [v5 initWithSetIdentifier:@"Photos.PetRelationship" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_PeopleSuggesterContactPrior
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_PeopleSuggesterContactPrior];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F156A4A4-16E3-42A5-A0D1-F5AE4DFC5331"];
  v7 = [v5 initWithSetIdentifier:@"PeopleSuggester.ContactPrior" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_MontaraSharedPreferences
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_MontaraSharedPreferences];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B04B4E33-A804-4847-B663-B39F53F2721B"];
  v7 = [v5 initWithSetIdentifier:@"Siri.Montara.SharedPreferences" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_Media
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_Media];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E4B169CE-F480-47A0-ABE6-4DAB491C274F"];
  v7 = [v5 initWithSetIdentifier:@"MediaLibrary.Media" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_InstalledApp
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_InstalledApp];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6B1DFDA5-9541-4968-A29C-21C43C2F24A1"];
  v7 = [v5 initWithSetIdentifier:@"App.InstalledApp" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_HomeServiceArea
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_HomeServiceArea];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8B88A30C-DD2E-4E41-B396-40AE9E55FE65"];
  v7 = [v5 initWithSetIdentifier:@"HomeKit.HomeServiceArea" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_Home
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_Home];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"833A9F62-C604-424E-9A09-0767C6796FAB"];
  v7 = [v5 initWithSetIdentifier:@"HomeKit.Home" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_HealthMedication
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_HealthMedication];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9F4D5490-5BB3-46A8-A265-088CC9C8F8A6"];
  v7 = [v5 initWithSetIdentifier:@"Health.Medication" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_FitnessGuest
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_FitnessGuest];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"39776DD9-A42B-4D79-AA64-B284650454F6"];
  v7 = [v5 initWithSetIdentifier:@"Fitness.Guest" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_FindMyDevice
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_FindMyDevice];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"57A14EA7-BA70-45DA-9BFC-F3C92D2EA420"];
  v7 = [v5 initWithSetIdentifier:@"FindMy.Device" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_Contact
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_Contact];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"745FF29D-780C-48FF-BDEA-4B1AFB78612F"];
  v7 = [v5 initWithSetIdentifier:@"Contacts.Contact" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_CalendarEvent
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_CalendarEvent];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4110F1E5-1389-4EA3-B197-AF72BECC7C77"];
  v7 = [v5 initWithSetIdentifier:@"Calendar.Event" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppShortcutPhrase
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppShortcutPhrase];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"312175FB-7684-42B9-8BEF-E387FF9E7C2E"];
  v7 = [v5 initWithSetIdentifier:@"App.Shortcut.Phrase" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppShortcutEntity
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppShortcutEntity];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"08EE978B-4129-48DD-A8EC-DE35871276EC"];
  v7 = [v5 initWithSetIdentifier:@"App.Shortcut.Entity" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppIntentsIndexedEnum
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppIntentsIndexedEnum];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4D8E120F-B415-4A24-9C49-4EF2628D8659"];
  v7 = [v5 initWithSetIdentifier:@"App.Intents.IndexedEnum" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppIntentsIndexedEntity
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppIntentsIndexedEntity];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"19F5F0B4-588B-4E82-A4F8-7A862371992F"];
  v7 = [v5 initWithSetIdentifier:@"App.Intents.IndexedEntity" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppIntentsExtractedEntity
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppIntentsExtractedEntity];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00B46DDF-203E-4DFB-8F90-C0D8FDADB884"];
  v7 = [v5 initWithSetIdentifier:@"App.Intents.ExtractedEntity" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppGlobalMediaShowTitle
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppGlobalMediaShowTitle];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BAF75B38-2E33-47AD-9CA9-0B313DFC186E"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.GlobalMediaShowTitle" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppGlobalMediaPlaylistTitle
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppGlobalMediaPlaylistTitle];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0E25E7CB-44D0-4C4A-95B3-281BA4570001"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.GlobalMediaPlaylistTitle" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppGlobalMediaMusicArtistName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppGlobalMediaMusicArtistName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"ADF6CBBD-8BB6-434F-9850-1A35E60C6B41"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.GlobalMediaMusicArtistName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppGlobalMediaAudiobookTitle
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppGlobalMediaAudiobookTitle];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B54F7718-DD7E-4920-9B93-64D4D9B2B536"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.GlobalMediaAudiobookTitle" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppGlobalMediaAudiobookAuthor
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppGlobalMediaAudiobookAuthor];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FEDDC5F8-0866-4FD2-9410-B0D9AA6CA7D5"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.GlobalMediaAudiobookAuthor" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomWorkoutActivityName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomWorkoutActivityName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"365A5F47-42E6-4854-8309-C6DF23215189"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomWorkoutActivityName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomVoiceCommandName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomVoiceCommandName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2B6976B5-1710-40C5-9EBA-284991364DC7"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomVoiceCommandName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomPhotoTag
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomPhotoTag];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4C893C2E-6546-4F2B-B1F2-64DA7E0A2627"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomPhotoTag" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomPhotoAlbumName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomPhotoAlbumName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D8D7DA0E-1FD2-4944-9CAB-A4D1E844B61E"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomPhotoAlbumName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomPaymentsOrganizationName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomPaymentsOrganizationName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C239781D-3CD1-40AE-B1E7-D34CEF0E31A1"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomPaymentsOrganizationName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomPaymentsAccountNickname
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomPaymentsAccountNickname];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"502DF447-04D1-48FA-8170-65E89C7A76DC"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomPaymentsAccountNickname" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomNotebookItemTitle
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomNotebookItemTitle];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BE90AE00-EF6C-4A49-B83A-1F66AB750F79"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomNotebookItemTitle" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomNotebookItemGroupName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomNotebookItemGroupName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"AFC3F15C-0E4A-4342-BF83-7857BDE1315F"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomNotebookItemGroupName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomMediaShowTitle
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomMediaShowTitle];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6566058D-6CF0-4EF1-B0DB-D3E40775D107"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomMediaShowTitle" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomMediaPlaylistTitle
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomMediaPlaylistTitle];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C4F177E0-6234-4420-8CD2-0EBAA6D4AF50"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomMediaPlaylistTitle" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomMediaMusicArtistName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomMediaMusicArtistName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C76153F0-2C18-4D84-B8DC-A86647E3F7D9"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomMediaMusicArtistName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomMediaAudiobookTitle
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomMediaAudiobookTitle];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B2A08B70-9F0C-4531-B3E8-32F93F81AD3F"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomMediaAudiobookTitle" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomMediaAudiobookAuthorName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomMediaAudiobookAuthorName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6C81A729-C6AD-4B8A-8963-F86CEDE299CE"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomMediaAudiobookAuthorName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomContactName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomContactName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DE45D7CE-E9E5-4791-8FAD-CA21FE471978"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomContactName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomContactGroupName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomContactGroupName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5CBCE078-779F-47CB-957B-DCE9101FA584"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomContactGroupName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomCarProfileName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomCarProfileName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"40C3946D-FC0E-4B0C-8B13-A68BB938A00C"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomCarProfileName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCustomCarName
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCustomCarName];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"49BBB10D-0021-4E13-8FB5-362C907D95D4"];
  v7 = [v5 initWithSetIdentifier:@"App.IntentVocabulary.CustomCarName" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

+ (id)configurationForSet_AppCuratedEntity
{
  v3 = objc_opt_new();
  v4 = [a1 syncPolicyForSet_AppCuratedEntity];
  v5 = objc_alloc(MEMORY[0x1E6993A70]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6DBC8923-FBE3-4F75-BF6C-19B7E55F572B"];
  v7 = [v5 initWithSetIdentifier:@"App.Intents.CuratedEntity" setUUID:v6 resourceDomain:0 configuredDescriptors:v3 syncPolicy:v4];

  return v7;
}

@end