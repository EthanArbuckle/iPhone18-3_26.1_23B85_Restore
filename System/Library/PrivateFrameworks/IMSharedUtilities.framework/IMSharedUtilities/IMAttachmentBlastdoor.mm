@interface IMAttachmentBlastdoor
+ (BOOL)supportsFeature:(id)a3;
+ (id)blastdoorInterfaceForSenderContext:(id)a3;
+ (id)defuseNicknameCommand:(id)a3 senderContext:(id)a4 error:(id *)a5;
+ (id)generateImagePreviewForFileURL:(id)a3 senderContext:(id)a4 maxPixelDimension:(float)a5 scale:(float)a6 error:(id *)a7;
+ (id)logger;
+ (void)defuseBalloonPluginPayloadData:(id)a3 senderContext:(id)a4 withBundleIdentifier:(id)a5 completionBlock:(id)a6;
+ (void)generateAnimatedImagePreview:(id)a3 senderContext:(id)a4 destinationFileURL:(id)a5 maxPixelDimension:(double)a6 scale:(double)a7 maxFrameCount:(int64_t)a8 isSticker:(BOOL)a9 withCompletionBlock:(id)a10;
+ (void)generateAnimatedImagePreview:(id)a3 senderContext:(id)a4 maxPixelDimension:(double)a5 index:(int64_t)a6 maxCount:(int64_t)a7 withCompletionBlock:(id)a8;
+ (void)generateAudioPreview:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5;
+ (void)generateEmojiImagePreview:(id)a3 senderContext:(id)a4 frameIndex:(int64_t)a5 maxPixelDimension:(double)a6 withCompletionBlock:(id)a7;
+ (void)generateMoviePreview:(id)a3 senderContext:(id)a4 maxPxWidth:(double)a5 minThumbnailPxSize:(CGSize)a6 scale:(double)a7 withCompletionBlock:(id)a8;
+ (void)generateNickname:(id)a3 senderContext:(id)a4 forRecordID:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 avatarRecipeDataTag:(id)a9 withKey:(id)a10 processImageFields:(BOOL)a11 completionBlock:(id)a12;
+ (void)generatePassPreview:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5;
+ (void)generatePreview:(id)a3 senderContext:(id)a4 maxPxWidth:(double)a5 scale:(double)a6 withCompletionBlock:(id)a7;
+ (void)generateTranscriptBackground:(id)a3 senderContext:(id)a4 completion:(id)a5;
+ (void)generateTranscriptBackgroundCommandFrom:(id)a3 senderContext:(id)a4 completion:(id)a5;
+ (void)generateWorkoutPreview:(id)a3 senderContext:(id)a4 maxPxWidth:(double)a5 scale:(double)a6 withCompletionBlock:(id)a7;
+ (void)getMetadataForAnimatedImage:(id)a3 senderContext:(id)a4 maxCount:(int64_t)a5 withCompletionBlock:(id)a6;
+ (void)getMetadataForEmojiImageWithFileURL:(id)a3 senderContext:(id)a4 maxStrikeCount:(int64_t)a5 withCompletionBlock:(id)a6;
+ (void)sendBalloonPluginPayloadData:(id)a3 senderContext:(id)a4 withBundleIdentifier:(id)a5 completionBlock:(id)a6;
+ (void)sendData:(id)a3 senderContext:(id)a4 forPreviewType:(unsigned __int8)a5 withCompletionBlock:(id)a6;
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

+ (BOOL)supportsFeature:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EB30AE48 != -1)
  {
    sub_1A88C12D4();
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [qword_1EB30AE50 supportsFeature:a3];
    v5 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v9 = 138412546;
      v10 = a3;
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
      v10 = a3;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_DEFAULT, "Outdated BlastDoor: Cannot check feature (%@) support", &v9, 0xCu);
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

+ (id)blastdoorInterfaceForSenderContext:(id)a3
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

    v4 = [a3 isTrustedSender];
    v5 = &qword_1ED8CA488;
    if (!v4)
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

