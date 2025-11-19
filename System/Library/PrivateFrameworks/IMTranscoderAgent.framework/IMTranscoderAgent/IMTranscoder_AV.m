@interface IMTranscoder_AV
- (BOOL)_isHEVCVideo:(id)a3;
- (int64_t)shouldTranscodeTransfer:(id)a3 transcoderUserInfo:(id)a4 target:(int64_t)a5 utiType:(id)a6 allowUnfilteredUTIs:(id)a7 fileSizeLimit:(unint64_t)a8 commonCapabilities:(id)a9;
- (int64_t)shouldTranscodeTransfer:(id)a3 transcoderUserInfo:(id)a4 target:(int64_t)a5 utiType:(id)a6 allowUnfilteredUTIs:(id)a7 isAnimojiV2:(BOOL)a8 removeAlpha:(BOOL)a9 isHDR:(BOOL)a10 preserveHDR:(BOOL)a11 isAA:(BOOL)a12 preserveAA:(BOOL)a13 fileSizeLimit:(unint64_t)a14;
- (unint64_t)_fileSizeForTransfer:(id)a3;
- (void)_transcodeVideoAsync:(id)a3 target:(int64_t)a4 maxBytes:(unint64_t)a5 isAnimojiV2:(BOOL)a6 removeAlpha:(BOOL)a7 preserveHDR:(BOOL)a8 isAA:(BOOL)a9 preserveAA:(BOOL)a10 userInfo:(id)a11 completionHandler:(id)a12;
- (void)_transcodeVideoPassThrough:(id)a3 completionHandler:(id)a4;
- (void)transcodeFileTransfer:(id)a3 utiType:(id)a4 allowUnfilteredUTIs:(id)a5 target:(int64_t)a6 sizes:(id)a7 commonCapabilities:(id)a8 maxDimension:(unint64_t)a9 transcoderUserInfo:(id)a10 representations:(int64_t)a11 isLQMEnabled:(BOOL)a12 completionBlock:(id)a13;
@end

@implementation IMTranscoder_AV

- (BOOL)_isHEVCVideo:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = IMAVURLAssetOptionsDefault();
  v5 = objc_alloc(MEMORY[0x277CE6650]);
  v53 = v3;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v52 = objc_msgSend_initWithURL_options_(v5, v6, v3, v4, v7, v8, v9);
  obj = objc_msgSend_tracks(v52, v10, v11, v12, v13, v14, v15);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v59, v64, 16, v17, v18);
  if (v19)
  {
    v26 = v19;
    v27 = 0;
    v28 = *v60;
    v29 = *MEMORY[0x277CE5EA8];
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v60 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v59 + 1) + 8 * i);
        v32 = objc_msgSend_mediaType(v31, v20, v21, v22, v23, v24, v25);
        isEqual = objc_msgSend_isEqual_(v32, v33, v29, v34, v35, v36, v37);

        if (isEqual)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v39 = objc_msgSend_formatDescriptions(v31, v20, v21, v22, v23, v24, v25);
          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v55, v63, 16, v41, v42);
          if (v43)
          {
            v44 = v43;
            v45 = *v56;
            do
            {
              for (j = 0; j != v44; ++j)
              {
                if (*v56 != v45)
                {
                  objc_enumerationMutation(v39);
                }

                v27 |= CMFormatDescriptionGetMediaSubType(*(*(&v55 + 1) + 8 * j)) == 1752589105;
              }

              v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v47, &v55, v63, 16, v48, v49);
            }

            while (v44);
          }
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v59, v64, 16, v24, v25);
    }

    while (v26);
  }

  else
  {
    v27 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

- (int64_t)shouldTranscodeTransfer:(id)a3 transcoderUserInfo:(id)a4 target:(int64_t)a5 utiType:(id)a6 allowUnfilteredUTIs:(id)a7 fileSizeLimit:(unint64_t)a8 commonCapabilities:(id)a9
{
  if (!a3)
  {
    return 0;
  }

  v14 = *MEMORY[0x277D19DB8];
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = a3;
  v45 = objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v20, v18, v14, v21, v22, v23);
  v28 = objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v24, v18, *MEMORY[0x277D19DD8], v25, v26, v27);
  IMCheckVideoURLProperties();
  shouldPreserveHDREncoding = objc_msgSend_shouldPreserveHDREncoding_(IMTranscoder, v29, v15, v30, v31, v32, v33);
  v35 = IMIsAAVideoURL();
  LOBYTE(v14) = objc_msgSend_shouldPreserveAAEncoding_(IMTranscoder, v36, v15, v37, v38, v39, v40);

  BYTE4(v44) = v14;
  BYTE3(v44) = v35;
  BYTE2(v44) = shouldPreserveHDREncoding;
  LOWORD(v44) = v28;
  v42 = objc_msgSend_shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_isAnimojiV2_removeAlpha_isHDR_preserveHDR_isAA_preserveAA_fileSizeLimit_(self, v41, v19, v18, a5, v17, v16, v45, v44, a8);

  return v42;
}

