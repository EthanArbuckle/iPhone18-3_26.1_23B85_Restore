@interface IMDSpotlightTextDataProvider
- (id)dataForGUID:(id)a3 error:(id *)a4;
@end

@implementation IMDSpotlightTextDataProvider

- (id)dataForGUID:(id)a3 error:(id *)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69A8148]);
  v7 = v4;
  v52 = objc_msgSend_initWithEncodedMessagePartGUID_(v5, v6, v4);
  if (v52)
  {
    v7 = objc_msgSend_messageGUID(v52, v8, v9);
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_1B7AE1A54;
  v62 = sub_1B7AE2540;
  v63 = 0;
  v10 = objc_msgSend_synchronousDatabase(IMDDatabase, v8, v9);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_1B7B92D6C;
  v57[3] = &unk_1E7CBB6C8;
  v57[4] = &v58;
  objc_msgSend_fetchMessageRecordWithGUID_excludeRecoverableMessages_completionHandler_(v10, v11, v7, 1, v57);

  v14 = v59[5];
  if (v14)
  {
    v17 = objc_msgSend_attributedBodyText(v14, v12, v13);
    if (v52)
    {
      v18 = objc_alloc(MEMORY[0x1E69A8118]);
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v50 = objc_msgSend_initWithMessageBody_messageGUID_(v18, v19, v17, v7);
      v22 = objc_msgSend_messageParts(v50, v20, v21);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v53, v70, 16);
      if (v25)
      {
        v26 = *v54;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v54 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v53 + 1) + 8 * i);
            v29 = objc_msgSend_messagePartGUIDForMessageGUID_(v28, v24, v7);
            v32 = objc_msgSend_encodedMessagePartGUID(v29, v30, v31);

            if (objc_msgSend_isEqualToString_(v32, v33, v4))
            {
              v36 = objc_msgSend_messagePartRange(v28, v34, v35);
              v38 = objc_msgSend_attributedSubstringFromRange_(v17, v37, v36, v37);

              v17 = v38;
            }
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v53, v70, 16);
        }

        while (v25);
      }
    }

    v39 = objc_msgSend_string(v17, v15, v16);
    v40 = _IMStringStrippingControlCharacters();

    v68 = @"text";
    v69 = v40;
    v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v41, &v69, &v68, 1);
    v44 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v43, v42, 0, a4);
    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = a4;
        if (a4)
        {
          v46 = *a4;
        }

        *buf = 138412546;
        v65 = v44;
        v66 = 2112;
        v67 = v46;
        _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "Returning data %@ to spotlight with error %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v65 = v4;
        _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_INFO, "Failed to find plain text for spotlight because no message was found for guid %@", buf, 0xCu);
      }
    }

    v44 = 0;
  }

  _Block_object_dispose(&v58, 8);

  v48 = *MEMORY[0x1E69E9840];

  return v44;
}

@end