@interface IMAttachmentBlastdoor
+ (BOOL)supportsFeature:(id)feature;
+ (id)blastdoorInterfaceForSenderContext:(id)context;
+ (id)defuseNicknameCommand:(id)command senderContext:(id)context error:(id *)error;
+ (id)generateImagePreviewForFileURL:(id)l senderContext:(id)context maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error;
+ (id)logger;
+ (void)defuseBalloonPluginPayloadData:(id)data senderContext:(id)context withBundleIdentifier:(id)identifier completionBlock:(id)block;
+ (void)generateAnimatedImagePreview:(id)preview senderContext:(id)context destinationFileURL:(id)l maxPixelDimension:(double)dimension scale:(double)scale maxFrameCount:(int64_t)count isSticker:(BOOL)sticker withCompletionBlock:(id)self0;
+ (void)generateAnimatedImagePreview:(id)preview senderContext:(id)context maxPixelDimension:(double)dimension index:(int64_t)index maxCount:(int64_t)count withCompletionBlock:(id)block;
+ (void)generateAudioPreview:(id)preview senderContext:(id)context withCompletionBlock:(id)block;
+ (void)generateEmojiImagePreview:(id)preview senderContext:(id)context frameIndex:(int64_t)index maxPixelDimension:(double)dimension withCompletionBlock:(id)block;
+ (void)generateMoviePreview:(id)preview senderContext:(id)context maxPxWidth:(double)width minThumbnailPxSize:(CGSize)size scale:(double)scale withCompletionBlock:(id)block;
+ (void)generateNickname:(id)nickname senderContext:(id)context forRecordID:(id)d wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag withKey:(id)self0 processImageFields:(BOOL)self1 completionBlock:(id)self2;
+ (void)generatePassPreview:(id)preview senderContext:(id)context withCompletionBlock:(id)block;
+ (void)generatePreview:(id)preview senderContext:(id)context maxPxWidth:(double)width scale:(double)scale withCompletionBlock:(id)block;
+ (void)generateTranscriptBackground:(id)background senderContext:(id)context completion:(id)completion;
+ (void)generateTranscriptBackgroundCommandFrom:(id)from senderContext:(id)context completion:(id)completion;
+ (void)generateWorkoutPreview:(id)preview senderContext:(id)context maxPxWidth:(double)width scale:(double)scale withCompletionBlock:(id)block;
+ (void)getMetadataForAnimatedImage:(id)image senderContext:(id)context maxCount:(int64_t)count withCompletionBlock:(id)block;
+ (void)getMetadataForEmojiImageWithFileURL:(id)l senderContext:(id)context maxStrikeCount:(int64_t)count withCompletionBlock:(id)block;
+ (void)sendBalloonPluginPayloadData:(id)data senderContext:(id)context withBundleIdentifier:(id)identifier completionBlock:(id)block;
+ (void)sendData:(id)data senderContext:(id)context forPreviewType:(unsigned __int8)type withCompletionBlock:(id)block;
@end

@implementation IMAttachmentBlastdoor

+ (id)logger
{
  if (qword_1ED8C9A68 != -1)
  {
    sub_1A88C12C0();
  }

  return qword_1ED8C9A80;
}

+ (BOOL)supportsFeature:(id)feature
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EB30AE48 != -1)
  {
    sub_1A88C12D4();
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [qword_1EB30AE50 supportsFeature:feature];
    v5 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v9 = 138412546;
      featureCopy2 = feature;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_DEFAULT, "Installed BlastDoor supports feature %@ (%@)", &v9, 0x16u);
    }
  }

  else
  {
    v7 = +[IMAttachmentBlastdoor logger];
    LOBYTE(v4) = 0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      featureCopy2 = feature;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_DEFAULT, "Outdated BlastDoor: Cannot check feature (%@) support", &v9, 0xCu);
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

