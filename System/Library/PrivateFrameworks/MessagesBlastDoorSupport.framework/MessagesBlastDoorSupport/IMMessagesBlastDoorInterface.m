@interface IMMessagesBlastDoorInterface
- (IMMessagesBlastDoorInterface)init;
- (IMMessagesBlastDoorInterface)initWithBlastDoorInstanceType:(id)a3;
- (id)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 context:(id)a5 error:(id *)a6;
- (id)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 error:(id *)a5;
- (id)defuseChatBotCSS:(id)a3 error:(id *)a4;
- (id)defuseLiteRelayTextMessage:(id)a3 error:(id *)a4;
- (id)defuseLiteTextMessage:(id)a3 error:(id *)a4;
- (id)defuseNicknameCommand:(id)a3 error:(id *)a4;
- (id)defuseRelayGroupMutationPayload:(id)a3 error:(id *)a4;
- (id)defuseRelayReachabilityRequestPayload:(id)a3 error:(id *)a4;
- (id)defuseRelayReachabilityResponsePayload:(id)a3 error:(id *)a4;
- (id)defuseSMSDictionary:(id)a3 error:(id *)a4;
- (id)defuseSatelliteSMSTextMessageDictionary:(id)a3 error:(id *)a4;
- (id)defuseTopLevelDictionary:(id)a3 context:(id)a4 error:(id *)a5;
- (id)defuseTopLevelDictionary:(id)a3 error:(id *)a4;
- (id)generateImagePreviewForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6;
- (id)generatePreviewforAttachmentWithfileURL:(id)a3 error:(id *)a4;
- (void)decontaminateTopLevelDictionary:(id)a3 resultHandler:(id)a4;
- (void)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 resultHandler:(id)a5;
- (void)defuseCollaborationClearNoticePayload:(id)a3 resultHandler:(id)a4;
- (void)defuseCollaborationNoticeActionDictionary:(id)a3 resultHandler:(id)a4;
- (void)defuseCollaborationNoticePayload:(id)a3 resultHandler:(id)a4;
- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 resultHandler:(id)a6;
- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 avatarRecipeDataTag:(id)a9 processImageFields:(BOOL)a10 resultHandler:(id)a11;
- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 processImageFields:(BOOL)a9 resultHandler:(id)a10;
- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 resultHandler:(id)a9;
- (void)defuseSMSDictionary:(id)a3 resultHandler:(id)a4;
- (void)defuseTopLevelDictionary:(id)a3 resultHandler:(id)a4;
- (void)defuseTranscriptBackground:(id)a3 resultHandler:(id)a4;
- (void)defuseTranscriptBackgroundCommand:(id)a3 resultHandler:(id)a4;
- (void)generateMetadataforAttachmentWithfileURL:(id)a3 resultHandler:(id)a4;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 frameInterval:(int)a7 resultHandler:(id)a8;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7;
- (void)generatePreviewForEmojiImageWithFileURL:(id)a3 frameIndex:(int64_t)a4 maxPixelDimension:(double)a5 resultHandler:(id)a6;
- (void)generatePreviewforAnimatedImageWithfileURL:(id)a3 maxPixelDimension:(float)a4 index:(int64_t)a5 maxCount:(int64_t)a6 resultHandler:(id)a7;
- (void)generatePreviewforAttachmentWithfileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 resultHandler:(id)a6;
- (void)generatePreviewforAttachmentWithfileURL:(id)a3 resultHandler:(id)a4;
- (void)generatePreviewforAudioMessageWithfileURL:(id)a3 resultHandler:(id)a4;
- (void)generateWorkoutPreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 resultHandler:(id)a6;
- (void)getMetadataForEmojiImageWithFileURL:(id)a3 maxStrikeCount:(int64_t)a4 resultHandler:(id)a5;
- (void)getMetadataforAnimatedImageWithfileURL:(id)a3 maxCount:(int64_t)a4 resultHandler:(id)a5;
@end

@implementation IMMessagesBlastDoorInterface

- (IMMessagesBlastDoorInterface)init
{
  v9 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = IMMessagesBlastDoorInterface;
  v2 = [(IMMessagesBlastDoorInterface *)&v8 init];
  if (v2)
  {
    v3 = [IMMessagesBlastDoorInterfaceInternal alloc];
    v4 = [(IMMessagesBlastDoorInterfaceInternal *)v3 initWithBlastDoorInstanceType:*MEMORY[0x277CF30C0]];
    interface = v2->_interface;
    v2->_interface = v4;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (IMMessagesBlastDoorInterface)initWithBlastDoorInstanceType:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IMMessagesBlastDoorInterface;
  v5 = [(IMMessagesBlastDoorInterface *)&v10 init];
  if (v5)
  {
    v6 = [[IMMessagesBlastDoorInterfaceInternal alloc] initWithBlastDoorInstanceType:v4];
    interface = v5->_interface;
    v5->_interface = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)defuseTopLevelDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 defuseTopLevelDictionary:v6 error:a4];

  return v8;
}

