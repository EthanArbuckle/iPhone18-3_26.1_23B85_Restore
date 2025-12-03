@interface IMTranscodingAgentController
+ (id)sharedInstance;
- (BOOL)checkPath:(id)path withSizes:(id)sizes;
- (BOOL)isMovieType:(id)type;
- (BOOL)shouldProcessFileTransfer:(id)transfer utiType:(id)type transcoderUserInfo:(id)info target:(int64_t)target allowUnfilteredUTIs:(id)is fileSizeLimit:(unint64_t)limit commonCapabilities:(id)capabilities;
- (IMTranscodingAgentController)init;
- (id)_findTranscoderForUTI:(id)i;
- (id)generateReadOnlyPosterConfig:(id)config error:(id *)error;
- (void)_registerTranscoders;
- (void)decodeiMessageAppPayload:(id)payload senderContext:(id)context bundleID:(id)d completionBlock:(id)block;
- (void)generatePosterConfig:(id)config destinationURL:(id)l senderContext:(id)context completionBlock:(id)block;
- (void)generatePreview:(id)preview previewURL:(id)l senderContext:(id)context balloonBundleID:(id)d constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block;
- (void)generatePreviewMetadata:(id)metadata destinationURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block;
- (void)generateSafeRender:(id)render outputURL:(id)l constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block;
- (void)generateSnapshotForMessageGUID:(id)d payloadURL:(id)l balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block;
- (void)transcodeFileTransferContents:(id)contents utiType:(id)type isSticker:(BOOL)sticker allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)self0 transcoderUserInfo:(id)self1 fallback:(BOOL)self2 representations:(int64_t)self3 isLQMEnabled:(BOOL)self4 completionBlock:(id)self5;
- (void)transcodeFileTransferData:(id)data balloonBundleID:(id)d attachments:(id)attachments fallBack:(BOOL)back completionBlock:(id)block;
- (void)transcodeThumbnailFor:(id)for target:(int64_t)target allSizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)info isLQMEnabled:(BOOL)enabled outputURLs:(id)self0 outputContextInfo:(id)self1 attemptedTranscode:(BOOL)self2 additionalOutPutContext:(id)self3 completionBlock:(id)self4;
- (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion;
@end

@implementation IMTranscodingAgentController

+ (id)sharedInstance
{
  if (qword_28112D508 != -1)
  {
    sub_2548315E4();
  }

  v3 = qword_28112D500;

  return v3;
}

- (void)_registerTranscoders
{
  if (!self->_transcoders)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA60]);
    v5 = objc_alloc_init(IMTranscoder_Image);
    v6 = objc_alloc_init(IMTranscoder_AV);
    v12 = objc_msgSend_initWithObjects_(v4, v7, v5, v8, v9, v10, v11, v6, 0);
    transcoders = self->_transcoders;
    self->_transcoders = v12;

    v14 = objc_alloc(MEMORY[0x277CBEA60]);
    v22 = objc_alloc_init(IMFallbackTranscoder);
    v20 = objc_msgSend_initWithObjects_(v14, v15, v22, v16, v17, v18, v19, 0);
    fallbackTranscoders = self->_fallbackTranscoders;
    self->_fallbackTranscoders = v20;
  }
}

- (IMTranscodingAgentController)init
{
  v18.receiver = self;
  v18.super_class = IMTranscodingAgentController;
  v2 = [(IMTranscodingAgentController *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.IMTranscoderQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    v6 = dispatch_get_global_queue(-2, 0);
    dispatch_set_target_queue(v5, v6);

    v7 = dispatch_queue_create("com.apple.IMTranscoderPreviewGenerationQueue", 0);
    previewGenerationQueue = v2->_previewGenerationQueue;
    v2->_previewGenerationQueue = v7;

    v9 = v2->_previewGenerationQueue;
    v10 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v9, v10);

    objc_msgSend__registerTranscoders(v2, v11, v12, v13, v14, v15, v16);
  }

  return v2;
}