- (int64_t)shouldTranscodeTransfer:(id)a3 transcoderUserInfo:(id)a4 target:(int64_t)a5 utiType:(id)a6 allowUnfilteredUTIs:(id)a7 isAnimojiV2:(BOOL)a8 removeAlpha:(BOOL)a9 isHDR:(BOOL)a10 preserveHDR:(BOOL)a11 isAA:(BOOL)a12 preserveAA:(BOOL)a13 fileSizeLimit:(unint64_t)a14
{
  v14 = a8;
  v196 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = a4;
  v22 = a6;
  v28 = a7;
  if (!v20)
  {
    goto LABEL_20;
  }

  v29 = objc_msgSend_objectForKey_(v21, v23, *MEMORY[0x277D19DC0], v24, v25, v26, v27);
  v36 = objc_msgSend_BOOLValue(v29, v30, v31, v32, v33, v34, v35);

  if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v190 = 138412290;
      v191 = *&v22;
      _os_log_impl(&dword_254811000, v37, OS_LOG_TYPE_INFO, "Checking if we support the AV uti: %@", &v190, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      LOWORD(v190) = 0;
      _os_log_impl(&dword_254811000, v38, OS_LOG_TYPE_INFO, "Trying to discriminate based on type alone:", &v190, 2u);
    }
  }

  v39 = objc_opt_class();
  v46 = objc_msgSend_supportedUTIs(v39, v40, v41, v42, v43, v44, v45);
  v52 = objc_msgSend_containsObject_(v46, v47, v22, v48, v49, v50, v51);

  if (!v52)
  {
LABEL_20:
    v77 = 0;
    goto LABEL_85;
  }

  if (a5 == 2)
  {
    v59 = objc_msgSend_typeWithIdentifier_(MEMORY[0x277CE1CB8], v53, v22, v55, v56, v57, v58);
    v70 = objc_msgSend_typeWithIdentifier_(MEMORY[0x277CE1CB8], v60, @"org.3gpp.adaptive-multi-rate-audio", v61, v62, v63, v64);
    if (v36 && (objc_msgSend_conformsToType_(v59, v65, v70, v66, v67, v68, v69) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v146 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
        {
          v153 = objc_msgSend_preferredFilenameExtension(v70, v147, v148, v149, v150, v151, v152);
          v160 = objc_msgSend_preferredFilenameExtension(v59, v154, v155, v156, v157, v158, v159);
          v190 = 138412802;
          v191 = *&v153;
          v192 = 2112;
          v193 = v22;
          v194 = 2112;
          v195 = v160;
          _os_log_impl(&dword_254811000, v146, OS_LOG_TYPE_INFO, "RCS expects AMR type (ext %@) for audio message, not %@ (ext %@), we need to transcode", &v190, 0x20u);
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (objc_msgSend_conformsToType_(v59, v65, *MEMORY[0x277CE1DE0], v66, v67, v68, v69))
      {
        if (IMOSLoggingEnabled())
        {
          v76 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
          {
            v190 = 138412290;
            v191 = *&v22;
            _os_log_impl(&dword_254811000, v76, OS_LOG_TYPE_INFO, "RCS Allows %@ as-is", &v190, 0xCu);
          }
        }

        v77 = 1;
        goto LABEL_84;
      }

      if (objc_msgSend_conformsToType_(v59, v71, *MEMORY[0x277CE1DF0], v72, v73, v74, v75) & 1) != 0 || (objc_msgSend_conformsToType_(v59, v78, *MEMORY[0x277CE1DE8], v79, v80, v81, v82))
      {

        goto LABEL_24;
      }

      if (IMOSLoggingEnabled())
      {
        v146 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
        {
          v190 = 138412290;
          v191 = *&v22;
          _os_log_impl(&dword_254811000, v146, OS_LOG_TYPE_INFO, "RCS does not expect AV type %@, we need to transcode", &v190, 0xCu);
        }

LABEL_82:
      }
    }

    v77 = 2;
LABEL_84:

    goto LABEL_85;
  }

LABEL_24:
  if (objc_msgSend_count(v21, v53, v54, v55, v56, v57, v58))
  {
    v88 = objc_msgSend_objectForKey_(v21, v83, *MEMORY[0x277D19DE0], v84, v85, v86, v87);
    objc_msgSend_doubleValue(v88, v89, v90, v91, v92, v93, v94);
    v96 = v95;

    v102 = objc_msgSend_objectForKey_(v21, v97, *MEMORY[0x277D19DB0], v98, v99, v100, v101);
    objc_msgSend_doubleValue(v102, v103, v104, v105, v106, v107, v108);
    v110 = v109;

    v116 = objc_msgSend_objectForKey_(v21, v111, *MEMORY[0x277D19DA8], v112, v113, v114, v115);
    objc_msgSend_doubleValue(v116, v117, v118, v119, v120, v121, v122);
    v124 = v123;

    v130 = objc_msgSend_objectForKey_(v21, v125, *MEMORY[0x277D19D98], v126, v127, v128, v129);
    if (IMOSLoggingEnabled())
    {
      v131 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
      {
        v190 = 134217984;
        v191 = v96;
        _os_log_impl(&dword_254811000, v131, OS_LOG_TYPE_INFO, "   Start time: %f", &v190, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v132 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
      {
        v190 = 134217984;
        v191 = v110;
        _os_log_impl(&dword_254811000, v132, OS_LOG_TYPE_INFO, "     End time: %f", &v190, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v133 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
      {
        v190 = 134217984;
        v191 = v124;
        _os_log_impl(&dword_254811000, v133, OS_LOG_TYPE_INFO, "     Duration: %f", &v190, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v134 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
      {
        v190 = 138412290;
        v191 = *&v130;
        _os_log_impl(&dword_254811000, v134, OS_LOG_TYPE_INFO, "  assetLibURI: %@", &v190, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v135 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
      {
        v136 = @"NO";
        if (a9)
        {
          v136 = @"YES";
        }

        v190 = 138412290;
        v191 = *&v136;
        _os_log_impl(&dword_254811000, v135, OS_LOG_TYPE_INFO, " removeAlpha: %@", &v190, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v143 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
      {
        v144 = @"NO";
        if (a11)
        {
          v144 = @"YES";
        }

        v190 = 138412290;
        v191 = *&v144;
        _os_log_impl(&dword_254811000, v143, OS_LOG_TYPE_INFO, " preserveHDR: %@", &v190, 0xCu);
      }
    }

    if (v96 > 0.00000011920929)
    {
      if (IMOSLoggingEnabled())
      {
        v145 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
        {
          LOWORD(v190) = 0;
          _os_log_impl(&dword_254811000, v145, OS_LOG_TYPE_INFO, " Start time > 0, we need to transcode", &v190, 2u);
        }

LABEL_76:

        goto LABEL_77;
      }

      goto LABEL_77;
    }

    if (v110 > 0.00000011920929)
    {
      if (IMOSLoggingEnabled())
      {
        v145 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
        {
          LOWORD(v190) = 0;
          _os_log_impl(&dword_254811000, v145, OS_LOG_TYPE_INFO, " End time > 0, we need to transcode", &v190, 2u);
        }

        goto LABEL_76;
      }

LABEL_77:

LABEL_78:
      v77 = 2;
      goto LABEL_85;
    }

    if (v124 > 0.00000011920929)
    {
      if (IMOSLoggingEnabled())
      {
        v145 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
        {
          LOWORD(v190) = 0;
          _os_log_impl(&dword_254811000, v145, OS_LOG_TYPE_INFO, " End time > 0, we need to transcode", &v190, 2u);
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (objc_msgSend_length(v130, v137, v138, v139, v140, v141, v142))
    {
      if (IMOSLoggingEnabled())
      {
        v145 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
        {
          LOWORD(v190) = 0;
          _os_log_impl(&dword_254811000, v145, OS_LOG_TYPE_INFO, " We have an assets library URI, we need to transcode (video might be slow-mo).", &v190, 2u);
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    }
  }

  if (v14 && a9)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_78;
    }

    v163 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
    {
      LOWORD(v190) = 0;
      _os_log_impl(&dword_254811000, v163, OS_LOG_TYPE_INFO, " This is an AnimojiV2 video, and we want to remove alpha", &v190, 2u);
    }

LABEL_120:

    goto LABEL_78;
  }

  if (a10 && !a11)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_78;
    }

    v163 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
    {
      LOWORD(v190) = 0;
      _os_log_impl(&dword_254811000, v163, OS_LOG_TYPE_INFO, " This is an HDR video, and we don't want to preserve HDR", &v190, 2u);
    }

    goto LABEL_120;
  }

  v164 = IMOSLoggingEnabled();
  if (a12 && !a13)
  {
    if (!v164)
    {
      goto LABEL_78;
    }

    v163 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
    {
      LOWORD(v190) = 0;
      _os_log_impl(&dword_254811000, v163, OS_LOG_TYPE_INFO, " This is an AA video, and we don't want to preserve AA", &v190, 2u);
    }

    goto LABEL_120;
  }

  if (v164)
  {
    v170 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
    {
      LOWORD(v190) = 0;
      _os_log_impl(&dword_254811000, v170, OS_LOG_TYPE_INFO, "That wasn't enough, let's look at filesize too:", &v190, 2u);
    }
  }

  v171 = objc_msgSend__fileSizeForTransfer_(self, v165, v20, v166, v167, v168, v169);
  v172 = v28;
  if (IMOSLoggingEnabled())
  {
    v178 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
    {
      v190 = 138412290;
      v191 = *&v172;
      _os_log_impl(&dword_254811000, v178, OS_LOG_TYPE_INFO, "SendableUTIs: %@", &v190, 0xCu);
    }
  }

  if (v172 && ((v179 = objc_msgSend_containsObject_(v172, v173, v22, v174, v175, v176, v177), v171) ? (v185 = v171 >= a14) : (v185 = 1), !v185 ? (v186 = v179) : (v186 = 0), v186 == 1))
  {
    v187 = objc_msgSend__isHEVCVideo_(self, v180, v20, v181, v182, v183, v184) & a9 ^ 1;
  }

  else
  {
    v187 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v188 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
    {
      v189 = @"NO";
      if (v187)
      {
        v189 = @"YES";
      }

      v190 = 138412290;
      v191 = *&v189;
      _os_log_impl(&dword_254811000, v188, OS_LOG_TYPE_INFO, "Is the original sendable without transcode? %@", &v190, 0xCu);
    }
  }

  if (v187)
  {
    v77 = 1;
  }

  else
  {
    v77 = 2;
  }

LABEL_85:
  v161 = *MEMORY[0x277D85DE8];
  return v77;
}

- (unint64_t)_fileSizeForTransfer:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_path(v3, v11, v12, v13, v14, v15, v16);
  v34 = 0;
  v22 = objc_msgSend_attributesOfItemAtPath_error_(v10, v18, v17, &v34, v19, v20, v21);
  v23 = v34;
  v30 = objc_msgSend_fileSize(v22, v24, v25, v26, v27, v28, v29);

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v36 = v30;
      v37 = 2112;
      v38 = v3;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&dword_254811000, v31, OS_LOG_TYPE_INFO, "Found size %llu of file %@ with error %@", buf, 0x20u);
    }
  }

  if (v23)
  {
    v30 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)_transcodeVideoAsync:(id)a3 target:(int64_t)a4 maxBytes:(unint64_t)a5 isAnimojiV2:(BOOL)a6 removeAlpha:(BOOL)a7 preserveHDR:(BOOL)a8 isAA:(BOOL)a9 preserveAA:(BOOL)a10 userInfo:(id)a11 completionHandler:(id)a12
{
  v12 = a8;
  v492 = a7;
  v489 = a6;
  v513 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a11;
  v16 = a12;
  if (v16)
  {
    v23 = v16;
    v24 = objc_msgSend_copy(v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_msgSend_tracksWithMediaType_(v14, v17, *MEMORY[0x277CE5EA8], v19, v20, v21, v22);
  v32 = objc_msgSend_count(v25, v26, v27, v28, v29, v30, v31);

  v38 = objc_msgSend_tracksWithMediaType_(v14, v33, *MEMORY[0x277CE5E48], v34, v35, v36, v37);
  v45 = objc_msgSend_count(v38, v39, v40, v41, v42, v43, v44);

  if (!(v32 | v45))
  {
    if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v54, OS_LOG_TYPE_INFO, "No audio/video tracks, failing transcode.", buf, 2u);
      }
    }

    v495 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v51, @"__kIMTranscodeErrorDomain", -3, 0, v52, v53);
    if (v24)
    {
      (v24)[2](v24, 0, 0, v495);
    }

    goto LABEL_281;
  }

  v55 = objc_msgSend_objectForKeyedSubscript_(v15, v46, *MEMORY[0x277D19DC0], v47, v48, v49, v50);
  v485 = objc_msgSend_BOOLValue(v55, v56, v57, v58, v59, v60, v61);

  if (v45)
  {
    v62 = v32 == 0;
  }

  else
  {
    v62 = 0;
  }

  inUTI = v62;
  v68 = *MEMORY[0x277CE5C60];
  if (!v32)
  {
    if (IMOSLoggingEnabled())
    {
      v81 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v81, OS_LOG_TYPE_INFO, "Actually, using the audio preset", buf, 2u);
      }
    }

    if (a4 == 2)
    {
      v82 = MEMORY[0x277CE5BE8];
      if (!v485)
      {
        v82 = MEMORY[0x277CE5C68];
      }
    }

    else if (a4 == 1)
    {
      v82 = MEMORY[0x277CE5BE8];
    }

    else
    {
      v82 = MEMORY[0x277CE5C68];
    }

    v495 = *v82;
    v69 = v68;
    goto LABEL_47;
  }

  if (a4 == 1)
  {
    v69 = objc_msgSend_objectForKey_(v15, v63, *MEMORY[0x277D1A7D8], v64, v65, v66, v67);
    v75 = objc_msgSend_objectForKey_(v15, v70, *MEMORY[0x277D1A7E0], v71, v72, v73, v74);
    if (objc_msgSend_IMMMSSupportsH264VideoForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v76, v69, v75, v77, v78, v79))
    {
      v495 = *MEMORY[0x277CE5BC0];

      if (IMOSLoggingEnabled())
      {
        v80 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v495;
          _os_log_impl(&dword_254811000, v80, OS_LOG_TYPE_INFO, "   Carrier supports H264, selecting: %@", buf, 0xCu);
        }

LABEL_40:
      }
    }

    else
    {
      v495 = *MEMORY[0x277CE5C48];

      if (IMOSLoggingEnabled())
      {
        v80 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v495;
          _os_log_impl(&dword_254811000, v80, OS_LOG_TYPE_INFO, "   Carrier does not support H264, selecting: %@", buf, 0xCu);
        }

        goto LABEL_40;
      }
    }

    v492 = 1;
LABEL_47:

    v85 = a4 == 2;
    goto LABEL_48;
  }

  if (v12)
  {
    v83 = *MEMORY[0x277CE5C70];

    v68 = v83;
  }

  if (a9 && a10)
  {
    v84 = MEMORY[0x277CE5C78];
LABEL_36:
    v495 = *v84;

    goto LABEL_95;
  }

  if (v489)
  {
    v84 = MEMORY[0x277CE5BD8];
    if (!v492)
    {
      v84 = MEMORY[0x277CE5BF0];
    }

    goto LABEL_36;
  }

  v495 = v68;
LABEL_95:
  if (a4 != 2)
  {
    v85 = 0;
LABEL_48:
    if (IMOSLoggingEnabled())
    {
      v92 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
      {
        v93 = @"NO";
        if (v12)
        {
          v94 = @"YES";
        }

        else
        {
          v94 = @"NO";
        }

        *buf = 138413570;
        *&buf[4] = v495;
        if (v489)
        {
          v95 = @"YES";
        }

        else
        {
          v95 = @"NO";
        }

        *&buf[12] = 2112;
        *&buf[14] = v94;
        if (v492)
        {
          v96 = @"YES";
        }

        else
        {
          v96 = @"NO";
        }

        *&buf[22] = 2112;
        *&buf[24] = v95;
        if (a9)
        {
          v97 = @"YES";
        }

        else
        {
          v97 = @"NO";
        }

        *v510 = 2112;
        if (a10)
        {
          v93 = @"YES";
        }

        *&v510[2] = v96;
        *&v510[10] = 2112;
        *&v510[12] = v97;
        v511 = 2112;
        v512 = v93;
        _os_log_impl(&dword_254811000, v92, OS_LOG_TYPE_INFO, "Using preset %@ for audio/video transcoding (preserveHDR %@ isAnimojiV2 %@ removeAlpha %@ isAA %@ preserveAA %@)", buf, 0x3Eu);
      }
    }

    v507 = 0uLL;
    v508 = 0;
    if (v14)
    {
      objc_msgSend_duration(v14, v86, v87, v88, v89, v90, v91);
    }

    v488 = objc_msgSend_objectForKey_(v15, v86, *MEMORY[0x277D19DD0], v88, v89, v90, v91);
    v493 = objc_msgSend_objectForKey_(v15, v98, *MEMORY[0x277D19D98], v99, v100, v101, v102);
    if (objc_msgSend_length(v493, v103, v104, v105, v106, v107, v108))
    {
      v114 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v109, v493, v110, v111, v112, v113);
      if (IMOSLoggingEnabled())
      {
        v115 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          *&buf[4] = v114;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          *&buf[22] = 2112;
          *&buf[24] = v495;
          _os_log_impl(&dword_254811000, v115, OS_LOG_TYPE_INFO, "Trying to use assetLibURL %@, asset %@, presetName %@", buf, 0x20u);
        }
      }

      v116 = MEMORY[0x259C1B1F0](@"PhotoLibraryServices", @"PLPhotoLibrary");
      v117 = MEMORY[0x259C1B1F0](@"PhotoLibraryServices", @"PLAssetSharingUtilities");
      v124 = objc_msgSend_systemPhotoLibrary(v116, v118, v119, v120, v121, v122, v123);
      v131 = objc_msgSend_URL(v14, v125, v126, v127, v128, v129, v130);
      v138 = objc_msgSend_absoluteString(v131, v132, v133, v134, v135, v136, v137);
      v141 = objc_msgSend_exportSessionForVideoURL_library_fallbackFilePath_exportPreset_(v117, v139, v114, v124, v138, v495, v140);

      if (IMOSLoggingEnabled())
      {
        v148 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
        {
          v155 = objc_msgSend_asset(v141, v149, v150, v151, v152, v153, v154);
          *buf = 138412546;
          *&buf[4] = v155;
          *&buf[12] = 2112;
          *&buf[14] = v141;
          _os_log_impl(&dword_254811000, v148, OS_LOG_TYPE_INFO, "New asset: %@, exportSession %@", buf, 0x16u);
        }
      }

      if (v141)
      {
        v156 = objc_msgSend_asset(v141, v142, v143, v144, v145, v146, v147);
        v163 = v156;
        if (v156)
        {
          objc_msgSend_duration(v156, v157, v158, v159, v160, v161, v162);
        }

        else
        {
          memset(buf, 0, 24);
        }

        v507 = *buf;
        v508 = *&buf[16];

LABEL_102:
        goto LABEL_114;
      }
    }

    else if (v488)
    {
      if (IMOSLoggingEnabled())
      {
        v164 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          *&buf[4] = v488;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          *&buf[22] = 2112;
          *&buf[24] = v495;
          _os_log_impl(&dword_254811000, v164, OS_LOG_TYPE_INFO, "Trying to use metadata %@, asset %@, presetName %@", buf, 0x20u);
        }
      }

      v165 = MEMORY[0x259C1B1F0](@"PhotoLibraryServices", @"PLAssetSharingUtilities");
      v172 = objc_msgSend_URL(v14, v166, v167, v168, v169, v170, v171);
      v179 = objc_msgSend_relativePath(v172, v173, v174, v175, v176, v177, v178);
      v141 = objc_msgSend_exportSessionForVideoFilePath_metadata_exportPreset_(v165, v180, v179, v488, v495, v181, v182);

      if (IMOSLoggingEnabled())
      {
        v189 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
        {
          v196 = objc_msgSend_asset(v141, v190, v191, v192, v193, v194, v195);
          *buf = 138412546;
          *&buf[4] = v196;
          *&buf[12] = 2112;
          *&buf[14] = v141;
          _os_log_impl(&dword_254811000, v189, OS_LOG_TYPE_INFO, "New asset: %@, exportSession %@", buf, 0x16u);
        }
      }

      if (v141)
      {
        v197 = objc_msgSend_asset(v141, v183, v184, v185, v186, v187, v188);
        v114 = v197;
        if (v197)
        {
          objc_msgSend_duration(v197, v198, v199, v200, v201, v202, v203);
        }

        else
        {
          memset(buf, 0, 24);
        }

        v507 = *buf;
        v508 = *&buf[16];
        goto LABEL_102;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v236 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v236, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v236, OS_LOG_TYPE_INFO, "Using a standard AVAssetExportSession.", buf, 2u);
      }
    }

    v237 = objc_alloc(MEMORY[0x277CE6400]);
    v141 = objc_msgSend_initWithAsset_presetName_(v237, v238, v14, v495, v239, v240, v241);
    if (!v141)
    {
      if (IMOSLoggingEnabled())
      {
        v288 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v288, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v288, OS_LOG_TYPE_INFO, "Could not create export session with Message presets", buf, 2u);
        }
      }

      v141 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v285, @"__kIMTranscodeErrorDomain", -4, 0, v286, v287);
      if (v24)
      {
        (v24)[2](v24, 0, 0, v141);
      }

      goto LABEL_280;
    }

