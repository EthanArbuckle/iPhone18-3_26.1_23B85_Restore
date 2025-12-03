@interface IMCoreAutomationHook
+ (id)stringFromAutomationErrorCode:(int64_t)code;
- (IMAccount)bestiMessageAccount;
- (id)chatForHandles:(id)handles error:(id *)error results:(id)results;
- (id)existingChatForGroupID:(id)d error:(id *)error results:(id)results;
- (id)handlesFromStrings:(id)strings error:(id *)error results:(id)results;
@end

@implementation IMCoreAutomationHook

- (IMAccount)bestiMessageAccount
{
  imessageAccount = self->_imessageAccount;
  if (!imessageAccount)
  {
    v5 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
    v8 = objc_msgSend_iMessageService(IMServiceImpl, v6, v7);
    v10 = objc_msgSend_bestAccountForService_(v5, v9, v8);
    v11 = self->_imessageAccount;
    self->_imessageAccount = v10;

    imessageAccount = self->_imessageAccount;
  }

  return imessageAccount;
}

- (id)chatForHandles:(id)handles error:(id *)error results:(id)results
{
  v61[2] = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  resultsCopy = results;
  if (objc_msgSend_count(handlesCopy, v9, v10))
  {
    v13 = objc_msgSend_sharedRegistry(IMChatRegistry, v11, v12);
    v15 = objc_msgSend_chatWithHandles_(v13, v14, handlesCopy);

    if (v15)
    {
      v18 = objc_msgSend_groupID(v15, v16, v17);
      objc_msgSend_setValue_forKey_(resultsCopy, v19, v18, @"group_id");

      v15 = v15;
      v20 = v15;
    }

    else
    {
      v56[0] = *MEMORY[0x1E696A578];
      v37 = MEMORY[0x1E696AEC0];
      v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"Condition failed : '%s'", "(chat) == nil");
      v40 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v39, 5);
      v42 = objc_msgSend_stringWithFormat_(v37, v41, @"%@ (%@)", v38, v40);
      v56[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v57[0] = v42;
      v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v43, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMCoreAutomationHook.m", 49);
      v57[1] = v44;
      v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v45, v57, v56, 2);

      v48 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v47, @"IMCoreAutomationHookErrorDomain", 5, v46);
      if (v48)
      {
        if (IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v52 = objc_msgSend_description(v48, v50, v51);
            *buf = 138412290;
            v59 = v52;
            _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (error && !*error)
        {
          v53 = v48;
          *error = v48;
        }
      }

      v20 = 0;
    }
  }

  else
  {
    v60[0] = *MEMORY[0x1E696A578];
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Condition failed : '%s'", "[handles count] == 0");
    v24 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v23, 5);
    v26 = objc_msgSend_stringWithFormat_(v21, v25, @"%@ (%@)", v22, v24);
    v60[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v61[0] = v26;
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v27, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMCoreAutomationHook.m", 47);
    v61[1] = v28;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v61, v60, 2);

    v31 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v30, @"IMCoreAutomationHookErrorDomain", 5, v15);
    if (v31)
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v35 = objc_msgSend_description(v31, v33, v34);
          *buf = 138412290;
          v59 = v35;
          _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v36 = v31;
        *error = v31;
      }
    }

    v20 = 0;
  }

  v54 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)handlesFromStrings:(id)strings error:(id *)error results:(id)results
{
  v79[2] = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  resultsCopy = results;
  if (objc_msgSend_count(stringsCopy, v9, v10))
  {
    v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v14 = stringsCopy;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v69, v75, 16);
    if (v18)
    {
      v19 = *v70;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v70 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v69 + 1) + 8 * i);
          v22 = objc_msgSend_bestiMessageAccount(self, v16, v17);
          v24 = objc_msgSend_imHandleWithID_(v22, v23, v21);

          if (v24)
          {
            objc_msgSend_addObject_(v13, v25, v24);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v69, v75, 16);
      }

      while (v18);
    }

    v28 = objc_msgSend_count(v14, v26, v27);
    if (v28 == objc_msgSend_count(v13, v29, v30))
    {
      objc_msgSend_setObject_forKey_(resultsCopy, v31, v14, @"members");
      v13 = v13;
      v32 = v13;
      goto LABEL_32;
    }

    v73[0] = *MEMORY[0x1E696A578];
    v49 = MEMORY[0x1E696AEC0];
    v50 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, @"Condition failed : '%s'", "[handleStrings count] != [outArray count]");
    v52 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v51, 5);
    v54 = objc_msgSend_stringWithFormat_(v49, v53, @"%@ (%@)", v50, v52);
    v73[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v74[0] = v54;
    v56 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v55, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMCoreAutomationHook.m", 68);
    v74[1] = v56;
    v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v57, v74, v73, 2);

    v60 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v59, @"IMCoreAutomationHookErrorDomain", 5, v58);
    if (v60)
    {
      if (IMOSLoggingEnabled())
      {
        v61 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v64 = objc_msgSend_description(v60, v62, v63);
          *buf = 138412290;
          v77 = v64;
          _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v65 = v60;
        *error = v60;
      }
    }
  }

  else
  {
    v78[0] = *MEMORY[0x1E696A578];
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Condition failed : '%s'", "[handleStrings count] == 0");
    v36 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v35, 5);
    v38 = objc_msgSend_stringWithFormat_(v33, v37, @"%@ (%@)", v34, v36);
    v78[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v79[0] = v38;
    v40 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v39, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMCoreAutomationHook.m", 58);
    v79[1] = v40;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v41, v79, v78, 2);

    v43 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v42, @"IMCoreAutomationHookErrorDomain", 5, v13);
    if (v43)
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v47 = objc_msgSend_description(v43, v45, v46);
          *buf = 138412290;
          v77 = v47;
          _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v48 = v43;
        *error = v43;
      }
    }
  }

  v32 = 0;
