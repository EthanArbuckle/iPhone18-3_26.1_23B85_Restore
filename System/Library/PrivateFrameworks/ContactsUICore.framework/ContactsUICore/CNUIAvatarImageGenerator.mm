@interface CNUIAvatarImageGenerator
+ (id)imageDataFromMetadata:(id)a3;
+ (id)imageWithOverscaledBackgroundForMemojiImage:(id)a3 overscaleMultiplier:(double)a4 poseHasBody:(BOOL)a5;
+ (id)stickerImageFromMetadata:(id)a3 size:(double)a4;
+ (void)imageFromMetadata:(id)a3 size:(CGSize)a4 completionHandler:(id)a5;
+ (void)stickerImageFromMetadata:(id)a3 generateAsynchronously:(BOOL)a4 size:(double)a5 completionHandler:(id)a6;
@end

@implementation CNUIAvatarImageGenerator

+ (id)imageDataFromMetadata:(id)a3
{
  v3 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v4 = getAVTAvatarRecordImageProviderClass_softClass;
  v22 = getAVTAvatarRecordImageProviderClass_softClass;
  if (!getAVTAvatarRecordImageProviderClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getAVTAvatarRecordImageProviderClass_block_invoke;
    v17 = &unk_1E76E79E0;
    v18 = &v19;
    __getAVTAvatarRecordImageProviderClass_block_invoke(&v14);
    v4 = v20[3];
  }

  v5 = v4;
  _Block_object_dispose(&v19, 8);
  v6 = objc_alloc_init(v4);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v7 = getAVTRenderingScopeClass_softClass;
  v22 = getAVTRenderingScopeClass_softClass;
  if (!getAVTRenderingScopeClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getAVTRenderingScopeClass_block_invoke;
    v17 = &unk_1E76E79E0;
    v18 = &v19;
    __getAVTRenderingScopeClass_block_invoke(&v14);
    v7 = v20[3];
  }

  v8 = v7;
  _Block_object_dispose(&v19, 8);
  v9 = [v7 largeThumbnailScope];
  v10 = [v3 avatarRecord];
  v11 = [v6 imageForRecord:v10 scope:v9];
  v12 = [v11 HEICRepresentation];

  return v12;
}

+ (void)imageFromMetadata:(id)a3 size:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc(getAVTStickerGeneratorClass());
  v11 = [v8 avatar];
  v12 = [v10 initWithAvatar:v11];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v13 = getAVTStickerGeneratorPosterOptionsClass_softClass;
  v24 = getAVTStickerGeneratorPosterOptionsClass_softClass;
  if (!getAVTStickerGeneratorPosterOptionsClass_softClass)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __getAVTStickerGeneratorPosterOptionsClass_block_invoke;
    v20[3] = &unk_1E76E79E0;
    v20[4] = &v21;
    __getAVTStickerGeneratorPosterOptionsClass_block_invoke(v20);
    v13 = v22[3];
  }

  v14 = v13;
  _Block_object_dispose(&v21, 8);
  v15 = objc_alloc_init(v13);
  [v15 setSize:{width, height}];
  v16 = [v8 poseConfiguration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__CNUIAvatarImageGenerator_imageFromMetadata_size_completionHandler___block_invoke;
  v18[3] = &unk_1E76E8440;
  v19 = v9;
  v17 = v9;
  [v12 posterWithConfiguration:v16 options:v15 completionHandler:v18];
}

void __69__CNUIAvatarImageGenerator_imageFromMetadata_size_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[CNUIAvatarImage alloc] initWithImage:v3];

  (*(v2 + 16))(v2, v4);
}

+ (void)stickerImageFromMetadata:(id)a3 generateAsynchronously:(BOOL)a4 size:(double)a5 completionHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = objc_alloc(getAVTStickerGeneratorClass());
  v13 = [v10 avatar];
  v14 = [v12 initWithAvatar:v13];

  [v14 setAsync:v8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v15 = getAVTStickerGeneratorOptionsClass_softClass;
  v29 = getAVTStickerGeneratorOptionsClass_softClass;
  if (!getAVTStickerGeneratorOptionsClass_softClass)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __getAVTStickerGeneratorOptionsClass_block_invoke;
    v25[3] = &unk_1E76E79E0;
    v25[4] = &v26;
    __getAVTStickerGeneratorOptionsClass_block_invoke(v25);
    v15 = v27[3];
  }

  v16 = v15;
  _Block_object_dispose(&v26, 8);
  v17 = objc_alloc_init(v15);
  [v17 setSize:a5];
  v18 = [v10 poseConfiguration];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __99__CNUIAvatarImageGenerator_stickerImageFromMetadata_generateAsynchronously_size_completionHandler___block_invoke;
  v21[3] = &unk_1E76E8468;
  v23 = v11;
  v24 = a1;
  v22 = v10;
  v19 = v11;
  v20 = v10;
  [v14 stickerImageWithConfiguration:v18 options:v17 completionHandler:v21];
}

void __99__CNUIAvatarImageGenerator_stickerImageFromMetadata_generateAsynchronously_size_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[4];
  v5 = a2;
  v6 = [v3 imageWithOverscaledBackgroundForMemojiImage:v5 overscaleMultiplier:objc_msgSend(v4 poseHasBody:{"poseHasBody"), 1.1}];

  (*(a1[5] + 16))();
}

+ (id)imageWithOverscaledBackgroundForMemojiImage:(id)a3 overscaleMultiplier:(double)a4 poseHasBody:(BOOL)a5
{
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v7 scale];
  [v8 setScale:?];
  [v7 size];
  v10 = v9;
  [v7 size];
  v12 = v11;
  v13 = v10 * a4;
  v14 = v11 * a4;
  v15 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v8 format:{v13, v14}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __104__CNUIAvatarImageGenerator_imageWithOverscaledBackgroundForMemojiImage_overscaleMultiplier_poseHasBody___block_invoke;
  v19[3] = &unk_1E76E8490;
  v21 = 0;
  v22 = 0;
  v23 = v13;
  v24 = v14;
  v25 = 0;
  v26 = 0;
  v27 = v10;
  v28 = v12;
  v29 = a5;
  v20 = v7;
  v16 = v7;
  v17 = [v15 imageWithActions:v19];

  return v17;
}

uint64_t __104__CNUIAvatarImageGenerator_imageWithOverscaledBackgroundForMemojiImage_overscaleMultiplier_poseHasBody___block_invoke(uint64_t a1)
{
  MidX = CGRectGetMidX(*(a1 + 40));
  v3 = CGRectGetMidX(*(a1 + 72));
  MidY = CGRectGetMidY(*(a1 + 40));
  v5 = CGRectGetMidY(*(a1 + 72));
  v6 = *(a1 + 88);
  v7 = *(a1 + 96);
  if (*(a1 + 104) == 1)
  {
    v8 = CGRectGetMaxY(*(a1 + 40)) - *(a1 + 96);
  }

  else
  {
    v8 = MidY - v5;
  }

  v9 = *(a1 + 32);

  return [v9 drawInRect:{MidX - v3, v8, v6, v7}];
}

+ (id)stickerImageFromMetadata:(id)a3 size:(double)a4
{
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CNUIAvatarImageGenerator_stickerImageFromMetadata_size___block_invoke;
  v9[3] = &unk_1E76E7CE8;
  v9[4] = &v10;
  [a1 stickerImageFromMetadata:v6 generateAsynchronously:0 size:v9 completionHandler:a4];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

@end