@interface CKWorkoutMediaObject
- (BOOL)_isCachedFileLocationValid;
- (id)attachmentSummary:(unint64_t)summary;
- (id)linkMetadataForWidth:(double)width orientation:(char)orientation;
@end

@implementation CKWorkoutMediaObject

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Workouts" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
}

- (BOOL)_isCachedFileLocationValid
{
  v20 = *MEMORY[0x1E69E9840];
  originalURL = [(LPLinkMetadata *)self->_linkMetadata originalURL];
  fileURL = [(CKMediaObject *)self fileURL];
  v5 = [originalURL isEqual:fileURL];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    originalURL2 = [(LPLinkMetadata *)self->_linkMetadata originalURL];
    v8 = [v6 stringWithUTF8String:{objc_msgSend(originalURL2, "fileSystemRepresentation")}];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [defaultManager fileExistsAtPath:v8];

    if ((v10 & 1) == 0 && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v8;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Cached link metadata fileURL does not exist.  File path: %@", &v16, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        originalURL3 = [(LPLinkMetadata *)self->_linkMetadata originalURL];
        fileURL2 = [(CKMediaObject *)self fileURL];
        v16 = 138412546;
        v17 = originalURL3;
        v18 = 2112;
        v19 = fileURL2;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Cached link metadata fileURL does not match current media object fileURL.  Cached: %@  Current: %@", &v16, 0x16u);
      }
    }

    return 0;
  }

  return v10;
}

- (id)linkMetadataForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v29 = *MEMORY[0x1E69E9840];
  if (self->_linkMetadata && vabdd_f64(width, self->_cachedWidth) <= 1.0 && self->_cachedOrientation == orientation && [(CKWorkoutMediaObject *)self _isCachedFileLocationValid])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        fileURL = [(CKMediaObject *)self fileURL];
        v27 = 138412290;
        v28 = fileURL;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Using cached link metadata for fileURL: %@", &v27, 0xCu);
      }
    }

    v9 = self->_linkMetadata;
    goto LABEL_41;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      fileURL2 = [(CKMediaObject *)self fileURL];
      v27 = 138412290;
      v28 = fileURL2;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Generating link metadata for fileURL: %@", &v27, 0xCu);
    }
  }

  v12 = objc_alloc_init(MEMORY[0x1E696EC58]);
  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"ADD_WORKOUT" value:&stru_1F04268F8 table:@"ChatKit"];
  [v12 setName:v14];

  [v12 setType:@"com.apple.workout"];
  fileURL3 = [(CKMediaObject *)self fileURL];
  LOBYTE(v13) = fileURL3 == 0;

  v16 = IMOSLoggingEnabled();
  if ((v13 & 1) == 0)
  {
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Getting Greenfield preview for width and orientation", &v27, 2u);
      }
    }

    v18 = [(CKMediaObject *)self previewForWidth:orientationCopy orientation:width];
    v19 = IMOSLoggingEnabled();
    if (v18)
    {
      if (v19)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Got preview image", &v27, 2u);
        }
      }

      v21 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v18];
      [v12 setThumbnail:v21];
    }

    else if (v19)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Warning: unable to obtain preview image at this time", &v27, 2u);
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v16)
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Cannot generate preview: file URL is missing", &v27, 2u);
    }

    goto LABEL_33;
  }

LABEL_34:
  v9 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  [(LPLinkMetadata *)v9 setSpecialization:v12];
  fileURL4 = [(CKMediaObject *)self fileURL];
  [(LPLinkMetadata *)v9 setOriginalURL:fileURL4];

  thumbnail = [v12 thumbnail];
  LOBYTE(fileURL4) = thumbnail == 0;

  if ((fileURL4 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Caching link presentation metadata with thumbnail", &v27, 2u);
      }
    }

    objc_storeStrong(&self->_linkMetadata, v9);
    self->_cachedWidth = width;
    self->_cachedOrientation = orientationCopy;
  }

LABEL_41:

  return v9;
}

@end