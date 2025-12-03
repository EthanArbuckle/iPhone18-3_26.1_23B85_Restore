@interface IMMessagesBlastDoorInterfaceInternal
+ (BOOL)supportsFeature:(id)feature;
- (IMMessagesBlastDoorInterfaceInternal)init;
- (IMMessagesBlastDoorInterfaceInternal)initWithBlastDoorInstanceType:(id)type;
- (id)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier context:(id)context error:(id *)error;
- (id)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier error:(id *)error;
- (id)defuseChatBotCSS:(id)s error:(id *)error;
- (id)defuseLiteRelayTextMessage:(id)message error:(id *)error;
- (id)defuseLiteTextMessage:(id)message error:(id *)error;
- (id)defuseNicknameCommand:(id)command error:(id *)error;
- (id)defuseRelayGroupMutationPayloadForData:(id)data error:(id *)error;
- (id)defuseRelayReachabilityRequestPayloadForData:(id)data error:(id *)error;
- (id)defuseRelayReachabilityResponsePayloadForData:(id)data error:(id *)error;
- (id)defuseTopLevelDictionary:(id)dictionary context:(id)context error:(id *)error;
- (id)defuseTopLevelDictionary:(id)dictionary error:(id *)error;
- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error;
- (id)generatePreviewforAttachmentWithfileURL:(id)l error:(id *)error;
- (void)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier resultHandler:(id)handler;
- (void)defuseCollaborationClearNoticePayload:(id)payload resultHandler:(id)handler;
- (void)defuseCollaborationNoticePayload:(id)payload resultHandler:(id)handler;
- (void)defuseData:(id)data forPreviewType:(unsigned __int8)type resultHandler:(id)handler;
- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag resultHandler:(id)handler;
- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag processImageFields:(BOOL)self0 resultHandler:(id)aBlock;
- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag processImageFields:(BOOL)fields resultHandler:(id)aBlock;
- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag resultHandler:(id)aBlock;
- (void)generateMovieFramesForAttachmentWithFileURL:(id)l targetPixelWidth:(int64_t)width targetPixelHeight:(int64_t)height frameLimit:(int64_t)limit uniformSampling:(BOOL)sampling framesPerSync:(int64_t)sync appliesPreferredTrackTransform:(BOOL)transform resultHandler:(id)self0;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale frameInterval:(int64_t)interval resultHandler:(id)handler;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler;
- (void)generatePreviewForEmojiImageWithFileURL:(id)l frameIndex:(int64_t)index maxPixelDimension:(float)dimension resultHandler:(id)handler;
- (void)generatePreviewForMultiFrameImageWithFileURL:(id)l destinationFileURL:(id)rL maxPixelDimension:(float)dimension scale:(float)scale maxFrameCount:(int64_t)count isSticker:(BOOL)sticker resultHandler:(id)handler;
- (void)generatePreviewforAnimatedImageWithfileURL:(id)l maxPixelDimension:(float)dimension index:(int64_t)index maxCount:(int64_t)count resultHandler:(id)handler;
- (void)generatePreviewforAttachmentWithfileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale resultHandler:(id)handler;
- (void)generatePreviewforAttachmentWithfileURL:(id)l resultHandler:(id)handler;
- (void)generatePreviewforAudioMessageWithfileURL:(id)l resultHandler:(id)handler;
- (void)generateWorkoutPreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale resultHandler:(id)handler;
- (void)getMetadataForEmojiImageWithFileURL:(id)l maxStrikeCount:(int64_t)count resultHandler:(id)handler;
- (void)getMetadataforAnimatedImageWithfileURL:(id)l maxCount:(int64_t)count resultHandler:(id)handler;
@end

@implementation IMMessagesBlastDoorInterfaceInternal

- (IMMessagesBlastDoorInterfaceInternal)initWithBlastDoorInstanceType:(id)type
{
  typeCopy = type;
  v4 = sub_258CF634C(typeCopy);

  return v4;
}

- (id)defuseTopLevelDictionary:(id)dictionary error:(id *)error
{
  v5 = sub_258D17864();
  selfCopy = self;
  v7 = sub_258CD65AC(v5, 0);

  return v7;
}

- (id)defuseTopLevelDictionary:(id)dictionary context:(id)context error:(id *)error
{
  v7 = sub_258D17864();
  contextCopy = context;
  selfCopy = self;
  v10 = sub_258CD65AC(v7, context);

  return v10;
}