LABEL_114:
    if (IMOSLoggingEnabled())
    {
      v248 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v248, OS_LOG_TYPE_INFO))
      {
        v255 = objc_msgSend_supportedFileTypes(v141, v249, v250, v251, v252, v253, v254);
        *buf = 138412290;
        *&buf[4] = v255;
        _os_log_impl(&dword_254811000, v248, OS_LOG_TYPE_INFO, "Supported file types: %@", buf, 0xCu);
      }
    }

    v256 = objc_msgSend_supportedFileTypes(v141, v242, v243, v244, v245, v246, v247);
    v262 = objc_msgSend_objectAtIndex_(v256, v257, 0, v258, v259, v260, v261);

    if (a4 == 1)
    {
      if (inUTI)
      {
        v269 = objc_msgSend_supportedFileTypes(v141, v263, v264, v265, v266, v267, v268);
        v275 = objc_msgSend_containsObject_(v269, v270, @"org.3gpp.adaptive-multi-rate-audio", v271, v272, v273, v274);

        if (v275)
        {
LABEL_121:
          inUTIa = @"org.3gpp.adaptive-multi-rate-audio";
LABEL_147:

LABEL_149:
          if (IMOSLoggingEnabled())
          {
            v298 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v298, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = inUTIa;
              _os_log_impl(&dword_254811000, v298, OS_LOG_TYPE_INFO, "   outputFileType: %@", buf, 0xCu);
            }
          }

          if (inUTIa)
          {
            objc_msgSend_setOutputFileType_(v141, v293, inUTIa, v294, v295, v296, v297);
            v486 = UTTypeCopyPreferredTagWithClass(inUTIa, *MEMORY[0x277CC1F58]);
            v305 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v299, v300, v301, v302, v303, v304);
            v312 = objc_msgSend_URL(v14, v306, v307, v308, v309, v310, v311);
            v319 = objc_msgSend_lastPathComponent(v312, v313, v314, v315, v316, v317, v318);
            v326 = objc_msgSend_stringByDeletingPathExtension(v319, v320, v321, v322, v323, v324, v325);
            v484 = objc_msgSend__randomTemporaryPathWithSuffix_fileName_(v305, v327, v486, v326, v328, v329, v330);

            v336 = objc_msgSend_objectForKey_(v15, v331, *MEMORY[0x277D19DE0], v332, v333, v334, v335);
            objc_msgSend_doubleValue(v336, v337, v338, v339, v340, v341, v342);
            v344 = v343;

            v350 = objc_msgSend_objectForKey_(v15, v345, *MEMORY[0x277D19DB0], v346, v347, v348, v349);
            objc_msgSend_doubleValue(v350, v351, v352, v353, v354, v355, v356);
            v358 = v357;

            v364 = objc_msgSend_objectForKey_(v15, v359, *MEMORY[0x277D19DA8], v360, v361, v362, v363);
            objc_msgSend_doubleValue(v364, v365, v366, v367, v368, v369, v370);
            v372 = v371;

            *buf = v507;
            *&buf[16] = v508;
            Seconds = CMTimeGetSeconds(buf);
            if (v372 < 2.22044605e-16)
            {
              v372 = Seconds;
              if (v358 >= 2.22044605e-16)
              {
                if (Seconds >= v358 - v344)
                {
                  v372 = v358 - v344;
                }

                else
                {
                  v372 = Seconds;
                }
              }
            }

            v374 = v344 + v372;
            if (Seconds < v344 + v372)
            {
              v374 = Seconds;
            }

            if (v358 >= 2.22044605e-16)
            {
              v374 = v358;
            }

            v375 = fmax(v374 - v372, 0.0);
            if (v344 < 2.22044605e-16)
            {
              v344 = v375;
            }

            if (v372 >= Seconds)
            {
              v372 = Seconds;
            }

            if (v374 >= Seconds)
            {
              v376 = Seconds;
            }

            else
            {
              v376 = v374;
            }

            if (IMOSLoggingEnabled())
            {
              v377 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v377, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v484;
                _os_log_impl(&dword_254811000, v377, OS_LOG_TYPE_INFO, "Exporting video to file %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v378 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v378, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = Seconds;
                _os_log_impl(&dword_254811000, v378, OS_LOG_TYPE_INFO, "    Asset length: %f", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v379 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v379, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = v344;
                _os_log_impl(&dword_254811000, v379, OS_LOG_TYPE_INFO, "      Start time: %f", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v380 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v380, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = v376;
                _os_log_impl(&dword_254811000, v380, OS_LOG_TYPE_INFO, "        End time: %f", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v381 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v381, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = v372;
                _os_log_impl(&dword_254811000, v381, OS_LOG_TYPE_INFO, "        Duration: %f", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v387 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v387, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = a5;
                _os_log_impl(&dword_254811000, v387, OS_LOG_TYPE_INFO, "       Max bytes: %zd", buf, 0xCu);
              }
            }

            if (a4 == 1)
            {
              v388 = v32 == 0;
              v389 = objc_msgSend_objectForKey_(v15, v382, *MEMORY[0x277D1A7D8], v383, v384, v385, v386);
              v399 = objc_msgSend_objectForKey_(v15, v390, *MEMORY[0x277D1A7E0], v391, v392, v393, v394);
              if (v388)
              {
                objc_msgSend_IMMMSMaximumAudioDurationForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v395, v389, v399, v396, v397, v398);
              }

              else
              {
                objc_msgSend_IMMMSMaximumVideoDurationForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v395, v389, v399, v396, v397, v398);
              }

              v405 = v400;
              if (IMOSLoggingEnabled())
              {
                v406 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v406, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v405;
                  _os_log_impl(&dword_254811000, v406, OS_LOG_TYPE_INFO, "     Checking maximum MMS slide duration of: %f", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v407 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v407, OS_LOG_TYPE_INFO))
                {
                  objc_msgSend_IMMMSMaximumVideoDurationForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v408, v389, v399, v409, v410, v411);
                  *buf = 134217984;
                  *&buf[4] = v412;
                  _os_log_impl(&dword_254811000, v407, OS_LOG_TYPE_INFO, "  Max MMS Video Duration: %f", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v413 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v413, OS_LOG_TYPE_INFO))
                {
                  objc_msgSend_IMMMSMaximumAudioDurationForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v414, v389, v399, v415, v416, v417);
                  *buf = 134217984;
                  *&buf[4] = v418;
                  _os_log_impl(&dword_254811000, v413, OS_LOG_TYPE_INFO, "  Max MMS Audio Duration: %f", buf, 0xCu);
                }
              }

              if (v372 > v405)
              {
                v372 = v405;
                v376 = v344 + v405;
              }

              if (IMOSLoggingEnabled())
              {
                v419 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v419, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v344;
                  _os_log_impl(&dword_254811000, v419, OS_LOG_TYPE_INFO, "       => Final start time is: %f", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v420 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v420, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v376;
                  _os_log_impl(&dword_254811000, v420, OS_LOG_TYPE_INFO, "       => Final end time is: %f", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v421 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v421, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v372;
                  _os_log_impl(&dword_254811000, v421, OS_LOG_TYPE_INFO, "       => Final duration is: %f", buf, 0xCu);
                }
              }
            }

            memset(&v506, 0, sizeof(v506));
            CMTimeMakeWithSeconds(&v506, v344, 90000);
            memset(&v505, 0, sizeof(v505));
            CMTimeMakeWithSeconds(&v505, v376, 90000);
            v422 = IMOSLoggingEnabled();
            if (fmax(v344, v376) <= 2.22044605e-16)
            {
              v434 = 0x277CBE000uLL;
              if (v422)
              {
                v435 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v435, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v435, OS_LOG_TYPE_INFO, "     Ignoring time range, transcoding full", buf, 2u);
                }
              }
            }

            else
            {
              if (v422)
              {
                v428 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v428, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v428, OS_LOG_TYPE_INFO, "     Setting time range", buf, 2u);
                }
              }

              *v510 = 0u;
              memset(buf, 0, sizeof(buf));
              *start = v506;
              end = v505;
              CMTimeRangeFromTimeToTime(buf, start, &end);
              *start = *buf;
              *&start[16] = *&buf[16];
              v503 = *v510;
              objc_msgSend_setTimeRange_(v141, v429, start, v430, v431, v432, v433);
              if (v372 < 1.0)
              {
                v372 = v376 - v344;
              }

              v434 = 0x277CBE000;
            }

            if (!a9 || !a10)
            {
              objc_msgSend_setFileLengthLimit_(v141, v423, a5, v424, v425, v426, v427);
            }

            v436 = objc_msgSend_fileURLWithPath_(*(v434 + 3008), v423, v484, v424, v425, v426, v427);
            objc_msgSend_setOutputURL_(v141, v437, v436, v438, v439, v440, v441);

            if (v492 && v489)
            {
              if (IMOSLoggingEnabled())
              {
                v442 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v442, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v442, OS_LOG_TYPE_INFO, "Removing the alpha because this was an HEVC video with alpha", buf, 2u);
                }
              }

              v443 = objc_alloc_init(MEMORY[0x277CE6570]);
              SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
              objc_msgSend_setBackgroundColor_(v443, v445, SRGB, v446, v447, v448, v449);
              v454 = objc_msgSend_videoCompositionWithPropertiesOfAsset_prototypeInstruction_(MEMORY[0x277CE6568], v450, v14, v443, v451, v452, v453);
              objc_msgSend_setVideoComposition_(v141, v455, v454, v456, v457, v458, v459);
              CFRelease(SRGB);
            }

            if (!a4)
            {
              if (IMOSLoggingEnabled())
              {
                v465 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v465, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v465, OS_LOG_TYPE_INFO, "Preserving alternate audio tracks, if present", buf, 2u);
                }
              }

              objc_msgSend_setAudioTrackGroupHandling_(v141, v460, 1, v461, v462, v463, v464);
            }

            if (IMOSLoggingEnabled())
            {
              v466 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v466, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v495;
                _os_log_impl(&dword_254811000, v466, OS_LOG_TYPE_INFO, "     Preset name: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v467 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v467, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v141;
                _os_log_impl(&dword_254811000, v467, OS_LOG_TYPE_INFO, "  Export session: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v468 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v468, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v14;
                _os_log_impl(&dword_254811000, v468, OS_LOG_TYPE_INFO, "           Asset: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v469 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v469, OS_LOG_TYPE_INFO))
              {
                v476 = objc_msgSend_outputURL(v141, v470, v471, v472, v473, v474, v475);
                *buf = 138412290;
                *&buf[4] = v476;
                _os_log_impl(&dword_254811000, v469, OS_LOG_TYPE_INFO, "       outputURL: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v477 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v477, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v477, OS_LOG_TYPE_INFO, "Dispatching video export", buf, 2u);
              }
            }

            v496[0] = MEMORY[0x277D85DD0];
            v496[1] = 3221225472;
            v496[2] = sub_254815874;
            v496[3] = &unk_27978AAD8;
            v497 = v141;
            v498 = v24;
            v499 = v372;
            v500 = v507;
            v501 = v508;
            objc_msgSend_exportAsynchronouslyWithCompletionHandler_(v497, v478, v496, v479, v480, v481, v482);
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v404 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v404, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v404, OS_LOG_TYPE_INFO, "Could not find a valid outputType for Message presets", buf, 2u);
              }
            }

            v486 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v401, @"__kIMTranscodeErrorDomain", -4, 0, v402, v403);
            if (v24)
            {
              (v24)[2](v24, 0, 0, v486);
            }
          }

