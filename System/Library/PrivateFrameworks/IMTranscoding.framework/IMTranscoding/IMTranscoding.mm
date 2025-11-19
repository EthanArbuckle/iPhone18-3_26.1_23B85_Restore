uint64_t sub_254843E24()
{
  qword_280E21160 = objc_alloc_init(IMTranscodeController);

  return MEMORY[0x2821F96F8]();
}

void sub_254844108(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x259C1BE30]() != MEMORY[0x277D86480])
  {
    goto LABEL_2;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_2;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254843000, v7, OS_LOG_TYPE_INFO, "Transcoder service interrupted", buf, 2u);
    }

    goto LABEL_8;
  }

  v5 = MEMORY[0x277D863F8];
  v6 = IMOSLoggingEnabled();
  if (v3 != v5)
  {
    if (!v6)
    {
      goto LABEL_2;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
      *buf = 136315138;
      v12 = string;
      _os_log_impl(&dword_254843000, v7, OS_LOG_TYPE_INFO, "Unexpected error for transcoder service: %s", buf, 0xCu);
    }

LABEL_8:

    goto LABEL_2;
  }

  if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254843000, v9, OS_LOG_TYPE_INFO, "Transcoder service invalid", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254844358;
  block[3] = &unk_27978C218;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_2:

  v4 = *MEMORY[0x277D85DE8];
}

void sub_254844638(uint64_t a1, int a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = *(a1 + 32);
  v23 = 0;
  v11 = [v9 removeItemAtURL:v10 error:&v23];
  v12 = v23;

  if (v11)
  {
    if (a2)
    {
      v13 = [MEMORY[0x277CCAA00] defaultManager];
      v14 = *(a1 + 32);
      v22 = v12;
      v15 = [v13 moveItemAtURL:v7 toURL:v14 error:&v22];
      v16 = v22;

      if ((v15 & 1) == 0 && IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = *(a1 + 32);
          *buf = 138412802;
          v25 = v7;
          v26 = 2112;
          v27 = v20;
          v28 = 2112;
          v29 = v16;
          _os_log_impl(&dword_254843000, v19, OS_LOG_TYPE_INFO, "Error moving safe transfer (%@) to original transfer path (%@) with error: %@", buf, 0x20u);
        }
      }

      v12 = v16;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      *buf = 138412546;
      v25 = v18;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_254843000, v17, OS_LOG_TYPE_INFO, "Error removing original transfer (%@) error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v21 = *MEMORY[0x277D85DE8];
}

void sub_254844C0C(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x259C1BE30]();
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 == MEMORY[0x277D86468])
    {
      v19 = IMGetXPCBoolFromDictionary();
      v18 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v20 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v17 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      if (!v17 && ([v18 isEqual:*(a1 + 32)]& 1) == 0 && v20)
      {
        v21 = [v18 URLByAppendingPathExtension:v20];
        v22 = [MEMORY[0x277D19250] defaultManager];
        v33[0] = 0;
        [v22 moveItemAtURL:v18 toURL:v21 error:v33];
        v17 = v33[0];

        if (v17)
        {
          v23 = IMLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v41 = v20;
            v42 = 2112;
            v43 = v18;
            v44 = 2112;
            v45 = v17;
            _os_log_error_impl(&dword_254843000, v23, OS_LOG_TYPE_ERROR, "Failed to add extension %@ to preview URL %@: %@", buf, 0x20u);
          }
        }

        else
        {
          v23 = v18;
          v18 = v21;
        }
      }

      v27 = MEMORY[0x259C1BE00](v3);
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = *(a1 + 32);
          *buf = 138413058;
          v41 = v29;
          v42 = 2112;
          v43 = v18;
          v44 = 2080;
          v45 = v27;
          v46 = 2112;
          v47 = v17;
          _os_log_impl(&dword_254843000, v28, OS_LOG_TYPE_INFO, "received reply for GenerateSafeRender for %@, previewURL: %@ reply: %s error: %@", buf, 0x2Au);
        }
      }

      free(v27);

      goto LABEL_33;
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 138412546;
        v41 = v6;
        v42 = 2080;
        v43 = string;
        _os_log_impl(&dword_254843000, v5, OS_LOG_TYPE_INFO, "received unknown error for GenerateSafeRender for %@: %s", buf, 0x16u);
      }
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
LABEL_25:
    v17 = v8;
    v18 = 0;
    v19 = 0;
