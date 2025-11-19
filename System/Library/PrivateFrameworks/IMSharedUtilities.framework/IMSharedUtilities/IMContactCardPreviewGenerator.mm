@interface IMContactCardPreviewGenerator
+ (CGImage)monogramForFirstName:(id)a3 lastName:(id)a4;
+ (CGImage)newContactCardPreviewFrom:(id)a3 previewURL:(id)a4 senderContext:(id)a5 withPreviewConstraints:(IMPreviewConstraints *)a6 error:(id *)a7;
+ (CGImage)newMonogramImageForData:(id)a3 constraints:(IMPreviewConstraints *)a4;
+ (CGImage)newPreviewFromSourceURL:(id)a3 previewURL:(id)a4 senderContext:(id)a5 withPreviewConstraints:(IMPreviewConstraints *)a6 error:(id *)a7;
+ (CGImage)newPreviewFromSourceURL:(id)a3 withPreviewConstraints:(IMPreviewConstraints *)a4 error:(id *)a5;
+ (id)contactCardPreviewPayloadFileURLFrom:(id)a3 previewURL:(id)a4 withFileExtension:(id)a5;
+ (id)contactCardPreviewPayloadsDirectoryFrom:(id)a3 previewURL:(id)a4;
+ (id)generateContactPlistFrom:(id)a3 previewURL:(id)a4 senderContext:(id)a5 error:(id *)a6;
+ (id)vCardDataForURL:(id)a3;
@end

@implementation IMContactCardPreviewGenerator

+ (CGImage)newPreviewFromSourceURL:(id)a3 withPreviewConstraints:(IMPreviewConstraints *)a4 error:(id *)a5
{
  v7 = [a1 vCardDataForURL:{a3, a4, a5}];
  v8 = *&a4->var1.height;
  v11[0] = *&a4->var0;
  v11[1] = v8;
  v12 = *&a4->var3;
  v9 = [a1 newMonogramImageForData:v7 constraints:v11];

  return v9;
}

+ (id)vCardDataForURL:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:8 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (CGImage)newMonogramImageForData:(id)a3 constraints:(IMPreviewConstraints *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
LABEL_24:
    v16 = 0;
    goto LABEL_25;
  }

  v6 = MEMORY[0x1AC570AA0](@"CNContactVCardSerialization", @"Contacts");
  if (!v6)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "IMContactCardPreviewGenerator - Unable to weaklink CNContactVCardSerialization", buf, 2u);
      }
    }

    goto LABEL_24;
  }

  v21 = 0;
  v7 = [v6 contactsWithData:v5 error:&v21];
  v8 = v21;
  if (v8 || !v7 || ![v7 count])
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "IMContactCardPreviewGenerator - Unable to extract contact for data. Error %@", buf, 0xCu);
      }
    }

    goto LABEL_24;
  }

  v9 = [v7 firstObject];
  v10 = MEMORY[0x1AC570AA0](@"CNMonogrammer", @"ContactsUI");
  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "IMContactCardPreviewGenerator -- Unable to weaklink CNMonogrammer", buf, 2u);
      }
    }

    goto LABEL_24;
  }

  v11 = [v10 alloc];
  [a1 contactMonogramDiameter];
  v12 = [v11 initWithStyle:1 diameter:?];
  v13 = [v9 givenName];
  v14 = [v9 familyName];
  v15 = [v12 monogramForPersonWithFirstName:v13 lastName:v14];
  v16 = [v15 CGImage];

  if (v16)
  {
    CFRetain(v16);
  }

LABEL_25:
  return v16;
}

