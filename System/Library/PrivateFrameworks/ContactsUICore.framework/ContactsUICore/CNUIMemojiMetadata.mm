@interface CNUIMemojiMetadata
+ (id)metadataWithAvatarRecordData:(id)data poseConfigurationData:(id)configurationData;
+ (id)suggestedAnimojiMetadataWithCount:(unint64_t)count;
+ (id)suggestedMemojiMetadataWithCount:(unint64_t)count;
+ (id)variantsOfMemojiMetadata:(id)metadata count:(unint64_t)count;
- (BOOL)hasTallContent;
- (BOOL)poseHasBody;
- (CNUIMemojiMetadata)initWithAvatarRecord:(id)record poseConfiguration:(id)configuration;
- (CNUIMemojiMetadata)initWithAvatarRecord:(id)record poseConfiguration:(id)configuration avatar:(id)avatar;
- (CNUIMemojiMetadata)initWithMemojiMetadata:(id)metadata;
- (NSData)avatarRecordData;
- (NSData)poseConfigurationData;
- (NSString)accessibilityDescription;
- (NSString)identifier;
@end

@implementation CNUIMemojiMetadata

+ (id)suggestedMemojiMetadataWithCount:(unint64_t)count
{
  v4 = objc_alloc_init(getAVTPAvatarStoreClass());
  requestForStorePrimaryAvatar = [getAVTAvatarFetchRequestClass() requestForStorePrimaryAvatar];
  v24 = 0;
  v6 = [v4 avatarsForFetchRequest:requestForStorePrimaryAvatar error:&v24];
  v7 = v24;
  firstObject = [v6 firstObject];

  if (firstObject)
  {
LABEL_4:
    v12 = getkAVTStickerPackPoses();
    isEditable = [firstObject isEditable];
    AVTStickerConfigurationClass = getAVTStickerConfigurationClass();
    v15 = AVTStickerConfigurationClass;
    if (isEditable)
    {
      v16 = [AVTStickerConfigurationClass stickerConfigurationsForMemojiInStickerPack:v12];
    }

    else
    {
      identifier = [firstObject identifier];
      v16 = [v15 stickerConfigurationsForAnimojiNamed:identifier inStickerPack:v12];
    }

    if ([v16 count])
    {
      for (i = [MEMORY[0x1E695DF70] array];
      {
        v19 = [v16 objectAtIndex:{arc4random_uniform(objc_msgSend(v16, "count"))}];
        v20 = [[CNUIMemojiMetadata alloc] initWithAvatarRecord:firstObject poseConfiguration:v19];
        [i addObject:v20];
      }
    }

    else
    {
      v21 = +[CNUICoreLogProvider memoji_os_log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CNUIMemojiMetadata suggestedMemojiMetadataWithCount:firstObject];
      }

      i = MEMORY[0x1E695E0F0];
    }

    goto LABEL_15;
  }

  requestForAllAvatars = [getAVTAvatarFetchRequestClass() requestForAllAvatars];

  v23 = v7;
  v10 = [v4 avatarsForFetchRequest:requestForAllAvatars error:&v23];
  v11 = v23;

  firstObject = [v10 firstObject];

  if (firstObject)
  {
    requestForStorePrimaryAvatar = requestForAllAvatars;
    v7 = v11;
    goto LABEL_4;
  }

  firstObject = +[CNUICoreLogProvider memoji_os_log];
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
  {
    [CNUIMemojiMetadata suggestedMemojiMetadataWithCount:v11];
  }

  i = MEMORY[0x1E695E0F0];
  requestForStorePrimaryAvatar = requestForAllAvatars;
  v7 = v11;
LABEL_15:

  return i;
}

