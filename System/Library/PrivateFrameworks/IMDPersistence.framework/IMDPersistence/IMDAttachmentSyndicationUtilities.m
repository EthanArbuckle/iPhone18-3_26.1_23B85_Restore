@interface IMDAttachmentSyndicationUtilities
+ (BOOL)_attachmentGUIDIsSyndicatable:(id)a3 syndicationIdentifier:(id)a4 attachmentUTI:(id)a5 attributedBody:(id)a6 encodedSyndicationRanges:(id)a7 isCMM:(BOOL)a8 verbose:(BOOL)a9;
+ (id)_syndicationIdentifierForAttachmentGUID:(id)a3 messageGUID:(id)a4 attributedBody:(id)a5 verbose:(BOOL)a6;
+ (unint64_t)_attachmentSyndicationTypeForAttachmentGUID:(id)a3 syndicationIdentifier:(id)a4 attachmentUTI:(id)a5 attributedBody:(id)a6 encodedSyndicationRanges:(id)a7 isCommSafetySensitive:(BOOL)a8 verbose:(BOOL)a9;
+ (void)_attachmentGUIDForCMMIsSyndicatable:(id)a3 syndicationIdentifier:(id)a4 encodedSyndicationRanges:(id)a5 isSyndicatable:(BOOL *)a6 verbose:(BOOL)a7;
@end

@implementation IMDAttachmentSyndicationUtilities

+ (id)_syndicationIdentifierForAttachmentGUID:(id)a3 messageGUID:(id)a4 attributedBody:(id)a5 verbose:(BOOL)a6
{
  v6 = a6;
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!IMFileTransferGUIDIsTemporary())
  {
    if (v6 && IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Using existing attachment GUID for syndication identifier. attachmentGUID: %@", &v20, 0xCu);
      }
    }

    v17 = v9;
    goto LABEL_18;
  }

  if (v6 && IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v9;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Deriving attachment index because attachment GUID in item dictionary is in legacy format. attachmentGUID: %@", &v20, 0xCu);
    }
  }

  if (objc_msgSend_messagePartIndexForAttachmentMessagePartWithTransferGUID_inBody_(MEMORY[0x1E69A8138], v12, v9, v11) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex();
LABEL_18:
    v15 = v17;
    goto LABEL_19;
  }

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF3DCC(v9, v14);
  }

  v15 = 0;
LABEL_19:

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (BOOL)_attachmentGUIDIsSyndicatable:(id)a3 syndicationIdentifier:(id)a4 attachmentUTI:(id)a5 attributedBody:(id)a6 encodedSyndicationRanges:(id)a7 isCMM:(BOOL)a8 verbose:(BOOL)a9
{
  v9 = a8;
  v67 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v20 = a7;
  v61 = 1;
  if (v9)
  {
    objc_msgSend__attachmentGUIDForCMMIsSyndicatable_syndicationIdentifier_encodedSyndicationRanges_isSyndicatable_verbose_(a1, v19, v15, v16, v20, &v61, a9);
    v21 = v61;
  }

  else
  {
    v45 = v17;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_1B7AE19B4;
    v59 = sub_1B7AE24E8;
    v60 = 0;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = sub_1B7B5A65C;
    v50[3] = &unk_1E7CB9200;
    v44 = v15;
    v51 = v44;
    v54 = a9;
    v43 = v16;
    v52 = v43;
    v53 = &v55;
    objc_msgSend___im_visitMessageParts_(v18, v22, v50);
    v26 = objc_msgSend_messagePartRange(v56[5], v23, v24);
    v27 = v25;
    if (v26 | v25)
    {
      v42 = v15;
      objc_msgSend_rangesFromSerializedString_(MEMORY[0x1E69A8158], v25, v20);
      v41 = v18;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v28 = v47 = 0u;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v46, v66, 16);
      if (v32)
      {
        v33 = *v47;
        while (2)
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v47 != v33)
            {
              objc_enumerationMutation(v28);
            }

            v35 = *(*(&v46 + 1) + 8 * i);
            if (objc_msgSend_messagePartRange(v35, v30, v31) == v26 && v30 == v27)
            {
              v18 = v41;
              v15 = v42;
              v17 = v45;
              if ((objc_msgSend_syndicationType(v35, v30, v31) & 4) != 0)
              {
                v61 = 0;
                if (a9)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v37 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v63 = v44;
                      _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "%@ not syndicatable because it was explcitly hidden", buf, 0xCu);
                    }
                  }

                  if (IMOSLoggingEnabled())
                  {
                    v38 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v63 = v44;
                      v64 = 2112;
                      v65 = v43;
                      _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Setting isSyndicatableMedia to be NO because the attachment is flagged as IMMessagePartSyndicationTypeHidden. attachmentGUID: %@ (syndicationIdentifier: %@)", buf, 0x16u);
                    }
                  }
                }
              }

              v21 = v61;
              goto LABEL_30;
            }
          }

          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v46, v66, 16);
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      v18 = v41;
      v15 = v42;
      v17 = v45;
    }

    else
    {
      v28 = IMLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF3E44(v44, v43, v28);
      }
    }

    v21 = 1;
LABEL_30:

    _Block_object_dispose(&v55, 8);
  }

  v39 = *MEMORY[0x1E69E9840];
  return v21 & 1;
}