+ (CGImage)newPreviewFromSourceURL:(id)a3 previewURL:(id)a4 senderContext:(id)a5 withPreviewConstraints:(IMPreviewConstraints *)a6 error:(id *)a7
{
  v34[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:a6->var1.width];
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:a6->var1.height];
      v18 = [MEMORY[0x1E696AD98] numberWithDouble:a6->var0];
      *v33 = 138413058;
      *&v33[4] = v12;
      *&v33[12] = 2112;
      *&v33[14] = v16;
      *&v33[22] = 2112;
      *&v33[24] = v17;
      LOWORD(v34[0]) = 2112;
      *(v34 + 2) = v18;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Generating preview image for vcard %@ with constraints min size width %@ size height %@ max width %@", v33, 0x2Au);
    }
  }

  if (!v12)
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        *v33 = 138412290;
        *&v33[4] = v30;
        v31 = v30;
        _os_log_impl(&dword_1A85E5000, v29, OS_LOG_TYPE_INFO, "%@ - sourceURL is nil", v33, 0xCu);
      }
    }

    if (a7)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:5 userInfo:0];
      *a7 = v28 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v28 = 0;
    goto LABEL_15;
  }

  v19 = *&a6->var1.height;
  *v33 = *&a6->var0;
  *&v33[16] = v19;
  v34[0] = *&a6->var3;
  v20 = [a1 newContactCardPreviewFrom:v12 previewURL:v13 senderContext:v14 withPreviewConstraints:v33 error:a7];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_14;
  }

  Width = CGImageGetWidth(v20);
  Height = CGImageGetHeight(v21);
  [a1 thumbnailFillSizeForWidth:a6->var0 imageSize:Width scale:{Height, a6->var2}];
  v26 = fmax(v24 / Width, v25 / Height);
  v27 = *&a6->var1.height;
  *v33 = *&a6->var0;
  *&v33[16] = v27;
  v34[0] = *&a6->var3;
  v28 = [a1 newCroppedAndRescaledImageFromImage:v21 constraints:v33 targetPxSize:{ceil(v26 * Width), ceil(v26 * Height)}];
  CGImageRelease(v21);
LABEL_15:

  return v28;
}

+ (id)contactCardPreviewPayloadsDirectoryFrom:(id)a3 previewURL:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 URLByDeletingLastPathComponent];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];

  if ((v9 & 1) == 0 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = [v7 path];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "%@ - Failed to create the preview directory: %@!", &v14, 0x16u);
    }
  }

  return v7;
}

+ (id)contactCardPreviewPayloadFileURLFrom:(id)a3 previewURL:(id)a4 withFileExtension:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 contactCardPreviewPayloadsDirectoryFrom:v9 previewURL:a4];
  v11 = [v9 lastPathComponent];

  v12 = [v10 URLByAppendingPathComponent:v11 isDirectory:0];
  v13 = [v12 URLByAppendingPathExtension:v8];

  return v13;
}

+ (CGImage)monogramForFirstName:(id)a3 lastName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1AC570AA0](@"CNMonogrammer", @"ContactsUI");
  if (v8)
  {
    v9 = [v8 alloc];
    [a1 contactMonogramDiameter];
    v10 = [v9 initWithStyle:1 diameter:?];
    v11 = [v10 monogramForPersonWithFirstName:v6 lastName:v7];
    v12 = [v11 CGImage];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "IMContactCardPreviewGenerator -- Unable to weaklink CNMonogrammer", v15, 2u);
      }
    }

    v12 = 0;
  }

  return v12;
}