+ (void)generatePreview:(id)a3 senderContext:(id)a4 maxPxWidth:(double)a5 scale:(double)a6 withCompletionBlock:(id)a7
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 && a7)
  {
    v13 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = a3;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Sending request to generate preview to BlastDoor for %@", buf, 0xCu);
    }

    v14 = [a1 blastdoorInterfaceForSenderContext:a4];
    *&v15 = a5;
    *&v16 = a6;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A864339C;
    v21[3] = &unk_1E7826FD8;
    v21[4] = a7;
    [v14 generatePreviewforAttachmentWithfileURL:a3 maxPixelDimension:v21 scale:v15 resultHandler:v16];
  }

  else
  {
    v17 = [IMAttachmentBlastdoor logger:a5];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = a7;
      v24 = 2112;
      v25 = a3;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_DEFAULT, "Invalid image preview input. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (a7)
    {
      v18 = objc_alloc(MEMORY[0x1E695DF20]);
      if (a3)
      {
        v19 = [a3 absoluteString];
      }

      else
      {
        v19 = @"NO";
      }

      v20 = [v18 initWithObjectsAndKeys:{v19, @"sourceURL", 0}];
      (*(a7 + 2))(a7, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v20]);
    }
  }
}

+ (void)generateWorkoutPreview:(id)a3 senderContext:(id)a4 maxPxWidth:(double)a5 scale:(double)a6 withCompletionBlock:(id)a7
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3 && a7)
  {
    v13 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = a3;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Sending request to generate workout preview to BlastDoor for %@", buf, 0xCu);
    }

    v14 = [a1 blastdoorInterfaceForSenderContext:a4];
    *&v15 = a5;
    *&v16 = a6;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A864377C;
    v21[3] = &unk_1E7826FD8;
    v21[4] = a7;
    [v14 generateWorkoutPreviewForAttachmentWithFileURL:a3 maxPixelDimension:v21 scale:v15 resultHandler:v16];
  }

  else
  {
    v17 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v23 = a7;
      v24 = 2112;
      v25 = a3;
      v26 = 2048;
      v27 = a5;
      v28 = 2048;
      v29 = a6;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_DEFAULT, "Invalid workout preview input. Completion? %@, sourceURL? %@, maxPxWidth: %f, scale: %f", buf, 0x2Au);
    }

    if (a7)
    {
      v18 = objc_alloc(MEMORY[0x1E695DF20]);
      if (a3)
      {
        v19 = [a3 absoluteString];
      }

      else
      {
        v19 = @"NO";
      }

      v20 = [v18 initWithObjectsAndKeys:{v19, @"sourceURL", 0}];
      (*(a7 + 2))(a7, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v20]);
    }
  }
}

+ (void)sendData:(id)a3 senderContext:(id)a4 forPreviewType:(unsigned __int8)a5 withCompletionBlock:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 && a6)
  {
    v8 = a5;
    v11 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v8;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_DEFAULT, "Piping data through BlastDoor for preview type: %u", buf, 8u);
    }

    v12 = [a1 blastdoorInterfaceForSenderContext:a4];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A8643A40;
    v18[3] = &unk_1E7827000;
    v19 = v8;
    v18[4] = a6;
    [v12 defuseData:a3 forPreviewType:v8 resultHandler:v18];
  }

  else if (a6)
  {
    v13 = objc_alloc(MEMORY[0x1E695DF20]);
    if (a3)
    {
      v14 = [a3 description];
    }

    else
    {
      v14 = @"NO";
    }

    v15 = [v13 initWithObjectsAndKeys:{v14, @"data", 0}];
    v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v15];
    v17 = *(a6 + 2);

    v17(a6, 0, v16);
  }
}

+ (void)generateMoviePreview:(id)a3 senderContext:(id)a4 maxPxWidth:(double)a5 minThumbnailPxSize:(CGSize)a6 scale:(double)a7 withCompletionBlock:(id)a8
{
  v33 = *MEMORY[0x1E69E9840];
  if (a3 && a8)
  {
    height = a6.height;
    width = a6.width;
    v16 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = a3;
      _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_DEFAULT, "Sending request to generate movie preview to BlastDoor for %@", buf, 0xCu);
    }

    v17 = [a1 blastdoorInterfaceForSenderContext:a4];
    *&v18 = a5;
    *&v19 = a7;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1A8643E3C;
    v24[3] = &unk_1E7826FD8;
    v24[4] = a8;
    [v17 generateMoviePreviewForAttachmentWithFileURL:a3 maxPixelDimension:v24 minThumbnailPxSize:v18 scale:width resultHandler:{height, v19}];
  }

  else
  {
    v20 = [IMAttachmentBlastdoor logger:a5];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v26 = a8;
      v27 = 2112;
      v28 = a3;
      v29 = 2048;
      v30 = a5;
      v31 = 2048;
      v32 = a7;
      _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_DEFAULT, "Invalid movie preview input. Completion? %@, sourceURL? %@, maxPxWidth: %f, scale: %f", buf, 0x2Au);
    }

    if (a8)
    {
      v21 = objc_alloc(MEMORY[0x1E695DF20]);
      if (a3)
      {
        v22 = [a3 absoluteString];
      }

      else
      {
        v22 = @"NO";
      }

      v23 = [v21 initWithObjectsAndKeys:{v22, @"sourceURL", 0}];
      (*(a8 + 2))(a8, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v23]);
    }
  }
}