+ (id)blastdoorInterfaceForSenderContext:(id)context
{
  if ([+[IMFeatureFlags isUnknownSenderBlastDoorEnabled] sharedFeatureFlags]
  {
    if (qword_1ED8CA480 != -1)
    {
      sub_1A88C12FC();
    }

    if (qword_1ED8CA490 != -1)
    {
      sub_1A88C1310();
    }

    isTrustedSender = [context isTrustedSender];
    v5 = &qword_1ED8CA488;
    if (!isTrustedSender)
    {
      v5 = &qword_1ED8CA498;
    }

    return *v5;
  }

  else
  {
    if (qword_1EB30AE58 != -1)
    {
      sub_1A88C12E8();
    }

    return qword_1EB30AE60;
  }
}

+ (void)generatePreview:(id)preview senderContext:(id)context maxPxWidth:(double)width scale:(double)scale withCompletionBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  if (preview && block)
  {
    v13 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      blockCopy = preview;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Sending request to generate preview to BlastDoor for %@", buf, 0xCu);
    }

    v14 = [self blastdoorInterfaceForSenderContext:context];
    *&v15 = width;
    *&v16 = scale;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A864339C;
    v21[3] = &unk_1E7826FD8;
    v21[4] = block;
    [v14 generatePreviewforAttachmentWithfileURL:preview maxPixelDimension:v21 scale:v15 resultHandler:v16];
  }

  else
  {
    v17 = [IMAttachmentBlastdoor logger:width];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      blockCopy = block;
      v24 = 2112;
      previewCopy2 = preview;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_DEFAULT, "Invalid image preview input. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (block)
    {
      v18 = objc_alloc(MEMORY[0x1E695DF20]);
      if (preview)
      {
        absoluteString = [preview absoluteString];
      }

      else
      {
        absoluteString = @"NO";
      }

      v20 = [v18 initWithObjectsAndKeys:{absoluteString, @"sourceURL", 0}];
      (*(block + 2))(block, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v20]);
    }
  }
}

+ (void)generateWorkoutPreview:(id)preview senderContext:(id)context maxPxWidth:(double)width scale:(double)scale withCompletionBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  if (preview && block)
  {
    v13 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      blockCopy = preview;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Sending request to generate workout preview to BlastDoor for %@", buf, 0xCu);
    }

    v14 = [self blastdoorInterfaceForSenderContext:context];
    *&v15 = width;
    *&v16 = scale;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A864377C;
    v21[3] = &unk_1E7826FD8;
    v21[4] = block;
    [v14 generateWorkoutPreviewForAttachmentWithFileURL:preview maxPixelDimension:v21 scale:v15 resultHandler:v16];
  }

  else
  {
    v17 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      blockCopy = block;
      v24 = 2112;
      previewCopy2 = preview;
      v26 = 2048;
      widthCopy = width;
      v28 = 2048;
      scaleCopy = scale;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_DEFAULT, "Invalid workout preview input. Completion? %@, sourceURL? %@, maxPxWidth: %f, scale: %f", buf, 0x2Au);
    }

    if (block)
    {
      v18 = objc_alloc(MEMORY[0x1E695DF20]);
      if (preview)
      {
        absoluteString = [preview absoluteString];
      }

      else
      {
        absoluteString = @"NO";
      }

      v20 = [v18 initWithObjectsAndKeys:{absoluteString, @"sourceURL", 0}];
      (*(block + 2))(block, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v20]);
    }
  }
}

+ (void)sendData:(id)data senderContext:(id)context forPreviewType:(unsigned __int8)type withCompletionBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  if (data && block)
  {
    typeCopy = type;
    v11 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = typeCopy;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_DEFAULT, "Piping data through BlastDoor for preview type: %u", buf, 8u);
    }

    v12 = [self blastdoorInterfaceForSenderContext:context];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A8643A40;
    v18[3] = &unk_1E7827000;
    v19 = typeCopy;
    v18[4] = block;
    [v12 defuseData:data forPreviewType:typeCopy resultHandler:v18];
  }

  else if (block)
  {
    v13 = objc_alloc(MEMORY[0x1E695DF20]);
    if (data)
    {
      v14 = [data description];
    }

    else
    {
      v14 = @"NO";
    }

    v15 = [v13 initWithObjectsAndKeys:{v14, @"data", 0}];
    v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v15];
    v17 = *(block + 2);

    v17(block, 0, v16);
  }
}