+ (id)generateContactPlistFrom:(id)a3 previewURL:(id)a4 senderContext:(id)a5 error:(id *)a6
{
  v67 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewContact", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  if ([a1 supportsBlastDoor])
  {
    v14 = [a1 vCardDataForURL:v10];
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_1A8602004;
    v58 = sub_1A86021F0;
    v59 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_1A8602004;
    v52 = sub_1A86021F0;
    v53 = dispatch_semaphore_create(0);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_1A86F5608;
    v47[3] = &unk_1E782B278;
    v47[4] = &v54;
    v47[5] = &v48;
    v45 = v14;
    [IMAttachmentBlastdoor sendData:v14 senderContext:v12 forPreviewType:1 withCompletionBlock:v47];
    dispatch_semaphore_wait(v49[5], 0xFFFFFFFFFFFFFFFFLL);
    v44 = a6;
    if (v55[5])
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Received contactObj from BlastDoor!", buf, 2u);
        }
      }

      MEMORY[0x1AC570AA0](@"BlastDoorContactMessage", @"BlastDoor");
      if (objc_opt_isKindOfClass())
      {
        v17 = v55[5];
      }

      else
      {
        v17 = 0;
      }

      v21 = v17;
      v22 = [v21 contactInfo];
      v23 = [v22 givenName];
      [v15 setObject:v23 forKeyedSubscript:qword_1EB301F30];

      v24 = [v21 contactInfo];
      v25 = [v24 familyName];
      [v15 setObject:v25 forKeyedSubscript:qword_1EB301F38];

      v26 = [v21 contactInfo];
      v27 = [v26 organizationNameTitle];
      [v15 setObject:v27 forKeyedSubscript:qword_1EB301F40];

      v28 = [v21 contactInfo];
      v29 = [v28 contactFormatterTitle];
      [v15 setObject:v29 forKeyedSubscript:qword_1EB301F48];

      v30 = [v21 contactInfo];
      v31 = [v30 contactNameTitle];
      [v15 setObject:v31 forKeyedSubscript:qword_1EB301F50];

      v32 = [v21 contactInfo];
      v33 = [v32 organizationNameSubtitle];
      [v15 setObject:v33 forKeyedSubscript:qword_1EB301F58];

      v34 = [v21 contactInfo];
      v35 = [v34 contactNameSubtitle];
      [v15 setObject:v35 forKeyedSubscript:qword_1EB301F60];

      v36 = [objc_opt_class() contactCardPreviewPayloadFileURLFrom:v10 previewURL:v11 withFileExtension:@"plist"];
      v46 = 0;
      LOBYTE(v35) = [v15 writeToURL:v36 error:&v46];
      v37 = v46;
      if (v35)
      {
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = [v36 path];
            *buf = 138412290;
            v62 = v39;
            _os_log_impl(&dword_1A85E5000, v38, OS_LOG_TYPE_INFO, "Successfully written the contact card plist at: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v43 = objc_opt_class();
            v41 = [v36 path];
            *buf = 138412802;
            v62 = v43;
            v63 = 2112;
            v64 = v41;
            v65 = 2112;
            v66 = v37;
            _os_log_impl(&dword_1A85E5000, v40, OS_LOG_TYPE_INFO, "%@ - Failed to write to %@ with error %@!", buf, 0x20u);
          }
        }

        if (v44)
        {
          *v44 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = objc_opt_class();
          *buf = 138412290;
          v62 = v19;
          v20 = v19;
          _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "%@ - BlastDoor returned null contactObj!", buf, 0xCu);
        }
      }

      if (a6)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:11 userInfo:0];
        *a6 = v15 = 0;
      }

      else
      {
        v15 = 0;
      }
    }

    _Block_object_dispose(&v48, 8);

    _Block_object_dispose(&v54, 8);
  }

  else
  {
    v15 = 0;
  }

  os_activity_scope_leave(&state);

  return v15;
}

+ (CGImage)newContactCardPreviewFrom:(id)a3 previewURL:(id)a4 senderContext:(id)a5 withPreviewConstraints:(IMPreviewConstraints *)a6 error:(id *)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if ([a1 supportsBlastDoor])
  {
    v15 = [a1 generateContactPlistFrom:v12 previewURL:v13 senderContext:v14 error:a7];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:qword_1EB301F30];
      v18 = [v16 objectForKeyedSubscript:qword_1EB301F38];
      v19 = [a1 monogramForFirstName:v17 lastName:v18];

      if (v19)
      {
        CFRetain(v19);
      }

      v20 = IMCreateASTCImageDataFromCGImageRef(v19);
      if (v20)
      {
        v21 = [objc_opt_class() contactCardPreviewPayloadFileURLFrom:v12 previewURL:v13 withFileExtension:@"ktx"];
        v22 = [v21 path];
        v34 = v21;
        LOBYTE(v21) = [(__CFData *)v20 writeToFile:v22 atomically:1];

        v23 = IMOSLoggingEnabled();
        if (v21)
        {
          v24 = v34;
          if (v23)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = [v34 path];
              *buf = 138412290;
              *&buf[4] = v26;
              _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Successfully written the avatar preview image at: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v24 = v34;
          if (v23)
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v33 = objc_opt_class();
              v31 = [v34 path];
              *buf = 138412546;
              *&buf[4] = v33;
              *&buf[12] = 2112;
              *&buf[14] = v31;
              _os_log_impl(&dword_1A85E5000, v30, OS_LOG_TYPE_INFO, "%@ - Failed to write to %@", buf, 0x16u);
            }
          }

          if (a7)
          {
            *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = objc_opt_class();
            v29 = *&buf[4];
            _os_log_impl(&dword_1A85E5000, v28, OS_LOG_TYPE_INFO, "%@ - Failed to generate the avatar image!", buf, 0xCu);
          }
        }

        if (a7)
        {
          *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:3 userInfo:0];
        }
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v27 = *&a6->var1.height;
    *buf = *&a6->var0;
    *&buf[16] = v27;
    v36 = *&a6->var3;
    v19 = [a1 newPreviewFromSourceURL:v12 withPreviewConstraints:buf error:a7];
  }

  return v19;
}

@end