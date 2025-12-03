@interface IMContactCardPreviewGenerator
+ (CGImage)monogramForFirstName:(id)name lastName:(id)lastName;
+ (CGImage)newContactCardPreviewFrom:(id)from previewURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
+ (CGImage)newMonogramImageForData:(id)data constraints:(IMPreviewConstraints *)constraints;
+ (CGImage)newPreviewFromSourceURL:(id)l previewURL:(id)rL senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
+ (CGImage)newPreviewFromSourceURL:(id)l withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
+ (id)contactCardPreviewPayloadFileURLFrom:(id)from previewURL:(id)l withFileExtension:(id)extension;
+ (id)contactCardPreviewPayloadsDirectoryFrom:(id)from previewURL:(id)l;
+ (id)generateContactPlistFrom:(id)from previewURL:(id)l senderContext:(id)context error:(id *)error;
+ (id)vCardDataForURL:(id)l;
@end

@implementation IMContactCardPreviewGenerator

+ (CGImage)newPreviewFromSourceURL:(id)l withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v7 = [self vCardDataForURL:{l, constraints, error}];
  v8 = *&constraints->var1.height;
  v11[0] = *&constraints->var0;
  v11[1] = v8;
  v12 = *&constraints->var3;
  v9 = [self newMonogramImageForData:v7 constraints:v11];

  return v9;
}

+ (id)vCardDataForURL:(id)l
{
  if (l)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:8 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (CGImage)newMonogramImageForData:(id)data constraints:(IMPreviewConstraints *)constraints
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
LABEL_24:
    cGImage = 0;
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
  v7 = [v6 contactsWithData:dataCopy error:&v21];
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

  firstObject = [v7 firstObject];
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
  [self contactMonogramDiameter];
  v12 = [v11 initWithStyle:1 diameter:?];
  givenName = [firstObject givenName];
  familyName = [firstObject familyName];
  v15 = [v12 monogramForPersonWithFirstName:givenName lastName:familyName];
  cGImage = [v15 CGImage];

  if (cGImage)
  {
    CFRetain(cGImage);
  }

LABEL_25:
  return cGImage;
}

+ (CGImage)newPreviewFromSourceURL:(id)l previewURL:(id)rL senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v34[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:constraints->var1.width];
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:constraints->var1.height];
      v18 = [MEMORY[0x1E696AD98] numberWithDouble:constraints->var0];
      *v33 = 138413058;
      *&v33[4] = lCopy;
      *&v33[12] = 2112;
      *&v33[14] = v16;
      *&v33[22] = 2112;
      *&v33[24] = v17;
      LOWORD(v34[0]) = 2112;
      *(v34 + 2) = v18;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Generating preview image for vcard %@ with constraints min size width %@ size height %@ max width %@", v33, 0x2Au);
    }
  }

  if (!lCopy)
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

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:5 userInfo:0];
      *error = v28 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v28 = 0;
    goto LABEL_15;
  }

  v19 = *&constraints->var1.height;
  *v33 = *&constraints->var0;
  *&v33[16] = v19;
  v34[0] = *&constraints->var3;
  v20 = [self newContactCardPreviewFrom:lCopy previewURL:rLCopy senderContext:contextCopy withPreviewConstraints:v33 error:error];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_14;
  }

  Width = CGImageGetWidth(v20);
  Height = CGImageGetHeight(v21);
  [self thumbnailFillSizeForWidth:constraints->var0 imageSize:Width scale:{Height, constraints->var2}];
  v26 = fmax(v24 / Width, v25 / Height);
  v27 = *&constraints->var1.height;
  *v33 = *&constraints->var0;
  *&v33[16] = v27;
  v34[0] = *&constraints->var3;
  v28 = [self newCroppedAndRescaledImageFromImage:v21 constraints:v33 targetPxSize:{ceil(v26 * Width), ceil(v26 * Height)}];
  CGImageRelease(v21);
LABEL_15:

  return v28;
}

+ (id)contactCardPreviewPayloadsDirectoryFrom:(id)from previewURL:(id)l
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  lCopy = l;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  if ((v9 & 1) == 0 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      path = [uRLByDeletingLastPathComponent path];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = path;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "%@ - Failed to create the preview directory: %@!", &v14, 0x16u);
    }
  }

  return uRLByDeletingLastPathComponent;
}

+ (id)contactCardPreviewPayloadFileURLFrom:(id)from previewURL:(id)l withFileExtension:(id)extension
{
  extensionCopy = extension;
  fromCopy = from;
  v10 = [self contactCardPreviewPayloadsDirectoryFrom:fromCopy previewURL:l];
  lastPathComponent = [fromCopy lastPathComponent];

  v12 = [v10 URLByAppendingPathComponent:lastPathComponent isDirectory:0];
  v13 = [v12 URLByAppendingPathExtension:extensionCopy];

  return v13;
}