+ (void)defuseBalloonPluginPayloadData:(id)a3 senderContext:(id)a4 withBundleIdentifier:(id)a5 completionBlock:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    if (a3)
    {
      v23 = 0;
      v8 = [objc_msgSend(a1 blastdoorInterfaceForSenderContext:{a4), "defuseBalloonPluginPayload:withIdentifier:error:", a3, a5, &v23}];
      v9 = +[IMAttachmentBlastdoor logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v25 = v8;
        v26 = 2112;
        v27 = a5;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_DEFAULT, "Blastdoor response %p received (identifier: %@)", buf, 0x16u);
      }

      if (!v8)
      {
        v17 = +[IMAttachmentBlastdoor logger];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C1324(&v23, v17);
        }

        v18 = 0;
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
      v18 = [v8 attachments];
LABEL_30:
      (*(a6 + 2))(a6, v19, v18, v23);
      return;
    }

    v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13400 userInfo:0];
    v16 = *(a6 + 2);

    v16(a6, 0, 0, v15);
  }
}

+ (void)sendBalloonPluginPayloadData:(id)a3 senderContext:(id)a4 withBundleIdentifier:(id)a5 completionBlock:(id)a6
{
  if (a6)
  {
    if (a3)
    {
      v10 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v12 = sub_1A8644238;
      v13 = &unk_1E7827028;
      v14 = a5;
      v15 = a6;
      v7 = [objc_msgSend(a1 blastdoorInterfaceForSenderContext:{a4), "defuseBalloonPluginPayload:withIdentifier:error:", a3, a5, &v10}];
      v12(v11, v7, v10);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13400 userInfo:0];
      v9 = *(a6 + 2);

      v9(a6, 0, 0, v8);
    }
  }
}

+ (void)generateAudioPreview:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 && a5)
  {
    v7 = [a1 blastdoorInterfaceForSenderContext:a4];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A86446EC;
    v12[3] = &unk_1E7827050;
    v12[4] = a3;
    v12[5] = a5;
    [v7 generatePreviewforAudioMessageWithfileURL:a3 resultHandler:v12];
  }

  else
  {
    v8 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = a5;
      v15 = 2112;
      v16 = a3;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_DEFAULT, "Invalid audio preview input. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (a5)
    {
      v9 = objc_alloc(MEMORY[0x1E695DF20]);
      if (a3)
      {
        v10 = [a3 absoluteString];
      }

      else
      {
        v10 = @"NO";
      }

      v11 = [v9 initWithObjectsAndKeys:{v10, @"sourceURL", 0}];
      (*(a5 + 2))(a5, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v11]);
    }
  }
}

+ (id)defuseNicknameCommand:(id)a3 senderContext:(id)a4 error:(id *)a5
{
  v5 = [a1 blastdoorInterfaceForSenderContext:a4];

  return MEMORY[0x1EEE66B58](v5, sel_defuseNicknameCommand_error_);
}

