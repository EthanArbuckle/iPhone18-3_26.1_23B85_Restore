@interface CNUIMemojiMetadata
+ (id)metadataWithAvatarRecordData:(id)a3 poseConfigurationData:(id)a4;
+ (id)suggestedAnimojiMetadataWithCount:(unint64_t)a3;
+ (id)suggestedMemojiMetadataWithCount:(unint64_t)a3;
+ (id)variantsOfMemojiMetadata:(id)a3 count:(unint64_t)a4;
- (BOOL)hasTallContent;
- (BOOL)poseHasBody;
- (CNUIMemojiMetadata)initWithAvatarRecord:(id)a3 poseConfiguration:(id)a4;
- (CNUIMemojiMetadata)initWithAvatarRecord:(id)a3 poseConfiguration:(id)a4 avatar:(id)a5;
- (CNUIMemojiMetadata)initWithMemojiMetadata:(id)a3;
- (NSData)avatarRecordData;
- (NSData)poseConfigurationData;
- (NSString)accessibilityDescription;
- (NSString)identifier;
@end

@implementation CNUIMemojiMetadata

+ (id)suggestedMemojiMetadataWithCount:(unint64_t)a3
{
  v4 = objc_alloc_init(getAVTPAvatarStoreClass());
  v5 = [getAVTAvatarFetchRequestClass() requestForStorePrimaryAvatar];
  v24 = 0;
  v6 = [v4 avatarsForFetchRequest:v5 error:&v24];
  v7 = v24;
  v8 = [v6 firstObject];

  if (v8)
  {
LABEL_4:
    v12 = getkAVTStickerPackPoses();
    v13 = [v8 isEditable];
    AVTStickerConfigurationClass = getAVTStickerConfigurationClass();
    v15 = AVTStickerConfigurationClass;
    if (v13)
    {
      v16 = [AVTStickerConfigurationClass stickerConfigurationsForMemojiInStickerPack:v12];
    }

    else
    {
      v17 = [v8 identifier];
      v16 = [v15 stickerConfigurationsForAnimojiNamed:v17 inStickerPack:v12];
    }

    if ([v16 count])
    {
      for (i = [MEMORY[0x1E695DF70] array];
      {
        v19 = [v16 objectAtIndex:{arc4random_uniform(objc_msgSend(v16, "count"))}];
        v20 = [[CNUIMemojiMetadata alloc] initWithAvatarRecord:v8 poseConfiguration:v19];
        [i addObject:v20];
      }
    }

    else
    {
      v21 = +[CNUICoreLogProvider memoji_os_log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CNUIMemojiMetadata suggestedMemojiMetadataWithCount:v8];
      }

      i = MEMORY[0x1E695E0F0];
    }

    goto LABEL_15;
  }

  v9 = [getAVTAvatarFetchRequestClass() requestForAllAvatars];

  v23 = v7;
  v10 = [v4 avatarsForFetchRequest:v9 error:&v23];
  v11 = v23;

  v8 = [v10 firstObject];

  if (v8)
  {
    v5 = v9;
    v7 = v11;
    goto LABEL_4;
  }

  v8 = +[CNUICoreLogProvider memoji_os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CNUIMemojiMetadata suggestedMemojiMetadataWithCount:v11];
  }

  i = MEMORY[0x1E695E0F0];
  v5 = v9;
  v7 = v11;
LABEL_15:

  return i;
}

+ (id)suggestedAnimojiMetadataWithCount:(unint64_t)a3
{
  v4 = objc_alloc_init(getAVTPAvatarStoreClass());
  v5 = [getAVTAvatarFetchRequestClass() requestForPredefinedAvatars];
  v21 = 0;
  v6 = [v4 avatarsForFetchRequest:v5 error:&v21];
  v7 = v21;
  if ([v6 count])
  {
    v8 = getkAVTStickerPackPoses();
    v9 = [MEMORY[0x1E695DF70] array];
    if (a3)
    {
      v18 = v7;
      v19 = v5;
      v20 = v4;
      v10 = 0;
      do
      {
        v11 = [v6 objectAtIndex:{v10 % objc_msgSend(v6, "count", v18, v19, v20)}];
        AVTStickerConfigurationClass = getAVTStickerConfigurationClass();
        v13 = [v11 identifier];
        v14 = [AVTStickerConfigurationClass stickerConfigurationsForAnimojiNamed:v13 inStickerPack:v8];

        if ([v14 count])
        {
          v15 = [v14 objectAtIndex:{arc4random_uniform(objc_msgSend(v14, "count"))}];
          v16 = [[CNUIMemojiMetadata alloc] initWithAvatarRecord:v11 poseConfiguration:v15];
          [v9 addObject:v16];
        }

        ++v10;
      }

      while (a3 != v10);
      v5 = v19;
      v4 = v20;
      v7 = v18;
    }
  }

  else
  {
    v8 = +[CNUICoreLogProvider memoji_os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNUIMemojiMetadata suggestedAnimojiMetadataWithCount:v7];
    }

    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

+ (id)variantsOfMemojiMetadata:(id)a3 count:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 avatarRecord];
  v7 = getkAVTStickerPackPoses();
  v8 = [v6 isEditable];
  AVTStickerConfigurationClass = getAVTStickerConfigurationClass();
  v10 = AVTStickerConfigurationClass;
  if (v8)
  {
    v11 = [AVTStickerConfigurationClass stickerConfigurationsForMemojiInStickerPack:v7];
  }

  else
  {
    v12 = [v6 identifier];
    v11 = [v10 stickerConfigurationsForAnimojiNamed:v12 inStickerPack:v7];
  }

  if ([v11 count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    if (a4)
    {
      v22 = v7;
      v14 = 0;
      do
      {
        v15 = [v11 objectAtIndex:{v14 % objc_msgSend(v11, "count")}];
        v16 = [CNUIMemojiMetadata alloc];
        v17 = [v5 avatar];
        v18 = [v17 copy];
        v19 = [(CNUIMemojiMetadata *)v16 initWithAvatarRecord:v6 poseConfiguration:v15 avatar:v18];
        [v13 addObject:v19];

        ++v14;
      }

      while (a4 != v14);
      v7 = v22;
    }
  }

  else
  {
    v20 = +[CNUICoreLogProvider memoji_os_log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CNUIMemojiMetadata suggestedMemojiMetadataWithCount:v6];
    }

    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

+ (id)metadataWithAvatarRecordData:(id)a3 poseConfigurationData:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v7 = a4;
    v8 = a3;
    v9 = [getAVTAvatarRecordSerializerClass() avatarRecordFromData:v8];

    v10 = [MEMORY[0x1E695CF08] poseConfigurationForData:v7 withAvatarRecord:v9];

    v4 = [[a1 alloc] initWithAvatarRecord:v9 poseConfiguration:v10];
  }

  return v4;
}

