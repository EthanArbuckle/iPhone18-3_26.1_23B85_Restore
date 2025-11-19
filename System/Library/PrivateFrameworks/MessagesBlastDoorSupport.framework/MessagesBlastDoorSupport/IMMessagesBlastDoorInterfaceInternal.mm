@interface IMMessagesBlastDoorInterfaceInternal
+ (BOOL)supportsFeature:(id)a3;
- (IMMessagesBlastDoorInterfaceInternal)init;
- (IMMessagesBlastDoorInterfaceInternal)initWithBlastDoorInstanceType:(id)a3;
- (id)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 context:(id)a5 error:(id *)a6;
- (id)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 error:(id *)a5;
- (id)defuseChatBotCSS:(id)a3 error:(id *)a4;
- (id)defuseLiteRelayTextMessage:(id)a3 error:(id *)a4;
- (id)defuseLiteTextMessage:(id)a3 error:(id *)a4;
- (id)defuseNicknameCommand:(id)a3 error:(id *)a4;
- (id)defuseRelayGroupMutationPayloadForData:(id)a3 error:(id *)a4;
- (id)defuseRelayReachabilityRequestPayloadForData:(id)a3 error:(id *)a4;
- (id)defuseRelayReachabilityResponsePayloadForData:(id)a3 error:(id *)a4;
- (id)defuseTopLevelDictionary:(id)a3 context:(id)a4 error:(id *)a5;
- (id)defuseTopLevelDictionary:(id)a3 error:(id *)a4;
- (id)generateImagePreviewForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6;
- (id)generatePreviewforAttachmentWithfileURL:(id)a3 error:(id *)a4;
- (void)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 resultHandler:(id)a5;
- (void)defuseCollaborationClearNoticePayload:(id)a3 resultHandler:(id)a4;
- (void)defuseCollaborationNoticePayload:(id)a3 resultHandler:(id)a4;
- (void)defuseData:(id)a3 forPreviewType:(unsigned __int8)a4 resultHandler:(id)a5;
- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 resultHandler:(id)a6;
- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 avatarRecipeDataTag:(id)a9 processImageFields:(BOOL)a10 resultHandler:(id)aBlock;
- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 processImageFields:(BOOL)a9 resultHandler:(id)aBlock;
- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 resultHandler:(id)aBlock;
- (void)generateMovieFramesForAttachmentWithFileURL:(id)a3 targetPixelWidth:(int64_t)a4 targetPixelHeight:(int64_t)a5 frameLimit:(int64_t)a6 uniformSampling:(BOOL)a7 framesPerSync:(int64_t)a8 appliesPreferredTrackTransform:(BOOL)a9 resultHandler:(id)a10;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 frameInterval:(int64_t)a7 resultHandler:(id)a8;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7;
- (void)generatePreviewForEmojiImageWithFileURL:(id)a3 frameIndex:(int64_t)a4 maxPixelDimension:(float)a5 resultHandler:(id)a6;
- (void)generatePreviewForMultiFrameImageWithFileURL:(id)a3 destinationFileURL:(id)a4 maxPixelDimension:(float)a5 scale:(float)a6 maxFrameCount:(int64_t)a7 isSticker:(BOOL)a8 resultHandler:(id)a9;
- (void)generatePreviewforAnimatedImageWithfileURL:(id)a3 maxPixelDimension:(float)a4 index:(int64_t)a5 maxCount:(int64_t)a6 resultHandler:(id)a7;
- (void)generatePreviewforAttachmentWithfileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 resultHandler:(id)a6;
- (void)generatePreviewforAttachmentWithfileURL:(id)a3 resultHandler:(id)a4;
- (void)generatePreviewforAudioMessageWithfileURL:(id)a3 resultHandler:(id)a4;
- (void)generateWorkoutPreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 resultHandler:(id)a6;
- (void)getMetadataForEmojiImageWithFileURL:(id)a3 maxStrikeCount:(int64_t)a4 resultHandler:(id)a5;
- (void)getMetadataforAnimatedImageWithfileURL:(id)a3 maxCount:(int64_t)a4 resultHandler:(id)a5;
@end

@implementation IMMessagesBlastDoorInterfaceInternal

- (IMMessagesBlastDoorInterfaceInternal)initWithBlastDoorInstanceType:(id)a3
{
  v3 = a3;
  v4 = sub_258CF634C(v3);

  return v4;
}