+ (void)generateMoviePreview:(id)preview senderContext:(id)context maxPxWidth:(double)width minThumbnailPxSize:(CGSize)size scale:(double)scale withCompletionBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  if (preview && block)
  {
    height = size.height;
    width = size.width;
    v16 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      blockCopy = preview;
      _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_DEFAULT, "Sending request to generate movie preview to BlastDoor for %@", buf, 0xCu);
    }

    v17 = [self blastdoorInterfaceForSenderContext:context];
    *&v18 = width;
    *&v19 = scale;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1A8643E3C;
    v24[3] = &unk_1E7826FD8;
    v24[4] = block;
    [v17 generateMoviePreviewForAttachmentWithFileURL:preview maxPixelDimension:v24 minThumbnailPxSize:v18 scale:width resultHandler:{height, v19}];
  }

  else
  {
    v20 = [IMAttachmentBlastdoor logger:width];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      blockCopy = block;
      v27 = 2112;
      previewCopy2 = preview;
      v29 = 2048;
      widthCopy = width;
      v31 = 2048;
      scaleCopy = scale;
      _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_DEFAULT, "Invalid movie preview input. Completion? %@, sourceURL? %@, maxPxWidth: %f, scale: %f", buf, 0x2Au);
    }

    if (block)
    {
      v21 = objc_alloc(MEMORY[0x1E695DF20]);
      if (preview)
      {
        absoluteString = [preview absoluteString];
      }

      else
      {
        absoluteString = @"NO";
      }

      v23 = [v21 initWithObjectsAndKeys:{absoluteString, @"sourceURL", 0}];
      (*(block + 2))(block, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v23]);
    }
  }
}

+ (void)defuseBalloonPluginPayloadData:(id)data senderContext:(id)context withBundleIdentifier:(id)identifier completionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  if (block)
  {
    if (data)
    {
      v23 = 0;
      v8 = [objc_msgSend(self blastdoorInterfaceForSenderContext:{context), "defuseBalloonPluginPayload:withIdentifier:error:", data, identifier, &v23}];
      v9 = +[IMAttachmentBlastdoor logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v25 = v8;
        v26 = 2112;
        identifierCopy = identifier;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_DEFAULT, "Blastdoor response %p received (identifier: %@)", buf, 0x16u);
      }

      if (!v8)
      {
        v17 = +[IMAttachmentBlastdoor logger];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C1324(&v23, v17);
        }

        attachments = 0;
        v19 = 0;
        goto LABEL_30;
      }

      v10 = [objc_msgSend(v8 "payload")];
      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_25;
          }

          v20 = [objc_msgSend(v8 "payload")];
        }

        else
        {
          v20 = [objc_msgSend(v8 "payload")];
        }
      }

      else
      {
        switch(v10)
        {
          case 2:
            v20 = [objc_msgSend(v8 "payload")];
            break;
          case 4:
            v20 = [objc_msgSend(v8 "payload")];
            break;
          case 3:
            v11 = +[IMAttachmentBlastdoor logger];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v12 = "[WARN] Should not have received BlastDoorBalloonPluginPayloadCombinedPluginAttachmentInfo back as payload type.";
              v13 = v11;
              v14 = 2;
LABEL_27:
              _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
              goto LABEL_28;
            }

            goto LABEL_28;
          default:
LABEL_25:
            v21 = +[IMAttachmentBlastdoor logger];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [objc_msgSend(v8 "payload")];
              *buf = 134217984;
              v25 = v22;
              v12 = "[WARN] Unable to handle unknown payload type (type: %tu).";
              v13 = v21;
              v14 = 12;
              goto LABEL_27;
            }

LABEL_28:
            v19 = 0;
            goto LABEL_29;
        }
      }

      v19 = v20;
LABEL_29:
      attachments = [v8 attachments];
