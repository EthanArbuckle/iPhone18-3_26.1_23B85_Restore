@interface IMOrderingTools
- (id)currentJsonArray;
- (id)messageDictionariesFromItemsInChat:(id)a3 withEventKey:(id)a4;
- (void)printChangeInItemsToJSON:(id)a3;
- (void)printChangeInItemsToJSONFromChat:(id)a3;
- (void)setUpJSONFileForChatGUID:(id)a3;
- (void)startTrackingChat:(id)a3;
- (void)writeDataToJSONFile:(id)a3;
@end

@implementation IMOrderingTools

- (void)startTrackingChat:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v5, v6);
  isInternalInstall = objc_msgSend_isInternalInstall(v7, v8, v9);

  if (isInternalInstall)
  {
    v13 = objc_msgSend_guid(v4, v11, v12);
    objc_msgSend_setUpJSONFileForChatGUID_(self, v14, v13);

    v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
    objc_msgSend_addObserver_selector_name_object_(v17, v18, self, sel_printChangeInItemsToJSON_, @"__kIMChatItemsDidChangeNotification", 0);
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "---Tried to trace guids on a non internal install!!!!!-----", v20, 2u);
    }
  }
}

- (void)setUpJSONFileForChatGUID:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x1E696AB08], v5, v6);
  v10 = objc_msgSend_invertedSet(v7, v8, v9);

  v12 = objc_msgSend_componentsSeparatedByCharactersInSet_(v4, v11, v10);
  v14 = objc_msgSend_componentsJoinedByString_(v12, v13, &stru_1F1B76F98);

  v17 = objc_msgSend_pathToDirectoryOfJSONFile(self, v15, v16);
  v18 = MEMORY[0x1E696AEC0];
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v19, v20);
  v23 = objc_msgSend_stringWithFormat_(v18, v22, @"ordering_output_%@_%lu.json", v14, v21);
  v25 = objc_msgSend_stringByAppendingPathComponent_(v17, v24, v23);
  v28 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v26, v27);
  objc_msgSend_createFileAtPath_contents_attributes_(v28, v29, v25, 0, 0);

  objc_msgSend_setJsonFilePath_(self, v30, v25);
  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = v4;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "JSON File for chatGUID %@ can be found at this path: %@", buf, 0x16u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)printChangeInItemsToJSONFromChat:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_guid(v4, v11, v12);
      v14 = MEMORY[0x1E696AD98];
      v17 = objc_msgSend_chatItems(v4, v15, v16);
      v20 = objc_msgSend_count(v17, v18, v19);
      v22 = objc_msgSend_numberWithUnsignedInteger_(v14, v21, v20);
      *buf = 138412802;
      v43 = v13;
      v44 = 2112;
      v45 = v7;
      v46 = 2112;
      v47 = v22;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Print change items for chat %@ at time %@ current item count %@", buf, 0x20u);
    }
  }

  v23 = objc_msgSend_chatItems(v4, v8, v9);
  v26 = objc_msgSend_count(v23, v24, v25) == 0;

  if (!v26)
  {
    v29 = MEMORY[0x1E696AEC0];
    objc_msgSend_timeIntervalSinceReferenceDate(v7, v27, v28);
    v32 = objc_msgSend_stringWithFormat_(v29, v30, @"ItemsChangedEvent-%f", v31);
    v34 = objc_msgSend_messageDictionariesFromItemsInChat_withEventKey_(self, v33, v4, v32);
    v37 = objc_msgSend_currentJsonArray(self, v35, v36);
    objc_msgSend_addObject_(v37, v38, v34);
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v43 = v32;
        v44 = 2112;
        v45 = v34;
        _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Appending event key %@ with items JSON Array %@", buf, 0x16u);
      }
    }

    objc_msgSend_writeDataToJSONFile_(self, v39, v37);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)printChangeInItemsToJSON:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Print change in items %@", &v11, 0xCu);
    }
  }

  v8 = objc_msgSend_object(v4, v5, v6);
  objc_msgSend_printChangeInItemsToJSONFromChat_(self, v9, v8);

  v10 = *MEMORY[0x1E69E9840];
}

- (id)currentJsonArray
{
  v3 = objc_msgSend_jsonFilePath(self, a2, v2);
  v7 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v4, v3);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v5, v7, 0, 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    v8 = 0;
LABEL_8:
    v9 = objc_msgSend_array(MEMORY[0x1E695DEC8], v5, v6);

    v8 = v9;
    goto LABEL_9;
  }

  if (!v8 || !objc_msgSend_count(v8, v5, v6))
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = objc_msgSend_mutableCopy(v8, v5, v6);

  return v10;
}

- (void)writeDataToJSONFile:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_jsonFilePath(self, v5, v6);
  if (objc_msgSend_length(v7, v8, v9))
  {
    v11 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v10, v4, 1, 0);
    objc_msgSend_writeToFile_atomically_(v11, v12, v7, 1);
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "We didn't find a json file to persist for path %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)messageDictionariesFromItemsInChat:(id)a3 withEventKey:(id)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v11 = objc_msgSend_chatItems(v7, v9, v10);
  v14 = objc_msgSend_count(v11, v12, v13);
  v16 = objc_msgSend_initWithCapacity_(v8, v15, v14);

  objc_msgSend_addObject_(v16, v17, v6);
  v20 = objc_msgSend_chatItems(v7, v18, v19);

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A830E02C;
  v24[3] = &unk_1E78122B8;
  v21 = v16;
  v25 = v21;
  objc_msgSend___enumerateItemsWithOptions_usingBlock_(v20, v22, 1, v24);

  return v21;
}

@end