LABEL_33:
    v30 = *(a1 + 48);
    if (v30)
    {
      (*(v30 + 16))(v30, v19, v18, v17);
    }

    goto LABEL_35;
  }

  v9 = *(a1 + 96);
  v10 = IMOSLoggingEnabled();
  if (v9 > 4)
  {
    if (v10)
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *(a1 + 32);
        v26 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 138412546;
        v41 = v25;
        v42 = 2080;
        v43 = v26;
        _os_log_impl(&dword_254843000, v24, OS_LOG_TYPE_INFO, "received error (final) for GenerateSafeRender for %@: %s", buf, 0x16u);
      }
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-8 userInfo:0];
    goto LABEL_25;
  }

  if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 96);
      v13 = *(a1 + 32);
      v14 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
      *buf = 134218498;
      v41 = v12;
      v42 = 2112;
      v43 = v13;
      v44 = 2080;
      v45 = v14;
      _os_log_impl(&dword_254843000, v11, OS_LOG_TYPE_INFO, "received error (retry %lu) for GenerateSafeRender for %@: %s, retrying", buf, 0x20u);
    }
  }

  v33[1] = MEMORY[0x277D85DD0];
  v33[2] = 3221225472;
  v33[3] = sub_2548451C8;
  v33[4] = &unk_27978C290;
  v32 = *(a1 + 32);
  v15 = v32.i64[0];
  v34 = vextq_s8(v32, v32, 8uLL);
  v16 = *(a1 + 72);
  v36 = *(a1 + 56);
  v37 = v16;
  v38 = *(a1 + 88);
  v39 = *(a1 + 96);
  v35 = *(a1 + 48);
  im_dispatch_after();

  v17 = 0;
  v18 = 0;
LABEL_35:

  v31 = *MEMORY[0x277D85DE8];
}

void sub_254845168(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25484501CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2548451C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 96);
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v7[0] = *(a1 + 56);
  v7[1] = v5;
  v8 = *(a1 + 88);
  return [v2 _generateSafeRender:v1 constraints:v7 retries:(v3 + 1) completionBlock:v4];
}

void sub_254845AA0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v20 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  os_activity_scope_leave((*(*(a1 + 40) + 8) + 32));
  v19 = *(a1 + 32);
  if (v19)
  {
    (*(v19 + 16))(v19, v20, v15, v16, v17, a6, a7, v18);
  }
}