- (id)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier error:(id *)error
{
  payloadCopy = payload;
  identifierCopy = identifier;
  selfCopy = self;
  v10 = sub_258D16AF4();
  v12 = v11;

  v13 = sub_258D178B4();
  v15 = v14;

  v16 = sub_258CDF304(v10, v12, v13, v15, 0);

  sub_258CD7210(v10, v12);

  return v16;
}

- (id)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier context:(id)context error:(id *)error
{
  payloadCopy = payload;
  identifierCopy = identifier;
  contextCopy = context;
  selfCopy = self;
  v13 = sub_258D16AF4();
  v15 = v14;

  v16 = sub_258D178B4();
  v18 = v17;

  v19 = sub_258CDF304(v13, v15, v16, v18, context);

  sub_258CD7210(v13, v15);

  return v19;
}

- (void)defuseBalloonPluginPayload:(id)payload withIdentifier:(id)identifier resultHandler:(id)handler
{
  v8 = _Block_copy(handler);
  payloadCopy = payload;
  identifierCopy = identifier;
  selfCopy = self;
  v11 = sub_258D16AF4();
  v13 = v12;

  v14 = sub_258D178B4();
  v16 = v15;

  _Block_copy(v8);
  sub_258CF9C70(v11, v13, v14, v16, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);

  sub_258CD7210(v11, v13);
}