- (id)_findTranscoderForUTI:(id)i
{
  v29 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_transcoders;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v24, v28, 16, v7, v8);
  if (v9)
  {
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = objc_opt_class();
        if (objc_msgSend_supportsUTI_(v13, v14, iCopy, v15, v16, v17, v18, v24))
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v19, &v24, v28, 16, v20, v21);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)shouldProcessFileTransfer:(id)transfer utiType:(id)type transcoderUserInfo:(id)info target:(int64_t)target allowUnfilteredUTIs:(id)is fileSizeLimit:(unint64_t)limit commonCapabilities:(id)capabilities
{
  transferCopy = transfer;
  typeCopy = type;
  infoCopy = info;
  isCopy = is;
  capabilitiesCopy = capabilities;
  v25 = objc_msgSend__findTranscoderForUTI_(self, v20, typeCopy, v21, v22, v23, v24);
  v27 = v25;
  if (v25)
  {
    shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities = objc_msgSend_shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities_(v25, v26, transferCopy, infoCopy, target, typeCopy, isCopy, limit, capabilitiesCopy);
    v34 = objc_msgSend_transcodeProcessingRequired_(v27, v29, shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities, v30, v31, v32, v33);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (void)transcodeFileTransferContents:(id)contents utiType:(id)type isSticker:(BOOL)sticker allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)self0 transcoderUserInfo:(id)self1 fallback:(BOOL)self2 representations:(int64_t)self3 isLQMEnabled:(BOOL)self4 completionBlock:(id)self5
{
  stickerCopy = sticker;
  v244 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  typeCopy = type;
  isCopy = is;
  sizesCopy = sizes;
  capabilitiesCopy = capabilities;
  infoCopy = info;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      targetCopy3 = contentsCopy;
      _os_log_impl(&dword_254811000, v23, OS_LOG_TYPE_INFO, "Transcoder received request to transcode %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      targetCopy3 = typeCopy;
      _os_log_impl(&dword_254811000, v24, OS_LOG_TYPE_INFO, "                       UTI: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      targetCopy3 = isCopy;
      _os_log_impl(&dword_254811000, v25, OS_LOG_TYPE_INFO, "     Allow Unfiltered UTIs: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      targetCopy3 = sizesCopy;
      _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "                     Sizes: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      targetCopy3 = dimension;
      _os_log_impl(&dword_254811000, v27, OS_LOG_TYPE_INFO, "             Max Dimension: %ld", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      targetCopy3 = infoCopy;
      _os_log_impl(&dword_254811000, v33, OS_LOG_TYPE_INFO, "           Transcoder Info: %@", buf, 0xCu);
    }
  }

  if (infoCopy)
  {
    v34 = objc_msgSend_objectForKey_(infoCopy, v28, *MEMORY[0x277D19DA0], v29, v30, v31, v32);
    v41 = objc_msgSend_BOOLValue(v34, v35, v36, v37, v38, v39, v40);

    if (v41)
    {
      if (IMIsHEVCWithAlphaVideoURL())
      {
        v48 = objc_msgSend_mutableCopy(infoCopy, v42, v43, v44, v45, v46, v47);
        v54 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v49, 1, v50, v51, v52, v53);
        objc_msgSend_setObject_forKey_(v48, v55, v54, *MEMORY[0x277D19DB8], v56, v57, v58);

        v65 = objc_msgSend_copy(v48, v59, v60, v61, v62, v63, v64);
        infoCopy = v65;
      }
    }
  }

  v239[0] = MEMORY[0x277D85DD0];
  v239[1] = 3221225472;
  v239[2] = sub_25482B85C;
  v239[3] = &unk_27978AD68;
  v66 = blockCopy;
  v240 = v66;
  v73 = MEMORY[0x259C1B690](v239);
  if (fallback)
  {
    v74 = objc_msgSend_lastObject(self->_fallbackTranscoders, v67, v68, v69, v70, v71, v72);

    if (v74)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_25482B9F8;
      block[3] = &unk_27978ADB8;
      block[4] = self;
      v235 = contentsCopy;
      v236 = typeCopy;
      infoCopy = infoCopy;
      v237 = infoCopy;
      v238 = v73;
      dispatch_async(queue, block);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v101 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          targetCopy3 = contentsCopy;
          _os_log_impl(&dword_254811000, v101, OS_LOG_TYPE_INFO, "Transcoding Not transcoding file %@", buf, 0xCu);
        }
      }

      v73[2](v73, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    v206 = sizesCopy;
    v205 = MEMORY[0x259C1B690](v73);
    representationsCopy = representations;
    if (representations == 2)
    {
      if (IMOSLoggingEnabled())
      {
        v89 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v89, OS_LOG_TYPE_INFO, "Thumbnail with single requested, creating overrideBlock", buf, 2u);
        }
      }

      v90 = objc_msgSend_firstObject(v206, v83, v84, v85, v86, v87, v88);
      v241 = v90;
      sizesCopy = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v91, &v241, 1, v92, v93, v94);

      v224[0] = MEMORY[0x277D85DD0];
      v224[1] = 3221225472;
      v224[2] = sub_25482BB00;
      v224[3] = &unk_27978ADE0;
      v224[4] = self;
      v225 = contentsCopy;
      targetCopy = target;
      v226 = v206;
      v227 = capabilitiesCopy;
      dimensionCopy2 = dimension;
      v228 = infoCopy;
      enabledCopy = enabled;
      v229 = v73;
      v230 = v205;
      v95 = MEMORY[0x259C1B690](v224);
      v205 = MEMORY[0x259C1B690]();

      representationsCopy = 0;
    }

    else
    {
      sizesCopy = v206;
    }

    if (stickerCopy)
    {
      if (infoCopy)
      {
        v96 = objc_msgSend_mutableCopy(infoCopy, v76, v77, v78, v79, v80, v81);
      }

      else
      {
        v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v102 = v96;
      objc_msgSend_setObject_forKeyedSubscript_(v96, v97, MEMORY[0x277CBEC38], @"isSticker", v98, v99, v100);
      v109 = objc_msgSend_copy(v102, v103, v104, v105, v106, v107, v108);

      infoCopy = v109;
    }

    shouldPreserveHEIFEncoding_target_sourceUTI = objc_msgSend_shouldPreserveHEIFEncoding_target_sourceUTI_(IMTranscoder, v76, capabilitiesCopy, target, typeCopy, v80, v81);
    v111 = IMOSLoggingEnabled();
    if (shouldPreserveHEIFEncoding_target_sourceUTI)
    {
      if (v111)
      {
        v118 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v118, OS_LOG_TYPE_INFO, "Preserving HEIF encoding if possible.", buf, 2u);
        }
      }

      if (infoCopy)
      {
        v119 = objc_msgSend_mutableCopy(infoCopy, v112, v113, v114, v115, v116, v117);
      }

      else
      {
        v119 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v126 = v119;
      v127 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v120, 1, v121, v122, v123, v124);
      objc_msgSend_setObject_forKey_(v126, v128, v127, @"preserveHEIF", v129, v130, v131);

      v138 = objc_msgSend_copy(v126, v132, v133, v134, v135, v136, v137);
      infoCopy = v138;
    }

    else if (v111)
    {
      v125 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v125, OS_LOG_TYPE_INFO, "Not preserving HEIF encoding", buf, 2u);
      }
    }

    shouldPreserveHDREncoding = objc_msgSend_shouldPreserveHDREncoding_(IMTranscoder, v112, capabilitiesCopy, v114, v115, v116, v117);
    v140 = IMOSLoggingEnabled();
    if (shouldPreserveHDREncoding)
    {
      if (v140)
      {
        v147 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v147, OS_LOG_TYPE_INFO, "Preserve HDR output", buf, 2u);
        }
      }

      if (infoCopy)
      {
        v148 = objc_msgSend_mutableCopy(infoCopy, v141, v142, v143, v144, v145, v146);
      }

      else
      {
        v148 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v155 = v148;
      v156 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v149, 1, v150, v151, v152, v153);
      objc_msgSend_setObject_forKey_(v155, v157, v156, @"preserveHDR", v158, v159, v160);

      v167 = objc_msgSend_copy(v155, v161, v162, v163, v164, v165, v166);
      infoCopy = v167;
    }

    else if (v140)
    {
      v154 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v154, OS_LOG_TYPE_INFO, "Will NOT preserve HDR output", buf, 2u);
      }
    }

    v168 = objc_msgSend_lastObject(sizesCopy, v141, v142, v143, v144, v145, v146);
    v175 = objc_msgSend_unsignedLongValue(v168, v169, v170, v171, v172, v173, v174);
    shouldProcessFileTransfer_utiType_transcoderUserInfo_target_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities = objc_msgSend_shouldProcessFileTransfer_utiType_transcoderUserInfo_target_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities_(self, v176, contentsCopy, typeCopy, infoCopy, target, isCopy, v175, capabilitiesCopy);

    if (shouldProcessFileTransfer_utiType_transcoderUserInfo_target_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities && (objc_msgSend__findTranscoderForUTI_(self, v178, typeCopy, v179, v180, v181, v182), v183 = objc_claimAutoreleasedReturnValue(), (v184 = v183) != 0))
    {
      v185 = self->_queue;
      v211[0] = MEMORY[0x277D85DD0];
      v211[1] = 3221225472;
      v211[2] = sub_25482BD28;
      v211[3] = &unk_27978AE08;
      v212 = v183;
      v213 = contentsCopy;
      v214 = typeCopy;
      v215 = isCopy;
      targetCopy2 = target;
      v216 = sizesCopy;
      v217 = capabilitiesCopy;
      dimensionCopy3 = dimension;
      v218 = infoCopy;
      v222 = representationsCopy;
      enabledCopy2 = enabled;
      v219 = v205;
      v186 = v184;
      dispatch_async(v185, v211);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v193 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          targetCopy3 = typeCopy;
          _os_log_impl(&dword_254811000, v193, OS_LOG_TYPE_INFO, "Not transcoding attachment file format: %@", buf, 0xCu);
        }
      }

      if (target && (objc_msgSend_path(contentsCopy, v187, v188, v189, v190, v191, v192), v194 = objc_claimAutoreleasedReturnValue(), v199 = objc_msgSend_checkPath_withSizes_(self, v195, v194, sizesCopy, v196, v197, v198), v194, (v199 & 1) == 0))
      {
        if (IMOSLoggingEnabled())
        {
          v201 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v201, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            targetCopy3 = target;
            _os_log_impl(&dword_254811000, v201, OS_LOG_TYPE_INFO, "File is not small enough to send with target: %ld", buf, 0xCu);
          }
        }

        v200 = 0;
      }

      else
      {
        v200 = 1;
      }

      v202 = _IMTranscoderLinkFile(contentsCopy, v187, v188, v189, v190, v191, v192);
      v186 = IMSingleObjectArray();

      (v205)[2](v205, contentsCopy, v186, 0, 0, v200, 0, 0);
    }
  }

  v203 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkPath:(id)path withSizes:(id)sizes
{
  v47 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sizesCopy = sizes;
  v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_attributesOfItemAtPath_error_(v13, v14, pathCopy, 0, v15, v16, v17);

  if (v18)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = sizesCopy;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v42, v46, 16, v21, v22);
    if (v29)
    {
      v30 = *v43;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v19);
          }

          v32 = *(*(&v42 + 1) + 8 * i);
          v33 = objc_msgSend_fileSize(v18, v23, v24, v25, v26, v27, v28, v42);
          if (v33 <= objc_msgSend_unsignedLongValue(v32, v34, v35, v36, v37, v38, v39))
          {
            LOBYTE(v29) = 1;
            goto LABEL_12;
          }
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v23, &v42, v46, 16, v27, v28);
        if (v29)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v29) = 0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)isMovieType:(id)type
{
  v7 = objc_msgSend_path(type, a2, type, v3, v4, v5, v6);
  v14 = objc_msgSend_pathExtension(v7, v8, v9, v10, v11, v12, v13);

  if (v14)
  {
    v20 = objc_msgSend_typeWithFilenameExtension_(MEMORY[0x277CE1CB8], v15, v14, v16, v17, v18, v19);
    v26 = objc_msgSend_conformsToType_(v20, v21, *MEMORY[0x277CE1E00], v22, v23, v24, v25);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)transcodeThumbnailFor:(id)for target:(int64_t)target allSizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)info isLQMEnabled:(BOOL)enabled outputURLs:(id)self0 outputContextInfo:(id)self1 attemptedTranscode:(BOOL)self2 additionalOutPutContext:(id)self3 completionBlock:(id)self4
{
  v142 = *MEMORY[0x277D85DE8];
  forCopy = for;
  sizesCopy = sizes;
  capabilitiesCopy = capabilities;
  infoCopy = info;
  lsCopy = ls;
  contextInfoCopy = contextInfo;
  contextCopy = context;
  blockCopy = block;
  v19 = forCopy;
  if (objc_msgSend_isMovieType_(self, v20, v19, v21, v22, v23, v24))
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, "Generating thumbnail of video %@", buf, 0xCu);
      }
    }

    v141 = 0;
    *buf = 0u;
    v140 = 0u;
    v35 = *MEMORY[0x277D1A4C0];
    v137[0] = *MEMORY[0x277D1A4B0];
    v137[1] = v35;
    v138[0] = &unk_28669CE38;
    v138[1] = &unk_28669CE48;
    v36 = *MEMORY[0x277D1A4C8];
    v137[2] = *MEMORY[0x277D1A4B8];
    v137[3] = v36;
    v138[2] = &unk_28669CE48;
    v138[3] = &unk_28669CE58;
    v37 = *MEMORY[0x277D1A4A0];
    v137[4] = *MEMORY[0x277D1A4A8];
    v137[5] = v37;
    v138[4] = MEMORY[0x277CBEC28];
    v138[5] = MEMORY[0x277CBEC28];
    v137[6] = *MEMORY[0x277D1A498];
    v138[6] = MEMORY[0x277CBEC28];
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v138, v137, 7, v32, v33);
    IMPreviewConstraintsFromDictionary();

    v39 = MEMORY[0x277D1AAB8];
    v46 = objc_msgSend_fromMeContext(MEMORY[0x277D1AB80], v40, v41, v42, v43, v44, v45);
    v133 = 0;
    *v135 = *buf;
    *&v135[16] = v140;
    v136 = v141;
    v48 = objc_msgSend_newPreviewFromSourceURL_senderContext_withPreviewConstraints_skipPlayButton_error_(v39, v47, v19, v46, v135, 1, &v133);
    v49 = v133;

    v56 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v50, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v56, v57, @"preview.jpg", v58, v59, v60, v61);

    v63 = *MEMORY[0x277CE1DC0];
    v70 = objc_msgSend_identifier(*MEMORY[0x277CE1DC0], v64, v65, v66, v67, v68, v69);
    v71 = CGImageDestinationCreateWithURL(v62, v70, 1uLL, 0);

    v125 = v19;
    if (v71)
    {
      CGImageDestinationAddImage(v71, v48, 0);
      v72 = CGImageDestinationFinalize(v71);
      v73 = IMOSLoggingEnabled();
      if (v72)
      {
        if (v73)
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *v135 = 138412290;
            *&v135[4] = v62;
            _os_log_impl(&dword_254811000, v74, OS_LOG_TYPE_INFO, "Generated frame of movie as jpeg to %@", v135, 0xCu);
          }
        }

        v125 = v62;
      }

      else
      {
        v125 = v19;
        if (v73)
        {
          v75 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            *v135 = 138412546;
            *&v135[4] = v19;
            *&v135[12] = 2112;
            *&v135[14] = v62;
            _os_log_impl(&dword_254811000, v75, OS_LOG_TYPE_INFO, "Failed to save JPEG frame of movie %@ to %@", v135, 0x16u);
          }

          v125 = v19;
        }
      }

      CFRelease(v71);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    objc_msgSend_identifier(v63, v76, v77, v78, v79, v80, v81);
  }

  else
  {
    v63 = *MEMORY[0x277CE1DC0];
    v125 = v19;
    objc_msgSend_identifier(*MEMORY[0x277CE1DC0], v25, v26, v27, v28, v29, v30);
  }
  v82 = ;
  v88 = objc_msgSend__findTranscoderForUTI_(self, v83, v82, v84, v85, v86, v87);

  if (IMOSLoggingEnabled())
  {
    v95 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v125;
      _os_log_impl(&dword_254811000, v95, OS_LOG_TYPE_INFO, "Transcoding thumbnail from %@", buf, 0xCu);
    }
  }

  v96 = objc_msgSend_identifier(v63, v89, v90, v91, v92, v93, v94);
  v103 = objc_msgSend_lastObject(sizesCopy, v97, v98, v99, v100, v101, v102);
  v134 = v103;
  v108 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v104, &v134, 1, v105, v106, v107);
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = sub_25482C5DC;
  v126[3] = &unk_27978AE30;
  v127 = contextCopy;
  v128 = v19;
  v129 = lsCopy;
  v130 = contextInfoCopy;
  v131 = blockCopy;
  transcodeCopy = transcode;
  v115 = contextInfoCopy;
  v109 = lsCopy;
  v118 = v19;
  v110 = blockCopy;
  v111 = contextCopy;
  objc_msgSend_transcodeFileTransfer_utiType_allowUnfilteredUTIs_target_sizes_commonCapabilities_maxDimension_transcoderUserInfo_representations_isLQMEnabled_completionBlock_(v88, v112, v125, v96, MEMORY[0x277CBEBF8], target, v108, capabilitiesCopy, dimension, infoCopy, 0, enabled, v126);

  v113 = *MEMORY[0x277D85DE8];
}