void sub_254845B84(int8x16_t *a1, void *a2)
{
  v98 = *MEMORY[0x277D85DE8];
  xdict = a2;
  v3 = MEMORY[0x259C1BE30]();
  v67 = a1;
  if (v3 != MEMORY[0x277D86480])
  {
    if (v3 != MEMORY[0x277D86468])
    {
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5 = a1[2].i64[0];
          string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
          *buf = 138412546;
          v91 = v5;
          v92 = 2080;
          v93 = string;
          _os_log_impl(&dword_254843000, v4, OS_LOG_TYPE_INFO, "received unknown error for TranscodeFile for %@: %s", buf, 0x16u);
        }
      }

      v7 = a1[2].i64[0];
      v65 = IMSingleObjectArray();
      v8 = a1[6].i64[0];
      v9 = a1[2].i64[0];
      v64 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
      (*(v8 + 16))(v8, v9, v65, 0, v64, 0, 0, 0);
      goto LABEL_43;
    }

    HIDWORD(v60) = IMGetXPCBoolFromDictionary();
    v65 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v26 = MEMORY[0x259C1BE00](xdict);
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = a1[2].i64[0];
        v29 = @"NO";
        *buf = 138413058;
        if (HIDWORD(v60))
        {
          v29 = @"YES";
        }

        v91 = v28;
        v92 = 2112;
        v93 = v29;
        v94 = 2080;
        v95 = v26;
        v96 = 2112;
        v97 = v65;
        _os_log_impl(&dword_254843000, v27, OS_LOG_TYPE_INFO, "received reply for TranscodeFile for %@, success: %@ reply: %s error: %@", buf, 0x2Au);
      }
    }

    free(v26);
    LODWORD(v60) = IMGetXPCBoolFromDictionary();
    v64 = IMGetXPCStringFromDictionary();
    v63 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v62 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v61 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v30 = [MEMORY[0x277D19268] sharedInstance];
    if ([v30 isInternalInstall])
    {
      v31 = IMGetCachedDomainBoolForKey();

      if (!v31)
      {
LABEL_34:
        v43 = v67[6].i64[0];
        if (v64)
        {
          v44 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
          (*(v43 + 16))(v43, v44, v63, v62, v65, HIDWORD(v60), v60, v61);
        }

        else
        {
          (*(v43 + 16))(v43, 0, v63, v62, v65, HIDWORD(v60), v60, v61);
        }

LABEL_43:
        if (v67[5].i64[1])
        {
          if (IMOSLoggingEnabled())
          {
            v51 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = v67[5].i64[1];
              *buf = 138412290;
              v91 = v52;
              _os_log_impl(&dword_254843000, v51, OS_LOG_TYPE_INFO, "Removing the link we created before: %@", buf, 0xCu);
            }
          }

          v53 = [MEMORY[0x277CCAA00] defaultManager];
          v54 = v67[5].i64[1];
          v69 = 0;
          v55 = [v53 removeItemAtURL:v54 error:&v69];
          v56 = v69;

          if ((v55 & 1) == 0 && IMOSLoggingEnabled())
          {
            v57 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              v58 = v67[5].i64[1];
              *buf = 138412546;
              v91 = v58;
              v92 = 2112;
              v93 = v56;
              _os_log_impl(&dword_254843000, v57, OS_LOG_TYPE_INFO, "Unlink of %@ failed! error: %@", buf, 0x16u);
            }
          }
        }

        goto LABEL_54;
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v30 = v63;
      v32 = [v30 countByEnumeratingWithState:&v70 objects:v89 count:16];
      if (v32)
      {
        v33 = *v71;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v71 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v70 + 1) + 8 * i);
            v36 = [MEMORY[0x277CCAA00] defaultManager];
            v37 = [v35 path];
            v38 = [v37 lastPathComponent];
            v39 = [v36 _randomTemporaryPathWithFileName:v38];

            if (IMOSLoggingEnabled())
            {
              v40 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v91 = v35;
                v92 = 2112;
                v93 = v39;
                _os_log_impl(&dword_254843000, v40, OS_LOG_TYPE_INFO, "Stashing aside transcoded URL: %@ to %@", buf, 0x16u);
              }
            }

            v41 = [MEMORY[0x277CCAA00] defaultManager];
            v42 = [v35 path];
            [v41 copyItemAtPath:v42 toPath:v39 error:0];
          }

          v32 = [v30 countByEnumeratingWithState:&v70 objects:v89 count:16];
        }

        while (v32);
      }
    }

    goto LABEL_34;
  }

  v10 = a1[8].i32[0];
  v11 = IMOSLoggingEnabled();
  if (v10 > 4)
  {
    if (v11)
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = a1[2].i64[0];
        v47 = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
        *buf = 138412546;
        v91 = v46;
        v92 = 2080;
        v93 = v47;
        _os_log_impl(&dword_254843000, v45, OS_LOG_TYPE_INFO, "received error (final) for TranscodeFile for %@: %s", buf, 0x16u);
      }
    }

    v48 = a1[2].i64[0];
    v65 = IMSingleObjectArray();
    v49 = a1[6].i64[0];
    v50 = a1[2].i64[0];
    v64 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-8 userInfo:0];
    (*(v49 + 16))(v49, v50, v65, 0, v64, 0, 0, 0);
    goto LABEL_43;
  }

  if (v11)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = a1[8].i32[0];
      v14 = v67[2].i64[0];
      v15 = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
      *buf = 134218498;
      v91 = v13;
      v92 = 2112;
      v93 = v14;
      v94 = 2080;
      v95 = v15;
      _os_log_impl(&dword_254843000, v12, OS_LOG_TYPE_INFO, "received error (retry %lu) for TranscodeFile for %@: %s, retrying", buf, 0x20u);
    }

    a1 = v67;
  }

  v74 = MEMORY[0x277D85DD0];
  v75 = 3221225472;
  v76 = sub_2548465A4;
  v77 = &unk_27978C308;
  v68 = a1[2];
  v16 = v68.i64[0];
  v78 = vextq_s8(v68, v68, 8uLL);
  v17 = a1[3].i64[0];
  v87 = a1[8].i8[4];
  v18 = a1;
  v19 = a1[3].i64[1];
  v83 = v18[6].i64[1];
  v20 = v18[4].i64[0];
  v21 = v18[4].i64[1];
  *&v22 = v20;
  *(&v22 + 1) = v21;
  *&v23 = v17;
  *(&v23 + 1) = v19;
  v79 = v23;
  v80 = v22;
  v84 = v18[7].i64[0];
  v24 = v18[5].i64[0];
  v25 = v18[7].i64[1];
  v81 = v24;
  v85 = v25;
  v88 = *(&v18[8].i16[2] + 1);
  v86 = v18[8].i32[0];
  v82 = v18[6].i64[0];
  im_dispatch_after();

LABEL_54:
  v59 = *MEMORY[0x277D85DE8];
}

void sub_25484651C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2548462E8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2548465A4(uint64_t a1)
{
  LOBYTE(v3) = *(a1 + 126);
  HIDWORD(v2) = *(a1 + 120) + 1;
  LOBYTE(v2) = *(a1 + 125);
  return [*(a1 + 32) _transcodeFileTransferContents:*(a1 + 40) utiType:*(a1 + 48) isSticker:*(a1 + 124) allowUnfilteredUTIs:*(a1 + 56) target:*(a1 + 96) sizes:*(a1 + 64) commonCapabilities:*(a1 + 72) maxDimension:*(a1 + 104) transcoderUserInfo:*(a1 + 80) representations:*(a1 + 112) fallBack:v2 retries:v3 isLQMEnabled:*(a1 + 88) completionBlock:?];
}