LABEL_30:
      (*(block + 2))(block, v19, attachments, v23);
      return;
    }

    v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13400 userInfo:0];
    v16 = *(block + 2);

    v16(block, 0, 0, v15);
  }
}

+ (void)sendBalloonPluginPayloadData:(id)data senderContext:(id)context withBundleIdentifier:(id)identifier completionBlock:(id)block
{
  if (block)
  {
    if (data)
    {
      v10 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v12 = sub_1A8644238;
      v13 = &unk_1E7827028;
      identifierCopy = identifier;
      blockCopy = block;
      v7 = [objc_msgSend(self blastdoorInterfaceForSenderContext:{context), "defuseBalloonPluginPayload:withIdentifier:error:", data, identifier, &v10}];
      v12(v11, v7, v10);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13400 userInfo:0];
      v9 = *(block + 2);

      v9(block, 0, 0, v8);
    }
  }
}

+ (void)generateAudioPreview:(id)preview senderContext:(id)context withCompletionBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  if (preview && block)
  {
    v7 = [self blastdoorInterfaceForSenderContext:context];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A86446EC;
    v12[3] = &unk_1E7827050;
    v12[4] = preview;
    v12[5] = block;
    [v7 generatePreviewforAudioMessageWithfileURL:preview resultHandler:v12];
  }

  else
  {
    v8 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      blockCopy = block;
      v15 = 2112;
      previewCopy = preview;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_DEFAULT, "Invalid audio preview input. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (block)
    {
      v9 = objc_alloc(MEMORY[0x1E695DF20]);
      if (preview)
      {
        absoluteString = [preview absoluteString];
      }

      else
      {
        absoluteString = @"NO";
      }

      v11 = [v9 initWithObjectsAndKeys:{absoluteString, @"sourceURL", 0}];
      (*(block + 2))(block, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v11]);
    }
  }
}

+ (id)defuseNicknameCommand:(id)command senderContext:(id)context error:(id *)error
{
  v5 = [self blastdoorInterfaceForSenderContext:context];

  return MEMORY[0x1EEE66B58](v5, sel_defuseNicknameCommand_error_);
}

+ (void)generateNickname:(id)nickname senderContext:(id)context forRecordID:(id)d wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag withKey:(id)self0 processImageFields:(BOOL)self1 completionBlock:(id)self2
{
  v33[6] = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")] && IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    v32[0] = @"nicknameData";
    v32[1] = @"recordID";
    v33[0] = nickname;
    v33[1] = d;
    v32[2] = @"wallpaperDataTag";
    v32[3] = @"wallpaperLowResDataTag";
    v33[2] = tag;
    v33[3] = dataTag;
    v32[4] = @"wallpaperMetadataTag";
    v32[5] = @"key";
    v33[4] = metadataTag;
    v33[5] = key;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];
    +[IMInternalPayloadUtilities writeMessagePayloadToDisk:fileName:](IMInternalPayloadUtilities, "writeMessagePayloadToDisk:fileName:", v18, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.nicknamedata", objc_msgSend(MEMORY[0x1E696AEC0], "stringGUID")]);
  }

  [self blastdoorInterfaceForSenderContext:context];
  v19 = objc_opt_respondsToSelector();
  v20 = [self blastdoorInterfaceForSenderContext:context];
  if (v19)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1A8644B94;
    v31[3] = &unk_1E7826FD8;
    v31[4] = block;
    LOBYTE(v26) = fields;
    [v20 defuseNicknameDictionary:nickname withKey:key recordTag:d wallpaperDataTag:tag wallpaperLowResDataTag:dataTag wallpaperMetadataTag:metadataTag avatarRecipeDataTag:recipeDataTag processImageFields:v26 resultHandler:v31];
  }

  else
  {
    v21 = objc_opt_respondsToSelector();
    v22 = [self blastdoorInterfaceForSenderContext:context];
    if (v21)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1A8644BA4;
      v30[3] = &unk_1E7826FD8;
      v30[4] = block;
      LOBYTE(v25) = fields;
      [v22 defuseNicknameDictionary:nickname withKey:key recordTag:d wallpaperDataTag:tag wallpaperLowResDataTag:dataTag wallpaperMetadataTag:metadataTag processImageFields:v25 resultHandler:v30];
    }

    else
    {
      v23 = objc_opt_respondsToSelector();
      v24 = [self blastdoorInterfaceForSenderContext:context];
      if (v23)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_1A8644BB4;
        v29[3] = &unk_1E7826FD8;
        v29[4] = block;
        [v24 defuseNicknameDictionary:nickname withKey:key recordTag:d wallpaperDataTag:tag wallpaperLowResDataTag:dataTag wallpaperMetadataTag:metadataTag resultHandler:v29];
      }

      else
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_1A8644BC4;
        v28[3] = &unk_1E7826FD8;
        v28[4] = block;
        [v24 defuseNicknameDictionary:nickname withKey:key recordTag:d resultHandler:v28];
      }
    }
  }
}