LABEL_280:
          goto LABEL_281;
        }
      }

      goto LABEL_148;
    }

    if (!v85)
    {
      goto LABEL_148;
    }

    v276 = objc_msgSend_supportedFileTypes(v141, v263, v264, v265, v266, v267, v268);
    v282 = v276;
    if (inUTI)
    {
      if (v485)
      {
        v283 = objc_msgSend_containsObject_(v276, v277, @"org.3gpp.adaptive-multi-rate-audio", v278, v279, v280, v281);

        if (v283)
        {
          if (IMOSLoggingEnabled())
          {
            v284 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v284, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_254811000, v284, OS_LOG_TYPE_INFO, "AMR supported as output type, using for RCS audio message", buf, 2u);
            }
          }

          goto LABEL_121;
        }

LABEL_148:
        inUTIa = v262;
        goto LABEL_149;
      }

      v289 = *MEMORY[0x277CE5D68];
      v292 = objc_msgSend_containsObject_(v276, v277, *MEMORY[0x277CE5D68], v278, v279, v280, v281);

      if (!v292)
      {
        goto LABEL_148;
      }

      if (IMOSLoggingEnabled())
      {
        v291 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v291, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v291, OS_LOG_TYPE_INFO, "M4A supported as output type, using for RCS audio attachment", buf, 2u);
        }