+ (void)generateNickname:(id)a3 senderContext:(id)a4 forRecordID:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 avatarRecipeDataTag:(id)a9 withKey:(id)a10 processImageFields:(BOOL)a11 completionBlock:(id)a12
{
  v33[6] = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")] && IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    v32[0] = @"nicknameData";
    v32[1] = @"recordID";
    v33[0] = a3;
    v33[1] = a5;
    v32[2] = @"wallpaperDataTag";
    v32[3] = @"wallpaperLowResDataTag";
    v33[2] = a6;
    v33[3] = a7;
    v32[4] = @"wallpaperMetadataTag";
    v32[5] = @"key";
    v33[4] = a8;
    v33[5] = a10;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];
    +[IMInternalPayloadUtilities writeMessagePayloadToDisk:fileName:](IMInternalPayloadUtilities, "writeMessagePayloadToDisk:fileName:", v18, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.nicknamedata", objc_msgSend(MEMORY[0x1E696AEC0], "stringGUID")]);
  }

  [a1 blastdoorInterfaceForSenderContext:a4];
  v19 = objc_opt_respondsToSelector();
  v20 = [a1 blastdoorInterfaceForSenderContext:a4];
  if (v19)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1A8644B94;
    v31[3] = &unk_1E7826FD8;
    v31[4] = a12;
    LOBYTE(v26) = a11;
    [v20 defuseNicknameDictionary:a3 withKey:a10 recordTag:a5 wallpaperDataTag:a6 wallpaperLowResDataTag:a7 wallpaperMetadataTag:a8 avatarRecipeDataTag:a9 processImageFields:v26 resultHandler:v31];
  }

  else
  {
    v21 = objc_opt_respondsToSelector();
    v22 = [a1 blastdoorInterfaceForSenderContext:a4];
    if (v21)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1A8644BA4;
      v30[3] = &unk_1E7826FD8;
      v30[4] = a12;
      LOBYTE(v25) = a11;
      [v22 defuseNicknameDictionary:a3 withKey:a10 recordTag:a5 wallpaperDataTag:a6 wallpaperLowResDataTag:a7 wallpaperMetadataTag:a8 processImageFields:v25 resultHandler:v30];
    }

    else
    {
      v23 = objc_opt_respondsToSelector();
      v24 = [a1 blastdoorInterfaceForSenderContext:a4];
      if (v23)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_1A8644BB4;
        v29[3] = &unk_1E7826FD8;
        v29[4] = a12;
        [v24 defuseNicknameDictionary:a3 withKey:a10 recordTag:a5 wallpaperDataTag:a6 wallpaperLowResDataTag:a7 wallpaperMetadataTag:a8 resultHandler:v29];
      }

      else
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_1A8644BC4;
        v28[3] = &unk_1E7826FD8;
        v28[4] = a12;
        [v24 defuseNicknameDictionary:a3 withKey:a10 recordTag:a5 resultHandler:v28];
      }
    }
  }
}

+ (void)generatePassPreview:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5
{
  if (a3 && a5)
  {
    v7 = [a1 blastdoorInterfaceForSenderContext:a4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A8644D98;
    v14[3] = &unk_1E7826FD8;
    v14[4] = a5;
    [v7 generatePreviewforAttachmentWithfileURL:a3 maxPixelDimension:v14 scale:0.0 resultHandler:0.0];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = @"NO";
    if (a5)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (a3)
    {
      v9 = [a3 absoluteString];
    }

    v11 = [v8 initWithObjectsAndKeys:{v10, @"completion", v9, @"sourceURL", 0}];
    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v11];
    v13 = *(a5 + 2);

    v13(a5, 0, v12);
  }
}

+ (void)generateAnimatedImagePreview:(id)a3 senderContext:(id)a4 destinationFileURL:(id)a5 maxPixelDimension:(double)a6 scale:(double)a7 maxFrameCount:(int64_t)a8 isSticker:(BOOL)a9 withCompletionBlock:(id)a10
{
  v11 = a9;
  v38 = *MEMORY[0x1E69E9840];
  if ([+[IMFeatureFlags isSessionAnimatedImageUnpackerEnabled] sharedFeatureFlags]
  {
    if (a3 && a10)
    {
      v19 = +[IMAttachmentBlastdoor logger];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = a3;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_DEFAULT, "Sending request to generate animated image preview to BlastDoor for %@", buf, 0xCu);
      }

      v20 = [a1 blastdoorInterfaceForSenderContext:a4];
      *&v21 = a6;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_1A8645274;
      v33[3] = &unk_1E7827078;
      *&v22 = a7;
      v33[4] = a4;
      v33[5] = a10;
      [v20 generatePreviewForMultiFrameImageWithFileURL:a3 destinationFileURL:a5 maxPixelDimension:a8 scale:v11 maxFrameCount:v33 isSticker:v21 resultHandler:COERCE_DOUBLE(v22)];
    }

    else
    {
      v26 = +[IMAttachmentBlastdoor logger];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = a10;
        v36 = 2112;
        v37 = a3;
        _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_DEFAULT, "Invalid animated image preview input. Completion? %@, sourceURL? %@", buf, 0x16u);
      }

      if (a10)
      {
        v27 = objc_alloc(MEMORY[0x1E695DF20]);
        if (a3)
        {
          v28 = [a3 absoluteString];
        }

        else
        {
          v28 = @"NO";
        }

        v31 = [v27 initWithObjectsAndKeys:{v28, @"sourceURL", 0}];
        v32 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v31];
        (*(a10 + 2))(a10, 0, v32, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
      }
    }
  }

  else
  {
    v23 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = a3;
      _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_DEFAULT, "Calling wrong animated image preview - isSessionAnimatedImageUnpackerEnabled is not true, sourceURL? %@", buf, 0xCu);
    }

    if (a10)
    {
      v24 = objc_alloc(MEMORY[0x1E695DF20]);
      if (a3)
      {
        v25 = [a3 absoluteString];
      }

      else
      {
        v25 = @"NO";
      }

      v29 = [v24 initWithObjectsAndKeys:{v25, @"sourceURL", 0}];
      v30 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v29];
      (*(a10 + 2))(a10, 0, v30, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
    }
  }
}

