@interface IMTranscoder
+ (BOOL)shouldPreserveAAEncoding:(id)a3;
+ (BOOL)shouldPreserveHDREncoding:(id)a3;
+ (BOOL)shouldPreserveHEIFEncoding:(id)a3 target:(int64_t)a4 sourceUTI:(id)a5;
+ (BOOL)supportsUTI:(id)a3;
- (BOOL)BOOLFromTranscoderUserInfo:(id)a3 withKey:(id)a4;
- (void)transcodeFileTransfer:(id)a3 utiType:(id)a4 allowUnfilteredUTIs:(id)a5 target:(int64_t)a6 sizes:(id)a7 commonCapabilities:(id)a8 maxDimension:(unint64_t)a9 transcoderUserInfo:(id)a10 representations:(int64_t)a11 isLQMEnabled:(BOOL)a12 completionBlock:(id)a13;
@end

@implementation IMTranscoder

+ (BOOL)supportsUTI:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = objc_msgSend_supportedUTIs(a1, a2, a3, v3, v4, v5, v6, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v25, 16, v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v8);
        }

        if (UTTypeConformsTo(a3, *(*(&v21 + 1) + 8 * v15)))
        {
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }

        ++v15;
      }

      while (v13 != v15);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v21, v25, 16, v17, v18);
      v13 = v12;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (BOOL)shouldPreserveHEIFEncoding:(id)a3 target:(int64_t)a4 sourceUTI:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3, a4, a5, v5, v6);
  v16 = objc_msgSend_objectForKey_(v10, v11, @"ForceHEIFEncoding", v12, v13, v14, v15);
  if (v16)
  {
    v17 = v16;
    if (objc_opt_respondsToSelector())
    {
      if (objc_msgSend_BOOLValue(v17, v18, v19, v20, v21, v22, v23))
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          LOBYTE(v25) = 1;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            LOWORD(v43) = 0;
            _os_log_impl(&dword_254811000, v24, OS_LOG_TYPE_INFO, "Forcing HEIF encoding from default", &v43, 2u);
          }
        }

        else
        {
          LOBYTE(v25) = 1;
        }

        goto LABEL_17;
      }
    }
  }

  if (UTTypeConformsTo(a5, *MEMORY[0x277CC2120]))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v26 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v43 = 138412290;
    v44 = a5;
    v27 = "Rejecting HEIF encoding, source is %@";
LABEL_15:
    _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, v27, &v43, 0xCu);
LABEL_16:
    LOBYTE(v25) = 0;
    goto LABEL_17;
  }

  v28 = IMOSLoggingEnabled();
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (!v28)
    {
      goto LABEL_16;
    }

    v26 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v43 = 134217984;
    v44 = a4;
    v27 = "Rejecting HEIF encoding for non iMessage/RCS target %ld";
    goto LABEL_15;
  }

  if (v28)
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v43 = 138412290;
      v44 = a3;
      _os_log_impl(&dword_254811000, v36, OS_LOG_TYPE_INFO, "Checking for HEIF support %@", &v43, 0xCu);
    }
  }

  v25 = objc_msgSend_objectForKey_(a3, v29, *MEMORY[0x277D188A0], v30, v31, v32, v33);
  if (v25)
  {
    if (objc_opt_respondsToSelector())
    {
      LOBYTE(v25) = objc_msgSend_integerValue(v25, v37, v38, v39, v40, v41, v42) == 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  v34 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (BOOL)shouldPreserveHDREncoding:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3, v3, v4, v5, v6);
  v14 = objc_msgSend_objectForKey_(v8, v9, @"ForceHDREncoding", v10, v11, v12, v13);
  if (v14 && (v15 = v14, (objc_opt_respondsToSelector() & 1) != 0) && objc_msgSend_BOOLValue(v15, v16, v17, v18, v19, v20, v21))
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      LOBYTE(v23) = 1;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_254811000, v22, OS_LOG_TYPE_INFO, "Forcing HDR encoding from default", &v38, 2u);
      }
    }

    else
    {
      LOBYTE(v23) = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v38 = 138412290;
        v39 = a3;
        _os_log_impl(&dword_254811000, v29, OS_LOG_TYPE_INFO, "Checking for HDR support %@", &v38, 0xCu);
      }
    }

    v23 = objc_msgSend_objectForKey_(a3, v24, *MEMORY[0x277D18898], v25, v26, v27, v28);
    if (v23)
    {
      LOBYTE(v23) = (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_integerValue(v23, v30, v31, v32, v33, v34, v35) == 1;
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (BOOL)shouldPreserveAAEncoding:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3, v3, v4, v5, v6);
  v14 = objc_msgSend_objectForKey_(v8, v9, @"ForceAAEncoding", v10, v11, v12, v13);
  if (v14 && (v15 = v14, (objc_opt_respondsToSelector() & 1) != 0) && objc_msgSend_BOOLValue(v15, v16, v17, v18, v19, v20, v21))
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      LOBYTE(v23) = 1;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_254811000, v22, OS_LOG_TYPE_INFO, "Forcing AA encoding from default", &v38, 2u);
      }
    }

    else
    {
      LOBYTE(v23) = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v38 = 138412290;
        v39 = a3;
        _os_log_impl(&dword_254811000, v29, OS_LOG_TYPE_INFO, "Checking for HEIF support %@", &v38, 0xCu);
      }
    }

    v23 = objc_msgSend_objectForKey_(a3, v24, *MEMORY[0x277D188A0], v25, v26, v27, v28);
    if (v23)
    {
      LOBYTE(v23) = (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_integerValue(v23, v30, v31, v32, v33, v34, v35) == 1;
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)transcodeFileTransfer:(id)a3 utiType:(id)a4 allowUnfilteredUTIs:(id)a5 target:(int64_t)a6 sizes:(id)a7 commonCapabilities:(id)a8 maxDimension:(unint64_t)a9 transcoderUserInfo:(id)a10 representations:(int64_t)a11 isLQMEnabled:(BOOL)a12 completionBlock:(id)a13
{
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_254811000, v14, OS_LOG_TYPE_INFO, "Attempted to transcode with generic transcoder--this is probably unintentional!!", v15, 2u);
    }
  }

  if (a13)
  {
    (*(a13 + 2))(a13, a3, 0, 0, 0, 1, 0, 0);
  }
}

- (BOOL)BOOLFromTranscoderUserInfo:(id)a3 withKey:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = objc_msgSend_objectForKey_(a3, a2, a4, a4, v4, v5, v6);
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      v16 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = @"NO";
        v22 = 138413058;
        v23 = a3;
        v24 = 2112;
        if (v16)
        {
          v18 = @"YES";
        }

        v25 = v9;
        v26 = 2112;
        v27 = a4;
        v28 = 2112;
        v29 = v18;
        _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "Has transcoderUserInfo: %@, found %@, so %@ = %@", &v22, 0x2Au);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v22 = 138412290;
        v23 = a4;
        _os_log_impl(&dword_254811000, v19, OS_LOG_TYPE_INFO, "No transcoderUserInfo for %@", &v22, 0xCu);
      }
    }

    LOBYTE(v16) = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

@end