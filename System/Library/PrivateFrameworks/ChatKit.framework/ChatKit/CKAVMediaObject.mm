@interface CKAVMediaObject
+ (id)durationCache;
- (double)duration;
- (id)description;
- (void)setDuration:(double)duration;
@end

@implementation CKAVMediaObject

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKAVMediaObject;
  v4 = [(CKMediaObject *)&v8 description];
  transcoderUserInfo = [(CKMediaObject *)self transcoderUserInfo];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, transcoderUserInfo];

  return v6;
}

- (double)duration
{
  v51 = *MEMORY[0x1E69E9840];
  if (duration__pred_CMTimeGetSecondsCoreMedia != -1)
  {
    [CKAVMediaObject duration];
  }

  if (!self->_durationLoaded)
  {
    v3 = +[CKAVMediaObject durationCache];
    transferGUID = [(CKMediaObject *)self transferGUID];
    v5 = [v3 objectForKey:transferGUID];

    if (v5)
    {
      [v5 doubleValue];
      [(CKAVMediaObject *)self setDuration:?];
    }

    transcoderUserInfo = [(CKMediaObject *)self transcoderUserInfo];
    v7 = transcoderUserInfo;
    durationLoaded = self->_durationLoaded;
    if (!transcoderUserInfo)
    {
      goto LABEL_33;
    }

    if (self->_durationLoaded)
    {
      goto LABEL_61;
    }

    v9 = [transcoderUserInfo objectForKey:*MEMORY[0x1E69A6F60]];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(46);
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_DEBUG, "For media object (%@), getting duration (%@) from transcoderUserInfo", buf, 0x16u);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          selfCopy2 = self;
          v42 = *&v9;
          _CKLog();
        }

        [v9 doubleValue];
        [(CKAVMediaObject *)self setDuration:?];
      }
    }

    if (self->_durationLoaded)
    {
      goto LABEL_61;
    }

    v11 = [v7 objectForKey:*MEMORY[0x1E69A6F90]];
    v12 = [v7 objectForKey:*MEMORY[0x1E69A6F68]];
    v13 = v12;
    if (v11)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    else
    {
      isKindOfClass = 0;
      if (!v12)
      {
LABEL_32:

        durationLoaded = self->_durationLoaded;
LABEL_33:
        if (!durationLoaded)
        {
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(46);
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              fileURL = [(CKMediaObject *)self fileURL];
              *buf = 138412546;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = fileURL;
              _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_DEBUG, "For media object (%@), calculating duration from file: %@", buf, 0x16u);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
          {
            fileURL2 = [(CKMediaObject *)self fileURL];
            _CKLog();
          }

          v22 = objc_alloc_init(MEMORY[0x1E696AC08]);
          v46 = 0;
          fileURL3 = [(CKMediaObject *)self fileURL];
          path = [fileURL3 path];
          v25 = [v22 fileExistsAtPath:path isDirectory:&v46];
          v26 = v46;

          if (v26 & 1 | ((v25 & 1) == 0))
          {
            if (IMOSLoggingEnabled())
            {
              CKLogCStringForType(46);
              v27 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                fileURL4 = [(CKMediaObject *)self fileURL];
                *buf = 138412290;
                *&buf[4] = fileURL4;
                _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_DEBUG, "  => No file at URL (%@), aborting duration calculation", buf, 0xCu);
              }
            }

            if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
            {
              fileURL5 = [(CKMediaObject *)self fileURL];
              _CKLog();
            }

            self->_durationLoaded = 1;
          }

          else
          {
            transcoderUserInfo2 = [(CKMediaObject *)self transcoderUserInfo];
            v30 = [transcoderUserInfo2 objectForKey:*MEMORY[0x1E69A6F58]];

            if (v30)
            {
              [MEMORY[0x1E695DFF8] URLWithString:v30];
            }

            else
            {
              [(CKMediaObject *)self fileURL];
            }
            v31 = ;
            v32 = MEMORY[0x193AF5EC0](@"PLAssetSharingUtilities", @"PhotoLibraryServices");
            fileURL6 = [(CKMediaObject *)self fileURL];
            path2 = [fileURL6 path];
            v35 = [v32 playerItemForVideoURL:v31 fallbackFilePath:path2 library:0];

            asset = [v35 asset];
            v37 = asset;
            v38 = duration__CMTimeGetSeconds;
            if (asset)
            {
              [asset duration];
            }

            else
            {
              memset(buf, 0, sizeof(buf));
            }

            if (v38(buf) >= 0.0)
            {
              [(CKAVMediaObject *)self setDuration:?];
            }

            else
            {
              self->_durationLoaded = 1;
            }
          }
        }

LABEL_61:

        return self->_duration;
      }
    }

    objc_opt_class();
    if (isKindOfClass & objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      v16 = v15;
      [v11 doubleValue];
      v18 = v16 - v17;
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(46);
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v18;
          *&buf[22] = 2112;
          v48 = v11;
          v49 = 2112;
          v50 = v13;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_DEBUG, "For media object (%@), getting duration (%f) from start and end: (%@|%@)", buf, 0x2Au);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v44 = v11;
        v45 = v13;
        v42 = v18;
        selfCopy2 = self;
        _CKLog();
      }

      [(CKAVMediaObject *)self setDuration:v18, selfCopy2, *&v42, v44, v45];
    }

    goto LABEL_32;
  }

  return self->_duration;
}

void *__27__CKAVMediaObject_duration__block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CMTimeGetSeconds", @"CoreMedia");
  duration__CMTimeGetSeconds = result;
  return result;
}

+ (id)durationCache
{
  if (durationCache_once != -1)
  {
    +[CKAVMediaObject durationCache];
  }

  v3 = durationCache_sDurationCache;

  return v3;
}

void __32__CKAVMediaObject_durationCache__block_invoke()
{
  v0 = CKCreateCache(0);
  v1 = durationCache_sDurationCache;
  durationCache_sDurationCache = v0;
}

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    self->_durationLoaded = 1;
    v7 = +[CKAVMediaObject durationCache];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    transferGUID = [(CKMediaObject *)self transferGUID];
    [v7 setObject:v5 forKey:transferGUID];
  }
}

@end