- (void)defuseData:(id)data forPreviewType:(unsigned __int8)type resultHandler:(id)handler
{
  v8 = _Block_copy(handler);
  dataCopy = data;
  selfCopy = self;
  v10 = sub_258D16AF4();
  v12 = v11;

  _Block_copy(v8);
  sub_258CFA028(v10, v12, type, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_258CD7210(v10, v12);
}

+ (BOOL)supportsFeature:(id)feature
{
  v3 = sub_258D178B4();
  v5 = sub_258CFA520(v3, v4);

  return v5 & 1;
}

- (void)generatePreviewforAttachmentWithfileURL:(id)l resultHandler:(id)handler
{
  v6 = sub_258D16A84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  sub_258D16A54();
  _Block_copy(v11);
  selfCopy = self;
  sub_258CFC124(v10, 1, selfCopy, v11, 0.0, 0.0);
  _Block_release(v11);

  _Block_release(v11);
  (*(v7 + 8))(v10, v6);
}

- (id)generatePreviewforAttachmentWithfileURL:(id)l error:(id *)error
{
  v5 = sub_258D16A84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D16A54();
  selfCopy = self;
  v11 = sub_258CE0AD4(v9);
  (*(v6 + 8))(v9, v5);

  return v11;
}

- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error
{
  v9 = sub_258D16A84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D16A54();
  selfCopy = self;
  v15 = sub_258CE32AC(v13, dimension, scale);
  (*(v10 + 8))(v13, v9);

  return v15;
}

- (void)generatePreviewforAttachmentWithfileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale resultHandler:(id)handler
{
  v10 = sub_258D16A84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_258D16A54();
  _Block_copy(v15);
  selfCopy = self;
  sub_258CFC124(v14, 0, selfCopy, v15, dimension, scale);
  _Block_release(v15);

  _Block_release(v15);
  (*(v11 + 8))(v14, v10);
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler
{
  v10 = sub_258D16A84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_258D16A54();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  selfCopy = self;
  sub_258CE8EB8(dimension, v14, sub_258D02304, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale frameInterval:(int64_t)interval resultHandler:(id)handler
{
  v12 = sub_258D16A84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(handler);
  sub_258D16A54();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  selfCopy = self;
  sub_258CE9670(dimension, v16, interval, sub_258D022FC, v18);

  (*(v13 + 8))(v16, v12);
}

- (void)generateMovieFramesForAttachmentWithFileURL:(id)l targetPixelWidth:(int64_t)width targetPixelHeight:(int64_t)height frameLimit:(int64_t)limit uniformSampling:(BOOL)sampling framesPerSync:(int64_t)sync appliesPreferredTrackTransform:(BOOL)transform resultHandler:(id)self0
{
  syncCopy = sync;
  HIDWORD(v22) = sampling;
  v14 = sub_258D16A84();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(handler);
  sub_258D16A54();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  selfCopy = self;
  sub_258CE9CE4(v18, width, height, limit, SHIDWORD(v22), syncCopy, transform, sub_258D019CC, v20);

  (*(v15 + 8))(v18, v14);
}

- (void)generateWorkoutPreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale resultHandler:(id)handler
{
  v9 = sub_258D16A84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(handler);
  sub_258D16A54();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  selfCopy = self;
  sub_258CEA55C(dimension, v13, sub_258D02304, v15);

  (*(v10 + 8))(v13, v9);
}

- (void)generatePreviewforAudioMessageWithfileURL:(id)l resultHandler:(id)handler
{
  v6 = sub_258D16FC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258D16A84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(handler);
  sub_258D16A54();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  selfCopy = self;
  sub_258D16FB4();
  sub_258CE866C(v10, v15, sub_258D02304, v17);

  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

- (id)defuseNicknameCommand:(id)command error:(id *)error
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  v10 = sub_258D16F74();
  v23[0] = *(v10 - 8);
  v11 = *(v23[0] + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  commandCopy = command;
  selfCopy = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&selfCopy->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
  v20 = sub_258D17224();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_258D021FC(&qword_27F9808F0, MEMORY[0x277CF1FF0]);
  sub_258D16D24();
  sub_258CD7264(v9, &qword_27F980810, &unk_258D190E0);
  v21 = sub_258D16F64();

  sub_258CD7210(v16, v18);
  (*(v23[0] + 8))(v13, v10);

  return v21;
}

- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag resultHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_258D17864();
  keyCopy = key;
  tagCopy = tag;
  selfCopy = self;
  v14 = sub_258D16AF4();
  v16 = v15;

  v17 = sub_258D178B4();
  v19 = v18;

  _Block_copy(v9);
  sub_258CFECD0(v10, v14, v16, v17, v19, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);

  sub_258CD7210(v14, v16);
}

- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag resultHandler:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v38 = sub_258D17864();
  keyCopy = key;
  tagCopy = tag;
  selfCopy = self;
  dataTagCopy = dataTag;
  resDataTagCopy = resDataTag;
  metadataTagCopy = metadataTag;
  v36 = sub_258D16AF4();
  v35 = v21;

  v31 = sub_258D178B4();
  v34 = v22;

  if (dataTagCopy)
  {
    v23 = sub_258D16AF4();
    v32 = v24;
    v33 = v23;

    if (resDataTagCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v30 = 0;
    v26 = 0xF000000000000000;
    if (metadataTagCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v32 = 0xF000000000000000;
  v33 = 0;
  if (!resDataTagCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v30 = sub_258D16AF4();
  v26 = v25;

  if (metadataTagCopy)
  {
LABEL_4:
    v27 = sub_258D16AF4();
    v29 = v28;

    goto LABEL_8;
  }

LABEL_7:
  v27 = 0;
  v29 = 0xF000000000000000;
LABEL_8:
  _Block_copy(v15);
  sub_258CFF618(v38, v36, v35, v31, v34, v33, v32, v30, v26, v27, v29, selfCopy, v15, &unk_286A0FDA0, &unk_286A0FDC8, sub_258D02304, sub_258D02320);
  _Block_release(v15);
  _Block_release(v15);
  sub_258D0199C(v27, v29);
  sub_258D0199C(v30, v26);
  sub_258D0199C(v33, v32);

  sub_258CD7210(v36, v35);
}

- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag processImageFields:(BOOL)fields resultHandler:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  v39 = sub_258D17864();
  keyCopy = key;
  tagCopy = tag;
  selfCopy = self;
  dataTagCopy = dataTag;
  resDataTagCopy = resDataTag;
  metadataTagCopy = metadataTag;
  v37 = sub_258D16AF4();
  v36 = v22;

  v32 = sub_258D178B4();
  v35 = v23;

  if (dataTagCopy)
  {
    v24 = sub_258D16AF4();
    v33 = v25;
    v34 = v24;

    if (resDataTagCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v31 = 0;
    v27 = 0xF000000000000000;
    if (metadataTagCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v33 = 0xF000000000000000;
  v34 = 0;
  if (!resDataTagCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v31 = sub_258D16AF4();
  v27 = v26;

  if (metadataTagCopy)
  {
LABEL_4:
    v28 = sub_258D16AF4();
    v30 = v29;

    goto LABEL_8;
  }

LABEL_7:
  v28 = 0;
  v30 = 0xF000000000000000;
LABEL_8:
  _Block_copy(v16);
  sub_258CFF618(v39, v37, v36, v32, v35, v34, v33, v31, v27, v28, v30, selfCopy, v16, &unk_286A0FD50, &unk_286A0FD78, sub_258D02304, sub_258D02320);
  _Block_release(v16);
  _Block_release(v16);
  sub_258D0199C(v28, v30);
  sub_258D0199C(v31, v27);
  sub_258D0199C(v34, v33);

  sub_258CD7210(v37, v36);
}

- (void)defuseNicknameDictionary:(id)dictionary withKey:(id)key recordTag:(id)tag wallpaperDataTag:(id)dataTag wallpaperLowResDataTag:(id)resDataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag processImageFields:(BOOL)self0 resultHandler:(id)aBlock
{
  v36 = _Block_copy(aBlock);
  v44 = sub_258D17864();
  keyCopy = key;
  tagCopy = tag;
  selfCopy = self;
  dataTagCopy = dataTag;
  resDataTagCopy = resDataTag;
  metadataTagCopy = metadataTag;
  recipeDataTagCopy = recipeDataTag;
  v42 = sub_258D16AF4();
  v41 = v23;

  v37 = sub_258D178B4();
  v40 = v24;

  if (dataTagCopy)
  {
    v25 = sub_258D16AF4();
    v38 = v26;
    v39 = v25;

    if (resDataTagCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = 0xF000000000000000;
    v39 = 0;
    if (resDataTagCopy)
    {
LABEL_3:
      v35 = sub_258D16AF4();
      v28 = v27;

      if (metadataTagCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      v29 = 0;
      v31 = 0xF000000000000000;
      if (recipeDataTagCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v35 = 0;
  v28 = 0xF000000000000000;
  if (!metadataTagCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  v29 = sub_258D16AF4();
  v31 = v30;

  if (recipeDataTagCopy)
  {
LABEL_5:
    v32 = sub_258D16AF4();
    v34 = v33;

    goto LABEL_10;
  }

LABEL_9:
  v32 = 0;
  v34 = 0xF000000000000000;
LABEL_10:
  _Block_copy(v36);
  sub_258CFFFA4(v44, v42, v41, v37, v40, v39, v38, v35, v28, v29, v31, v32, v34, fields, selfCopy, v36);
  _Block_release(v36);
  _Block_release(v36);
  sub_258D0199C(v32, v34);
  sub_258D0199C(v29, v31);
  sub_258D0199C(v35, v28);
  sub_258D0199C(v39, v38);

  sub_258CD7210(v42, v41);
}

- (void)getMetadataForEmojiImageWithFileURL:(id)l maxStrikeCount:(int64_t)count resultHandler:(id)handler
{
  v7 = sub_258D17324();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258D16A84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(handler);
  sub_258D16A54();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  selfCopy = self;
  sub_258D17314();
  sub_258CE8930(v11, v16, sub_258D02304, v18);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)generatePreviewForEmojiImageWithFileURL:(id)l frameIndex:(int64_t)index maxPixelDimension:(float)dimension resultHandler:(id)handler
{
  v10 = sub_258D16A84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_258D16A54();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  selfCopy = self;
  sub_258CEF4AC(v14, dimension, index, sub_258D02304, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)generatePreviewForMultiFrameImageWithFileURL:(id)l destinationFileURL:(id)rL maxPixelDimension:(float)dimension scale:(float)scale maxFrameCount:(int64_t)count isSticker:(BOOL)sticker resultHandler:(id)handler
{
  stickerCopy = sticker;
  v15 = sub_258D16A84();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  v23 = _Block_copy(handler);
  sub_258D16A54();
  sub_258D16A54();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  selfCopy = self;
  sub_258CEF760(v22, v20, count, stickerCopy, sub_258CFBAF8, v24, dimension, scale);

  v26 = *(v16 + 8);
  v26(v20, v15);
  v26(v22, v15);
}

- (void)getMetadataforAnimatedImageWithfileURL:(id)l maxCount:(int64_t)count resultHandler:(id)handler
{
  v7 = sub_258D173F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258D16A84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(handler);
  sub_258D16A54();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  selfCopy = self;
  sub_258D173E4();
  sub_258CE8BF4(v11, v16, sub_258D02304, v18);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)generatePreviewforAnimatedImageWithfileURL:(id)l maxPixelDimension:(float)dimension index:(int64_t)index maxCount:(int64_t)count resultHandler:(id)handler
{
  v12 = sub_258D16A84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(handler);
  sub_258D16A54();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  selfCopy = self;
  sub_258CF1B58(v16, dimension, index, count, sub_258D02304, v18);

  (*(v13 + 8))(v16, v12);
}

- (void)defuseCollaborationNoticePayload:(id)payload resultHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(handler);
  payloadCopy = payload;
  selfCopy = self;
  v14 = sub_258D16AF4();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = *(&selfCopy->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
  sub_258D17364();
  v19 = sub_258D17224();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_258D02304;
  *(v20 + 24) = v17;
  sub_258D021FC(&qword_27F980920, MEMORY[0x277CF23C8]);

  sub_258D16D14();

  sub_258CD7210(v14, v16);
  sub_258CD7264(v10, &qword_27F980810, &unk_258D190E0);
}

- (void)defuseCollaborationClearNoticePayload:(id)payload resultHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(handler);
  payloadCopy = payload;
  selfCopy = self;
  v14 = sub_258D16AF4();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = *(&selfCopy->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
  sub_258D17494();
  v19 = sub_258D17224();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_258D02304;
  *(v20 + 24) = v17;
  sub_258D021FC(&qword_27F980930, MEMORY[0x277CF25C0]);

  sub_258D16D14();

  sub_258CD7210(v14, v16);
  sub_258CD7264(v10, &qword_27F980810, &unk_258D190E0);
}

- (id)defuseLiteTextMessage:(id)message error:(id *)error
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  v10 = sub_258D171C4();
  v23[0] = *(v10 - 8);
  v11 = *(v23[0] + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  messageCopy = message;
  selfCopy = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&selfCopy->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
  v20 = sub_258D17224();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_258D021FC(&qword_27F980940, MEMORY[0x277CF2160]);
  sub_258D16D24();
  sub_258CD7264(v9, &qword_27F980810, &unk_258D190E0);
  v21 = sub_258D17184();

  sub_258CD7210(v16, v18);
  (*(v23[0] + 8))(v13, v10);

  return v21;
}

- (id)defuseLiteRelayTextMessage:(id)message error:(id *)error
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  v10 = sub_258D173B4();
  v23[0] = *(v10 - 8);
  v11 = *(v23[0] + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  messageCopy = message;
  selfCopy = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&selfCopy->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
  v20 = sub_258D17224();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_258D021FC(&qword_27F980950, MEMORY[0x277CF2408]);
  sub_258D16D24();
  sub_258CD7264(v9, &qword_27F980810, &unk_258D190E0);
  v21 = sub_258D17394();

  sub_258CD7210(v16, v18);
  (*(v23[0] + 8))(v13, v10);

  return v21;
}

- (id)defuseChatBotCSS:(id)s error:(id *)error
{
  v5 = sub_258D16A84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D16A54();
  selfCopy = self;
  v11 = sub_258CF4214(v9);
  v13 = v12;
  (*(v6 + 8))(v9, v5);

  v14 = sub_258D16AE4();
  sub_258CD7210(v11, v13);

  return v14;
}

- (id)defuseRelayGroupMutationPayloadForData:(id)data error:(id *)error
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  v10 = sub_258D17584();
  v23[0] = *(v10 - 8);
  v11 = *(v23[0] + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  selfCopy = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&selfCopy->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
  v20 = sub_258D17224();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_258D021FC(&qword_27F980968, MEMORY[0x277CF28C8]);
  sub_258D16D24();
  sub_258CD7264(v9, &qword_27F980810, &unk_258D190E0);
  v21 = sub_258D17564();

  sub_258CD7210(v16, v18);
  (*(v23[0] + 8))(v13, v10);

  return v21;
}

- (id)defuseRelayReachabilityRequestPayloadForData:(id)data error:(id *)error
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  v10 = sub_258D174F4();
  v23[0] = *(v10 - 8);
  v11 = *(v23[0] + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  selfCopy = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&selfCopy->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
  v20 = sub_258D17224();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_258D021FC(&qword_27F980970, MEMORY[0x277CF25F0]);
  sub_258D16D24();
  sub_258CD7264(v9, &qword_27F980810, &unk_258D190E0);
  v21 = sub_258D174E4();

  sub_258CD7210(v16, v18);
  (*(v23[0] + 8))(v13, v10);

  return v21;
}

- (id)defuseRelayReachabilityResponsePayloadForData:(id)data error:(id *)error
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  v10 = sub_258D175A4();
  v23[0] = *(v10 - 8);
  v11 = *(v23[0] + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  selfCopy = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&selfCopy->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
  v20 = sub_258D17224();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_258D021FC(&qword_27F980978, MEMORY[0x277CF28D8]);
  sub_258D16D24();
  sub_258CD7264(v9, &qword_27F980810, &unk_258D190E0);
  v21 = sub_258D17594();

  sub_258CD7210(v16, v18);
  (*(v23[0] + 8))(v13, v10);

  return v21;
}

- (IMMessagesBlastDoorInterfaceInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end