LABEL_145:
      }
    }

    else
    {
      v289 = *MEMORY[0x277CE5D98];
      v290 = objc_msgSend_containsObject_(v276, v277, *MEMORY[0x277CE5D98], v278, v279, v280, v281);

      if (!v290)
      {
        goto LABEL_148;
      }

      if (IMOSLoggingEnabled())
      {
        v291 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v291, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v291, OS_LOG_TYPE_INFO, "MPEG4 supported as output type, using for RCS video", buf, 2u);
        }

        goto LABEL_145;
      }
    }

    inUTIa = v289;
    goto LABEL_147;
  }

  if (IMMaxBitDepthForVideo() != 8)
  {
    goto LABEL_98;
  }

  v210 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v204, v205, v206, v207, v208, v209);
  v217 = objc_msgSend_URL(v14, v211, v212, v213, v214, v215, v216);
  v224 = objc_msgSend_path(v217, v218, v219, v220, v221, v222, v223);
  v230 = objc_msgSend__im_fileSizeFor_(v210, v225, v224, v226, v227, v228, v229);

  if (v230 > a5)
  {
LABEL_98:
    v85 = 1;
    goto LABEL_48;
  }

  if (IMOSLoggingEnabled())
  {
    v235 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v235, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v235, OS_LOG_TYPE_INFO, "Performing a pass-through transcode for format conversion for 8-bit RCS video", buf, 2u);
    }
  }

  objc_msgSend__transcodeVideoPassThrough_completionHandler_(self, v231, v14, v24, v232, v233, v234);