LABEL_32:

  v66 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)existingChatForGroupID:(id)d error:(id *)error results:(id)results
{
  v38[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  resultsCopy = results;
  v11 = objc_msgSend_sharedRegistry(IMChatRegistry, v9, v10);
  v13 = objc_msgSend_existingChatWithGroupID_(v11, v12, dCopy);

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v37[0] = *MEMORY[0x1E696A578];
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"Condition failed : '%s'", "(chat) == nil");
    v19 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v18, 5);
    v21 = objc_msgSend_stringWithFormat_(v16, v20, @"%@ (%@)", v17, v19);
    v37[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v38[0] = v21;
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMCoreAutomationHook.m", 78);
    v38[1] = v23;
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v38, v37, 2);

    v27 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v26, @"IMCoreAutomationHookErrorDomain", 5, v25);
    if (v27)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v31 = objc_msgSend_description(v27, v29, v30);
          *buf = 138412290;
          v36 = v31;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (error && !*error)
      {
        v32 = v27;
        *error = v27;
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)stringFromAutomationErrorCode:(int64_t)code
{
  if (code <= 2)
  {
    if (code == 1)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%s:%ld", "IMCoreAutomationHookErrorCodeDomainTimeOut", 1);
    }

    else
    {
      if (code != 2)
      {
        goto LABEL_13;
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%s:%ld", "IMCoreAutomationHookErrorCodeInvalidParameters", 2);
    }
  }

  else
  {
    switch(code)
    {
      case 3:
        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%s:%ld", "IMCoreAutomationHookErrorCodeGroupCreationFailure", 3);
        break;
      case 4:
        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%s:%ld", "IMCoreAutomationHookErrorCodeChatNotFound", 4);
        break;
      case 5:
        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%s:%ld", "IMCoreAutomationHookErrorCodeConditionFailed", 5);
        break;
      default:
        goto LABEL_13;
    }
  }
  self = ;
LABEL_13:

  return self;
}

@end