+ (void)getMetadataForAnimatedImage:(id)a3 senderContext:(id)a4 maxCount:(int64_t)a5 withCompletionBlock:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  if ([+[IMFeatureFlags isSessionAnimatedImageUnpackerEnabled] sharedFeatureFlags]
  {
    v11 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = a3;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_DEFAULT, "Calling wrong animated image preview getMetadataForAnimatedImage - isSessionAnimatedImageUnpackerEnabled is true, sourceURL? %@", buf, 0xCu);
    }

    if (a6)
    {
      v12 = objc_alloc(MEMORY[0x1E695DF20]);
      if (a3)
      {
        v13 = [a3 absoluteString];
      }

      else
      {
        v13 = @"NO";
      }

      v19 = [v12 initWithObjectsAndKeys:{v13, @"sourceURL", 0}];
      (*(a6 + 2))(a6, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v19]);
    }
  }

  else if (a3 && a6)
  {
    v14 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = a3;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_DEFAULT, "Sending request to get metadata for animated image to BlastDoor for %@", buf, 0xCu);
    }

    v15 = [a1 blastdoorInterfaceForSenderContext:a4];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A8645848;
    v21[3] = &unk_1E7826FD8;
    v21[4] = a6;
    [v15 getMetadataforAnimatedImageWithfileURL:a3 maxCount:a5 resultHandler:v21];
  }

  else
  {
    v16 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = a6;
      v24 = 2112;
      v25 = a3;
      _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_DEFAULT, "Invalid input for getting animated image metadata. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (a6)
    {
      v17 = objc_alloc(MEMORY[0x1E695DF20]);
      if (a3)
      {
        v18 = [a3 absoluteString];
      }

      else
      {
        v18 = @"NO";
      }

      v20 = [v17 initWithObjectsAndKeys:{v18, @"sourceURL", 0}];
      (*(a6 + 2))(a6, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v20]);
    }
  }
}

+ (void)generateAnimatedImagePreview:(id)a3 senderContext:(id)a4 maxPixelDimension:(double)a5 index:(int64_t)a6 maxCount:(int64_t)a7 withCompletionBlock:(id)a8
{
  v28 = *MEMORY[0x1E69E9840];
  if ([+[IMFeatureFlags isSessionAnimatedImageUnpackerEnabled] sharedFeatureFlags]
  {
    v15 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = a3;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_DEFAULT, "Calling wrong animated image preview - isSessionAnimatedImageUnpackerEnabled is true, sourceURL? %@", buf, 0xCu);
    }

    if (a8)
    {
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      if (!a3)
      {
        v21 = @"NO";
        goto LABEL_19;
      }

LABEL_16:
      v21 = [a3 absoluteString];
LABEL_19:
      v22 = [v16 initWithObjectsAndKeys:{v21, @"sourceURL", 0}];
      (*(a8 + 2))(a8, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v22]);
    }
  }

  else if (a3 && a8)
  {
    v17 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = a3;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_DEFAULT, "Sending request to generate animated image preview to BlastDoor for %@", buf, 0xCu);
    }

    v18 = [a1 blastdoorInterfaceForSenderContext:a4];
    *&v19 = a5;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1A8645CF8;
    v23[3] = &unk_1E7826FD8;
    v23[4] = a8;
    [v18 generatePreviewforAnimatedImageWithfileURL:a3 maxPixelDimension:a6 index:a7 maxCount:v23 resultHandler:v19];
  }

  else
  {
    v20 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = a8;
      v26 = 2112;
      v27 = a3;
      _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_DEFAULT, "Invalid animated image preview input. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (a8)
    {
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      if (!a3)
      {
        v21 = @"NO";
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }
}

+ (id)generateImagePreviewForFileURL:(id)a3 senderContext:(id)a4 maxPixelDimension:(float)a5 scale:(float)a6 error:(id *)a7
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = +[IMAttachmentBlastdoor logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = a3;
    _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Sending request to generate synchronous image preview to BlastDoor for %@", &v18, 0xCu);
  }

  v14 = [a1 blastdoorInterfaceForSenderContext:a4];
  *&v15 = a5;
  *&v16 = a6;
  return [v14 generateImagePreviewForFileURL:a3 maxPixelDimension:a7 scale:v15 error:v16];
}