+ (void)generatePassPreview:(id)preview senderContext:(id)context withCompletionBlock:(id)block
{
  if (preview && block)
  {
    v7 = [self blastdoorInterfaceForSenderContext:context];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A8644D98;
    v14[3] = &unk_1E7826FD8;
    v14[4] = block;
    [v7 generatePreviewforAttachmentWithfileURL:preview maxPixelDimension:v14 scale:0.0 resultHandler:0.0];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    absoluteString = @"NO";
    if (block)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (preview)
    {
      absoluteString = [preview absoluteString];
    }

    v11 = [v8 initWithObjectsAndKeys:{v10, @"completion", absoluteString, @"sourceURL", 0}];
    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v11];
    v13 = *(block + 2);

    v13(block, 0, v12);
  }
}

+ (void)generateAnimatedImagePreview:(id)preview senderContext:(id)context destinationFileURL:(id)l maxPixelDimension:(double)dimension scale:(double)scale maxFrameCount:(int64_t)count isSticker:(BOOL)sticker withCompletionBlock:(id)self0
{
  stickerCopy = sticker;
  v38 = *MEMORY[0x1E69E9840];
  if ([+[IMFeatureFlags isSessionAnimatedImageUnpackerEnabled] sharedFeatureFlags]
  {
    if (preview && block)
    {
      v19 = +[IMAttachmentBlastdoor logger];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        previewCopy3 = preview;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_DEFAULT, "Sending request to generate animated image preview to BlastDoor for %@", buf, 0xCu);
      }

      v20 = [self blastdoorInterfaceForSenderContext:context];
      *&v21 = dimension;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_1A8645274;
      v33[3] = &unk_1E7827078;
      *&v22 = scale;
      v33[4] = context;
      v33[5] = block;
      [v20 generatePreviewForMultiFrameImageWithFileURL:preview destinationFileURL:l maxPixelDimension:count scale:stickerCopy maxFrameCount:v33 isSticker:v21 resultHandler:COERCE_DOUBLE(v22)];
    }

    else
    {
      v26 = +[IMAttachmentBlastdoor logger];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        previewCopy3 = block;
        v36 = 2112;
        previewCopy2 = preview;
        _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_DEFAULT, "Invalid animated image preview input. Completion? %@, sourceURL? %@", buf, 0x16u);
      }

      if (block)
      {
        v27 = objc_alloc(MEMORY[0x1E695DF20]);
        if (preview)
        {
          absoluteString = [preview absoluteString];
        }

        else
        {
          absoluteString = @"NO";
        }

        v31 = [v27 initWithObjectsAndKeys:{absoluteString, @"sourceURL", 0}];
        v32 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v31];
        (*(block + 2))(block, 0, v32, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
      }
    }
  }

  else
  {
    v23 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      previewCopy3 = preview;
      _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_DEFAULT, "Calling wrong animated image preview - isSessionAnimatedImageUnpackerEnabled is not true, sourceURL? %@", buf, 0xCu);
    }

    if (block)
    {
      v24 = objc_alloc(MEMORY[0x1E695DF20]);
      if (preview)
      {
        absoluteString2 = [preview absoluteString];
      }

      else
      {
        absoluteString2 = @"NO";
      }

      v29 = [v24 initWithObjectsAndKeys:{absoluteString2, @"sourceURL", 0}];
      v30 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v29];
      (*(block + 2))(block, 0, v30, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
    }
  }
}