- (id)defuseTopLevelDictionary:(id)a3 error:(id *)a4
{
  v5 = sub_258D17864();
  v6 = self;
  v7 = sub_258CD65AC(v5, 0);

  return v7;
}

- (id)defuseTopLevelDictionary:(id)a3 context:(id)a4 error:(id *)a5
{
  v7 = sub_258D17864();
  v8 = a4;
  v9 = self;
  v10 = sub_258CD65AC(v7, a4);

  return v10;
}

- (id)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_258D16AF4();
  v12 = v11;

  v13 = sub_258D178B4();
  v15 = v14;

  v16 = sub_258CDF304(v10, v12, v13, v15, 0);

  sub_258CD7210(v10, v12);

  return v16;
}

- (id)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 context:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  v13 = sub_258D16AF4();
  v15 = v14;

  v16 = sub_258D178B4();
  v18 = v17;

  v19 = sub_258CDF304(v13, v15, v16, v18, a5);

  sub_258CD7210(v13, v15);

  return v19;
}

- (void)defuseBalloonPluginPayload:(id)a3 withIdentifier:(id)a4 resultHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v17 = self;
  v11 = sub_258D16AF4();
  v13 = v12;

  v14 = sub_258D178B4();
  v16 = v15;

  _Block_copy(v8);
  sub_258CF9C70(v11, v13, v14, v16, v17, v8);
  _Block_release(v8);
  _Block_release(v8);

  sub_258CD7210(v11, v13);
}

- (void)defuseData:(id)a3 forPreviewType:(unsigned __int8)a4 resultHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v13 = self;
  v10 = sub_258D16AF4();
  v12 = v11;

  _Block_copy(v8);
  sub_258CFA028(v10, v12, a4, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_258CD7210(v10, v12);
}

+ (BOOL)supportsFeature:(id)a3
{
  v3 = sub_258D178B4();
  v5 = sub_258CFA520(v3, v4);

  return v5 & 1;
}

- (void)generatePreviewforAttachmentWithfileURL:(id)a3 resultHandler:(id)a4
{
  v6 = sub_258D16A84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_258D16A54();
  _Block_copy(v11);
  v12 = self;
  sub_258CFC124(v10, 1, v12, v11, 0.0, 0.0);
  _Block_release(v11);

  _Block_release(v11);
  (*(v7 + 8))(v10, v6);
}

- (id)generatePreviewforAttachmentWithfileURL:(id)a3 error:(id *)a4
{
  v5 = sub_258D16A84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D16A54();
  v10 = self;
  v11 = sub_258CE0AD4(v9);
  (*(v6 + 8))(v9, v5);

  return v11;
}

- (id)generateImagePreviewForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6
{
  v9 = sub_258D16A84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D16A54();
  v14 = self;
  v15 = sub_258CE32AC(v13, a4, a5);
  (*(v10 + 8))(v13, v9);

  return v15;
}

- (void)generatePreviewforAttachmentWithfileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 resultHandler:(id)a6
{
  v10 = sub_258D16A84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a6);
  sub_258D16A54();
  _Block_copy(v15);
  v16 = self;
  sub_258CFC124(v14, 0, v16, v15, a4, a5);
  _Block_release(v15);

  _Block_release(v15);
  (*(v11 + 8))(v14, v10);
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7
{
  v10 = sub_258D16A84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a7);
  sub_258D16A54();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = self;
  sub_258CE8EB8(a4, v14, sub_258D02304, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 frameInterval:(int64_t)a7 resultHandler:(id)a8
{
  v12 = sub_258D16A84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a8);
  sub_258D16A54();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = self;
  sub_258CE9670(a4, v16, a7, sub_258D022FC, v18);

  (*(v13 + 8))(v16, v12);
}

- (void)generateMovieFramesForAttachmentWithFileURL:(id)a3 targetPixelWidth:(int64_t)a4 targetPixelHeight:(int64_t)a5 frameLimit:(int64_t)a6 uniformSampling:(BOOL)a7 framesPerSync:(int64_t)a8 appliesPreferredTrackTransform:(BOOL)a9 resultHandler:(id)a10
{
  v23 = a8;
  HIDWORD(v22) = a7;
  v14 = sub_258D16A84();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(a10);
  sub_258D16A54();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = self;
  sub_258CE9CE4(v18, a4, a5, a6, SHIDWORD(v22), v23, a9, sub_258D019CC, v20);

  (*(v15 + 8))(v18, v14);
}