- (id)defuseTopLevelDictionary:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(IMMessagesBlastDoorInterface *)self interface];
  v11 = [v10 defuseTopLevelDictionary:v9 context:v8 error:a5];

  return v11;
}

- (void)defuseTopLevelDictionary:(id)a3 resultHandler:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__IMMessagesBlastDoorInterface_defuseTopLevelDictionary_resultHandler___block_invoke;
  v11[3] = &unk_2798C3CB0;
  v12 = v6;
  v9 = v6;
  [v8 defuseTopLevelDictionary:v7 resultHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)decontaminateTopLevelDictionary:(id)a3 resultHandler:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__IMMessagesBlastDoorInterface_decontaminateTopLevelDictionary_resultHandler___block_invoke;
  v11[3] = &unk_2798C3CB0;
  v12 = v6;
  v9 = v6;
  [v8 decontaminateTopLevelDictionary:v7 resultHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)defuseSMSDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 defuseSMSDictionary:v6 error:a4];

  return v8;
}

- (void)defuseSMSDictionary:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  [v8 defuseSMSDictionary:v7 resultHandler:v6];
}

- (id)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(IMMessagesBlastDoorInterface *)self interface];
  v11 = [v10 defuseBalloonPluginPayload:v9 withIdentifier:v8 error:a5];

  return v11;
}

- (id)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 context:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [(IMMessagesBlastDoorInterface *)self interface];
  v12 = [v11 defuseBalloonPluginPayload:v10 withIdentifier:v9 error:a6];

  return v12;
}

- (void)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IMMessagesBlastDoorInterface *)self interface];
  [v11 defuseBalloonPluginPayload:v10 withIdentifier:v9 resultHandler:v8];
}

- (id)generatePreviewforAttachmentWithfileURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 generatePreviewforAttachmentWithfileURL:v6 error:a4];

  return v8;
}

- (void)generatePreviewforAttachmentWithfileURL:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  [v8 generatePreviewforAttachmentWithfileURL:v7 resultHandler:v6];
}

- (id)generateImagePreviewForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(IMMessagesBlastDoorInterface *)self interface];
  *&v12 = a4;
  *&v13 = a5;
  v14 = [v11 generateImagePreviewForFileURL:v10 maxPixelDimension:a6 scale:v12 error:v13];

  return v14;
}

- (void)generatePreviewforAttachmentWithfileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 resultHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v14 = [(IMMessagesBlastDoorInterface *)self interface];
  *&v12 = a4;
  *&v13 = a5;
  [v14 generatePreviewforAttachmentWithfileURL:v11 maxPixelDimension:v10 scale:v12 resultHandler:v13];
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7
{
  height = a5.height;
  width = a5.width;
  v13 = a7;
  v14 = a3;
  v17 = [(IMMessagesBlastDoorInterface *)self interface];
  *&v15 = a4;
  *&v16 = a6;
  [v17 generateMoviePreviewForAttachmentWithFileURL:v14 maxPixelDimension:v13 minThumbnailPxSize:v15 scale:width resultHandler:{height, v16}];
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 frameInterval:(int)a7 resultHandler:(id)a8
{
  height = a5.height;
  width = a5.width;
  v15 = a8;
  v16 = a3;
  v19 = [(IMMessagesBlastDoorInterface *)self interface];
  *&v17 = a4;
  *&v18 = a6;
  [v19 generateMoviePreviewForAttachmentWithFileURL:v16 maxPixelDimension:a7 minThumbnailPxSize:v15 scale:v17 frameInterval:width resultHandler:{height, v18}];
}

- (void)generateWorkoutPreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 resultHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v14 = [(IMMessagesBlastDoorInterface *)self interface];
  *&v12 = a4;
  *&v13 = a5;
  [v14 generateWorkoutPreviewForAttachmentWithFileURL:v11 maxPixelDimension:v10 scale:v12 resultHandler:v13];
}

- (void)generatePreviewforAudioMessageWithfileURL:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  [v8 generatePreviewforAudioMessageWithfileURL:v7 resultHandler:v6];
}

- (id)defuseNicknameCommand:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 defuseNicknameCommand:v6 error:a4];

  return v8;
}

- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 resultHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(IMMessagesBlastDoorInterface *)self interface];
  [v14 defuseNicknameDictionary:v13 withKey:v12 recordTag:v11 resultHandler:v10];
}

- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 resultHandler:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [(IMMessagesBlastDoorInterface *)self interface];
  [v23 defuseNicknameDictionary:v22 withKey:v21 recordTag:v20 wallpaperDataTag:v19 wallpaperLowResDataTag:v18 wallpaperMetadataTag:v17 resultHandler:v16];
}

- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 processImageFields:(BOOL)a9 resultHandler:(id)a10
{
  v17 = a10;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v25 = [(IMMessagesBlastDoorInterface *)self interface];
  LOBYTE(v24) = a9;
  [v25 defuseNicknameDictionary:v23 withKey:v22 recordTag:v21 wallpaperDataTag:v20 wallpaperLowResDataTag:v19 wallpaperMetadataTag:v18 processImageFields:v24 resultHandler:v17];
}

- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 avatarRecipeDataTag:(id)a9 processImageFields:(BOOL)a10 resultHandler:(id)a11
{
  v18 = a11;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v27 = [(IMMessagesBlastDoorInterface *)self interface];
  LOBYTE(v26) = a10;
  [v27 defuseNicknameDictionary:v25 withKey:v24 recordTag:v23 wallpaperDataTag:v22 wallpaperLowResDataTag:v21 wallpaperMetadataTag:v20 avatarRecipeDataTag:v19 processImageFields:v26 resultHandler:v18];
}

- (void)defuseTranscriptBackground:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  [v8 defuseTranscriptBackground:v7 resultHandler:v6];
}

- (void)defuseTranscriptBackgroundCommand:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  [v8 defuseTranscriptBackgroundCommand:v7 resultHandler:v6];
}

- (void)generateMetadataforAttachmentWithfileURL:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  [v8 generateMetadataforAttachmentWithfileURL:v7 resultHandler:v6];
}

- (void)getMetadataForEmojiImageWithFileURL:(id)a3 maxStrikeCount:(int64_t)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(IMMessagesBlastDoorInterface *)self interface];
  [v10 getMetadataForEmojiImageWithFileURL:v9 maxStrikeCount:a4 resultHandler:v8];
}

- (void)generatePreviewForEmojiImageWithFileURL:(id)a3 frameIndex:(int64_t)a4 maxPixelDimension:(double)a5 resultHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v13 = [(IMMessagesBlastDoorInterface *)self interface];
  *&v12 = a5;
  [v13 generatePreviewForEmojiImageWithFileURL:v11 frameIndex:a4 maxPixelDimension:v10 resultHandler:v12];
}

- (void)getMetadataforAnimatedImageWithfileURL:(id)a3 maxCount:(int64_t)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(IMMessagesBlastDoorInterface *)self interface];
  [v10 getMetadataforAnimatedImageWithfileURL:v9 maxCount:a4 resultHandler:v8];
}

- (void)generatePreviewforAnimatedImageWithfileURL:(id)a3 maxPixelDimension:(float)a4 index:(int64_t)a5 maxCount:(int64_t)a6 resultHandler:(id)a7
{
  v12 = a7;
  v13 = a3;
  v15 = [(IMMessagesBlastDoorInterface *)self interface];
  *&v14 = a4;
  [v15 generatePreviewforAnimatedImageWithfileURL:v13 maxPixelDimension:a5 index:a6 maxCount:v12 resultHandler:v14];
}

- (void)defuseCollaborationNoticePayload:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  [v8 defuseCollaborationNoticePayload:v7 resultHandler:v6];
}

- (void)defuseCollaborationNoticeActionDictionary:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  [v8 defuseCollaborationNoticeActionDictionary:v7 resultHandler:v6];
}

- (void)defuseCollaborationClearNoticePayload:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMMessagesBlastDoorInterface *)self interface];
  [v8 defuseCollaborationClearNoticePayload:v7 resultHandler:v6];
}

- (id)defuseLiteTextMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 defuseLiteTextMessage:v6 error:a4];

  return v8;
}

- (id)defuseSatelliteSMSTextMessageDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 defuseSatelliteSMSTextMessageDictionary:v6 error:a4];

  return v8;
}

- (id)defuseLiteRelayTextMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 defuseLiteRelayTextMessage:v6 error:a4];

  return v8;
}

- (id)defuseChatBotCSS:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 defuseChatBotCSS:v6 error:a4];

  return v8;
}

- (id)defuseRelayGroupMutationPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 defuseRelayGroupMutationPayloadForData:v6 error:a4];

  return v8;
}

- (id)defuseRelayReachabilityRequestPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 defuseRelayReachabilityRequestPayloadForData:v6 error:a4];

  return v8;
}

- (id)defuseRelayReachabilityResponsePayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [v7 defuseRelayReachabilityResponsePayloadForData:v6 error:a4];

  return v8;
}

@end