+ (void)getMetadataForAnimatedImage:(id)image senderContext:(id)context maxCount:(int64_t)count withCompletionBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  if ([+[IMFeatureFlags isSessionAnimatedImageUnpackerEnabled] sharedFeatureFlags]
  {
    v11 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      blockCopy = image;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_DEFAULT, "Calling wrong animated image preview getMetadataForAnimatedImage - isSessionAnimatedImageUnpackerEnabled is true, sourceURL? %@", buf, 0xCu);
    }

    if (block)
    {
      v12 = objc_alloc(MEMORY[0x1E695DF20]);
      if (image)
      {
        absoluteString = [image absoluteString];
      }

      else
      {
        absoluteString = @"NO";
      }

      v19 = [v12 initWithObjectsAndKeys:{absoluteString, @"sourceURL", 0}];
      (*(block + 2))(block, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v19]);
    }
  }

  else if (image && block)
  {
    v14 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      blockCopy = image;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_DEFAULT, "Sending request to get metadata for animated image to BlastDoor for %@", buf, 0xCu);
    }

    v15 = [self blastdoorInterfaceForSenderContext:context];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A8645848;
    v21[3] = &unk_1E7826FD8;
    v21[4] = block;
    [v15 getMetadataforAnimatedImageWithfileURL:image maxCount:count resultHandler:v21];
  }

  else
  {
    v16 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      blockCopy = block;
      v24 = 2112;
      imageCopy3 = image;
      _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_DEFAULT, "Invalid input for getting animated image metadata. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (block)
    {
      v17 = objc_alloc(MEMORY[0x1E695DF20]);
      if (image)
      {
        absoluteString2 = [image absoluteString];
      }

      else
      {
        absoluteString2 = @"NO";
      }

      v20 = [v17 initWithObjectsAndKeys:{absoluteString2, @"sourceURL", 0}];
      (*(block + 2))(block, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v20]);
    }
  }
}

+ (void)generateAnimatedImagePreview:(id)preview senderContext:(id)context maxPixelDimension:(double)dimension index:(int64_t)index maxCount:(int64_t)count withCompletionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  if ([+[IMFeatureFlags isSessionAnimatedImageUnpackerEnabled] sharedFeatureFlags]
  {
    v15 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      blockCopy = preview;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_DEFAULT, "Calling wrong animated image preview - isSessionAnimatedImageUnpackerEnabled is true, sourceURL? %@", buf, 0xCu);
    }

    if (block)
    {
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      if (!preview)
      {
        absoluteString = @"NO";
        goto LABEL_19;
      }

LABEL_16:
      absoluteString = [preview absoluteString];
LABEL_19:
      v22 = [v16 initWithObjectsAndKeys:{absoluteString, @"sourceURL", 0}];
      (*(block + 2))(block, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v22]);
    }
  }

  else if (preview && block)
  {
    v17 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      blockCopy = preview;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_DEFAULT, "Sending request to generate animated image preview to BlastDoor for %@", buf, 0xCu);
    }

    v18 = [self blastdoorInterfaceForSenderContext:context];
    *&v19 = dimension;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1A8645CF8;
    v23[3] = &unk_1E7826FD8;
    v23[4] = block;
    [v18 generatePreviewforAnimatedImageWithfileURL:preview maxPixelDimension:index index:count maxCount:v23 resultHandler:v19];
  }

  else
  {
    v20 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      blockCopy = block;
      v26 = 2112;
      previewCopy3 = preview;
      _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_DEFAULT, "Invalid animated image preview input. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (block)
    {
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      if (!preview)
      {
        absoluteString = @"NO";
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }
}

+ (id)generateImagePreviewForFileURL:(id)l senderContext:(id)context maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    lCopy = l;
    _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Sending request to generate synchronous image preview to BlastDoor for %@", &v18, 0xCu);
  }

  v14 = [self blastdoorInterfaceForSenderContext:context];
  *&v15 = dimension;
  *&v16 = scale;
  return [v14 generateImagePreviewForFileURL:l maxPixelDimension:error scale:v15 error:v16];
}