+ (id)suggestedAnimojiMetadataWithCount:(unint64_t)count
{
  v4 = objc_alloc_init(getAVTPAvatarStoreClass());
  requestForPredefinedAvatars = [getAVTAvatarFetchRequestClass() requestForPredefinedAvatars];
  v21 = 0;
  v6 = [v4 avatarsForFetchRequest:requestForPredefinedAvatars error:&v21];
  v7 = v21;
  if ([v6 count])
  {
    v8 = getkAVTStickerPackPoses();
    array = [MEMORY[0x1E695DF70] array];
    if (count)
    {
      v18 = v7;
      v19 = requestForPredefinedAvatars;
      v20 = v4;
      v10 = 0;
      do
      {
        v11 = [v6 objectAtIndex:{v10 % objc_msgSend(v6, "count", v18, v19, v20)}];
        AVTStickerConfigurationClass = getAVTStickerConfigurationClass();
        identifier = [v11 identifier];
        v14 = [AVTStickerConfigurationClass stickerConfigurationsForAnimojiNamed:identifier inStickerPack:v8];

        if ([v14 count])
        {
          v15 = [v14 objectAtIndex:{arc4random_uniform(objc_msgSend(v14, "count"))}];
          v16 = [[CNUIMemojiMetadata alloc] initWithAvatarRecord:v11 poseConfiguration:v15];
          [array addObject:v16];
        }

        ++v10;
      }

      while (count != v10);
      requestForPredefinedAvatars = v19;
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

    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

+ (id)variantsOfMemojiMetadata:(id)metadata count:(unint64_t)count
{
  metadataCopy = metadata;
  avatarRecord = [metadataCopy avatarRecord];
  v7 = getkAVTStickerPackPoses();
  isEditable = [avatarRecord isEditable];
  AVTStickerConfigurationClass = getAVTStickerConfigurationClass();
  v10 = AVTStickerConfigurationClass;
  if (isEditable)
  {
    v11 = [AVTStickerConfigurationClass stickerConfigurationsForMemojiInStickerPack:v7];
  }

  else
  {
    identifier = [avatarRecord identifier];
    v11 = [v10 stickerConfigurationsForAnimojiNamed:identifier inStickerPack:v7];
  }

  if ([v11 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    if (count)
    {
      v22 = v7;
      v14 = 0;
      do
      {
        v15 = [v11 objectAtIndex:{v14 % objc_msgSend(v11, "count")}];
        v16 = [CNUIMemojiMetadata alloc];
        avatar = [metadataCopy avatar];
        v18 = [avatar copy];
        v19 = [(CNUIMemojiMetadata *)v16 initWithAvatarRecord:avatarRecord poseConfiguration:v15 avatar:v18];
        [array addObject:v19];

        ++v14;
      }

      while (count != v14);
      v7 = v22;
    }
  }

  else
  {
    v20 = +[CNUICoreLogProvider memoji_os_log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CNUIMemojiMetadata suggestedMemojiMetadataWithCount:avatarRecord];
    }

    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

+ (id)metadataWithAvatarRecordData:(id)data poseConfigurationData:(id)configurationData
{
  v4 = 0;
  if (data && configurationData)
  {
    configurationDataCopy = configurationData;
    dataCopy = data;
    v9 = [getAVTAvatarRecordSerializerClass() avatarRecordFromData:dataCopy];

    v10 = [MEMORY[0x1E695CF08] poseConfigurationForData:configurationDataCopy withAvatarRecord:v9];

    v4 = [[self alloc] initWithAvatarRecord:v9 poseConfiguration:v10];
  }

  return v4;
}

- (CNUIMemojiMetadata)initWithAvatarRecord:(id)record poseConfiguration:(id)configuration avatar:(id)avatar
{
  recordCopy = record;
  configurationCopy = configuration;
  avatarCopy = avatar;
  v15.receiver = self;
  v15.super_class = CNUIMemojiMetadata;
  v12 = [(CNUIMemojiMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarRecord, record);
    objc_storeStrong(&v13->_poseConfiguration, configuration);
    objc_storeStrong(&v13->_avatar, avatar);
  }

  return v13;
}

- (CNUIMemojiMetadata)initWithAvatarRecord:(id)record poseConfiguration:(id)configuration
{
  recordCopy = record;
  configurationCopy = configuration;
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
  v10 = [v8 avatarForRecord:recordCopy];
  v11 = [(CNUIMemojiMetadata *)self initWithAvatarRecord:recordCopy poseConfiguration:configurationCopy avatar:v10];

  return v11;
}

- (CNUIMemojiMetadata)initWithMemojiMetadata:(id)metadata
{
  metadataCopy = metadata;
  avatarRecord = [metadataCopy avatarRecord];
  poseConfiguration = [metadataCopy poseConfiguration];

  v7 = [(CNUIMemojiMetadata *)self initWithAvatarRecord:avatarRecord poseConfiguration:poseConfiguration];
  return v7;
}

- (NSString)identifier
{
  avatarRecord = [(CNUIMemojiMetadata *)self avatarRecord];
  identifier = [avatarRecord identifier];

  return identifier;
}

- (NSData)avatarRecordData
{
  AVTAvatarRecordSerializerClass = getAVTAvatarRecordSerializerClass();
  avatarRecord = [(CNUIMemojiMetadata *)self avatarRecord];
  v5 = [AVTAvatarRecordSerializerClass dataFromAvatarRecord:avatarRecord];

  return v5;
}

- (NSData)poseConfigurationData
{
  v2 = MEMORY[0x1E695CF08];
  poseConfiguration = [(CNUIMemojiMetadata *)self poseConfiguration];
  v4 = [v2 dataForPoseConfiguration:poseConfiguration];

  return v4;
}

- (NSString)accessibilityDescription
{
  v13[2] = *MEMORY[0x1E69E9840];
  accessibilityDescription = self->_accessibilityDescription;
  if (!accessibilityDescription)
  {
    AXUIAvatarUtilitiesClass = getAXUIAvatarUtilitiesClass();
    avatarRecord = [(CNUIMemojiMetadata *)self avatarRecord];
    v6 = [(objc_class *)AXUIAvatarUtilitiesClass descriptionForAvatarWithRecord:avatarRecord includeVideoPrefix:0];

    poseConfiguration = [(CNUIMemojiMetadata *)self poseConfiguration];
    localizedName = [poseConfiguration localizedName];

    v13[0] = localizedName;
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
  poseConfiguration = [(CNUIMemojiMetadata *)self poseConfiguration];
  v4 = objc_opt_respondsToSelector();

  poseConfiguration2 = [(CNUIMemojiMetadata *)self poseConfiguration];
  poseConfiguration3 = poseConfiguration2;
  if (v4)
  {
    showsBody = [poseConfiguration2 showsBody];
  }

  else
  {
    [poseConfiguration2 loadIfNeeded];

    poseConfiguration3 = [(CNUIMemojiMetadata *)self poseConfiguration];
    bodyPose = [poseConfiguration3 bodyPose];
    showsBody = bodyPose != 0;
  }

  return showsBody;
}

- (BOOL)hasTallContent
{
  avatar = [(CNUIMemojiMetadata *)self avatar];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    avatar2 = [(CNUIMemojiMetadata *)self avatar];
    name = [avatar2 name];
    v7 = [name isEqualToString:@"giraffe"];

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