- (void)transcodeFileTransferData:(id)data balloonBundleID:(id)d attachments:(id)attachments fallBack:(BOOL)back completionBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  attachmentsCopy = attachments;
  blockCopy = block;
  v22 = objc_msgSend_lastObject(self->_fallbackTranscoders, v16, v17, v18, v19, v20, v21);

  if (v22)
  {
    queue = self->_queue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_25482C9C4;
    v26[3] = &unk_27978AE58;
    backCopy = back;
    v27 = dCopy;
    selfCopy = self;
    v29 = dataCopy;
    v30 = attachmentsCopy;
    v31 = blockCopy;
    dispatch_async(queue, v26);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = dCopy;
        _os_log_impl(&dword_254811000, v24, OS_LOG_TYPE_INFO, "Transcoding Not transcoding attachment file format: %@", buf, 0xCu);
      }
    }

    (*(blockCopy + 2))(blockCopy, 0, 0, 0, 0, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)generateSafeRender:(id)render outputURL:(id)l constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block
{
  v360 = *MEMORY[0x277D85DE8];
  renderCopy = render;
  lCopy = l;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = renderCopy;
      _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "Transcoder received request to generate safe render: %@", &buf, 0xCu);
    }
  }

  v18 = MEMORY[0x277CE1CB8];
  v19 = objc_msgSend_lastPathComponent(renderCopy, v11, v12, v13, v14, v15, v16);
  v26 = objc_msgSend_pathExtension(v19, v20, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_typeWithFilenameExtension_(v18, v27, v26, v28, v29, v30, v31);

  LODWORD(v26) = objc_msgSend_conformsToType_(v32, v33, *MEMORY[0x277CE1DB0], v34, v35, v36, v37);
  v43 = objc_msgSend_conformsToType_(v32, v38, *MEMORY[0x277CE1E00], v39, v40, v41, v42);
  v49 = objc_msgSend_conformsToType_(v32, v44, *MEMORY[0x277CE1D00], v45, v46, v47, v48);
  v56 = objc_msgSend_im_lastPathComponent(renderCopy, v50, v51, v52, v53, v54, v55);
  v62 = objc_msgSend_containsString_(v56, v57, *MEMORY[0x277D19E70], v58, v59, v60, v61);

  v69 = v62 | v26;
  if ((v69 | v43 | v49))
  {
    v347 = 0;
    v348 = &v347;
    v349 = 0x2020000000;
    v350 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v356 = 0x3032000000;
    v357 = sub_25482D988;
    v358 = sub_25482D998;
    v359 = 0;
    v341 = 0;
    v342 = &v341;
    v343 = 0x3032000000;
    v344 = sub_25482D988;
    v345 = sub_25482D998;
    v346 = 0;
    v70 = objc_msgSend_pathExtension(renderCopy, v63, v64, v65, v66, v67, v68);
    group = dispatch_group_create();
    v324 = objc_msgSend_untrustedContext(MEMORY[0x277D1AB80], v71, v72, v73, v74, v75, v76);
    if ((v69 & 1) == 0)
    {
      if (v43)
      {
        dispatch_group_enter(group);
        v181 = MEMORY[0x277D1A8B0];
        if (constraints->var0 >= 1200.0)
        {
          var0 = constraints->var0;
        }

        else
        {
          var0 = 1200.0;
        }

        var2 = constraints->var2;
        v333[0] = MEMORY[0x277D85DD0];
        v333[1] = 3221225472;
        v333[2] = sub_25482D9A0;
        v333[3] = &unk_27978AE80;
        v336 = &v341;
        v334 = renderCopy;
        v337 = &v347;
        p_buf = &buf;
        v335 = group;
        objc_msgSend_generateMoviePreview_senderContext_maxPxWidth_minThumbnailPxSize_scale_withCompletionBlock_(v181, v184, v334, v324, v333, v185, v186, var0, constraints->var1.width, constraints->var1.height, var2);

        v83 = v334;
      }

      else
      {
        if (!v49)
        {
          v216 = v70;
LABEL_60:
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
          if (blockCopy)
          {
            v312 = *(&buf + 1);
            if (v348[3])
            {
              v313 = 1;
            }

            else if (*(*(&buf + 1) + 40))
            {
              v313 = 0;
            }

            else
            {
              v314 = objc_alloc(MEMORY[0x277CCA9B8]);
              v318 = objc_msgSend_initWithDomain_code_userInfo_(v314, v315, *MEMORY[0x277D1A4D0], 1, 0, v316, v317);
              v319 = *(*(&buf + 1) + 40);
              *(*(&buf + 1) + 40) = v318;

              v312 = *(&buf + 1);
              v313 = *(v348 + 24);
            }

            (*(blockCopy + 2))(blockCopy, v313 & 1, v342[5], v216, *(v312 + 40));
          }

          _Block_object_dispose(&v341, 8);
          _Block_object_dispose(&buf, 8);

          _Block_object_dispose(&v347, 8);
          goto LABEL_68;
        }

        dispatch_group_enter(group);
        v224 = MEMORY[0x277D1A8B0];
        v327[0] = MEMORY[0x277D85DD0];
        v327[1] = 3221225472;
        v327[2] = sub_25482DC50;
        v327[3] = &unk_27978AEA8;
        v330 = &buf;
        v331 = &v341;
        v328 = renderCopy;
        v332 = &v347;
        v329 = group;
        objc_msgSend_generateAudioPreview_senderContext_withCompletionBlock_(v224, v225, v328, v324, v327, v226, v227);

        v83 = v328;
      }

      goto LABEL_35;
    }

    v80 = constraints->var0;
    if (constraints->var0 < 1200.0)
    {
      v80 = 1200.0;
    }

    *&v80 = v80;
    v81 = constraints->var2;
    *&v81 = v81;
    v82 = *(&buf + 1);
    obj = *(*(&buf + 1) + 40);
    v83 = objc_msgSend_generateImagePreviewForFileURL_senderContext_maxPixelDimension_scale_error_(MEMORY[0x277D1A8B0], v77, renderCopy, v324, &obj, v78, v79, v80, v81);
    objc_storeStrong((v82 + 40), obj);
    if (v83 && (objc_msgSend_utTypeString(v83, v84, v85, v86, v87, v88, v89), (v90 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend_utTypeString(v83, v84, v85, v86, v87, v88, v89), v91 = objc_claimAutoreleasedReturnValue(), v98 = objc_msgSend_length(v91, v92, v93, v94, v95, v96, v97) == 0, v91, v90, !v98))
    {
      v99 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v106 = objc_msgSend_utTypeString(v83, v100, v101, v102, v103, v104, v105);
      objc_msgSend_setValue_forKey_(v99, v107, v106, *MEMORY[0x277D1A2D0], v108, v109, v110);

      v111 = MEMORY[0x277CCABB0];
      v118 = objc_msgSend_isFromMe(v324, v112, v113, v114, v115, v116, v117);
      v124 = objc_msgSend_numberWithBool_(v111, v119, v118, v120, v121, v122, v123);
      objc_msgSend_setValue_forKey_(v99, v125, v124, *MEMORY[0x277D1A2A8], v126, v127, v128);

      v129 = MEMORY[0x277CCABB0];
      isTrustedSender = objc_msgSend_isTrustedSender(v324, v130, v131, v132, v133, v134, v135);
      v142 = objc_msgSend_numberWithBool_(v129, v137, isTrustedSender, v138, v139, v140, v141);
      objc_msgSend_setValue_forKey_(v99, v143, v142, *MEMORY[0x277D1A2B0], v144, v145, v146);

      v153 = objc_msgSend_serviceName(v324, v147, v148, v149, v150, v151, v152);
      objc_msgSend_setValue_forKey_(v99, v154, v153, *MEMORY[0x277D1A2B8], v155, v156, v157);

      v164 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v158, v159, v160, v161, v162, v163);
      objc_msgSend_trackEvent_withDictionary_(v164, v165, *MEMORY[0x277D1A128], v99, v166, v167, v168);
    }

    else
    {
      v187 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v84, v85, v86, v87, v88, v89);
      objc_msgSend_trackEvent_(v187, v188, *MEMORY[0x277D1A120], v189, v190, v191, v192);

      if (!v83)
      {
LABEL_29:
        v217 = objc_alloc(MEMORY[0x277CCA9B8]);
        v221 = objc_msgSend_initWithDomain_code_userInfo_(v217, v218, *MEMORY[0x277D1A4D0], 9, 0, v219, v220);
        v222 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v221;

        if (IMOSLoggingEnabled())
        {
          v223 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v223, OS_LOG_TYPE_INFO))
          {
            *v351 = 0;
            _os_log_impl(&dword_254811000, v223, OS_LOG_TYPE_INFO, "Lockdown - Unable to get CGImageRef from BlastDoor.", v351, 2u);
          }
        }

LABEL_35:
        v216 = v70;
LABEL_59:

        goto LABEL_60;
      }
    }

    v193 = objc_msgSend_image(v83, v169, v170, v171, v172, v173, v174);
    image = objc_msgSend_cgImage(v193, v194, v195, v196, v197, v198, v199);

    v206 = objc_msgSend_frameCount(v83, v200, v201, v202, v203, v204, v205);
    if (image)
    {
      v207 = v206;
      v208 = *MEMORY[0x277CE1E10];
      v322 = *MEMORY[0x277CE1E10];
      if (!v62)
      {
        v208 = v32;
      }

      v209 = v208;
      if (v62)
      {
        v216 = @"png";
      }

      else
      {
        v216 = objc_msgSend_pathExtension(renderCopy, v210, v211, v212, v213, v214, v215);

        if (v207 < 2)
        {
          v322 = v32;
LABEL_45:
          v241 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v228, v229, v230, v231, v232, v233);
          v242 = MEMORY[0x277CCACA8];
          v249 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v243, v244, v245, v246, v247, v248);
          v256 = objc_msgSend_UUIDString(v249, v250, v251, v252, v253, v254, v255);
          v262 = objc_msgSend_stringWithFormat_(v242, v257, @"%@.%@", v258, v259, v260, v261, v256, v216);
          url = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v241, v263, v262, v264, v265, v266, v267);

          v274 = objc_msgSend_identifier(v322, v268, v269, v270, v271, v272, v273);
          v275 = CGImageDestinationCreateWithURL(url, v274, 1uLL, 0);

          if (v275)
          {
            CGImageDestinationAddImage(v275, image, 0);
            if (CGImageDestinationFinalize(v275))
            {
              *(v348 + 24) = 1;
              v282 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v276, v277, v278, v279, v280, v281);
              v283 = *(&buf + 1);
              v339 = *(*(&buf + 1) + 40);
              objc_msgSend_moveItemAtURL_toURL_error_(v282, v284, url, lCopy, &v339, v285, v286);
              objc_storeStrong((v283 + 40), v339);

              objc_storeStrong(v342 + 5, l);
              if (*(*(&buf + 1) + 40))
              {
                v287 = objc_alloc(MEMORY[0x277CCA9B8]);
                v288 = *(*(&buf + 1) + 40);
                v353 = *MEMORY[0x277CCA7E8];
                v354 = v288;
                v292 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v289, &v354, &v353, 1, v290, v291);
                v296 = objc_msgSend_initWithDomain_code_userInfo_(v287, v293, *MEMORY[0x277D1A4D0], 9, v292, v294, v295);
                v297 = *(*(&buf + 1) + 40);
                *(*(&buf + 1) + 40) = v296;
              }
            }

            else
            {
              v305 = objc_alloc(MEMORY[0x277CCA9B8]);
              v309 = objc_msgSend_initWithDomain_code_userInfo_(v305, v306, *MEMORY[0x277D1A4D0], 9, 0, v307, v308);
              v310 = *(*(&buf + 1) + 40);
              *(*(&buf + 1) + 40) = v309;

              if (IMOSLoggingEnabled())
              {
                v311 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v311, OS_LOG_TYPE_INFO))
                {
                  *v351 = 138412290;
                  v352 = url;
                  _os_log_impl(&dword_254811000, v311, OS_LOG_TYPE_INFO, "Failed to write image to %@", v351, 0xCu);
                }
              }
            }

            CFRelease(v275);
          }

          else
          {
            v298 = objc_alloc(MEMORY[0x277CCA9B8]);
            v302 = objc_msgSend_initWithDomain_code_userInfo_(v298, v299, *MEMORY[0x277D1A4D0], 9, 0, v300, v301);
            v303 = *(*(&buf + 1) + 40);
            *(*(&buf + 1) + 40) = v302;

            if (IMOSLoggingEnabled())
            {
              v304 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v304, OS_LOG_TYPE_INFO))
              {
                *v351 = 138412290;
                v352 = url;
                _os_log_impl(&dword_254811000, v304, OS_LOG_TYPE_INFO, "Failed to create CGImageDestination for %@", v351, 0xCu);
              }
            }
          }

          goto LABEL_59;
        }

        if (IMOSLoggingEnabled())
        {
          v234 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v234, OS_LOG_TYPE_INFO))
          {
            *v351 = 0;
            _os_log_impl(&dword_254811000, v234, OS_LOG_TYPE_INFO, "File is actually animated lets save it as a JPEG...", v351, 2u);
          }
        }

        v322 = *MEMORY[0x277CE1DC0];

        objc_msgSend_preferredFilenameExtension(v322, v235, v236, v237, v238, v239, v240);
        v216 = v70 = v216;
      }

      goto LABEL_45;
    }

    goto LABEL_29;
  }

  if (IMOSLoggingEnabled())
  {
    v175 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v32;
      _os_log_impl(&dword_254811000, v175, OS_LOG_TYPE_INFO, "File is not a supported type: %@", &buf, 0xCu);
    }
  }

  v176 = objc_alloc(MEMORY[0x277CCA9B8]);
  v180 = objc_msgSend_initWithDomain_code_userInfo_(v176, v177, *MEMORY[0x277D1A4D0], 1, 0, v178, v179);
  (*(blockCopy + 2))(blockCopy, 0, 0, 0, v180);

