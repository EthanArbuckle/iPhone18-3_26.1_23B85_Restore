@interface IMAdaptiveImageGlyphBlastDoor
+ (id)generateEmojiImageAssetFromSourceURL:(id)l senderContext:(id)context;
+ (id)logger;
@end

@implementation IMAdaptiveImageGlyphBlastDoor

+ (id)logger
{
  if (qword_1ED8C9A60 != -1)
  {
    sub_1A88C0BB4();
  }

  v3 = qword_1ED8C9A78;

  return v3;
}

+ (id)generateEmojiImageAssetFromSourceURL:(id)l senderContext:(id)context
{
  v73 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v7 startTimingForKey:@"IMAdaptiveImageGlyphBlastDoor_PreviewGenerationTime"];
  [v7 startTimingForKey:@"IMAdaptiveImageGlyphBlastDoor_PreviewGenerationTime_MetadataOnly"];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_1A8601E68;
  v69 = sub_1A8602128;
  v70 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = sub_1A862EDA4;
  v62[3] = &unk_1E7826900;
  v64 = &v65;
  v9 = v8;
  v63 = v9;
  [IMAttachmentBlastdoor getMetadataForEmojiImageWithFileURL:lCopy senderContext:contextCopy maxStrikeCount:20 withCompletionBlock:v62];
  v10 = dispatch_time(0, 1000000000);
  v57 = v7;
  if (dispatch_group_wait(v9, v10))
  {
    contentIdentifier = +[IMAdaptiveImageGlyphBlastDoor logger];
    if (os_log_type_enabled(contentIdentifier, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0BC8(contentIdentifier, v12, v13, v14, v15, v16, v17, v18);
    }

LABEL_4:
    v19 = 0;
    goto LABEL_28;
  }

  if (!v66[5])
  {
    contentIdentifier = +[IMAdaptiveImageGlyphBlastDoor logger];
    if (os_log_type_enabled(contentIdentifier, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0C38(contentIdentifier, v33, v34, v35, v36, v37, v38, v39);
    }

    goto LABEL_4;
  }

  [v7 stopTimingForKey:@"IMAdaptiveImageGlyphBlastDoor_PreviewGenerationTime_MetadataOnly"];
  imageStrikeCount = [v66[5] imageStrikeCount];
  contentIdentifier = [v66[5] contentIdentifier];
  shortDescription = [v66[5] shortDescription];
  v21 = shortDescription;
  v22 = @"Emoji";
  if (shortDescription)
  {
    v22 = shortDescription;
  }

  v53 = v22;

  imageCredit = [v66[5] imageCredit];
  digitalSourceType = [v66[5] digitalSourceType];
  v51 = imageCredit;
  v52 = digitalSourceType;
  if ([contentIdentifier length])
  {
    v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v54 setObject:imageCredit forKeyedSubscript:*MEMORY[0x1E696DD78]];
    [v54 setObject:digitalSourceType forKeyedSubscript:*MEMORY[0x1E696DDB0]];
    v55 = [v54 copy];
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (imageStrikeCount)
    {
      v27 = 0;
      *&v26 = 134217984;
      v50 = v26;
      while (1)
      {
        v28 = dispatch_group_create();
        dispatch_group_enter(v28);
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = sub_1A862EE38;
        v58[3] = &unk_1E7826928;
        v59 = v55;
        v60 = v25;
        v29 = v28;
        v61 = v29;
        [IMAttachmentBlastdoor generateEmojiImagePreview:lCopy senderContext:contextCopy frameIndex:v27 maxPixelDimension:v58 withCompletionBlock:1025.0];
        v30 = dispatch_time(0, 5000000000);
        v31 = dispatch_group_wait(v29, v30);
        if (v31)
        {
          v32 = +[IMAdaptiveImageGlyphBlastDoor logger];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = v50;
            v72 = v27;
            _os_log_error_impl(&dword_1A85E5000, v32, OS_LOG_TYPE_ERROR, "Timed out generating frame %ld", buf, 0xCu);
          }
        }

        else
        {
          v32 = +[IMAdaptiveImageGlyphBlastDoor logger];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = v50;
            v72 = v27;
            _os_log_debug_impl(&dword_1A85E5000, v32, OS_LOG_TYPE_DEBUG, "Succesfully generated frame %ld.", buf, 0xCu);
          }
        }

        if (v31)
        {
          break;
        }

        if (imageStrikeCount == ++v27)
        {
          goto LABEL_21;
        }
      }

      v19 = 0;
    }

    else
    {
LABEL_21:
      v40 = [v25 copy];
      v19 = [objc_alloc(MEMORY[0x1E69DB7A0]) initWithContentIdentifier:contentIdentifier shortDescription:v53 strikeImages:v40];
    }
  }

  else
  {
    v41 = +[IMAdaptiveImageGlyphBlastDoor logger];
    v54 = v41;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0C00(v41, v42, v43, v44, v45, v46, v47, v48);
    }

    v19 = 0;
  }

LABEL_28:
  _Block_object_dispose(&v65, 8);

  return v19;
}

@end