LABEL_281:

  v483 = *MEMORY[0x277D85DE8];
}

- (void)_transcodeVideoPassThrough:(id)a3 completionHandler:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = IMOSLoggingEnabled();
  v8 = MEMORY[0x277CE5D98];
  if (v7)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *v8;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_254811000, v9, OS_LOG_TYPE_INFO, "Converting export to %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v86 = 0x3032000000;
  v87 = sub_254815F10;
  v88 = sub_254815F20;
  v89 = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x3032000000;
  v83[3] = sub_254815F10;
  v83[4] = sub_254815F20;
  v84 = 0;
  v11 = objc_alloc(MEMORY[0x277CE6400]);
  v16 = objc_msgSend_initWithAsset_presetName_(v11, v12, v5, *MEMORY[0x277CE5C78], v13, v14, v15);
  v17 = *v8;
  objc_msgSend_setOutputFileType_(v16, v18, *v8, v19, v20, v21, v22);
  v23 = UTTypeCopyPreferredTagWithClass(v17, *MEMORY[0x277CC1F58]);
  v30 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v24, v25, v26, v27, v28, v29);
  v37 = objc_msgSend_URL(v5, v31, v32, v33, v34, v35, v36);
  v44 = objc_msgSend_lastPathComponent(v37, v38, v39, v40, v41, v42, v43);
  v51 = objc_msgSend_stringByDeletingPathExtension(v44, v45, v46, v47, v48, v49, v50);
  v56 = objc_msgSend__randomTemporaryPathWithSuffix_fileName_(v30, v52, v23, v51, v53, v54, v55);

  v62 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v57, v56, v58, v59, v60, v61);
  objc_msgSend_setOutputURL_(v16, v63, v62, v64, v65, v66, v67);

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_254815F28;
  v77[3] = &unk_27978AB00;
  v68 = v16;
  v78 = v68;
  v81 = v83;
  p_buf = &buf;
  v69 = v6;
  v80 = v69;
  v70 = v5;
  v79 = v70;
  objc_msgSend_exportAsynchronouslyWithCompletionHandler_(v68, v71, v77, v72, v73, v74, v75);

  _Block_object_dispose(v83, 8);
  _Block_object_dispose(&buf, 8);

  v76 = *MEMORY[0x277D85DE8];
}

- (void)transcodeFileTransfer:(id)a3 utiType:(id)a4 allowUnfilteredUTIs:(id)a5 target:(int64_t)a6 sizes:(id)a7 commonCapabilities:(id)a8 maxDimension:(unint64_t)a9 transcoderUserInfo:(id)a10 representations:(int64_t)a11 isLQMEnabled:(BOOL)a12 completionBlock:(id)a13
{
  v340[1] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v266 = a4;
  v267 = a5;
  v18 = a7;
  v271 = a8;
  v273 = a10;
  v268 = a13;
  v263 = v18;
  v25 = objc_msgSend_firstObject(v18, v19, v20, v21, v22, v23, v24);
  v265 = objc_msgSend_unsignedLongValue(v25, v26, v27, v28, v29, v30, v31);

  v38 = objc_msgSend_lastObject(v18, v32, v33, v34, v35, v36, v37);
  v272 = objc_msgSend_unsignedLongValue(v38, v39, v40, v41, v42, v43, v44);

  v329 = 0;
  shouldPreserveHDREncoding = objc_msgSend_shouldPreserveHDREncoding_(IMTranscoder, v45, v271, v46, v47, v48, v49);
  v55 = objc_msgSend_objectForKey_(v273, v50, *MEMORY[0x277D19DB8], v51, v52, v53, v54);
  v62 = objc_msgSend_BOOLValue(v55, v56, v57, v58, v59, v60, v61);

  v68 = objc_msgSend_objectForKey_(v273, v63, *MEMORY[0x277D19DD8], v64, v65, v66, v67);
  v262 = objc_msgSend_BOOLValue(v68, v69, v70, v71, v72, v73, v74);

  IMCheckVideoURLProperties();
  v258 = IMIsAAVideoURL();
  shouldPreserveAAEncoding = objc_msgSend_shouldPreserveAAEncoding_(IMTranscoder, v75, v271, v76, v77, v78, v79);
  if (IMOSLoggingEnabled())
  {
    v81 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v331 = v265;
      v332 = 2048;
      *v333 = v272;
      _os_log_impl(&dword_254811000, v81, OS_LOG_TYPE_INFO, "BigSize: %zu SmallSize: %zu", buf, 0x16u);
    }
  }

  if ((a11 && v265 == v272 || a11 != 1 && v265 != v272) && IMOSLoggingEnabled())
  {
    v82 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v331 = v265;
      v332 = 2048;
      *v333 = v272;
      *&v333[8] = 1024;
      LODWORD(v334) = a11;
      _os_log_impl(&dword_254811000, v82, OS_LOG_TYPE_INFO, "Warning - bigSize (%lu), smallSize (%lu) combination does not match the number of reps requested (%d)", buf, 0x1Cu);
    }
  }

  BYTE4(v250) = shouldPreserveAAEncoding;
  BYTE3(v250) = v258;
  BYTE2(v250) = shouldPreserveHDREncoding;
  BYTE1(v250) = v329;
  LOBYTE(v250) = v262;
  v83 = objc_msgSend_shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_isAnimojiV2_removeAlpha_isHDR_preserveHDR_isAA_preserveAA_fileSizeLimit_(self, v80, v17, v273, a6, v266, v267, v62, v250, v272);
  if (IMOSLoggingEnabled())
  {
    v84 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      if (v83 <= 1)
      {
        v85 = @"NO";
      }

      else
      {
        v85 = @"YES";
      }

      *buf = 138412546;
      v331 = v85;
      v332 = 2112;
      *v333 = @"NO";
      _os_log_impl(&dword_254811000, v84, OS_LOG_TYPE_INFO, "NeedsTranscode? %@ isHDR %@", buf, 0x16u);
    }
  }

  v86 = v83 > 1;
  v87 = _iMessageTelemetryLogHandle();
  v88 = os_signpost_id_generate(v87);
  log = v87;
  spid = v88;
  v89 = v88 - 1;
  if (v86)
  {
    v253 = v88 - 1;
    if (v89 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254811000, log, OS_SIGNPOST_INTERVAL_BEGIN, v88, "IMTranscoderAV.transcode.type.av", " enableTelemetry=YES ", buf, 2u);
    }

    if (IMOSLoggingEnabled())
    {
      v93 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v331 = v17;
        _os_log_impl(&dword_254811000, v93, OS_LOG_TYPE_INFO, "Transfer %@ is a supported format, will transcode", buf, 0xCu);
      }
    }

    v339 = *MEMORY[0x277CE6240];
    v340[0] = MEMORY[0x277CBEC38];
    v94 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v90, v340, &v339, 1, v91, v92);
    v264 = IMAVURLAssetOptionsWithExtraOptionsForWrite();

    v95 = objc_alloc(MEMORY[0x277CE6650]);
    v269 = objc_msgSend_initWithURL_options_(v95, v96, v17, v264, v97, v98, v99);
    v105 = objc_msgSend_tracksWithMediaType_(v269, v100, *MEMORY[0x277CE5EA8], v101, v102, v103, v104);
    v112 = objc_msgSend_count(v105, v106, v107, v108, v109, v110, v111);

    v118 = objc_msgSend_tracksWithMediaType_(v269, v113, *MEMORY[0x277CE5E48], v114, v115, v116, v117);
    v125 = objc_msgSend_count(v118, v119, v120, v121, v122, v123, v124);

    v255 = objc_msgSend_tracks(v269, v126, v127, v128, v129, v130, v131);
    if (IMOSLoggingEnabled())
    {
      v132 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v331 = v269;
        v332 = 1024;
        *v333 = v112;
        *&v333[4] = 1024;
        *&v333[6] = v125;
        _os_log_impl(&dword_254811000, v132, OS_LOG_TYPE_INFO, "Created asset %@ with %d video tracks, %d audio tracks", buf, 0x18u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v133 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v331 = v255;
        _os_log_impl(&dword_254811000, v133, OS_LOG_TYPE_INFO, "   => Tracks: %@", buf, 0xCu);
      }
    }

    if (!(v112 | v125))
    {
      if (IMOSLoggingEnabled())
      {
        v137 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v137, OS_LOG_TYPE_INFO, "No video or audio tracks found", buf, 2u);
        }
      }

      v138 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v134, @"__kIMTranscodeErrorDomain", -3, 0, v135, v136);
      if (v268)
      {
        (*(v268 + 2))(v268, v17, 0, 0, v138, 0, 1, 0);
      }