+ (void)getMetadataForEmojiImageWithFileURL:(id)a3 senderContext:(id)a4 maxStrikeCount:(int64_t)a5 withCompletionBlock:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 && a6)
  {
    v11 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = a3;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_DEFAULT, "Sending request to get metadata for emoji image to BlastDoor for %@", buf, 0xCu);
    }

    v12 = [a1 blastdoorInterfaceForSenderContext:a4];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A864618C;
    v17[3] = &unk_1E7826FD8;
    v17[4] = a6;
    [v12 getMetadataForEmojiImageWithFileURL:a3 maxStrikeCount:a5 resultHandler:v17];
  }

  else
  {
    v13 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = a6;
      v20 = 2112;
      v21 = a3;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Invalid input for getting emoji image metadata. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (a6)
    {
      v14 = objc_alloc(MEMORY[0x1E695DF20]);
      if (a3)
      {
        v15 = [a3 absoluteString];
      }

      else
      {
        v15 = @"NO";
      }

      v16 = [v14 initWithObjectsAndKeys:{v15, @"sourceURL", 0}];
      (*(a6 + 2))(a6, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v16]);
    }
  }
}

+ (void)generateEmojiImagePreview:(id)a3 senderContext:(id)a4 frameIndex:(int64_t)a5 maxPixelDimension:(double)a6 withCompletionBlock:(id)a7
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3 && a7)
  {
    v13 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = a3;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_DEFAULT, "Sending request to generate emoji image to BlastDoor for %@", buf, 0xCu);
    }

    v14 = [a1 blastdoorInterfaceForSenderContext:a4];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A8646540;
    v19[3] = &unk_1E7826FD8;
    v19[4] = a7;
    [v14 generatePreviewForEmojiImageWithFileURL:a3 frameIndex:a5 maxPixelDimension:v19 resultHandler:a6];
  }

  else
  {
    v15 = +[IMAttachmentBlastdoor logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = a7;
      v22 = 2112;
      v23 = a3;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_DEFAULT, "Invalid emoji image preview input. Completion? %@, sourceURL? %@", buf, 0x16u);
    }

    if (a7)
    {
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      if (a3)
      {
        v17 = [a3 absoluteString];
      }

      else
      {
        v17 = @"NO";
      }

      v18 = [v16 initWithObjectsAndKeys:{v17, @"sourceURL", 0}];
      (*(a7 + 2))(a7, 0, [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:13301 userInfo:v18]);
    }
  }
}

+ (void)generateTranscriptBackground:(id)a3 senderContext:(id)a4 completion:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a3 && a5)
  {
    if (+[IMDeviceUtilities supportsTranscriptBackgrounds])
    {
      v9 = [a1 blastdoorInterfaceForSenderContext:a4];
      if (objc_opt_respondsToSelector())
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = sub_1A8646784;
        v11[3] = &unk_1E7826FD8;
        v11[4] = a5;
        [v9 defuseTranscriptBackground:a3 resultHandler:v11];
      }
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = *MEMORY[0x1E696A578];
      v13[0] = @"Device is in lock down mode, refusing to decode background.";
      (*(a5 + 2))(a5, 0, [v10 initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:11 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}]);
    }
  }
}

+ (void)generateTranscriptBackgroundCommandFrom:(id)a3 senderContext:(id)a4 completion:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (+[IMDeviceUtilities supportsTranscriptBackgrounds])
    {
      v9 = [a1 blastdoorInterfaceForSenderContext:a4];
      if (objc_opt_respondsToSelector())
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = sub_1A86469C4;
        v11[3] = &unk_1E7826FD8;
        v11[4] = a5;
        [v9 defuseTranscriptBackgroundCommand:a3 resultHandler:v11];
      }
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = *MEMORY[0x1E696A578];
      v13[0] = @"Device is in lock down mode, refusing to decode background command.";
      (*(a5 + 2))(a5, 0, [v10 initWithDomain:@"__kIMCoreAttachmentBlastdoorErrorDomain" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}]);
    }
  }
}

@end