LABEL_68:
  v320 = *MEMORY[0x277D85DE8];
}

- (void)generateSnapshotForMessageGUID:(id)d payloadURL:(id)l balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block
{
  dCopy = d;
  lCopy = l;
  iDCopy = iD;
  contextCopy = context;
  blockCopy = block;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_25482E0B0;
  v31[3] = &unk_27978AEF8;
  v32 = blockCopy;
  v17 = blockCopy;
  v18 = MEMORY[0x259C1B690](v31);
  queue = self->_queue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_25482E1A0;
  v25[3] = &unk_27978ADB8;
  v26 = dCopy;
  v27 = lCopy;
  v28 = iDCopy;
  v29 = contextCopy;
  v30 = v18;
  v20 = v18;
  v21 = contextCopy;
  v22 = iDCopy;
  v23 = lCopy;
  v24 = dCopy;
  dispatch_async(queue, v25);
}

- (void)generatePreview:(id)preview previewURL:(id)l senderContext:(id)context balloonBundleID:(id)d constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block
{
  previewCopy = preview;
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  blockCopy = block;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_25482E380;
  v37[3] = &unk_27978AF48;
  v38 = blockCopy;
  v19 = blockCopy;
  v20 = MEMORY[0x259C1B690](v37);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v21 = *&constraints->var1.height;
  v34 = *&constraints->var0;
  v35 = v21;
  v28[2] = sub_25482E488;
  v28[3] = &unk_27978AF70;
  v29 = previewCopy;
  v30 = lCopy;
  v31 = contextCopy;
  v32 = dCopy;
  v36 = *&constraints->var3;
  v33 = v20;
  v22 = v20;
  v23 = dCopy;
  v24 = contextCopy;
  v25 = lCopy;
  v26 = previewCopy;
  v27 = MEMORY[0x259C1B690](v28);
  dispatch_sync(self->_previewGenerationQueue, v27);
}