void sub_254846AA8(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  xdict = a2;
  v3 = MEMORY[0x259C1BE30]();
  if (v3 != MEMORY[0x277D86480])
  {
    if (v3 != MEMORY[0x277D86468])
    {
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5 = *(a1 + 32);
          string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
          *buf = 138412546;
          v68 = v5;
          v69 = 2080;
          v70 = string;
          _os_log_impl(&dword_254843000, v4, OS_LOG_TYPE_INFO, "received unknown error for TranscodePayloadData for %@: %s", buf, 0x16u);
        }
      }

      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
        (*(v7 + 16))(v7, 0, 0, v8, 0, 0);
      }

      goto LABEL_44;
    }

    v47 = a1;
    v46 = IMGetXPCBoolFromDictionary();
    v50 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v21 = MEMORY[0x259C1BE00](xdict);
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(v47 + 32);
        v24 = @"NO";
        *buf = 138413058;
        if (v46)
        {
          v24 = @"YES";
        }

        v68 = v23;
        v69 = 2112;
        v70 = v24;
        v71 = 2080;
        v72 = v21;
        v73 = 2112;
        v74 = v50;
        _os_log_impl(&dword_254843000, v22, OS_LOG_TYPE_INFO, "received reply for TranscodePayloadData for %@, success: %@ reply: %s error: %@", buf, 0x2Au);
      }
    }

    free(v21);
    v49 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v48 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v45 = IMGetXPCBoolFromDictionary();
    v25 = [MEMORY[0x277D19268] sharedInstance];
    if ([v25 isInternalInstall])
    {
      v26 = IMGetCachedDomainBoolForKey();

      if (!v26)
      {
LABEL_35:
        v38 = *(v47 + 64);
        if (v38)
        {
          (*(v38 + 16))(v38, v49, v48, v50, v46, v45);
        }

        goto LABEL_44;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v25 = v49;
      v27 = [v25 countByEnumeratingWithState:&v53 objects:v66 count:16];
      if (v27)
      {
        v28 = *v54;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v54 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v53 + 1) + 8 * i);
            v31 = [MEMORY[0x277CCAA00] defaultManager];
            v32 = [v30 path];
            v33 = [v32 lastPathComponent];
            v34 = [v31 _randomTemporaryPathWithFileName:v33];

            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v68 = v30;
                v69 = 2112;
                v70 = v34;
                _os_log_impl(&dword_254843000, v35, OS_LOG_TYPE_INFO, "Stashing aside transcoded URL: %@ to %@", buf, 0x16u);
              }
            }

            v36 = [MEMORY[0x277CCAA00] defaultManager];
            v37 = [v30 path];
            [v36 copyItemAtPath:v37 toPath:v34 error:0];
          }

          v27 = [v25 countByEnumeratingWithState:&v53 objects:v66 count:16];
        }

        while (v27);
      }
    }

    goto LABEL_35;
  }

  v9 = *(a1 + 72);
  v10 = IMOSLoggingEnabled();
  if (v9 > 4)
  {
    if (v10)
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = *(a1 + 32);
        v41 = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
        *buf = 138412546;
        v68 = v40;
        v69 = 2080;
        v70 = v41;
        _os_log_impl(&dword_254843000, v39, OS_LOG_TYPE_INFO, "received error (final) for TranscodePayloadData for %@: %s", buf, 0x16u);
      }
    }

    v42 = *(a1 + 64);
    if (v42)
    {
      v43 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-8 userInfo:0];
      (*(v42 + 16))(v42, 0, 0, v43, 0, 0);
    }
  }

  else
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 72);
        v13 = *(a1 + 32);
        v14 = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
        *buf = 134218498;
        v68 = v12;
        v69 = 2112;
        v70 = v13;
        v71 = 2080;
        v72 = v14;
        _os_log_impl(&dword_254843000, v11, OS_LOG_TYPE_INFO, "received error (retry %lu) for TranscodePayloadData for %@: %s, retrying", buf, 0x20u);
      }
    }

    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = sub_25484723C;
    v60 = &unk_27978C358;
    v52 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    *&v19 = v52;
    *(&v19 + 1) = v15;
    v61 = v19;
    v62 = v18;
    v20 = *(a1 + 64);
    v64 = *(a1 + 72);
    v65 = *(a1 + 80);
    v63 = v20;
    im_dispatch_after();
  }

LABEL_44:

  v44 = *MEMORY[0x277D85DE8];
}

void sub_2548471DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x254847140);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25484723C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 80);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72) + 1;
  return MEMORY[0x2821F9670](*(a1 + 32), sel__transcodeFileTransferPayloadData_balloonBundleID_attachments_retries_fallBack_completionBlock_);
}

