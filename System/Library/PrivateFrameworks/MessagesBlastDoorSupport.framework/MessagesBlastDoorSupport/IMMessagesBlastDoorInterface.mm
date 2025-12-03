@interface IMMessagesBlastDoorInterface
- (IMMessagesBlastDoorInterface)init;
- (IMMessagesBlastDoorInterface)initWithBlastDoorInstanceType:(id)type;
- (id)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier context:(id)context error:(id *)error;
- (id)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier error:(id *)error;
- (id)defuseChatBotCSS:(id)s error:(id *)error;
- (id)defuseLiteRelayTextMessage:(id)message error:(id *)error;
- (id)defuseLiteTextMessage:(id)message error:(id *)error;
- (id)defuseNicknameCommand:(id)command error:(id *)error;
- (id)defuseRelayGroupMutationPayload:(id)payload error:(id *)error;
- (id)defuseRelayReachabilityRequestPayload:(id)payload error:(id *)error;
- (id)defuseRelayReachabilityResponsePayload:(id)payload error:(id *)error;
- (id)defuseSMSDictionary:(id)dictionary error:(id *)error;
- (id)defuseSatelliteSMSTextMessageDictionary:(id)dictionary error:(id *)error;
- (id)defuseTopLevelDictionary:(id)dictionary context:(id)context error:(id *)error;
- (id)defuseTopLevelDictionary:(id)dictionary error:(id *)error;
- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error;
- (id)generatePreviewforAttachmentWithfileURL:(id)l error:(id *)error;
- (void)decontaminateTopLevelDictionary:(id)dictionary resultHandler:(id)handler;
- (void)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier resultHandler:(id)handler;
- (void)defuseCollaborationClearNoticePayload:(id)payload resultHandler:(id)handler;
- (void)defuseCollaborationNoticeActionDictionary:(id)dictionary resultHandler:(id)handler;
- (void)defuseCollaborationNoticePayload:(id)payload resultHandler:(id)handler;
- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag resultHandler:(id)handler;
- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag processImageFields:(BOOL)self0 resultHandler:(id)self1;
- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag processImageFields:(BOOL)fields resultHandler:(id)self0;
- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag resultHandler:(id)handler;
- (void)defuseSMSDictionary:(id)dictionary resultHandler:(id)handler;
- (void)defuseTopLevelDictionary:(id)dictionary resultHandler:(id)handler;
- (void)defuseTranscriptBackground:(id)background resultHandler:(id)handler;
- (void)defuseTranscriptBackgroundCommand:(id)command resultHandler:(id)handler;
- (void)generateMetadataforAttachmentWithfileURL:(id)l resultHandler:(id)handler;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale frameInterval:(int)interval resultHandler:(id)handler;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler;
- (void)generatePreviewForEmojiImageWithFileURL:(id)l frameIndex:(int64_t)index maxPixelDimension:(double)dimension resultHandler:(id)handler;
- (void)generatePreviewforAnimatedImageWithfileURL:(id)l maxPixelDimension:(float)dimension index:(int64_t)index maxCount:(int64_t)count resultHandler:(id)handler;
- (void)generatePreviewforAttachmentWithfileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale resultHandler:(id)handler;
- (void)generatePreviewforAttachmentWithfileURL:(id)l resultHandler:(id)handler;
- (void)generatePreviewforAudioMessageWithfileURL:(id)l resultHandler:(id)handler;
- (void)generateWorkoutPreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale resultHandler:(id)handler;
- (void)getMetadataForEmojiImageWithFileURL:(id)l maxStrikeCount:(int64_t)count resultHandler:(id)handler;
- (void)getMetadataforAnimatedImageWithfileURL:(id)l maxCount:(int64_t)count resultHandler:(id)handler;
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

- (IMMessagesBlastDoorInterface)initWithBlastDoorInstanceType:(id)type
{
  v11 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = IMMessagesBlastDoorInterface;
  v5 = [(IMMessagesBlastDoorInterface *)&v10 init];
  if (v5)
  {
    v6 = [[IMMessagesBlastDoorInterfaceInternal alloc] initWithBlastDoorInstanceType:typeCopy];
    interface = v5->_interface;
    v5->_interface = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)defuseTopLevelDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface defuseTopLevelDictionary:dictionaryCopy error:error];

  return v8;
}

- (id)defuseTopLevelDictionary:(id)dictionary context:(id)context error:(id *)error
{
  contextCopy = context;
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v11 = [interface defuseTopLevelDictionary:dictionaryCopy context:contextCopy error:error];

  return v11;
}

