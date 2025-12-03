@interface IMFallbackTranscoder
- (IMFallbackTranscoder_AudioMessage)audioTranscoder;
- (id)_findPluginFallbackEncoder:(id)encoder withBalloonBundleID:(id)d;
- (void)_transcodeAudioMessageContents:(id)contents utiType:(id)type completionBlock:(id)block;
- (void)_transcodeAutoloopContents:(id)contents utiType:(id)type completionBlock:(id)block;
- (void)dealloc;
- (void)transcodeFileTransferContents:(id)contents utiType:(id)type transcoderUserInfo:(id)info completionBlock:(id)block;
- (void)transcodeFileTransferData:(id)data balloonBundleID:(id)d attachments:(id)attachments inFileURL:(id)l fallBack:(BOOL)back completionBlock:(id)block;
@end

@implementation IMFallbackTranscoder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMFallbackTranscoder;
  [(IMFallbackTranscoder *)&v3 dealloc];
}

- (id)_findPluginFallbackEncoder:(id)encoder withBalloonBundleID:(id)d
{
  v85 = *MEMORY[0x277D85DE8];
  v74 = *MEMORY[0x277D19720];
  v9 = objc_msgSend_rangeOfString_(d, a2, *MEMORY[0x277D19720], d, v4, v5, v6);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(encoder, v10, &v76, v84, 16, v11, v12);
  if (v18)
  {
    v19 = *v77;
    v75 = *MEMORY[0x277D19728];
    while (2)
    {
      v20 = 0;
      do
      {
        if (*v77 != v19)
        {
          objc_enumerationMutation(encoder);
        }

        v21 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v13, *(*(&v76 + 1) + 8 * v20), v14, v15, v16, v17);
        v22 = objc_alloc(MEMORY[0x277CCA8D8]);
        v28 = objc_msgSend_initWithURL_(v22, v23, v21, v24, v25, v26, v27);
        v35 = objc_msgSend_bundleIdentifier(v28, v29, v30, v31, v32, v33, v34);
        if ((objc_msgSend_isEqualToString_(v35, v36, d, v37, v38, v39, v40) & 1) != 0 || !v9 && objc_msgSend_isEqualToString_(v35, v13, v74, v14, v15, v16, v17))
        {
          v42 = objc_msgSend_infoDictionary(v28, v13, v41, v14, v15, v16, v17);
          v48 = objc_msgSend_objectForKey_(v42, v43, @"CKFallbackClass", v44, v45, v46, v47);
          if (objc_msgSend_length(v48, v49, v50, v51, v52, v53, v54))
          {
            objc_msgSend_load(v28, v13, v55, v14, v15, v16, v17);
            v56 = NSClassFromString(v48);
            v57 = IMBalloonExtensionIDWithSuffix();
            if (objc_msgSend_isEqualToString_(d, v58, v57, v59, v60, v61, v62))
            {
              v56 = NSClassFromString(&cfstr_Msphotosextens.isa);
            }

            v63 = objc_alloc_init(v56);
            if (objc_msgSend_conformsToProtocol_(v63, v64, &unk_2866A1580, v65, v66, v67, v68))
            {
              if (IMOSLoggingEnabled())
              {
                v71 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  dCopy2 = d;
                  v82 = 2112;
                  v83 = v63;
                  _os_log_impl(&dword_254811000, v71, OS_LOG_TYPE_INFO, "Found encoder to get bundle for identifier %@, encoder %@", buf, 0x16u);
                }
              }

              goto LABEL_23;
            }
          }
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(encoder, v13, &v76, v84, 16, v16, v17);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v69 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      dCopy2 = d;
      _os_log_impl(&dword_254811000, v69, OS_LOG_TYPE_INFO, "Failed to get bundle for identifier %@", buf, 0xCu);
    }
  }

  v63 = 0;
LABEL_23:
  v72 = *MEMORY[0x277D85DE8];
  return v63;
}