- (void)generatePreviewMetadata:(id)metadata destinationURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block
{
  metadataCopy = metadata;
  lCopy = l;
  contextCopy = context;
  blockCopy = block;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_25482E6DC;
  v32[3] = &unk_27978AF48;
  v33 = blockCopy;
  v16 = blockCopy;
  v17 = MEMORY[0x259C1B690](v32);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_25482E7E4;
  v24[3] = &unk_27978AF98;
  v25 = metadataCopy;
  v26 = lCopy;
  v18 = *&constraints->var1.height;
  v29 = *&constraints->var0;
  v30 = v18;
  v31 = *&constraints->var3;
  v27 = contextCopy;
  v28 = v17;
  v19 = v17;
  v20 = contextCopy;
  v21 = lCopy;
  v22 = metadataCopy;
  v23 = MEMORY[0x259C1B690](v24);
  dispatch_sync(self->_previewGenerationQueue, v23);
}

- (void)decodeiMessageAppPayload:(id)payload senderContext:(id)context bundleID:(id)d completionBlock:(id)block
{
  payloadCopy = payload;
  contextCopy = context;
  dCopy = d;
  blockCopy = block;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_25482EAD4;
  v26[3] = &unk_27978AFE8;
  v27 = blockCopy;
  v14 = blockCopy;
  v15 = MEMORY[0x259C1B690](v26);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_25482EC10;
  v21[3] = &unk_27978B010;
  v22 = payloadCopy;
  v23 = contextCopy;
  v24 = dCopy;
  v25 = v15;
  v16 = v15;
  v17 = dCopy;
  v18 = contextCopy;
  v19 = payloadCopy;
  v20 = MEMORY[0x259C1B690](v21);
  dispatch_sync(self->_previewGenerationQueue, v20);
}