- (void)defuseTopLevelDictionary:(id)dictionary resultHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__IMMessagesBlastDoorInterface_defuseTopLevelDictionary_resultHandler___block_invoke;
  v11[3] = &unk_2798C3CB0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  [interface defuseTopLevelDictionary:dictionaryCopy resultHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)decontaminateTopLevelDictionary:(id)dictionary resultHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__IMMessagesBlastDoorInterface_decontaminateTopLevelDictionary_resultHandler___block_invoke;
  v11[3] = &unk_2798C3CB0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  [interface decontaminateTopLevelDictionary:dictionaryCopy resultHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)defuseSMSDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface defuseSMSDictionary:dictionaryCopy error:error];

  return v8;
}

- (void)defuseSMSDictionary:(id)dictionary resultHandler:(id)handler
{
  handlerCopy = handler;
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface defuseSMSDictionary:dictionaryCopy resultHandler:handlerCopy];
}

- (id)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  payloadCopy = payload;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v11 = [interface defuseBalloonPluginPayload:payloadCopy withIdentifier:identifierCopy error:error];

  return v11;
}

- (id)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier context:(id)context error:(id *)error
{
  identifierCopy = identifier;
  payloadCopy = payload;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v12 = [interface defuseBalloonPluginPayload:payloadCopy withIdentifier:identifierCopy error:error];

  return v12;
}

- (void)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier resultHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  payloadCopy = payload;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface defuseBalloonPluginPayload:payloadCopy withIdentifier:identifierCopy resultHandler:handlerCopy];
}

- (id)generatePreviewforAttachmentWithfileURL:(id)l error:(id *)error
{
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface generatePreviewforAttachmentWithfileURL:lCopy error:error];

  return v8;
}

- (void)generatePreviewforAttachmentWithfileURL:(id)l resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface generatePreviewforAttachmentWithfileURL:lCopy resultHandler:handlerCopy];
}

- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error
{
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  *&v12 = dimension;
  *&v13 = scale;
  v14 = [interface generateImagePreviewForFileURL:lCopy maxPixelDimension:error scale:v12 error:v13];

  return v14;
}

- (void)generatePreviewforAttachmentWithfileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  *&v12 = dimension;
  *&v13 = scale;
  [interface generatePreviewforAttachmentWithfileURL:lCopy maxPixelDimension:handlerCopy scale:v12 resultHandler:v13];
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  *&v15 = dimension;
  *&v16 = scale;
  [interface generateMoviePreviewForAttachmentWithFileURL:lCopy maxPixelDimension:handlerCopy minThumbnailPxSize:v15 scale:width resultHandler:{height, v16}];
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale frameInterval:(int)interval resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  *&v17 = dimension;
  *&v18 = scale;
  [interface generateMoviePreviewForAttachmentWithFileURL:lCopy maxPixelDimension:interval minThumbnailPxSize:handlerCopy scale:v17 frameInterval:width resultHandler:{height, v18}];
}

- (void)generateWorkoutPreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  *&v12 = dimension;
  *&v13 = scale;
  [interface generateWorkoutPreviewForAttachmentWithFileURL:lCopy maxPixelDimension:handlerCopy scale:v12 resultHandler:v13];
}

- (void)generatePreviewforAudioMessageWithfileURL:(id)l resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface generatePreviewforAudioMessageWithfileURL:lCopy resultHandler:handlerCopy];
}

- (id)defuseNicknameCommand:(id)command error:(id *)error
{
  commandCopy = command;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface defuseNicknameCommand:commandCopy error:error];

  return v8;
}

- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag resultHandler:(id)handler
{
  handlerCopy = handler;
  tagCopy = tag;
  keyCopy = key;
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface defuseNicknameDictionary:dictionaryCopy withKey:keyCopy recordTag:tagCopy resultHandler:handlerCopy];
}

- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag resultHandler:(id)handler
{
  handlerCopy = handler;
  metadataTagCopy = metadataTag;
  resDataTagCopy = resDataTag;
  dataTagCopy = dataTag;
  tagCopy = tag;
  keyCopy = key;
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface defuseNicknameDictionary:dictionaryCopy withKey:keyCopy recordTag:tagCopy wallpaperDataTag:dataTagCopy wallpaperLowResDataTag:resDataTagCopy wallpaperMetadataTag:metadataTagCopy resultHandler:handlerCopy];
}

- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag processImageFields:(BOOL)fields resultHandler:(id)self0
{
  handlerCopy = handler;
  metadataTagCopy = metadataTag;
  resDataTagCopy = resDataTag;
  dataTagCopy = dataTag;
  tagCopy = tag;
  keyCopy = key;
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  LOBYTE(v24) = fields;
  [interface defuseNicknameDictionary:dictionaryCopy withKey:keyCopy recordTag:tagCopy wallpaperDataTag:dataTagCopy wallpaperLowResDataTag:resDataTagCopy wallpaperMetadataTag:metadataTagCopy processImageFields:v24 resultHandler:handlerCopy];
}

- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag processImageFields:(BOOL)self0 resultHandler:(id)self1
{
  handlerCopy = handler;
  recipeDataTagCopy = recipeDataTag;
  metadataTagCopy = metadataTag;
  resDataTagCopy = resDataTag;
  dataTagCopy = dataTag;
  tagCopy = tag;
  keyCopy = key;
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  LOBYTE(v26) = fields;
  [interface defuseNicknameDictionary:dictionaryCopy withKey:keyCopy recordTag:tagCopy wallpaperDataTag:dataTagCopy wallpaperLowResDataTag:resDataTagCopy wallpaperMetadataTag:metadataTagCopy avatarRecipeDataTag:recipeDataTagCopy processImageFields:v26 resultHandler:handlerCopy];
}

- (void)defuseTranscriptBackground:(id)background resultHandler:(id)handler
{
  handlerCopy = handler;
  backgroundCopy = background;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface defuseTranscriptBackground:backgroundCopy resultHandler:handlerCopy];
}

- (void)defuseTranscriptBackgroundCommand:(id)command resultHandler:(id)handler
{
  handlerCopy = handler;
  commandCopy = command;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface defuseTranscriptBackgroundCommand:commandCopy resultHandler:handlerCopy];
}

- (void)generateMetadataforAttachmentWithfileURL:(id)l resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface generateMetadataforAttachmentWithfileURL:lCopy resultHandler:handlerCopy];
}

- (void)getMetadataForEmojiImageWithFileURL:(id)l maxStrikeCount:(int64_t)count resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface getMetadataForEmojiImageWithFileURL:lCopy maxStrikeCount:count resultHandler:handlerCopy];
}

- (void)generatePreviewForEmojiImageWithFileURL:(id)l frameIndex:(int64_t)index maxPixelDimension:(double)dimension resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  *&v12 = dimension;
  [interface generatePreviewForEmojiImageWithFileURL:lCopy frameIndex:index maxPixelDimension:handlerCopy resultHandler:v12];
}

- (void)getMetadataforAnimatedImageWithfileURL:(id)l maxCount:(int64_t)count resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface getMetadataforAnimatedImageWithfileURL:lCopy maxCount:count resultHandler:handlerCopy];
}

- (void)generatePreviewforAnimatedImageWithfileURL:(id)l maxPixelDimension:(float)dimension index:(int64_t)index maxCount:(int64_t)count resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  *&v14 = dimension;
  [interface generatePreviewforAnimatedImageWithfileURL:lCopy maxPixelDimension:index index:count maxCount:handlerCopy resultHandler:v14];
}

- (void)defuseCollaborationNoticePayload:(id)payload resultHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface defuseCollaborationNoticePayload:payloadCopy resultHandler:handlerCopy];
}

- (void)defuseCollaborationNoticeActionDictionary:(id)dictionary resultHandler:(id)handler
{
  handlerCopy = handler;
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface defuseCollaborationNoticeActionDictionary:dictionaryCopy resultHandler:handlerCopy];
}

- (void)defuseCollaborationClearNoticePayload:(id)payload resultHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  [interface defuseCollaborationClearNoticePayload:payloadCopy resultHandler:handlerCopy];
}

- (id)defuseLiteTextMessage:(id)message error:(id *)error
{
  messageCopy = message;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface defuseLiteTextMessage:messageCopy error:error];

  return v8;
}

- (id)defuseSatelliteSMSTextMessageDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface defuseSatelliteSMSTextMessageDictionary:dictionaryCopy error:error];

  return v8;
}

- (id)defuseLiteRelayTextMessage:(id)message error:(id *)error
{
  messageCopy = message;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface defuseLiteRelayTextMessage:messageCopy error:error];

  return v8;
}

- (id)defuseChatBotCSS:(id)s error:(id *)error
{
  sCopy = s;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface defuseChatBotCSS:sCopy error:error];

  return v8;
}

- (id)defuseRelayGroupMutationPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface defuseRelayGroupMutationPayloadForData:payloadCopy error:error];

  return v8;
}

- (id)defuseRelayReachabilityRequestPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface defuseRelayReachabilityRequestPayloadForData:payloadCopy error:error];

  return v8;
}

- (id)defuseRelayReachabilityResponsePayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  interface = [(IMMessagesBlastDoorInterface *)self interface];
  v8 = [interface defuseRelayReachabilityResponsePayloadForData:payloadCopy error:error];

  return v8;
}

@end