- (CNUIMemojiMetadata)initWithAvatarRecord:(id)a3 poseConfiguration:(id)a4 avatar:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CNUIMemojiMetadata;
  v12 = [(CNUIMemojiMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarRecord, a3);
    objc_storeStrong(&v13->_poseConfiguration, a4);
    objc_storeStrong(&v13->_avatar, a5);
  }

  return v13;
}

- (CNUIMemojiMetadata)initWithAvatarRecord:(id)a3 poseConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v8 = getAVTAvatarRecordRenderingClass_softClass;
  v17 = getAVTAvatarRecordRenderingClass_softClass;
  if (!getAVTAvatarRecordRenderingClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getAVTAvatarRecordRenderingClass_block_invoke;
    v13[3] = &unk_1E76E79E0;
    v13[4] = &v14;
    __getAVTAvatarRecordRenderingClass_block_invoke(v13);
    v8 = v15[3];
  }

  v9 = v8;
  _Block_object_dispose(&v14, 8);
  v10 = [v8 avatarForRecord:v6];
  v11 = [(CNUIMemojiMetadata *)self initWithAvatarRecord:v6 poseConfiguration:v7 avatar:v10];

  return v11;
}

- (CNUIMemojiMetadata)initWithMemojiMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 avatarRecord];
  v6 = [v4 poseConfiguration];

  v7 = [(CNUIMemojiMetadata *)self initWithAvatarRecord:v5 poseConfiguration:v6];
  return v7;
}

- (NSString)identifier
{
  v2 = [(CNUIMemojiMetadata *)self avatarRecord];
  v3 = [v2 identifier];

  return v3;
}

- (NSData)avatarRecordData
{
  AVTAvatarRecordSerializerClass = getAVTAvatarRecordSerializerClass();
  v4 = [(CNUIMemojiMetadata *)self avatarRecord];
  v5 = [AVTAvatarRecordSerializerClass dataFromAvatarRecord:v4];

  return v5;
}

- (NSData)poseConfigurationData
{
  v2 = MEMORY[0x1E695CF08];
  v3 = [(CNUIMemojiMetadata *)self poseConfiguration];
  v4 = [v2 dataForPoseConfiguration:v3];

  return v4;
}

- (NSString)accessibilityDescription
{
  v13[2] = *MEMORY[0x1E69E9840];
  accessibilityDescription = self->_accessibilityDescription;
  if (!accessibilityDescription)
  {
    AXUIAvatarUtilitiesClass = getAXUIAvatarUtilitiesClass();
    v5 = [(CNUIMemojiMetadata *)self avatarRecord];
    v6 = [(objc_class *)AXUIAvatarUtilitiesClass descriptionForAvatarWithRecord:v5 includeVideoPrefix:0];

    v7 = [(CNUIMemojiMetadata *)self poseConfiguration];
    v8 = [v7 localizedName];

    v13[0] = v8;
    v13[1] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v10 = [v9 componentsJoinedByString:{@", "}];
    v11 = self->_accessibilityDescription;
    self->_accessibilityDescription = v10;

    accessibilityDescription = self->_accessibilityDescription;
  }

  return accessibilityDescription;
}

- (BOOL)poseHasBody
{
  v3 = [(CNUIMemojiMetadata *)self poseConfiguration];
  v4 = objc_opt_respondsToSelector();

  v5 = [(CNUIMemojiMetadata *)self poseConfiguration];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 showsBody];
  }

  else
  {
    [v5 loadIfNeeded];

    v6 = [(CNUIMemojiMetadata *)self poseConfiguration];
    v8 = [v6 bodyPose];
    v7 = v8 != 0;
  }

  return v7;
}

- (BOOL)hasTallContent
{
  v3 = [(CNUIMemojiMetadata *)self avatar];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CNUIMemojiMetadata *)self avatar];
    v6 = [v5 name];
    v7 = [v6 isEqualToString:@"giraffe"];

    return v7;
  }

  else
  {

    return [(CNUIMemojiMetadata *)self poseHasBody];
  }
}

+ (void)suggestedMemojiMetadataWithCount:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4(&dword_1A31E6000, v2, v3, "Error loading configurations for avatar: %@", v4, v5, v6, v7, v8);
}

+ (void)suggestedMemojiMetadataWithCount:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4(&dword_1A31E6000, v2, v3, "Error loading store primary avatar: %{public}@", v4, v5, v6, v7, v8);
}

+ (void)suggestedAnimojiMetadataWithCount:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4(&dword_1A31E6000, v2, v3, "Could not load avatar; %{public}@", v4, v5, v6, v7, v8);
}

@end