- (void)generatePosterConfig:(id)config destinationURL:(id)l senderContext:(id)context completionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  configCopy = config;
  lCopy = l;
  contextCopy = context;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v31 = configCopy;
      v32 = 2112;
      v33 = lCopy;
      _os_log_impl(&dword_254811000, v14, OS_LOG_TYPE_INFO, "Request to generate poster config from source %@ to dest %@", buf, 0x16u);
    }
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_25482EEF0;
  v28[3] = &unk_27978AEF8;
  v29 = blockCopy;
  v15 = blockCopy;
  v16 = MEMORY[0x259C1B690](v28);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_25482EFE0;
  v23[3] = &unk_27978B010;
  v24 = configCopy;
  v25 = contextCopy;
  v26 = lCopy;
  v27 = v16;
  v17 = v16;
  v18 = lCopy;
  v19 = contextCopy;
  v20 = configCopy;
  v21 = MEMORY[0x259C1B690](v23);
  dispatch_sync(self->_previewGenerationQueue, v21);

  v22 = *MEMORY[0x277D85DE8];
}

- (id)generateReadOnlyPosterConfig:(id)config error:(id *)error
{
  v129[2] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v124 = 0;
  v125 = &v124;
  v126 = 0x2050000000;
  v5 = qword_27F611A90;
  v127 = qword_27F611A90;
  if (!qword_27F611A90)
  {
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = sub_25482FAC0;
    v123[3] = &unk_27978B088;
    v123[4] = &v124;
    sub_25482FAC0(v123);
    v5 = v125[3];
  }

  v6 = v5;
  _Block_object_dispose(&v124, 8);
  v122 = 0;
  v110 = v5;
  v113 = configCopy;
  v114 = objc_msgSend_unarchiveConfigurationAtURL_format_error_(v5, v7, configCopy, -1, &v122, v8, v9);
  v112 = v122;
  v16 = v114;
  if (v114)
  {
    v17 = objc_msgSend_providerBundleIdentifier(v114, v10, v11, v12, v13, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v17, v18, @"com.apple.PhotosUIPrivate.PhotosPosterProvider", v19, v20, v21, v22);

    if (isEqualToString)
    {
      v109 = objc_msgSend_assetDirectory(v114, v24, v25, v26, v27, v28, v29);
      v36 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v30, v31, v32, v33, v34, v35);
      v37 = *MEMORY[0x277CBE8E8];
      v38 = *MEMORY[0x277CBE868];
      v129[0] = *MEMORY[0x277CBE8E8];
      v129[1] = v38;
      v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v129, 2, v40, v41, v42);
      v46 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v36, v44, v109, v43, 4, 0, v45);

      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v47 = v46;
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v118, v128, 16, v49, v50);
      if (v54)
      {
        v55 = *v119;
        while (2)
        {
          for (i = 0; i != v54; ++i)
          {
            if (*v119 != v55)
            {
              objc_enumerationMutation(v47);
            }

            v57 = *(*(&v118 + 1) + 8 * i);
            v117 = 0;
            ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v57, v51, &v117, v38, 0, v52, v53);
            v59 = v117;
            v66 = v59;
            if (ResourceValue_forKey_error && objc_msgSend_BOOLValue(v59, v60, v61, v62, v63, v64, v65))
            {
              v116 = 0;
              v70 = objc_msgSend_getResourceValue_forKey_error_(v57, v67, &v116, v37, 0, v68, v69);
              v71 = v116;
              v77 = v71;
              if (v70)
              {
                if (objc_msgSend_isEqualToString_(v71, v72, @"input.segmentation", v73, v74, v75, v76))
                {
                  v95 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v78, v79, v80, v81, v82, v83);
                  objc_msgSend_removeItemAtURL_error_(v95, v96, v57, 0, v97, v98, v99);

                  goto LABEL_24;
                }

                if (objc_msgSend_isEqualToString_(v77, v78, @"supplements", v80, v81, v82, v83))
                {
                  objc_msgSend_skipDescendants(v47, v84, v85, v86, v87, v88, v89);
                }
              }
            }
          }

          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v51, &v118, v128, 16, v52, v53);
          if (v54)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v115 = 0;
      v94 = objc_msgSend_archiveConfiguration_format_error_(v110, v100, v114, 1, &v115, v101, v102);
      v103 = v115;
      v104 = v103;
      if (v94)
      {
        v105 = v94;
      }

      else if (error)
      {
        v106 = v103;
        *error = v104;
      }
    }

    else
    {
      v94 = v113;
    }
  }

  else
  {
    if (!error)
    {
      v94 = 0;
      goto LABEL_31;
    }

    v90 = objc_alloc(MEMORY[0x277CCA9B8]);
    v94 = 0;
    *error = objc_msgSend_initWithDomain_code_userInfo_(v90, v91, *MEMORY[0x277D1A4D0], 1, 0, v92, v93);
  }

  v16 = v114;
LABEL_31:

  v107 = *MEMORY[0x277D85DE8];

  return v94;
}

- (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_25482FA40;
  v11[3] = &unk_27978B060;
  v12 = completionCopy;
  v6 = completionCopy;
  objc_msgSend_transcribeAudioForAudioTransferURL_withCompletion_(IMTranscriptionUtilities, v7, l, v11, v8, v9, v10);
}

@end