void sub_254847664(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x259C1BE30]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        v21 = 138412546;
        v22 = v11;
        v23 = 2080;
        v24 = string;
        _os_log_impl(&dword_254843000, v10, OS_LOG_TYPE_INFO, "received error for GenerateSnapshot for %@: %s", &v21, 0x16u);
      }
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-8 userInfo:0];
      (*(v13 + 16))(v13, 0, v9);
      goto LABEL_23;
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      v14 = IMGetXPCBoolFromDictionary();
      v9 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v15 = MEMORY[0x259C1BE00](v3);
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 32);
          v18 = @"NO";
          v21 = 138413058;
          if (v14)
          {
            v18 = @"YES";
          }

          v22 = v17;
          v23 = 2112;
          v24 = v18;
          v25 = 2080;
          v26 = v15;
          v27 = 2112;
          v28 = v9;
          _os_log_impl(&dword_254843000, v16, OS_LOG_TYPE_INFO, "received reply for GenerateSnapshot for %@, success: %@ reply: %s error: %@", &v21, 0x2Au);
        }
      }

      free(v15);
      v19 = *(a1 + 40);
      if (v19)
      {
        (*(v19 + 16))(v19, v14, v9);
      }

      goto LABEL_23;
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v7 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        v21 = 138412546;
        v22 = v6;
        v23 = 2080;
        v24 = v7;
        _os_log_impl(&dword_254843000, v5, OS_LOG_TYPE_INFO, "received unknown error for GenerateSnapshot for %@: %s", &v21, 0x16u);
      }
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);
LABEL_23:
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_254847994(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x254847814);
  }

  _Unwind_Resume(a1);
}

void sub_254847B5C(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (*(a1 + 32))
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = v10;
    v12 = *(a1 + 32);
    if (a2)
    {
      v20 = @"__kIMPreviewGenerationSucceededNotificationSizeUserInfoKey";
      *v17 = a4;
      *&v17[1] = a5;
      v13 = [MEMORY[0x277CCAE60] valueWithBytes:v17 objCType:"{CGSize=dd}"];
      v21[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      [v11 postNotificationName:@"__kIMPreviewGenerationSucceededNotificationName" object:v12 userInfo:v14];
    }

    else
    {
      if (!v9)
      {
        [v10 postNotificationName:@"__kIMPreviewGenerationFailedNotificationName" object:*(a1 + 32) userInfo:0];
        goto LABEL_7;
      }

      v18 = @"__kIMPreviewGenerationFailedNotificationErrorUserInfoKey";
      v19 = v9;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [v11 postNotificationName:@"__kIMPreviewGenerationFailedNotificationName" object:v12 userInfo:v13];
    }

LABEL_7:
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v9, a4, a5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_254848250(uint64_t a1, void *a2)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x259C1BE30]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (*(a1 + 88))
    {
      v12 = [MEMORY[0x277D1AAA8] sharedInstance];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMPreviewGeneratorDomain" code:2 userInfo:0];
      [v12 forceAutoBugCaptureWithSubType:@"Transcoder Preview Generation Failure" errorPayload:v13];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 32);
          string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
          *buf = 138412546;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = string;
          _os_log_impl(&dword_254843000, v14, OS_LOG_TYPE_INFO, "received error (final) for GeneratePreview for %@: %s", buf, 0x16u);
        }
      }

      v17 = *(a1 + 80);
      if (v17)
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-8 userInfo:0];
        (*(v17 + 16))(v17, 0, v18, 0.0, 0.0);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = *(a1 + 88);
          v31 = *(a1 + 32);
          v32 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
          *buf = 134218498;
          *&buf[4] = v30;
          *&buf[12] = 2112;
          *&buf[14] = v31;
          *&buf[22] = 2080;
          *&buf[24] = v32;
          _os_log_impl(&dword_254843000, v29, OS_LOG_TYPE_INFO, "received error (retry %lu) for GeneratePreview for %@: %s, retrying", buf, 0x20u);
        }
      }

      v34 = *(a1 + 32);
      v33 = *(a1 + 40);
      v35 = *(a1 + 48);
      v36 = *(a1 + 56);
      v37 = *(a1 + 64);
      v38 = *(a1 + 72);
      v40 = *(a1 + 80);
      v39 = *(a1 + 88);
      v41 = *(a1 + 136);
      v42 = *(a1 + 112);
      *buf = *(a1 + 96);
      *&buf[16] = v42;
      v47[0] = *(a1 + 128);
      LOBYTE(v45) = v41;
      [v33 _generatePreview:v34 previewURL:v35 senderContext:v36 constraints:buf retries:v39 + 1 balloonBundleID:v37 transferGUID:v38 completionBlock:v40 blockUntilReply:v45];
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v19 = IMGetXPCBoolFromDictionary();
    v20 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v21 = MEMORY[0x259C1BE00](v3);
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        v24 = @"NO";
        *buf = 138413058;
        if (v19)
        {
          v24 = @"YES";
        }

        *&buf[4] = v23;
        *&buf[12] = 2112;
        *&buf[14] = v24;
        *&buf[22] = 2080;
        *&buf[24] = v21;
        LOWORD(v47[0]) = 2112;
        *(v47 + 2) = v20;
        _os_log_impl(&dword_254843000, v22, OS_LOG_TYPE_INFO, "received reply for GeneratePreview for %@, success: %@ reply: %s error: %@", buf, 0x2Au);
      }
    }

    free(v21);
    objc_opt_class();
    v25 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
    v28 = v25;
    *buf = 0;
    *&buf[8] = 0;
    if (v25)
    {
      [v25 getValue:buf size:16];
      v26.n128_u64[0] = *buf;
      v27.n128_u64[0] = *&buf[8];
    }

    else
    {
      v27.n128_u64[0] = 0;
      v26.n128_u64[0] = 0;
    }

    v43 = *(a1 + 80);
    if (v43)
    {
      (*(v43 + 16))(v43, v19, v20, v26, v27);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v7 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = v7;
        _os_log_impl(&dword_254843000, v5, OS_LOG_TYPE_INFO, "received unknown error for GeneratePreview for %@: %s", buf, 0x16u);
      }
    }

    v8 = [MEMORY[0x277D1AAA8] sharedInstance];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMPreviewGeneratorDomain" code:1 userInfo:0];
    [v8 forceAutoBugCaptureWithSubType:@"Transcoder Preview Generation Failure" errorPayload:v9];

    v10 = *(a1 + 80);
    if (v10)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
      (*(v10 + 16))(v10, 0, v11, 0.0, 0.0);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

