@interface CKWatchfaceMediaObject
- (BOOL)_isCachedFileLocationValid;
- (BOOL)generatePreviewOutOfProcess;
- (Class)placeholderBalloonViewClass;
- (id)attachmentSummary:(unint64_t)a3;
- (id)generateThumbnailForWidth:(double)a3 orientation:(char)a4;
- (id)linkMetadataForWidth:(double)a3 orientation:(char)a4;
@end

@implementation CKWatchfaceMediaObject

- (id)attachmentSummary:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Watch Faces" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

- (Class)placeholderBalloonViewClass
{
  v4.receiver = self;
  v4.super_class = CKWatchfaceMediaObject;
  v2 = [(CKMediaObject *)&v4 previewBalloonViewClass];

  return v2;
}

- (BOOL)generatePreviewOutOfProcess
{
  v3 = [(CKWatchfaceMediaObject *)self hasOutOfProcessPreviewGenerator];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = CKWatchfaceMediaObject;
    LOBYTE(v3) = [(CKMediaObject *)&v5 generatePreviewOutOfProcess];
  }

  return v3;
}

- (id)generateThumbnailForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v25 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a3;
      *buf = 134218240;
      *&buf[4] = v8;
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Generating Greenfield thumbnail in-process (width=%.3g, orientation=%d)", buf, 0x12u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = __Block_byref_object_copy__75;
  v23 = __Block_byref_object_dispose__75;
  v24 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = [(CKMediaObject *)self fileURL];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__CKWatchfaceMediaObject_generateThumbnailForWidth_orientation___block_invoke;
  v18[3] = &unk_1E72F7C90;
  v20 = buf;
  v11 = v9;
  v19 = v11;
  [CKWatchfaceInProcessPreviewGenerator generateFacePreviewImageFromUrl:v10 completionBlock:v18];

  v12 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v11, v12))
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Timed out waiting for metadata.", v17, 2u);
      }
    }

    v14 = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Generated snapshot image", v17, 2u);
      }
    }

    v14 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(buf, 8);

  return v14;
}

void __64__CKWatchfaceMediaObject_generateThumbnailForWidth_orientation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Error generating preview image: %@.", &v9, 0xCu);
      }
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)_isCachedFileLocationValid
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(LPLinkMetadata *)self->_linkMetadata originalURL];
  v4 = [(CKMediaObject *)self fileURL];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(LPLinkMetadata *)self->_linkMetadata originalURL];
    v8 = [v6 stringWithUTF8String:{objc_msgSend(v7, "fileSystemRepresentation")}];

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 fileExistsAtPath:v8];

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
        v13 = [(LPLinkMetadata *)self->_linkMetadata originalURL];
        v14 = [(CKMediaObject *)self fileURL];
        v16 = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Cached link metadata fileURL does not match current media object fileURL.  Cached: %@  Current: %@", &v16, 0x16u);
      }
    }

    return 0;
  }

  return v10;
}

- (id)linkMetadataForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  if (self->_linkMetadata && vabdd_f64(a3, self->_cachedWidth) <= 1.0 && self->_cachedOrientation == a4 && [(CKWatchfaceMediaObject *)self _isCachedFileLocationValid])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [(CKMediaObject *)self fileURL];
        v29 = 138412290;
        v30 = v8;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Using cached link metadata for fileURL: %@", &v29, 0xCu);
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
      v11 = [(CKMediaObject *)self fileURL];
      v29 = 138412290;
      v30 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Generating link metadata for fileURL: %@", &v29, 0xCu);
    }
  }

  v12 = objc_alloc_init(MEMORY[0x1E696EC58]);
  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"ADD_WATCHFACE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v12 setName:v14];

  v15 = [(CKMediaObject *)self filename];
  v16 = IMUTITypeForFilename();
  [v12 setType:v16];

  v17 = [(CKMediaObject *)self fileURL];
  LOBYTE(v15) = v17 == 0;

  v18 = IMOSLoggingEnabled();
  if ((v15 & 1) == 0)
  {
    if (v18)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Getting Greenfield preview for width and orientation", &v29, 2u);
      }
    }

    v20 = [(CKMediaObject *)self previewForWidth:v4 orientation:a3];
    v21 = IMOSLoggingEnabled();
    if (v20)
    {
      if (v21)
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Got preview image", &v29, 2u);
        }
      }

      v23 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v20];
      [v12 setThumbnail:v23];
    }

    else if (v21)
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Warning: unable to obtain preview image at this time", &v29, 2u);
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v18)
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Cannot generate preview: file URL is missing", &v29, 2u);
    }

    goto LABEL_33;
  }

LABEL_34:
  v9 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  [(LPLinkMetadata *)v9 setSpecialization:v12];
  v25 = [(CKMediaObject *)self fileURL];
  [(LPLinkMetadata *)v9 setOriginalURL:v25];

  v26 = [v12 thumbnail];
  LOBYTE(v25) = v26 == 0;

  if ((v25 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Caching link presentation metadata with thumbnail", &v29, 2u);
      }
    }

    objc_storeStrong(&self->_linkMetadata, v9);
    self->_cachedWidth = a3;
    self->_cachedOrientation = v4;
  }

LABEL_41:

  return v9;
}

@end