LABEL_136:
LABEL_137:

      v152 = v264;
      goto LABEL_138;
    }

    v323 = 0;
    v324 = &v323;
    v325 = 0x3032000000;
    v326 = sub_254815F10;
    v327 = sub_254815F20;
    v328 = 0;
    v317 = 0;
    v318 = &v317;
    v319 = 0x3032000000;
    v320 = sub_254815F10;
    v321 = sub_254815F20;
    v322 = 0;
    v311 = 0;
    v312 = &v311;
    v313 = 0x3032000000;
    v314 = sub_254815F10;
    v315 = sub_254815F20;
    v316 = 0;
    v310[0] = 0;
    v310[1] = v310;
    v310[2] = 0x2020000000;
    v310[3] = 0;
    v304 = 0;
    v305 = &v304;
    v306 = 0x3032000000;
    v307 = sub_254815F10;
    v308 = sub_254815F20;
    v309 = 0;
    v298 = 0;
    v299 = &v298;
    v300 = 0x3032000000;
    v301 = sub_254815F10;
    v302 = sub_254815F20;
    v303 = 0;
    v292 = 0;
    v293 = &v292;
    v294 = 0x3032000000;
    v295 = sub_254815F10;
    v296 = sub_254815F20;
    v297 = 0;
    v288 = 0;
    v289 = &v288;
    v290 = 0x2020000000;
    v291 = 0;
    if (IMOSLoggingEnabled())
    {
      v153 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v153, OS_LOG_TYPE_INFO, "Using a dispatch group when generating multiple video transcodings", buf, 2u);
      }
    }

    group = dispatch_group_create();
    if (IMOSLoggingEnabled())
    {
      v155 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v331 = v269;
        _os_log_impl(&dword_254811000, v155, OS_LOG_TYPE_INFO, "Asset to use for bigSize: %@", buf, 0xCu);
      }
    }

    BYTE4(v251) = shouldPreserveAAEncoding;
    BYTE3(v251) = v258;
    BYTE2(v251) = shouldPreserveHDREncoding;
    BYTE1(v251) = v329;
    LOBYTE(v251) = v262;
    v156 = objc_msgSend_shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_isAnimojiV2_removeAlpha_isHDR_preserveHDR_isAA_preserveAA_fileSizeLimit_(self, v154, v17, v273, a6, v266, v267, v62, v251, v265);
    if (IMOSLoggingEnabled())
    {
      v163 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
      {
        v164 = @"NO";
        if (v156 <= 1)
        {
          v165 = @"NO";
        }

        else
        {
          v165 = @"YES";
        }

        *buf = 134219010;
        v331 = v265;
        if ((v62 & v262) != 0)
        {
          v166 = @"YES";
        }

        else
        {
          v166 = @"NO";
        }

        v332 = 2112;
        *v333 = v165;
        if (v329)
        {
          v167 = @"YES";
        }

        else
        {
          v167 = @"NO";
        }

        *&v333[8] = 2112;
        if (shouldPreserveHDREncoding)
        {
          v164 = @"YES";
        }

        v334 = v166;
        v335 = 2112;
        v336 = v167;
        v337 = 2112;
        v338 = v164;
        _os_log_impl(&dword_254811000, v163, OS_LOG_TYPE_INFO, "Do we need to transcode to get the big(%lu) representation? %@ (removeAlphaFromAnimojiV2 %@ isHDR %@ preserveHDR %@)", buf, 0x34u);
      }
    }

    if (v156 < 2)
    {
      v176 = _IMTranscoderLinkFile(v17, v157, v158, v159, v160, v161, v162);
      v177 = v299[5];
      v299[5] = v176;

      v183 = objc_msgSend__fileSizeForTransfer_(self, v178, v299[5], v179, v180, v181, v182);
      v289[3] = v183;
    }

    else
    {
      dispatch_group_enter(group);
      v281[0] = MEMORY[0x277D85DD0];
      v281[1] = 3221225472;
      v281[2] = sub_254817AC4;
      v281[3] = &unk_27978AB28;
      v283 = &v288;
      v281[4] = self;
      v287 = v262;
      v284 = &v298;
      v285 = &v304;
      v286 = &v292;
      v168 = group;
      v282 = v168;
      BYTE1(v252) = shouldPreserveAAEncoding;
      LOBYTE(v252) = v258;
      objc_msgSend__transcodeVideoAsync_target_maxBytes_isAnimojiV2_removeAlpha_preserveHDR_isAA_preserveAA_userInfo_completionHandler_(self, v169, v269, a6, v265, v62, v262, shouldPreserveHDREncoding, v252, v273, v281);
      dispatch_group_wait(v168, 0xFFFFFFFFFFFFFFFFLL);
    }

    v184 = objc_msgSend_array(MEMORY[0x277CBEB18], v170, v171, v172, v173, v174, v175);
    v191 = objc_msgSend_array(MEMORY[0x277CBEB18], v185, v186, v187, v188, v189, v190);
    if (v299[5])
    {
      if (IMOSLoggingEnabled())
      {
        v197 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v197, OS_LOG_TYPE_INFO))
        {
          v198 = v299[5];
          v199 = v293[5];
          *buf = 138412546;
          v331 = v198;
          v332 = 2112;
          *v333 = v199;
          _os_log_impl(&dword_254811000, v197, OS_LOG_TYPE_INFO, "Adding bigURL %@ to outputPaths with context: %@", buf, 0x16u);
        }
      }

      objc_msgSend_addObject_(v184, v192, v299[5], v193, v194, v195, v196);
      v205 = v293[5];
      if (v205)
      {
        objc_msgSend_addObject_(v191, v200, v205, v201, v202, v203, v204);
      }

      else
      {
        v206 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v200, 0, v201, v202, v203, v204);
        objc_msgSend_addObject_(v191, v207, v206, v208, v209, v210, v211);
      }
    }

    if (v156 < 2)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_103;
      }

      v212 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v212, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v212, OS_LOG_TYPE_INFO, "We didn't have to transcode to get the big representation so we know we have to for the small one.", buf, 2u);
      }
    }

    else if (v305[5] || !v299[5])
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_103;
      }

      v212 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v212, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v212, OS_LOG_TYPE_INFO, "Generating the big representation was not successful. Let's potentially try for small.", buf, 2u);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v240 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v240, OS_LOG_TYPE_INFO))
        {
          v241 = v289[3];
          *buf = 134218240;
          v331 = v241;
          v332 = 2048;
          *v333 = v272;
          _os_log_impl(&dword_254811000, v240, OS_LOG_TYPE_INFO, "actualBigSize: %llu   smallSize %zu", buf, 0x16u);
        }
      }

      if (v289[3] < v272)
      {
        if (IMOSLoggingEnabled())
        {
          v242 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v242, OS_LOG_TYPE_INFO))
          {
            v243 = v289[3];
            *buf = 134218240;
            v331 = v243;
            v332 = 2048;
            *v333 = v272;
            _os_log_impl(&dword_254811000, v242, OS_LOG_TYPE_INFO, "Only using the big representation because the big output (%llu) fits in the small requirements (%zu)", buf, 0x16u);
          }
        }