void sub_254848764(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2548486C4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254848930(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 88);
  v9[0] = *(a1 + 72);
  v9[1] = v6;
  v10 = *(a1 + 104);
  LOBYTE(v8) = 0;
  return [v2 _generateMetadata:v1 metadataURL:v3 senderContext:v4 constraints:v9 retries:0 completionBlock:v5 blockUntilReply:v8];
}

void sub_254848E90(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x259C1BE30]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (*(a1 + 72) > 4uLL)
    {
      v27 = [MEMORY[0x277D1AAA8] sharedInstance];
      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMPreviewGeneratorDomain" code:2 userInfo:0];
      [v27 forceAutoBugCaptureWithSubType:@"Transcoder Preview Generation Failure" errorPayload:v28];

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = *(a1 + 32);
          string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
          *buf = 138412546;
          *&buf[4] = v30;
          *&buf[12] = 2080;
          *&buf[14] = string;
          _os_log_impl(&dword_254843000, v29, OS_LOG_TYPE_INFO, "received error (final) for GenerateMetadata for %@: %s", buf, 0x16u);
        }
      }

      v32 = *(a1 + 64);
      if (v32)
      {
        v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-8 userInfo:0];
        (*(v32 + 16))(v32, 0, v33, 0.0, 0.0);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 72);
          v14 = *(a1 + 32);
          v15 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
          *buf = 134218498;
          *&buf[4] = v13;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          v46 = 2080;
          v47 = v15;
          _os_log_impl(&dword_254843000, v12, OS_LOG_TYPE_INFO, "received error (retry %lu) for GenerateMetadata for %@: %s, retrying", buf, 0x20u);
        }
      }

      v36 = *(a1 + 32);
      v16 = v36.i64[0];
      v37 = *(a1 + 48);
      v38 = *(a1 + 56);
      v40 = *(a1 + 80);
      v41 = *(a1 + 96);
      v42 = *(a1 + 112);
      v43 = *(a1 + 72);
      v39 = *(a1 + 64);
      v44 = *(a1 + 120);
      im_dispatch_after();
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v17 = IMGetXPCBoolFromDictionary();
    v18 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v19 = MEMORY[0x259C1BE00](v3);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        v22 = @"NO";
        *buf = 138413058;
        if (v17)
        {
          v22 = @"YES";
        }

        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        v46 = 2080;
        v47 = v19;
        v48 = 2112;
        v49 = v18;
        _os_log_impl(&dword_254843000, v20, OS_LOG_TYPE_INFO, "received reply for GenerateMetadata for %@, success: %@ reply: %s error: %@", buf, 0x2Au);
      }
    }

    free(v19);
    objc_opt_class();
    v23 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
    v26 = v23;
    *buf = 0;
    *&buf[8] = 0;
    if (v23)
    {
      [v23 getValue:buf size:16];
      v24.n128_u64[0] = *buf;
      v25.n128_u64[0] = *&buf[8];
    }

    else
    {
      v25.n128_u64[0] = 0;
      v24.n128_u64[0] = 0;
    }

    v34 = *(a1 + 64);
    if (v34)
    {
      (*(v34 + 16))(v34, v17, v18, v24, v25);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v7 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = v7;
        _os_log_impl(&dword_254843000, v5, OS_LOG_TYPE_INFO, "received unknown error for GenerateMetadata for %@: %s", buf, 0x16u);
      }
    }

    v8 = [MEMORY[0x277D1AAA8] sharedInstance];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMPreviewGeneratorDomain" code:1 userInfo:0];
    [v8 forceAutoBugCaptureWithSubType:@"Transcoder Preview Generation Failure" errorPayload:v9];

    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
      (*(v10 + 16))(v10, 0, v11, 0.0, 0.0);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_254849448(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25484938CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2548494A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 120);
  v7 = *(a1 + 88);
  v11[0] = *(a1 + 72);
  v11[1] = v7;
  v8 = *(a1 + 112);
  v12 = *(a1 + 104);
  LOBYTE(v10) = v6;
  return [v2 _generateMetadata:v1 metadataURL:v3 senderContext:v4 constraints:v11 retries:v8 + 1 completionBlock:v5 blockUntilReply:v10];
}