- (void)generateWorkoutPreviewForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 resultHandler:(id)a6
{
  v9 = sub_258D16A84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  sub_258D16A54();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = self;
  sub_258CEA55C(a4, v13, sub_258D02304, v15);

  (*(v10 + 8))(v13, v9);
}

- (void)generatePreviewforAudioMessageWithfileURL:(id)a3 resultHandler:(id)a4
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
  v16 = _Block_copy(a4);
  sub_258D16A54();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = self;
  sub_258D16FB4();
  sub_258CE866C(v10, v15, sub_258D02304, v17);

  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

- (id)defuseNicknameCommand:(id)a3 error:(id *)a4
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
  v14 = a3;
  v15 = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&v15->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
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

- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 resultHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_258D17864();
  v11 = a4;
  v12 = a5;
  v13 = self;
  v14 = sub_258D16AF4();
  v16 = v15;

  v17 = sub_258D178B4();
  v19 = v18;

  _Block_copy(v9);
  sub_258CFECD0(v10, v14, v16, v17, v19, v13, v9);
  _Block_release(v9);
  _Block_release(v9);

  sub_258CD7210(v14, v16);
}

- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 resultHandler:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v38 = sub_258D17864();
  v16 = a4;
  v17 = a5;
  v37 = self;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v36 = sub_258D16AF4();
  v35 = v21;

  v31 = sub_258D178B4();
  v34 = v22;

  if (v18)
  {
    v23 = sub_258D16AF4();
    v32 = v24;
    v33 = v23;

    if (v19)
    {
      goto LABEL_3;
    }

LABEL_6:
    v30 = 0;
    v26 = 0xF000000000000000;
    if (v20)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v32 = 0xF000000000000000;
  v33 = 0;
  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_3:
  v30 = sub_258D16AF4();
  v26 = v25;

  if (v20)
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
  sub_258CFF618(v38, v36, v35, v31, v34, v33, v32, v30, v26, v27, v29, v37, v15, &unk_286A0FDA0, &unk_286A0FDC8, sub_258D02304, sub_258D02320);
  _Block_release(v15);
  _Block_release(v15);
  sub_258D0199C(v27, v29);
  sub_258D0199C(v30, v26);
  sub_258D0199C(v33, v32);

  sub_258CD7210(v36, v35);
}

- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 processImageFields:(BOOL)a9 resultHandler:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  v39 = sub_258D17864();
  v17 = a4;
  v18 = a5;
  v38 = self;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v37 = sub_258D16AF4();
  v36 = v22;

  v32 = sub_258D178B4();
  v35 = v23;

  if (v19)
  {
    v24 = sub_258D16AF4();
    v33 = v25;
    v34 = v24;

    if (v20)
    {
      goto LABEL_3;
    }

LABEL_6:
    v31 = 0;
    v27 = 0xF000000000000000;
    if (v21)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v33 = 0xF000000000000000;
  v34 = 0;
  if (!v20)
  {
    goto LABEL_6;
  }

LABEL_3:
  v31 = sub_258D16AF4();
  v27 = v26;

  if (v21)
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
  sub_258CFF618(v39, v37, v36, v32, v35, v34, v33, v31, v27, v28, v30, v38, v16, &unk_286A0FD50, &unk_286A0FD78, sub_258D02304, sub_258D02320);
  _Block_release(v16);
  _Block_release(v16);
  sub_258D0199C(v28, v30);
  sub_258D0199C(v31, v27);
  sub_258D0199C(v34, v33);

  sub_258CD7210(v37, v36);
}

