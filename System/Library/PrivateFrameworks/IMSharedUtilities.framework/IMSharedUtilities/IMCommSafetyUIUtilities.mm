@interface IMCommSafetyUIUtilities
+ (id)imageURLForWatchBackgroundPayloadAtURL:(id)a3;
+ (id)posterImageURLForPosterConfigurationAtURL:(id)a3;
@end

@implementation IMCommSafetyUIUtilities

+ (id)posterImageURLForPosterConfigurationAtURL:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v4 = qword_1EB30B528;
    v33 = qword_1EB30B528;
    if (!qword_1EB30B528)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v35 = sub_1A86DA7C4;
      v36 = &unk_1E78261C8;
      v37 = &v30;
      sub_1A86DA7C4(&buf);
      v4 = v31[3];
    }

    v5 = v4;
    _Block_object_dispose(&v30, 8);
    v29 = 0;
    v6 = [v4 unarchiveConfigurationAtURL:v3 format:-1 error:&v29];
    v7 = v29;
    v8 = [v6 providerBundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];

    if ((v9 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [v6 providerBundleIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v25;
          _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Poster is not a photo, stop trying to get an image URL. Config bundle ID: %@", &buf, 0xCu);
        }
      }

      v22 = 0;
      goto LABEL_30;
    }

    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v10 = qword_1EB30B538;
    v33 = qword_1EB30B538;
    if (!qword_1EB30B538)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v35 = sub_1A86DA97C;
      v36 = &unk_1E78261C8;
      v37 = &v30;
      sub_1A86DA97C(&buf);
      v10 = v31[3];
    }

    v11 = v10;
    _Block_object_dispose(&v30, 8);
    v12 = [v6 assetDirectory];
    v28 = v7;
    v13 = [v10 loadFromURL:v12 error:&v28];
    v14 = v28;

    if (v13)
    {
      v15 = [v13 media];
      v16 = [v15 count] == 1;

      if (v16)
      {
        v17 = [v13 media];
        v18 = [v17 firstObject];

        v19 = [v6 assetDirectory];
        v20 = [v18 subpath];
        v21 = [v19 URLByAppendingPathComponent:v20];

        v22 = [v21 URLByAppendingPathComponent:@"output.layerStack/portrait-layer_background.HEIC"];

LABEL_29:
        v7 = v14;
LABEL_30:

        goto LABEL_31;
      }

      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Expected the poster config to have exactly one media", &buf, 2u);
        }

LABEL_27:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Failed to generate a poster config. Error: %@", &buf, 0xCu);
      }

      goto LABEL_27;
    }

    v22 = 0;
    goto LABEL_29;
  }

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Given nil for the poster url, bailing.", &buf, 2u);
    }
  }

  v22 = 0;
LABEL_31:

  return v22;
}

+ (id)imageURLForWatchBackgroundPayloadAtURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v3];
    v5 = [[IMWatchBackground alloc] initWithPayloadData:v4];
    if (v5)
    {
      v6 = NSTemporaryDirectory();
      v7 = [v3 lastPathComponent];
      v8 = [v6 stringByAppendingString:v7];
      v9 = [v8 stringByAppendingPathExtension:@".png"];

      v10 = [(IMWatchBackground *)v5 backgroundImageData];
      LOBYTE(v7) = [v10 writeToFile:v9 atomically:1];

      if (v7)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v9];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *v16 = 0;
            _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Failed to generate watch background image.", v16, 2u);
          }
        }

        v11 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v17 = 0;
          _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Couldn't unarchive watch background from payload, bailing.", v17, 2u);
        }
      }

      v11 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Given nil for the payload url, bailing.", buf, 2u);
      }
    }

    v11 = 0;
  }

  return v11;
}

@end