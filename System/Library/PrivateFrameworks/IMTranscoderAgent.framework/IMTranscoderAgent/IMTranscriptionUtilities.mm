@interface IMTranscriptionUtilities
+ (id)localizedSeparatorString;
+ (id)transcoderBundle;
+ (void)commitTranscriptionWithString:(id)string confidenceSum:(double)sum numberOfSegments:(unint64_t)segments completion:(id)completion;
+ (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion;
@end

@implementation IMTranscriptionUtilities

+ (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (lCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x277CDCF00]);
    if (objc_msgSend_supportsOnDeviceRecognition(v7, v8, v9, v10, v11, v12, v13))
    {
      objc_msgSend_setDefaultTaskHint_(v7, v14, 1, v15, v16, v17, v18);
      if (objc_msgSend_isAvailable(v7, v19, v20, v21, v22, v23, v24))
      {
        v25 = objc_alloc(MEMORY[0x277CDCF08]);
        v31 = objc_msgSend_initWithURL_(v25, v26, lCopy, v27, v28, v29, v30);
        objc_msgSend_setRequiresOnDeviceRecognition_(v31, v32, 1, v33, v34, v35, v36);
        objc_msgSend_setAddsPunctuation_(v31, v37, 1, v38, v39, v40, v41);
        objc_msgSend_setShouldReportPartialResults_(v31, v42, 0, v43, v44, v45, v46);
        *buf = 0;
        v75 = buf;
        v76 = 0x3032000000;
        v77 = sub_254826284;
        v78 = sub_254826294;
        v79 = &stru_28669B2D8;
        v73[0] = 0;
        v73[1] = v73;
        v73[2] = 0x2020000000;
        v73[3] = 0;
        v72[0] = 0;
        v72[1] = v72;
        v72[2] = 0x2020000000;
        v72[3] = 0;
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = sub_25482629C;
        v67[3] = &unk_27978ABE0;
        v68 = completionCopy;
        v69 = buf;
        v70 = v73;
        v71 = v72;
        v51 = objc_msgSend_recognitionTaskWithRequest_resultHandler_(v7, v47, v31, v67, v48, v49, v50);

        _Block_object_dispose(v72, 8);
        _Block_object_dispose(v73, 8);
        _Block_object_dispose(buf, 8);

LABEL_17:
        goto LABEL_18;
      }

      if (IMOSLoggingEnabled())
      {
        v62 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v62, OS_LOG_TYPE_INFO, "Speech recognizer is not available.", buf, 2u);
        }
      }

      v63 = objc_alloc(MEMORY[0x277CCA9B8]);
      v61 = objc_msgSend_initWithDomain_code_userInfo_(v63, v64, @"__kIMTranscriptionGenerationErrorDomain", 2, 0, v65, v66);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v56 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v56, OS_LOG_TYPE_INFO, "Speech recognizer does not support on device recognition. There are likely missing assets.", buf, 2u);
        }
      }

      v57 = objc_alloc(MEMORY[0x277CCA9B8]);
      v61 = objc_msgSend_initWithDomain_code_userInfo_(v57, v58, @"__kIMTranscriptionGenerationErrorDomain", 1, 0, v59, v60);
    }

    v31 = v61;
    (*(completionCopy + 2))(completionCopy, 0, v61);
    goto LABEL_17;
  }

  v52 = objc_alloc(MEMORY[0x277CCA9B8]);
  v7 = objc_msgSend_initWithDomain_code_userInfo_(v52, v53, @"__kIMTranscriptionGenerationErrorDomain", 0, 0, v54, v55);
  (*(completionCopy + 2))(completionCopy, 0, v7);
LABEL_18:
}

+ (id)localizedSeparatorString
{
  v7 = objc_msgSend_transcoderBundle(IMTranscriptionUtilities, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v8, v9, v10, v11, v12, v13);
  v21 = objc_msgSend_localeIdentifier(v14, v15, v16, v17, v18, v19, v20);

  v22 = MEMORY[0x277CCA8D8];
  v29 = objc_msgSend_localizations(v7, v23, v24, v25, v26, v27, v28);
  v36 = objc_msgSend_preferredLanguages(MEMORY[0x277CBEAF8], v30, v31, v32, v33, v34, v35);
  v41 = objc_msgSend_preferredLocalizationsFromArray_forPreferences_(v22, v37, v29, v36, v38, v39, v40);
  v48 = objc_msgSend_firstObject(v41, v42, v43, v44, v45, v46, v47);

  if (v48)
  {
    objc_msgSend_localizedStringForKey_value_table_localization_(v7, v49, @"SPEECH_PAUSE_SEPARATOR_BETWEEN_2_PARTS_OF_SENTENCE", 0, @"TranscriptionStrings", v48, v50);
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_localization_(v7, v49, @"SPEECH_PAUSE_SEPARATOR_BETWEEN_2_PARTS_OF_SENTENCE", 0, @"TranscriptionStrings", v21, v50);
  }
  v51 = ;

  return v51;
}

+ (id)transcoderBundle
{
  if (qword_27F611A70 != -1)
  {
    sub_2548315A8();
  }

  v3 = qword_27F611A68;

  return v3;
}

+ (void)commitTranscriptionWithString:(id)string confidenceSum:(double)sum numberOfSegments:(unint64_t)segments completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  completionCopy = completion;
  if (segments)
  {
    if (objc_msgSend_length(stringCopy, v10, v11, v12, v13, v14, v15))
    {
      if (sum / segments >= 0.6)
      {
        completionCopy[2](completionCopy, stringCopy, 0);
        goto LABEL_20;
      }

      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v21 = objc_msgSend_initWithDomain_code_userInfo_(v17, v18, @"__kIMTranscriptionGenerationErrorDomain", 4, 0, v19, v20);
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v34 = 138412290;
          v35 = v21;
          _os_log_impl(&dword_254811000, v22, OS_LOG_TYPE_INFO, "The transcription has a low confidence score, it is likely the audio was in a different language to the system language: %@", &v34, 0xCu);
        }
      }
    }

    else
    {
      v28 = objc_alloc(MEMORY[0x277CCA9B8]);
      v21 = objc_msgSend_initWithDomain_code_userInfo_(v28, v29, @"__kIMTranscriptionGenerationErrorDomain", 3, 0, v30, v31);
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v34 = 138412290;
          v35 = v21;
          _os_log_impl(&dword_254811000, v32, OS_LOG_TYPE_INFO, "The transcription has no text: %@", &v34, 0xCu);
        }
      }
    }
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v21 = objc_msgSend_initWithDomain_code_userInfo_(v23, v24, @"__kIMTranscriptionGenerationErrorDomain", 5, 0, v25, v26);
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v34 = 138412290;
        v35 = v21;
        _os_log_impl(&dword_254811000, v27, OS_LOG_TYPE_INFO, "There are no segments to transcribe: %@", &v34, 0xCu);
      }
    }
  }

  (completionCopy)[2](completionCopy, 0, v21);

LABEL_20:
  v33 = *MEMORY[0x277D85DE8];
}

@end