void sub_254849954(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x259C1BE30]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (*(a1 + 72) > 4uLL)
    {
      v34 = [MEMORY[0x277D1AAA8] sharedInstance];
      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMiMessageAppDecodeDomain" code:2 userInfo:0];
      [v34 forceAutoBugCaptureWithSubType:@"Transcoder Preview Generation Failure" errorPayload:v35];

      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v38 = *(a1 + 32);
          v37 = *(a1 + 40);
          string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
          *buf = 138412802;
          v48 = v38;
          v49 = 2112;
          v50 = v37;
          v51 = 2080;
          v52 = string;
          _os_log_impl(&dword_254843000, v36, OS_LOG_TYPE_INFO, "received error (final) for DecodeiMessageAppPayload for %@ bundleID %@: %s", buf, 0x20u);
        }
      }

      v40 = *(a1 + 64);
      if (v40)
      {
        v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-8 userInfo:0];
        (*(v40 + 16))(v40, 0, 0, 0, v41);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 72);
          v16 = *(a1 + 32);
          v15 = *(a1 + 40);
          v17 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
          *buf = 134218754;
          v48 = v14;
          v49 = 2112;
          v50 = v16;
          v51 = 2112;
          v52 = v15;
          v53 = 2080;
          v54 = v17;
          _os_log_impl(&dword_254843000, v13, OS_LOG_TYPE_INFO, "received error (retry %lu) for DecodeiMessageAppPayload for %@ bundleID %@: %s, retrying", buf, 0x2Au);
        }
      }

      v18 = *(a1 + 48);
      v19 = *(a1 + 32);
      v20 = *(a1 + 56);
      v21 = *(a1 + 40);
      *&v22 = v20;
      *(&v22 + 1) = v21;
      v43 = v22;
      v45 = *(a1 + 72);
      v44 = *(a1 + 64);
      v46 = *(a1 + 80);
      im_dispatch_after();
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v23 = IMGetXPCBoolFromDictionary();
    v24 = MEMORY[0x259C1BE00](v3);
    v25 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = *(a1 + 32);
        v28 = *(a1 + 40);
        v29 = @"NO";
        if (v23)
        {
          v29 = @"YES";
        }

        *buf = 138413314;
        v48 = v27;
        v49 = 2112;
        v50 = v28;
        v51 = 2112;
        v52 = v29;
        v53 = 2080;
        v54 = v24;
        v55 = 2112;
        v56 = v25;
        _os_log_impl(&dword_254843000, v26, OS_LOG_TYPE_INFO, "received reply for DecodeiMessageAppPayload for %@ bundleID %@, success: %@ reply: %s error: %@", buf, 0x34u);
      }
    }

    free(v24);
    v30 = IMGetXPCDataFromDictionary();
    v31 = IMGetXPCArrayFromDictionary();
    v32 = [v31 __imArrayByApplyingBlock:&unk_28669D1C8];
    v33 = *(a1 + 64);
    if (v33)
    {
      (*(v33 + 16))(v33, v23, v30, v32, v25);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v6 = *(a1 + 40);
        v8 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 138412802;
        v48 = v7;
        v49 = 2112;
        v50 = v6;
        v51 = 2080;
        v52 = v8;
        _os_log_impl(&dword_254843000, v5, OS_LOG_TYPE_INFO, "received unknown error for DecodeiMessageAppPayload for %@ bundleID %@: %s", buf, 0x20u);
      }
    }

    v9 = [MEMORY[0x277D1AAA8] sharedInstance];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMiMessageAppDecodeDomain" code:1 userInfo:0];
    [v9 forceAutoBugCaptureWithSubType:@"Transcoder Preview Generation Failure" errorPayload:v10];

    v11 = *(a1 + 64);
    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
      (*(v11 + 16))(v11, 0, 0, 0, v12);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_254849F30(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x254849EA4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254849F90(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 80);
  v6 = *(a1 + 72) + 1;
  return MEMORY[0x2821F9670](*(a1 + 32), sel__decodeiMessageAppPayload_senderContext_bundleID_retries_completionBlock_blockUntilReply_);
}