- (void)transcodeFileTransferData:(id)data balloonBundleID:(id)d attachments:(id)attachments inFileURL:(id)l fallBack:(BOOL)back completionBlock:(id)block
{
  backCopy = back;
  v53 = *MEMORY[0x277D85DE8];
  v15 = IMBalloonProviderBundlePaths();
  PluginFallbackEncoder_withBalloonBundleID = objc_msgSend__findPluginFallbackEncoder_withBalloonBundleID_(self, v16, v15, d, v17, v18, v19);
  if (PluginFallbackEncoder_withBalloonBundleID)
  {
    v21 = PluginFallbackEncoder_withBalloonBundleID;
    v22 = PluginFallbackEncoder_withBalloonBundleID;
    if (backCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        v28 = objc_msgSend___imArrayByApplyingBlock_(attachments, v23, &unk_28669AED8, v24, v25, v26, v27);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = sub_254829970;
        v46[3] = &unk_27978AC50;
        v46[4] = data;
        v46[5] = l;
        v46[7] = v21;
        v46[8] = block;
        v46[6] = attachments;
        objc_msgSend_fallbackForData_attachments_inFileURL_completionBlockWithText_(v21, v29, data, v28, l, v46, v30);
      }

      else
      {
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = sub_254829B2C;
        v45[3] = &unk_27978AC78;
        v45[4] = data;
        v45[5] = l;
        v45[7] = v21;
        v45[8] = block;
        v45[6] = attachments;
        objc_msgSend_fallbackForData_inFileURL_completionBlock_(v21, v23, data, l, v45, v26, v27);
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          dCopy = v21;
          v49 = 2080;
          v50 = "Oct 22 2025";
          v51 = 2080;
          v52 = "22:16:28";
          _os_log_impl(&dword_254811000, v35, OS_LOG_TYPE_INFO, "******** found encoder ******** %@ that responds to fullQualityForData %s %s", buf, 0x20u);
        }
      }

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_254829CDC;
      v44[3] = &unk_27978ACA0;
      v44[4] = v21;
      v44[5] = block;
      objc_msgSend_fullQualityForData_inFileURL_completionBlock_(v21, v32, data, l, v44, v33, v34);
    }

    else
    {
      v36 = objc_opt_respondsToSelector();
      v37 = IMOSLoggingEnabled();
      if (v36)
      {
        if (v37)
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            dCopy = v21;
            v49 = 2080;
            v50 = "Oct 22 2025";
            v51 = 2080;
            v52 = "22:16:28";
            _os_log_impl(&dword_254811000, v40, OS_LOG_TYPE_INFO, "******** found encoder ******** %@ that responds to fullQualityForData:attachments:inFileURL:completionBlock: %s %s", buf, 0x20u);
          }
        }

        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = sub_254829E48;
        v43[3] = &unk_27978ACC8;
        v43[4] = v21;
        v43[5] = block;
        objc_msgSend_fullQualityForData_attachments_inFileURL_completionBlock_(v21, v38, data, 0, l, v43, v39);
      }

      else
      {
        if (v37)
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            dCopy = v21;
            _os_log_impl(&dword_254811000, v41, OS_LOG_TYPE_INFO, "******* did NOT ****** find encoder %@ that responds to fullQualityForData", buf, 0xCu);
          }
        }

        (*(block + 2))(block, 0, 0, 0, 1, 0);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        dCopy = d;
        _os_log_impl(&dword_254811000, v31, OS_LOG_TYPE_INFO, "IMTranscoding. No encoder found for balloon id %@", buf, 0xCu);
      }
    }

    (*(block + 2))(block, 0, 0, 0, 1, 0);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)transcodeFileTransferContents:(id)contents utiType:(id)type transcoderUserInfo:(id)info completionBlock:(id)block
{
  v11 = objc_msgSend_objectForKey_(info, a2, *MEMORY[0x277D19DC8], type, info, block, v6);
  if (objc_msgSend_BOOLValue(v11, v12, v13, v14, v15, v16, v17))
  {

    MEMORY[0x2821F9670](self, sel__transcodeAudioMessageContents_utiType_completionBlock_, contents, type, block, v18, v19);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel__transcodeAutoloopContents_utiType_completionBlock_, contents, type, block, v18, v19);
  }
}

- (void)_transcodeAutoloopContents:(id)contents utiType:(id)type completionBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, contents, type, block, v5, v6);
  PathComponent = objc_msgSend_lastPathComponent(contents, v10, v11, v12, v13, v14, v15);
  v23 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v17, v18, v19, v20, v21, v22);
  v28 = objc_msgSend__randomTemporaryPathWithSuffix_fileName_(v9, v24, @"gif", v23, v25, v26, v27);
  v34 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v29, v28, v30, v31, v32, v33);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3052000000;
  v39[3] = sub_25482A2F4;
  v39[4] = sub_25482A304;
  v39[5] = 0;
  if (qword_27F611A88 != -1)
  {
    sub_2548315BC();
  }

  if (off_27F611A80)
  {
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        contentsCopy = contents;
        v42 = 2112;
        v43 = v34;
        _os_log_impl(&dword_254811000, v35, OS_LOG_TYPE_INFO, "Transcoding GIF {source: %@, target: %@}", buf, 0x16u);
      }
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_25482A440;
    v38[3] = &unk_27978AD10;
    v38[4] = v34;
    v38[5] = block;
    v38[6] = v39;
    off_27F611A80(contents, v34, &unk_28669AF38, v38);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v36, OS_LOG_TYPE_INFO, "IMTranscoding. PFCreateGIFFromVideoURL function not available", buf, 2u);
      }
    }

    (*(block + 2))(block, 0, 0, 0, 0, 0);
  }

  _Block_object_dispose(v39, 8);
  v37 = *MEMORY[0x277D85DE8];
}

- (void)_transcodeAudioMessageContents:(id)contents utiType:(id)type completionBlock:(id)block
{
  v9 = objc_msgSend_audioTranscoder(self, a2, contents, type, block, v5, v6);

  MEMORY[0x2821F9670](v9, sel_transcodeOpusFile_completionBlock_, contents, block, v10, v11, v12);
}

- (IMFallbackTranscoder_AudioMessage)audioTranscoder
{
  result = self->_audioTranscoder;
  if (!result)
  {
    result = objc_alloc_init(IMFallbackTranscoder_AudioMessage);
    self->_audioTranscoder = result;
  }

  return result;
}

@end