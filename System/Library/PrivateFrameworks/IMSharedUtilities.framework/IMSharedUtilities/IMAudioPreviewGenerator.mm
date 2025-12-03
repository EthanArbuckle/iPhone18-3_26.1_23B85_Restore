@interface IMAudioPreviewGenerator
+ (id)UTITypes;
+ (id)audioMedataForFileURL:(id)l senderContext:(id)context;
+ (id)generateAndPersistMetadataFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
@end

@implementation IMAudioPreviewGenerator

+ (id)UTITypes
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6987488];
  v5[0] = *MEMORY[0x1E6987468];
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

+ (id)generateAndPersistMetadataFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v32[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  v11 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewAudioMessage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v12 = [self audioMedataForFileURL:lCopy senderContext:contextCopy];
  if (!v12)
  {
    goto LABEL_21;
  }

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v13 = MEMORY[0x1E695DFF8];
  v14 = IMSafeTemporaryDirectory();
  path = [v14 path];
  v32[0] = path;
  v32[1] = @"AudioPreviewMetadata";
  v32[2] = stringGUID;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v17 = [v13 fileURLWithPathComponents:v16];

  v18 = [v17 URLByAppendingPathComponent:@"Audio-Metadata" isDirectory:0];
  metadataExtension = [self metadataExtension];
  v20 = [v18 URLByAppendingPathExtension:metadataExtension];

  if (v17)
  {
    if (v20)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v22 = [defaultManager createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:error];

      if (v22 && [v12 writeToURL:v20 error:error])
      {
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v31 = v20;
            _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Successfully persisted audioMetadata plist at %@", buf, 0xCu);
          }
        }

        goto LABEL_26;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = stringGUID;
        _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Failed to generate temporaryPreviewMetadataDirectoryURL from transferGUID %@", buf, 0xCu);
      }
    }

    if (v20)
    {
      goto LABEL_20;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = stringGUID;
      _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Failed to generate temporaryMetadataURL from transferGUID %@", buf, 0xCu);
    }
  }

LABEL_20:

LABEL_21:
  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Failed to generated audioMetadata plist", buf, 2u);
    }
  }

  v20 = 0;
LABEL_26:

  os_activity_scope_leave(&state);

  return v20;
}

+ (id)audioMedataForFileURL:(id)l senderContext:(id)context
{
  v40[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1A8601FA4;
  v37 = sub_1A86021C0;
  v38 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1A86C00A0;
  v30[3] = &unk_1E7826900;
  v32 = &v33;
  v8 = v7;
  v31 = v8;
  [IMAttachmentBlastdoor generateAudioPreview:lCopy senderContext:contextCopy withCompletionBlock:v30];
  v9 = dispatch_time(0, 100000000000);
  if (dispatch_group_wait(v8, v9) && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v29 = 0;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Timed out waiting for BlastDoor.", v29, 2u);
    }
  }

  if (v34[5])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v29 = 0;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Received audioPreviewResult from BlastDoor!", v29, 2u);
      }
    }

    MEMORY[0x1AC570AA0](@"BlastDoorPreviewAudio", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      v12 = v34[5];
    }

    else
    {
      v12 = 0;
    }

    v15 = v12;
    v16 = objc_alloc(MEMORY[0x1E695DF70]);
    powerLevels = [v15 powerLevels];
    v18 = [v16 initWithCapacity:{objc_msgSend(powerLevels, "count")}];

    if (v18)
    {
      for (i = 0; ; ++i)
      {
        powerLevels2 = [v15 powerLevels];
        v21 = i < [powerLevels2 count];

        if (!v21)
        {
          break;
        }

        v22 = MEMORY[0x1E696AD98];
        powerLevels3 = [v15 powerLevels];
        v24 = [powerLevels3 objectAtIndexedSubscript:i];
        [v24 floatValue];
        v25 = [v22 numberWithFloat:?];
        [v18 addObject:v25];
      }
    }

    v39[0] = @"duration";
    v26 = MEMORY[0x1E696AD98];
    [v15 duration];
    v27 = [v26 numberWithDouble:?];
    v39[1] = @"powerLevels";
    v40[0] = v27;
    v40[1] = v18;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v29 = 0;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "IMAudioPreviewGenerator - BlastDoor returned null audioPreviewResult!", v29, 2u);
      }
    }

    v14 = 0;
  }

  _Block_object_dispose(&v33, 8);

  return v14;
}

@end