LABEL_104:
        if ((v62 & v262 & 1) == 0 && shouldPreserveHDREncoding & 1 | ((v329 & 1) == 0))
        {
LABEL_123:
          if (!v324[5] && v318[5])
          {
            if (IMOSLoggingEnabled())
            {
              v231 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v231, OS_LOG_TYPE_INFO))
              {
                v232 = v318[5];
                v233 = v312[5];
                *buf = 138412546;
                v331 = v232;
                v332 = 2112;
                *v333 = v233;
                _os_log_impl(&dword_254811000, v231, OS_LOG_TYPE_INFO, "Adding smallURL %@ to outputPaths with context: %@", buf, 0x16u);
              }
            }

            objc_msgSend_addObject_(v184, v226, v318[5], v227, v228, v229, v230);
            v239 = v312[5];
            if (v239)
            {
              objc_msgSend_addObject_(v191, v234, v239, v235, v236, v237, v238);
            }

            else
            {
              v244 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v234, 0, v235, v236, v237, v238);
              objc_msgSend_addObject_(v191, v245, v244, v246, v247, v248, v249);
            }
          }

          v220 = log;
          v221 = v220;
          if (v253 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v220))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_254811000, v221, OS_SIGNPOST_INTERVAL_END, spid, "IMTranscoderAV.transcode.type.av", " enableTelemetry=YES ", buf, 2u);
          }

          v222 = v324[5];
          if (!v222)
          {
            v222 = v305[5];
          }

          v223 = v222;
          if (IMOSLoggingEnabled())
          {
            v224 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v331 = v17;
              v332 = 2112;
              *v333 = v184;
              *&v333[8] = 2112;
              v334 = v223;
              _os_log_impl(&dword_254811000, v224, OS_LOG_TYPE_INFO, "Calling completionBlock with: transfer %@ outputPaths %@ error %@", buf, 0x20u);
            }
          }

          if (v268)
          {
            (*(v268 + 2))(v268, v17, v184, v191, v223, v223 == 0, 1, 0);
          }

          _Block_object_dispose(&v288, 8);
          _Block_object_dispose(&v292, 8);

          _Block_object_dispose(&v298, 8);
          _Block_object_dispose(&v304, 8);

          _Block_object_dispose(v310, 8);
          _Block_object_dispose(&v311, 8);

          _Block_object_dispose(&v317, 8);
          _Block_object_dispose(&v323, 8);

          goto LABEL_136;
        }

LABEL_106:
        if (IMOSLoggingEnabled())
        {
          v213 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v213, OS_LOG_TYPE_INFO))
          {
            v214 = @"NO";
            if ((v62 & v262) != 0)
            {
              v215 = @"YES";
            }

            else
            {
              v215 = @"NO";
            }

            if (v329)
            {
              v216 = @"YES";
            }

            else
            {
              v216 = @"NO";
            }

            *buf = 138412802;
            v331 = v215;
            v332 = 2112;
            *v333 = v216;
            if (shouldPreserveHDREncoding)
            {
              v214 = @"YES";
            }

            *&v333[8] = 2112;
            v334 = v214;
            _os_log_impl(&dword_254811000, v213, OS_LOG_TYPE_INFO, "There were two sizes requested && big doesn't satisfy the requirements for both, generating small. removeAlphaForAnimojiV2 %@ isHDR %@ preserveHDR %@", buf, 0x20u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v217 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v331 = v269;
            _os_log_impl(&dword_254811000, v217, OS_LOG_TYPE_INFO, "Asset to use for smallSize: %@", buf, 0xCu);
          }
        }

        dispatch_group_enter(group);
        v274[0] = MEMORY[0x277D85DD0];
        v274[1] = 3221225472;
        v274[2] = sub_254817C84;
        v274[3] = &unk_27978AB28;
        v276 = v310;
        v274[4] = self;
        v280 = v262;
        v277 = &v317;
        v278 = &v311;
        v279 = &v323;
        v218 = group;
        v275 = v218;
        BYTE1(v252) = shouldPreserveAAEncoding;
        LOBYTE(v252) = v258;
        objc_msgSend__transcodeVideoAsync_target_maxBytes_isAnimojiV2_removeAlpha_preserveHDR_isAA_preserveAA_userInfo_completionHandler_(self, v219, v269, a6, v272, v62, v262, 0, v252, v273, v274);
        dispatch_group_wait(v218, 0xFFFFFFFFFFFFFFFFLL);

        goto LABEL_123;
      }

      if (!IMOSLoggingEnabled())
      {
LABEL_103:
        if (v265 != v272)
        {
          goto LABEL_106;
        }

        goto LABEL_104;
      }

      v212 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v212, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v212, OS_LOG_TYPE_INFO, "bigURL was too big for smallSize or there was a FS error", buf, 2u);
      }
    }

    goto LABEL_103;
  }

  if (v89 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254811000, log, OS_SIGNPOST_EVENT, v88, "IMTranscoderImage.transcode.none", " enableTelemetry=YES ", buf, 2u);
  }

  if (IMOSLoggingEnabled())
  {
    v145 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v331 = v17;
      _os_log_impl(&dword_254811000, v145, OS_LOG_TYPE_INFO, "Transfer %@ doesn't need any processing", buf, 0xCu);
    }
  }

  v264 = _IMTranscoderLinkFile(v17, v139, v140, v141, v142, v143, v144);
  if (IMOSLoggingEnabled())
  {
    v151 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v331 = v264;
      _os_log_impl(&dword_254811000, v151, OS_LOG_TYPE_INFO, "We need a hard link to this file for our clients who assume it's a file we created: %@", buf, 0xCu);
    }
  }

  v152 = v264;
  if (v268)
  {
    if (v264)
    {
      v269 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v146, v264, v147, v148, v149, v150, 0);
      (*(v268 + 2))(v268, v17, v269, 0, 0, 1, 0, 0);
    }

    else
    {
      v269 = objc_msgSend_array(MEMORY[0x277CBEA60], v146, 0, v147, v148, v149, v150);
      (*(v268 + 2))(v268, v17, v269, 0, 0, 0, 0, 0);
    }

    goto LABEL_137;
  }

LABEL_138:

  v225 = *MEMORY[0x277D85DE8];
}

@end