+ (void)_attachmentGUIDForCMMIsSyndicatable:(id)a3 syndicationIdentifier:(id)a4 encodedSyndicationRanges:(id)a5 isSyndicatable:(BOOL *)a6 verbose:(BOOL)a7
{
  v7 = a7;
  v67 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v56 = a4;
  v12 = a5;
  v14 = objc_msgSend_rangesFromSerializedString_(MEMORY[0x1E69A8158], v13, v12);
  v17 = v14;
  if (v14 && objc_msgSend_count(v14, v15, v16))
  {
    v20 = objc_msgSend_firstObject(v17, v18, v19);
    v23 = objc_msgSend_assetDescriptor(v20, v21, v22);
    v26 = v23;
    v27 = v11;
    if (v23 && (objc_msgSend_assetSyndications(v23, v24, v25), (v30 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend_assetSyndications(v26, v28, v29), v31 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend_count(v31, v32, v33), v31, v30, v34))
    {
      v55 = IMCMMAssetIndexFromIMFileTransferGUID();
      v37 = objc_msgSend_assetSyndications(v26, v35, v36);
      v11 = v27;
      v39 = objc_msgSend_objectForKey_(v37, v38, &unk_1F2FCA2A8);

      if (v39 && objc_msgSend_count(v39, v40, v41))
      {
        v43 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v42, v55);
        v45 = objc_msgSend_objectForKey_(v39, v44, v43);
        v46 = v43;
        v47 = v45;

        v50 = objc_msgSend_intValue(v47, v48, v49);
        if (v47)
        {
          if (a6)
          {
            *a6 = (v50 & 4) == 0;
            if (v7)
            {
              if (IMOSLoggingEnabled())
              {
                v51 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  v52 = *a6;
                  *buf = 138412802;
                  v58 = v27;
                  v59 = 2112;
                  v60 = v56;
                  v61 = 1024;
                  LODWORD(v62) = v52;
                  _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "attachmentGUID %@, syndicationIdentifier %@, isSyndicatable: %d", buf, 0x1Cu);
                }
              }
            }
          }
        }

        else
        {
          v53 = IMLogHandleForCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v58 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDForCMMIsSyndicatable:syndicationIdentifier:encodedSyndicationRanges:isSyndicatable:verbose:]";
            v59 = 2048;
            v60 = v55;
            v61 = 2112;
            v62 = v39;
            v63 = 2112;
            v64 = v27;
            v65 = 2112;
            v66 = v56;
            _os_log_error_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_ERROR, "%s no syndication found for asset index %li from CMM asset info %@ for attachmentGUID %@, syndicationIdentifier %@", buf, 0x34u);
          }
        }
      }

      else
      {
        v47 = IMLogHandleForCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v58 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDForCMMIsSyndicatable:syndicationIdentifier:encodedSyndicationRanges:isSyndicatable:verbose:]";
          v59 = 2112;
          v60 = v39;
          v61 = 2112;
          v62 = v27;
          v63 = 2112;
          v64 = v56;
          _os_log_error_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_ERROR, "%s no asset info from CMM asset info %@ for attachmentGUID %@, syndicationIdentifier %@", buf, 0x2Au);
        }
      }
    }

    else
    {
      v39 = IMLogHandleForCategory();
      v11 = v27;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v58 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDForCMMIsSyndicatable:syndicationIdentifier:encodedSyndicationRanges:isSyndicatable:verbose:]";
        v59 = 2112;
        v60 = v20;
        v61 = 2112;
        v62 = v27;
        v63 = 2112;
        v64 = v56;
        _os_log_error_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_ERROR, "%s no asset syndications from range %@ for attachmentGUID %@, syndicationIdentifier %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v58 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDForCMMIsSyndicatable:syndicationIdentifier:encodedSyndicationRanges:isSyndicatable:verbose:]";
      v59 = 2112;
      v60 = v12;
      v61 = 2112;
      v62 = v11;
      v63 = 2112;
      v64 = v56;
      _os_log_error_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_ERROR, "%s no ranges deserialized from encodedSyndicationRanges %@ for attachmentGUID %@, syndicationIdentifier %@", buf, 0x2Au);
    }
  }

  v54 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)_attachmentSyndicationTypeForAttachmentGUID:(id)a3 syndicationIdentifier:(id)a4 attachmentUTI:(id)a5 attributedBody:(id)a6 encodedSyndicationRanges:(id)a7 isCommSafetySensitive:(BOOL)a8 verbose:(BOOL)a9
{
  v9 = a8;
  v33 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!v16)
  {
LABEL_13:
    v19 = 2;
    goto LABEL_14;
  }

  if (IMUTITypeIsSupportedByPhotos())
  {
    v19 = 1;
    goto LABEL_14;
  }

  IsFileAttachment = IMUTITypeIsFileAttachment();
  if (IsFileAttachment)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  if ((IsFileAttachment & 1) == 0 && a9)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v27 = 138412546;
        v28 = v14;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "%@ not syndicatable because it was an unsupported UTI %@", &v27, 0x16u);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  if (a9)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v27 = 134218498;
        v28 = v19;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "syndicationType == %lu for attachmentGUID %@ based on UTI type %@", &v27, 0x20u);
      }
    }

    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = v14;
          _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "%@ not syndicatable because it was comm safety sensitive", &v27, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = v14;
          _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Setting syndicationType to be Other because the attachment is flagged as CommSafety sensitive. attachmentGUID: %@", &v27, 0xCu);
        }
      }

      v19 = 2;
    }
  }

  else if (v9)
  {
    v19 = 2;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

@end