- (void)defuseNicknameDictionary:(id)a3 withKey:(id)a4 recordTag:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 avatarRecipeDataTag:(id)a9 processImageFields:(BOOL)a10 resultHandler:(id)aBlock
{
  v36 = _Block_copy(aBlock);
  v44 = sub_258D17864();
  v17 = a4;
  v18 = a5;
  v43 = self;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v42 = sub_258D16AF4();
  v41 = v23;

  v37 = sub_258D178B4();
  v40 = v24;

  if (v19)
  {
    v25 = sub_258D16AF4();
    v38 = v26;
    v39 = v25;

    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = 0xF000000000000000;
    v39 = 0;
    if (v20)
    {
LABEL_3:
      v35 = sub_258D16AF4();
      v28 = v27;

      if (v21)
      {
        goto LABEL_4;
      }

LABEL_8:
      v29 = 0;
      v31 = 0xF000000000000000;
      if (v22)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v35 = 0;
  v28 = 0xF000000000000000;
  if (!v21)
  {
    goto LABEL_8;
  }

LABEL_4:
  v29 = sub_258D16AF4();
  v31 = v30;

  if (v22)
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
  sub_258CFFFA4(v44, v42, v41, v37, v40, v39, v38, v35, v28, v29, v31, v32, v34, a10, v43, v36);
  _Block_release(v36);
  _Block_release(v36);
  sub_258D0199C(v32, v34);
  sub_258D0199C(v29, v31);
  sub_258D0199C(v35, v28);
  sub_258D0199C(v39, v38);

  sub_258CD7210(v42, v41);
}

- (void)getMetadataForEmojiImageWithFileURL:(id)a3 maxStrikeCount:(int64_t)a4 resultHandler:(id)a5
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
  v17 = _Block_copy(a5);
  sub_258D16A54();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = self;
  sub_258D17314();
  sub_258CE8930(v11, v16, sub_258D02304, v18);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)generatePreviewForEmojiImageWithFileURL:(id)a3 frameIndex:(int64_t)a4 maxPixelDimension:(float)a5 resultHandler:(id)a6
{
  v10 = sub_258D16A84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a6);
  sub_258D16A54();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = self;
  sub_258CEF4AC(v14, a5, a4, sub_258D02304, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)generatePreviewForMultiFrameImageWithFileURL:(id)a3 destinationFileURL:(id)a4 maxPixelDimension:(float)a5 scale:(float)a6 maxFrameCount:(int64_t)a7 isSticker:(BOOL)a8 resultHandler:(id)a9
{
  v10 = a8;
  v15 = sub_258D16A84();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  v23 = _Block_copy(a9);
  sub_258D16A54();
  sub_258D16A54();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v25 = self;
  sub_258CEF760(v22, v20, a7, v10, sub_258CFBAF8, v24, a5, a6);

  v26 = *(v16 + 8);
  v26(v20, v15);
  v26(v22, v15);
}

- (void)getMetadataforAnimatedImageWithfileURL:(id)a3 maxCount:(int64_t)a4 resultHandler:(id)a5
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
  v17 = _Block_copy(a5);
  sub_258D16A54();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = self;
  sub_258D173E4();
  sub_258CE8BF4(v11, v16, sub_258D02304, v18);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)generatePreviewforAnimatedImageWithfileURL:(id)a3 maxPixelDimension:(float)a4 index:(int64_t)a5 maxCount:(int64_t)a6 resultHandler:(id)a7
{
  v12 = sub_258D16A84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a7);
  sub_258D16A54();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = self;
  sub_258CF1B58(v16, a4, a5, a6, sub_258D02304, v18);

  (*(v13 + 8))(v16, v12);
}

- (void)defuseCollaborationNoticePayload:(id)a3 resultHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(a4);
  v12 = a3;
  v13 = self;
  v14 = sub_258D16AF4();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = *(&v13->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
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

- (void)defuseCollaborationClearNoticePayload:(id)a3 resultHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(a4);
  v12 = a3;
  v13 = self;
  v14 = sub_258D16AF4();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = *(&v13->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
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

- (id)defuseLiteTextMessage:(id)a3 error:(id *)a4
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
  v14 = a3;
  v15 = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&v15->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
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

- (id)defuseLiteRelayTextMessage:(id)a3 error:(id *)a4
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
  v14 = a3;
  v15 = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&v15->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
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

- (id)defuseChatBotCSS:(id)a3 error:(id *)a4
{
  v5 = sub_258D16A84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D16A54();
  v10 = self;
  v11 = sub_258CF4214(v9);
  v13 = v12;
  (*(v6 + 8))(v9, v5);

  v14 = sub_258D16AE4();
  sub_258CD7210(v11, v13);

  return v14;
}

- (id)defuseRelayGroupMutationPayloadForData:(id)a3 error:(id *)a4
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
  v14 = a3;
  v15 = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&v15->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
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

- (id)defuseRelayReachabilityRequestPayloadForData:(id)a3 error:(id *)a4
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
  v14 = a3;
  v15 = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&v15->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
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

- (id)defuseRelayReachabilityResponsePayloadForData:(id)a3 error:(id *)a4
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
  v14 = a3;
  v15 = self;
  v16 = sub_258D16AF4();
  v18 = v17;

  v19 = *(&v15->super.isa + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
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