void sub_25484A420(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x259C1BE30]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = a1[4];
        v12 = a1[5];
        string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        v21 = 138412802;
        v22 = v13;
        v23 = 2112;
        v24 = v12;
        v25 = 2080;
        v26 = string;
        _os_log_impl(&dword_254843000, v11, OS_LOG_TYPE_INFO, "received error for generatePosterConfig for source %@ dest %@: %s", &v21, 0x20u);
      }
    }

    if (a1[6])
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
      (*(a1[6] + 16))();
      goto LABEL_23;
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      v15 = IMGetXPCBoolFromDictionary();
      v16 = MEMORY[0x259C1BE00](v3);
      v10 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = @"NO";
          v21 = 138412802;
          if (v15)
          {
            v18 = @"YES";
          }

          v22 = v18;
          v23 = 2080;
          v24 = v16;
          v25 = 2112;
          v26 = v10;
          _os_log_impl(&dword_254843000, v17, OS_LOG_TYPE_INFO, "received reply for generatePosterConfig success: %@ reply: %s error: %@", &v21, 0x20u);
        }
      }

      free(v16);
      v19 = a1[6];
      if (v19)
      {
        (*(v19 + 16))(v19, v15, v10);
      }

      goto LABEL_23;
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = a1[4];
        v6 = a1[5];
        v8 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        v21 = 138412802;
        v22 = v7;
        v23 = 2112;
        v24 = v6;
        v25 = 2080;
        v26 = v8;
        _os_log_impl(&dword_254843000, v5, OS_LOG_TYPE_INFO, "received unknown error for generatePosterConfig for sourceConfig %@ destinationConfig %@: %s", &v21, 0x20u);
      }
    }

    v9 = a1[6];
    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
LABEL_23:
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_25484A75C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25484A5E8);
  }

  _Unwind_Resume(a1);
}

void sub_25484AB24(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x259C1BE30]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        v19 = 138412546;
        *v20 = v11;
        *&v20[8] = 2080;
        *&v20[10] = string;
        _os_log_impl(&dword_254843000, v10, OS_LOG_TYPE_INFO, "received error for generateReadOnlyPosterConfig for source %@: %s", &v19, 0x16u);
      }
    }

    if (*(a1 + 40))
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_25;
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      v13 = IMGetXPCBoolFromDictionary();
      v9 = IMGetXPCStringFromDictionary();
      v14 = MEMORY[0x259C1BE00](v3);
      v15 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v19 = 67109890;
          *v20 = v13;
          *&v20[4] = 2112;
          *&v20[6] = v9;
          *&v20[14] = 2080;
          *&v20[16] = v14;
          v21 = 2112;
          v22 = v15;
          _os_log_impl(&dword_254843000, v16, OS_LOG_TYPE_INFO, "received reply for generateReadOnlyPosterConfig success: %{BOOL}d, path: %@ reply: %s error: %@", &v19, 0x26u);
        }
      }

      free(v14);
      if (*(a1 + 40))
      {
        if (v9)
        {
          v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
        }

        else
        {
          v17 = 0;
        }

        (*(*(a1 + 40) + 16))();
      }

      goto LABEL_25;
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v7 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        v19 = 138412546;
        *v20 = v6;
        *&v20[8] = 2080;
        *&v20[10] = v7;
        _os_log_impl(&dword_254843000, v5, OS_LOG_TYPE_INFO, "received unknown error for generateReadOnlyPosterConfig for sourceConfig %@: %s", &v19, 0x16u);
      }
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMTranscodeErrorDomain" code:-1 userInfo:0];
      (*(v8 + 16))(v8, 0, 0, v9);
LABEL_25:
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_25484AE94(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25484ACDCLL);
  }

  _Unwind_Resume(a1);
}

void sub_25484B1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25484B1EC(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(a1[6] + 8) + 24) = 1;
  v4 = MEMORY[0x259C1BE30]();
  if (v4 == MEMORY[0x277D86480])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_25484B628(a1, v3, v5);
    }

    goto LABEL_7;
  }

  if (v4 != MEMORY[0x277D86468])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_25484B590(v3, v5);
    }

LABEL_7:
    v6 = 0;
    goto LABEL_13;
  }

  v5 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_254843000, v7, OS_LOG_TYPE_INFO, "received reply for AudioTranscription for transferURL %@, error: %@", &v12, 0x16u);
    }
  }

  v6 = IMGetXPCStringFromDictionary();
LABEL_13:

  if (*(*(a1[7] + 8) + 24))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_254843000, v9, OS_LOG_TYPE_INFO, "Got transcription, but took too long, discarding", &v12, 2u);
      }
    }
  }

  else
  {
    v10 = a1[5];
    if (v10)
    {
      (*(v10 + 16))(v10, v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25484B444(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    *(*(*(result + 48) + 8) + 24) = 1;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v3 = 0;
        _os_log_impl(&dword_254843000, v2, OS_LOG_TYPE_INFO, "Taking too long for audio transcription! Sending nil for completion", v3, 2u);
      }
    }

    result = *(v1 + 32);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

void sub_25484B590(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  v5 = 136315138;
  v6 = string;
  _os_log_error_impl(&dword_254843000, a2, OS_LOG_TYPE_ERROR, "received unknown error for AudioTranscription %s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_25484B628(uint64_t a1, xpc_object_t xdict, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
  v7 = 138412546;
  v8 = v4;
  v9 = 2080;
  v10 = string;
  _os_log_error_impl(&dword_254843000, a3, OS_LOG_TYPE_ERROR, "received error for AudioTranscription for transferURL: %@, %s", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}