+ (CGImage)monogramForFirstName:(id)name lastName:(id)lastName
{
  nameCopy = name;
  lastNameCopy = lastName;
  v8 = MEMORY[0x1AC570AA0](@"CNMonogrammer", @"ContactsUI");
  if (v8)
  {
    v9 = [v8 alloc];
    [self contactMonogramDiameter];
    v10 = [v9 initWithStyle:1 diameter:?];
    v11 = [v10 monogramForPersonWithFirstName:nameCopy lastName:lastNameCopy];
    cGImage = [v11 CGImage];
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

    cGImage = 0;
  }

  return cGImage;
}

+ (id)generateContactPlistFrom:(id)from previewURL:(id)l senderContext:(id)context error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  lCopy = l;
  contextCopy = context;
  v13 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewContact", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  if ([self supportsBlastDoor])
  {
    v14 = [self vCardDataForURL:fromCopy];
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
    [IMAttachmentBlastdoor sendData:v14 senderContext:contextCopy forPreviewType:1 withCompletionBlock:v47];
    dispatch_semaphore_wait(v49[5], 0xFFFFFFFFFFFFFFFFLL);
    errorCopy = error;
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
      contactInfo = [v21 contactInfo];
      givenName = [contactInfo givenName];
      [v15 setObject:givenName forKeyedSubscript:qword_1EB301F30];

      contactInfo2 = [v21 contactInfo];
      familyName = [contactInfo2 familyName];
      [v15 setObject:familyName forKeyedSubscript:qword_1EB301F38];

      contactInfo3 = [v21 contactInfo];
      organizationNameTitle = [contactInfo3 organizationNameTitle];
      [v15 setObject:organizationNameTitle forKeyedSubscript:qword_1EB301F40];

      contactInfo4 = [v21 contactInfo];
      contactFormatterTitle = [contactInfo4 contactFormatterTitle];
      [v15 setObject:contactFormatterTitle forKeyedSubscript:qword_1EB301F48];

      contactInfo5 = [v21 contactInfo];
      contactNameTitle = [contactInfo5 contactNameTitle];
      [v15 setObject:contactNameTitle forKeyedSubscript:qword_1EB301F50];

      contactInfo6 = [v21 contactInfo];
      organizationNameSubtitle = [contactInfo6 organizationNameSubtitle];
      [v15 setObject:organizationNameSubtitle forKeyedSubscript:qword_1EB301F58];

      contactInfo7 = [v21 contactInfo];
      contactNameSubtitle = [contactInfo7 contactNameSubtitle];
      [v15 setObject:contactNameSubtitle forKeyedSubscript:qword_1EB301F60];

      v36 = [objc_opt_class() contactCardPreviewPayloadFileURLFrom:fromCopy previewURL:lCopy withFileExtension:@"plist"];
      v46 = 0;
      LOBYTE(contactNameSubtitle) = [v15 writeToURL:v36 error:&v46];
      v37 = v46;
      if (contactNameSubtitle)
      {
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            path = [v36 path];
            *buf = 138412290;
            v62 = path;
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
            path2 = [v36 path];
            *buf = 138412802;
            v62 = v43;
            v63 = 2112;
            v64 = path2;
            v65 = 2112;
            v66 = v37;
            _os_log_impl(&dword_1A85E5000, v40, OS_LOG_TYPE_INFO, "%@ - Failed to write to %@ with error %@!", buf, 0x20u);
          }
        }

        if (errorCopy)
        {
          *errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
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

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:11 userInfo:0];
        *error = v15 = 0;
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

+ (CGImage)newContactCardPreviewFrom:(id)from previewURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  lCopy = l;
  contextCopy = context;
  if ([self supportsBlastDoor])
  {
    v15 = [self generateContactPlistFrom:fromCopy previewURL:lCopy senderContext:contextCopy error:error];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:qword_1EB301F30];
      v18 = [v16 objectForKeyedSubscript:qword_1EB301F38];
      v19 = [self monogramForFirstName:v17 lastName:v18];

      if (v19)
      {
        CFRetain(v19);
      }

      v20 = IMCreateASTCImageDataFromCGImageRef(v19);
      if (v20)
      {
        v21 = [objc_opt_class() contactCardPreviewPayloadFileURLFrom:fromCopy previewURL:lCopy withFileExtension:@"ktx"];
        path = [v21 path];
        v34 = v21;
        LOBYTE(v21) = [(__CFData *)v20 writeToFile:path atomically:1];

        v23 = IMOSLoggingEnabled();
        if (v21)
        {
          v24 = v34;
          if (v23)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              path2 = [v34 path];
              *buf = 138412290;
              *&buf[4] = path2;
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
              path3 = [v34 path];
              *buf = 138412546;
              *&buf[4] = v33;
              *&buf[12] = 2112;
              *&buf[14] = path3;
              _os_log_impl(&dword_1A85E5000, v30, OS_LOG_TYPE_INFO, "%@ - Failed to write to %@", buf, 0x16u);
            }
          }

          if (error)
          {
            *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
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

        if (error)
        {
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:3 userInfo:0];
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
    v27 = *&constraints->var1.height;
    *buf = *&constraints->var0;
    *&buf[16] = v27;
    v36 = *&constraints->var3;
    v19 = [self newPreviewFromSourceURL:fromCopy withPreviewConstraints:buf error:error];
  }

  return v19;
}

@end