+ (void)getMetadataForEmojiImageWithFileURL:(id)l senderContext:(id)context maxStrikeCount:(int64_t)count withCompletionBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  if (l && block)
  {
    v11 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      blockCopy = l;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_DEFAULT, "Sending request to get metadata for emoji image to BlastDoor for %@", buf, 0xCu);
    }

    v12 = [self blastdoorInterfaceForSenderContext:context];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A864618C;
    v17[3] = &unk_1E7826FD8;
    v17[4] = block;
    [v12 getMetadataForEmojiImageWithFileURL:l maxStrikeCount:count resultHandler:v17];
  }

  else
  {
    v13 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      blockCopy = block;
      v20 = 2112;
      lCopy2 = l;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Invalid input for getting emoji image metadata. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (block)
    {
      v14 = objc_alloc(MEMORY[0x1E695DF20]);
      if (l)
      {
        absoluteString = [l absoluteString];
      }

      else
      {
        absoluteString = @"NO";
      }

      v16 = [v14 initWithObjectsAndKeys:{absoluteString, @"sourceURL", 0}];
      (*(block + 2))(block, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v16]);
    }
  }
}

+ (void)generateEmojiImagePreview:(id)preview senderContext:(id)context frameIndex:(int64_t)index maxPixelDimension:(double)dimension withCompletionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  if (preview && block)
  {
    v13 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      blockCopy = preview;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Sending request to generate emoji image to BlastDoor for %@", buf, 0xCu);
    }

    v14 = [self blastdoorInterfaceForSenderContext:context];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A8646540;
    v19[3] = &unk_1E7826FD8;
    v19[4] = block;
    [v14 generatePreviewForEmojiImageWithFileURL:preview frameIndex:index maxPixelDimension:v19 resultHandler:dimension];
  }

  else
  {
    v15 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      blockCopy = block;
      v22 = 2112;
      previewCopy2 = preview;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_DEFAULT, "Invalid emoji image preview input. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (block)
    {
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      if (preview)
      {
        absoluteString = [preview absoluteString];
      }

      else
      {
        absoluteString = @"NO";
      }

      v18 = [v16 initWithObjectsAndKeys:{absoluteString, @"sourceURL", 0}];
      (*(block + 2))(block, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v18]);
    }
  }
}

+ (void)generateTranscriptBackground:(id)background senderContext:(id)context completion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (background && completion)
  {
    if (+[IMDeviceUtilities supportsTranscriptBackgrounds])
    {
      v9 = [self blastdoorInterfaceForSenderContext:context];
      if (objc_opt_respondsToSelector())
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = sub_1A8646784;
        v11[3] = &unk_1E7826FD8;
        v11[4] = completion;
        [v9 defuseTranscriptBackground:background resultHandler:v11];
      }
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = *MEMORY[0x1E696A578];
      v13[0] = @"Device is in lock down mode, refusing to decode background.";
      (*(completion + 2))(completion, 0, [v10 initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:11 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}]);
    }
  }
}

+ (void)generateTranscriptBackgroundCommandFrom:(id)from senderContext:(id)context completion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (completion)
  {
    if (+[IMDeviceUtilities supportsTranscriptBackgrounds])
    {
      v9 = [self blastdoorInterfaceForSenderContext:context];
      if (objc_opt_respondsToSelector())
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = sub_1A86469C4;
        v11[3] = &unk_1E7826FD8;
        v11[4] = completion;
        [v9 defuseTranscriptBackgroundCommand:from resultHandler:v11];
      }
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = *MEMORY[0x1E696A578];
      v13[0] = @"Device is in lock down mode, refusing to decode background command.";
      (*(completion + 2))(completion, 0, [v10 initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}]);
    }
  }
}

@end