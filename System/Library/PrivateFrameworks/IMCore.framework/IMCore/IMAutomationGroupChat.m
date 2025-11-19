@interface IMAutomationGroupChat
- (id)_runChangeParticipantsQueryWithGroupID:(id)a3 participants:(id)a4 timeOut:(double)a5 error:(id *)a6 optArguments:(id)a7 addParticipants:(BOOL)a8;
- (id)changeGroupNameWithGroupID:(id)a3 newName:(id)a4 timeOut:(double)a5 error:(id *)a6 optArguments:(id)a7;
- (id)createGroupChatWithDestinationIDs:(id)a3 error:(id *)a4 optArguments:(id)a5;
- (id)groupNameWithGroupID:(id)a3 timeOut:(double)a4 error:(id *)a5 optArguments:(id)a6;
- (id)groupParticipantsWithGroupID:(id)a3 timeOut:(double)a4 error:(id *)a5 optArguments:(id)a6;
@end

@implementation IMAutomationGroupChat

- (id)createGroupChatWithDestinationIDs:(id)a3 error:(id *)a4 optArguments:(id)a5
{
  v59[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v53 = a5;
  v11 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v9, v10);
  v14 = objc_msgSend_handlesFromStrings_error_results_(self, v12, v8, a4, v11);
  if (v14)
  {
    v16 = objc_msgSend_chatForHandles_error_results_(self, v13, v14, a4, v11);
    if (v16)
    {
      v17 = v11;
      goto LABEL_23;
    }

    v54[0] = *MEMORY[0x1E696A578];
    v34 = MEMORY[0x1E696AEC0];
    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"Condition failed : '%s'", "(chat) == nil");
    v37 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v36, 5);
    v39 = objc_msgSend_stringWithFormat_(v34, v38, @"%@ (%@)", v35, v37);
    v55[0] = v39;
    v54[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v40, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 32);
    v55[1] = v41;
    v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v42, v55, v54, 2);

    v45 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v44, @"IMCoreAutomationHookErrorDomain", 5, v43);
    if (v45)
    {
      if (IMOSLoggingEnabled())
      {
        v46 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v49 = objc_msgSend_description(v45, v47, v48);
          *buf = 138412290;
          v57 = v49;
          _os_log_impl(&dword_1A823F000, v46, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (a4 && !*a4)
      {
        v50 = v45;
        *a4 = v45;
      }
    }
  }

  else
  {
    v58[0] = *MEMORY[0x1E696A578];
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"Condition failed : '%s'", "(handles) == nil");
    v21 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v20, 5);
    v23 = objc_msgSend_stringWithFormat_(v18, v22, @"%@ (%@)", v19, v21);
    v59[0] = v23;
    v58[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 29);
    v59[1] = v25;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, v59, v58, 2);

    v28 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v27, @"IMCoreAutomationHookErrorDomain", 5, v16);
    if (v28)
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v32 = objc_msgSend_description(v28, v30, v31);
          *buf = 138412290;
          v57 = v32;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (a4 && !*a4)
      {
        v33 = v28;
        *a4 = v28;
      }
    }
  }

  v17 = 0;
LABEL_23:

  v51 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_runChangeParticipantsQueryWithGroupID:(id)a3 participants:(id)a4 timeOut:(double)a5 error:(id *)a6 optArguments:(id)a7 addParticipants:(BOOL)a8
{
  v8 = a8;
  v131[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v119 = a7;
  if (!v13)
  {
    v37 = a6;
    v130[0] = *MEMORY[0x1E696A578];
    v38 = MEMORY[0x1E696AEC0];
    v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"Condition failed : '%s'", "(groupID) == nil");
    v41 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v40, 5);
    v43 = objc_msgSend_stringWithFormat_(v38, v42, @"%@ (%@)", v39, v41);
    v131[0] = v43;
    v130[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v44, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 44);
    v131[1] = v45;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v46, v131, v130, 2);

    v24 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v47, @"IMCoreAutomationHookErrorDomain", 5, v19);
    if (v24)
    {
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v51 = objc_msgSend_description(v24, v49, v50);
          *buf = 138412290;
          v129 = v51;
          _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (v37 && !*v37)
      {
        v52 = v24;
        v53 = 0;
        *v37 = v24;
LABEL_25:
        v22 = v24;
        goto LABEL_57;
      }
    }

LABEL_24:
    v53 = 0;
    goto LABEL_25;
  }

  v118 = a6;
  if (!objc_msgSend_count(v14, v15, v16))
  {
    v126[0] = *MEMORY[0x1E696A578];
    v54 = MEMORY[0x1E696AEC0];
    v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"Condition failed : '%s'", "[participants count] == 0");
    v57 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v56, 5);
    v59 = objc_msgSend_stringWithFormat_(v54, v58, @"%@ (%@)", v55, v57);
    v127[0] = v59;
    v126[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v61 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v60, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 45);
    v127[1] = v61;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v62, v127, v126, 2);

    v24 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v63, @"IMCoreAutomationHookErrorDomain", 5, v19);
    if (v24)
    {
      if (IMOSLoggingEnabled())
      {
        v64 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v67 = objc_msgSend_description(v24, v65, v66);
          *buf = 138412290;
          v129 = v67;
          _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (v118 && !*v118)
      {
        v116 = v24;
        v53 = 0;
        *v118 = v24;
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

  v19 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v17, v18);
  v22 = objc_msgSend_handlesFromStrings_error_results_(self, v20, v14, a6, v19);
  if (v22)
  {
    v24 = objc_msgSend_existingChatForGroupID_error_results_(self, v21, v13, 0, v19);
    if (v24 || (objc_msgSend_chatForHandles_error_results_(self, v23, v22, a6, v19), (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = objc_alloc(MEMORY[0x1E696AAB0]);
      v29 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v27, v28);
      v31 = objc_msgSend_localizedStringForKey_value_table_(v29, v30, @"join us", &stru_1F1B76F98, 0);
      v33 = objc_msgSend_initWithString_(v26, v32, v31);
      v35 = objc_msgSend_instantMessageWithText_messageSubject_fileTransferGUIDs_flags_threadIdentifier_(IMMessage, v34, v33, 0, 0, 5, 0);

      if (v35)
      {
        if (v8)
        {
          objc_msgSend_inviteParticipants_reason_(v24, v36, v22, v35);
        }

        else
        {
          objc_msgSend_removeParticipants_reason_(v24, v36, v22, v35);
        }

        v53 = v19;
        goto LABEL_56;
      }

      v120[0] = *MEMORY[0x1E696A578];
      v83 = MEMORY[0x1E696AEC0];
      v84 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v36, @"Condition failed : '%s'", "(message) == nil");
      v86 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v85, 5);
      v88 = objc_msgSend_stringWithFormat_(v83, v87, @"%@ (%@)", v84, v86);
      v121[0] = v88;
      v120[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v90 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v89, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 65);
      v121[1] = v90;
      v117 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v91, v121, v120, 2);

      v93 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v92, @"IMCoreAutomationHookErrorDomain", 5, v117);
      if (v93)
      {
        if (IMOSLoggingEnabled())
        {
          v94 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
          {
            v97 = objc_msgSend_description(v93, v95, v96);
            *buf = 138412290;
            v129 = v97;
            _os_log_impl(&dword_1A823F000, v94, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (v118 && !*v118)
        {
          v98 = v93;
          *v118 = v93;
        }
      }
    }

    else
    {
      v122[0] = *MEMORY[0x1E696A578];
      v99 = MEMORY[0x1E696AEC0];
      v100 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, @"Condition failed : '%s'", "(chat) == nil");
      v102 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v101, 5);
      v104 = objc_msgSend_stringWithFormat_(v99, v103, @"%@ (%@)", v100, v102);
      v123[0] = v104;
      v122[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v106 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v105, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 57);
      v123[1] = v106;
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v107, v123, v122, 2);

      v35 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v108, @"IMCoreAutomationHookErrorDomain", 5, v24);
      if (v35)
      {
        if (IMOSLoggingEnabled())
        {
          v109 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
          {
            v112 = objc_msgSend_description(v35, v110, v111);
            *buf = 138412290;
            v129 = v112;
            _os_log_impl(&dword_1A823F000, v109, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (v118 && !*v118)
        {
          v113 = v35;
          *v118 = v35;
        }
      }
    }
  }

  else
  {
    v124[0] = *MEMORY[0x1E696A578];
    v68 = MEMORY[0x1E696AEC0];
    v69 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"Condition failed : '%s'", "(handles) == nil");
    v71 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v70, 5);
    v73 = objc_msgSend_stringWithFormat_(v68, v72, @"%@ (%@)", v69, v71);
    v125[0] = v73;
    v124[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v75 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v74, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 50);
    v125[1] = v75;
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v76, v125, v124, 2);

    v35 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v77, @"IMCoreAutomationHookErrorDomain", 5, v24);
    if (v35)
    {
      if (IMOSLoggingEnabled())
      {
        v78 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          v81 = objc_msgSend_description(v35, v79, v80);
          *buf = 138412290;
          v129 = v81;
          _os_log_impl(&dword_1A823F000, v78, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (v118 && !*v118)
      {
        v82 = v35;
        *v118 = v35;
      }
    }
  }

  v53 = 0;
LABEL_56:

LABEL_57:
  v114 = *MEMORY[0x1E69E9840];

  return v53;
}

- (id)changeGroupNameWithGroupID:(id)a3 newName:(id)a4 timeOut:(double)a5 error:(id *)a6 optArguments:(id)a7
{
  v79[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v71 = a7;
  if (v11)
  {
    if (v12)
    {
      v15 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14);
      v17 = objc_msgSend_existingChatForGroupID_error_results_(self, v16, v11, a6, v15);
      v19 = v17;
      if (v17)
      {
        objc_msgSend_setDisplayName_(v17, v18, v12);
        objc_msgSend_setObject_forKeyedSubscript_(v15, v20, v12, @"name");
        v15 = v15;
        v21 = v15;
        goto LABEL_33;
      }

      v72[0] = *MEMORY[0x1E696A578];
      v52 = MEMORY[0x1E696AEC0];
      v53 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"Condition failed : '%s'", "(chat) == nil");
      v55 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v54, 5);
      v57 = objc_msgSend_stringWithFormat_(v52, v56, @"%@ (%@)", v53, v55);
      v73[0] = v57;
      v72[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v59 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v58, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 117);
      v73[1] = v59;
      v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v60, v73, v72, 2);

      v63 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v62, @"IMCoreAutomationHookErrorDomain", 5, v61);
      if (v63)
      {
        if (IMOSLoggingEnabled())
        {
          v64 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            v67 = objc_msgSend_description(v63, v65, v66);
            *buf = 138412290;
            v77 = v67;
            _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (a6 && !*a6)
        {
          v68 = v63;
          *a6 = v63;
        }
      }
    }

    else
    {
      v74[0] = *MEMORY[0x1E696A578];
      v37 = MEMORY[0x1E696AEC0];
      v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"Condition failed : '%s'", "(newName) == nil");
      v40 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v39, 5);
      v42 = objc_msgSend_stringWithFormat_(v37, v41, @"%@ (%@)", v38, v40);
      v75[0] = v42;
      v74[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v43, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 113);
      v75[1] = v44;
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v45, v75, v74, 2);

      v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v46, @"IMCoreAutomationHookErrorDomain", 5, v15);
      if (v19)
      {
        if (IMOSLoggingEnabled())
        {
          v47 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v50 = objc_msgSend_description(v19, v48, v49);
            *buf = 138412290;
            v77 = v50;
            _os_log_impl(&dword_1A823F000, v47, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (a6 && !*a6)
        {
          v51 = v19;
          *a6 = v19;
        }
      }
    }
  }

  else
  {
    v78[0] = *MEMORY[0x1E696A578];
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"Condition failed : '%s'", "(groupID) == nil");
    v25 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v24, 5);
    v27 = objc_msgSend_stringWithFormat_(v22, v26, @"%@ (%@)", v23, v25);
    v79[0] = v27;
    v78[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v29 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v28, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 112);
    v79[1] = v29;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v79, v78, 2);

    v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v31, @"IMCoreAutomationHookErrorDomain", 5, v15);
    if (v19)
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v35 = objc_msgSend_description(v19, v33, v34);
          *buf = 138412290;
          v77 = v35;
          _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (a6 && !*a6)
      {
        v36 = v19;
        *a6 = v19;
      }
    }
  }

  v21 = 0;
LABEL_33:

  v69 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)groupParticipantsWithGroupID:(id)a3 timeOut:(double)a4 error:(id *)a5 optArguments:(id)a6
{
  v193[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v168 = a6;
  if (v8)
  {
    v11 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v9, v10);
    v13 = objc_msgSend_existingChatForGroupID_error_results_(self, v12, v8, a5, v11);
    v16 = v13;
    if (!v13)
    {
      v188[0] = *MEMORY[0x1E696A578];
      v78 = MEMORY[0x1E696AEC0];
      v79 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"Condition failed : '%s'", "(chat) == nil");
      v81 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v80, 5);
      v83 = objc_msgSend_stringWithFormat_(v78, v82, @"%@ (%@)", v79, v81);
      v189[0] = v83;
      v188[1] = @"IMCoreAutomationHookParameterErrorLocation";
      v85 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v84, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 129);
      v189[1] = v85;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v86, v189, v188, 2);

      v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v87, @"IMCoreAutomationHookErrorDomain", 5, v21);
      if (v20)
      {
        if (IMOSLoggingEnabled())
        {
          v88 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            v91 = objc_msgSend_description(v20, v89, v90);
            *buf = 138412290;
            v191 = v91;
            _os_log_impl(&dword_1A823F000, v88, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        if (a5 && !*a5)
        {
          v92 = v20;
          *a5 = v20;
        }
      }

      goto LABEL_41;
    }

    v17 = objc_msgSend_participants(v13, v14, v15);
    v20 = objc_msgSend_set(MEMORY[0x1E695DFA8], v18, v19);
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v21 = v17;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v174, v187, 16);
    if (v25)
    {
      v26 = *v175;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v175 != v26)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v174 + 1) + 8 * i);
          v29 = objc_msgSend_ID(v28, v23, v24);
          v30 = v29 == 0;

          if (v30)
          {
            v185[0] = *MEMORY[0x1E696A578];
            v61 = MEMORY[0x1E696AEC0];
            v62 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, @"Condition failed : '%s'", "([handle ID]) == nil");
            v64 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v63, 5);
            v66 = objc_msgSend_stringWithFormat_(v61, v65, @"%@ (%@)", v62, v64);
            v186[0] = v66;
            v185[1] = @"IMCoreAutomationHookParameterErrorLocation";
            v68 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v67, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 135);
            v186[1] = v68;
            v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v69, v186, v185, 2);

            v72 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v71, @"IMCoreAutomationHookErrorDomain", 5, v70);
            if (v72)
            {
              if (IMOSLoggingEnabled())
              {
                v73 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                {
                  v76 = objc_msgSend_description(v72, v74, v75);
                  *buf = 138412290;
                  v191 = v76;
                  _os_log_impl(&dword_1A823F000, v73, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
                }
              }

              if (a5 && !*a5)
              {
                v77 = v72;
                *a5 = v72;
              }
            }

            goto LABEL_41;
          }

          v33 = objc_msgSend_ID(v28, v31, v32);
          objc_msgSend_addObject_(v20, v34, v33);
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v174, v187, 16);
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v37 = objc_msgSend_lastAddressedHandleID(v16, v35, v36);
    v40 = objc_msgSend_length(v37, v38, v39) == 0;

    if (v40)
    {
      if (objc_msgSend_joinState(v16, v41, v42) != 3)
      {
        goto LABEL_57;
      }

      v96 = objc_msgSend_account(v16, v45, v95);
      v43 = v96;
      if (!v96)
      {
        v183[0] = *MEMORY[0x1E696A578];
        v149 = MEMORY[0x1E696AEC0];
        v150 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v97, @"Condition failed : '%s'", "(account) == nil");
        v152 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v151, 5);
        v154 = objc_msgSend_stringWithFormat_(v149, v153, @"%@ (%@)", v150, v152);
        v184[0] = v154;
        v183[1] = @"IMCoreAutomationHookParameterErrorLocation";
        v156 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v155, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 145);
        v184[1] = v156;
        v158 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v157, v184, v183, 2);

        v160 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v159, @"IMCoreAutomationHookErrorDomain", 5, v158);
        if (v160)
        {
          if (IMOSLoggingEnabled())
          {
            v161 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v161, OS_LOG_TYPE_INFO))
            {
              v164 = objc_msgSend_description(v160, v162, v163);
              *buf = 138412290;
              v191 = v164;
              _os_log_impl(&dword_1A823F000, v161, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
            }
          }

          if (a5 && !*a5)
          {
            v165 = v160;
            *a5 = v160;
          }
        }

        goto LABEL_41;
      }

      objc_msgSend_arrayOfAllIMHandles(v96, v97, v98);
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      obj = v171 = 0u;
      v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v99, &v170, v182, 16);
      if (v102)
      {
        v103 = *v171;
        while (2)
        {
          for (j = 0; j != v102; ++j)
          {
            if (*v171 != v103)
            {
              objc_enumerationMutation(obj);
            }

            v106 = objc_msgSend_displayID(*(*(&v170 + 1) + 8 * j), v100, v101);
            if (!v106)
            {
              v180[0] = *MEMORY[0x1E696A578];
              v133 = MEMORY[0x1E696AEC0];
              v166 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v105, @"Condition failed : '%s'", "(handleString) == nil");
              v135 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v134, 5);
              v137 = objc_msgSend_stringWithFormat_(v133, v136, @"%@ (%@)", v166, v135);
              v181[0] = v137;
              v180[1] = @"IMCoreAutomationHookParameterErrorLocation";
              v139 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v138, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 150);
              v181[1] = v139;
              v141 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v140, v181, v180, 2);

              v143 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v142, @"IMCoreAutomationHookErrorDomain", 5, v141);
              if (v143)
              {
                if (IMOSLoggingEnabled())
                {
                  v144 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
                  {
                    v147 = objc_msgSend_description(v143, v145, v146);
                    *buf = 138412290;
                    v191 = v147;
                    _os_log_impl(&dword_1A823F000, v144, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
                  }
                }

                if (a5 && !*a5)
                {
                  v148 = v143;
                  *a5 = v143;
                }
              }

              goto LABEL_41;
            }

            objc_msgSend_addObject_(v20, v105, v106);
          }

          v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v100, &v170, v182, 16);
          if (v102)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v43 = objc_msgSend_lastAddressedHandleID(v16, v41, v42);
      objc_msgSend_addObject_(v20, v44, v43);
    }

LABEL_57:
    if (v20)
    {
      if (IMOSLoggingEnabled())
      {
        v107 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v191 = v8;
          _os_log_impl(&dword_1A823F000, v107, OS_LOG_TYPE_INFO, "groupParticipantsWithGroupID incoming ID %@ ", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v108 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v191 = v20;
          _os_log_impl(&dword_1A823F000, v108, OS_LOG_TYPE_INFO, "groupParticipantsWithGroupID resulting participants %@ ", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v110 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v191 = v16;
          _os_log_impl(&dword_1A823F000, v110, OS_LOG_TYPE_INFO, "groupParticipantsWithGroupID resulting chat %@ ", buf, 0xCu);
        }
      }

      objc_msgSend_setObject_forKey_(v11, v109, v8, @"group_id");
      v113 = objc_msgSend_allObjects(v20, v111, v112);
      objc_msgSend_setObject_forKey_(v11, v114, v113, @"members");

      v60 = v11;
      goto LABEL_42;
    }

    v178[0] = *MEMORY[0x1E696A578];
    v116 = MEMORY[0x1E696AEC0];
    v117 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v45, @"Condition failed : '%s'", "(outList) == nil");
    v119 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v118, 5);
    v121 = objc_msgSend_stringWithFormat_(v116, v120, @"%@ (%@)", v117, v119);
    v179[0] = v121;
    v178[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v123 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v122, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 156);
    v179[1] = v123;
    v125 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v124, v179, v178, 2);

    v127 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v126, @"IMCoreAutomationHookErrorDomain", 5, v125);
    if (v127)
    {
      if (IMOSLoggingEnabled())
      {
        v128 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
        {
          v131 = objc_msgSend_description(v127, v129, v130);
          *buf = 138412290;
          v191 = v131;
          _os_log_impl(&dword_1A823F000, v128, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (a5 && !*a5)
      {
        v132 = v127;
        *a5 = v127;
      }
    }

LABEL_41:
    v60 = 0;
LABEL_42:

    goto LABEL_43;
  }

  v192[0] = *MEMORY[0x1E696A578];
  v46 = MEMORY[0x1E696AEC0];
  v47 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"Condition failed : '%s'", "(groupID) == nil");
  v49 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v48, 5);
  v51 = objc_msgSend_stringWithFormat_(v46, v50, @"%@ (%@)", v47, v49);
  v193[0] = v51;
  v192[1] = @"IMCoreAutomationHookParameterErrorLocation";
  v53 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v52, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 126);
  v193[1] = v53;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v54, v193, v192, 2);

  v21 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v55, @"IMCoreAutomationHookErrorDomain", 5, v11);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v56 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v59 = objc_msgSend_description(v21, v57, v58);
      *buf = 138412290;
      v191 = v59;
      _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  if (a5 && !*a5)
  {
    v115 = v21;
    v60 = 0;
    *a5 = v21;
  }

  else
  {
LABEL_21:
    v60 = 0;
  }

  v16 = v21;
LABEL_43:

  v93 = *MEMORY[0x1E69E9840];

  return v60;
}

- (id)groupNameWithGroupID:(id)a3 timeOut:(double)a4 error:(id *)a5 optArguments:(id)a6
{
  v62[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v12 = a6;
  if (v9)
  {
    v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11);
    v15 = objc_msgSend_existingChatForGroupID_error_results_(self, v14, v9, a5, v13);
    v18 = v15;
    if (v15)
    {
      v19 = objc_msgSend_displayName(v15, v16, v17);
      if (v19)
      {
        v21 = v19;
        objc_msgSend_setObject_forKey_(v13, v20, v19, @"name");
      }

      else
      {
        v21 = &stru_1F1B76F98;
        objc_msgSend_setObject_forKey_(v13, v20, &stru_1F1B76F98, @"name");
      }

      v13 = v13;

      v22 = v13;
      goto LABEL_26;
    }

    v57[0] = *MEMORY[0x1E696A578];
    v38 = MEMORY[0x1E696AEC0];
    v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"Condition failed : '%s'", "(chat) == nil");
    v41 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v40, 5);
    v43 = objc_msgSend_stringWithFormat_(v38, v42, @"%@ (%@)", v39, v41);
    v58[0] = v43;
    v57[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v44, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 171);
    v58[1] = v45;
    v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v46, v58, v57, 2);

    v49 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v48, @"IMCoreAutomationHookErrorDomain", 5, v47);
    if (v49)
    {
      if (IMOSLoggingEnabled())
      {
        v50 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v53 = objc_msgSend_description(v49, v51, v52);
          *buf = 138412290;
          v60 = v53;
          _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (a5 && !*a5)
      {
        v54 = v49;
        *a5 = v49;
      }
    }
  }

  else
  {
    v61[0] = *MEMORY[0x1E696A578];
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"Condition failed : '%s'", "(groupID) == nil");
    v26 = objc_msgSend_stringFromAutomationErrorCode_(IMCoreAutomationHook, v25, 5);
    v28 = objc_msgSend_stringWithFormat_(v23, v27, @"%@ (%@)", v24, v26);
    v62[0] = v28;
    v61[1] = @"IMCoreAutomationHookParameterErrorLocation";
    v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v29, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/IMCore/Source/Automation Hooks/IMAutomationGroupChat.m", 168);
    v62[1] = v30;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v31, v62, v61, 2);

    v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v32, @"IMCoreAutomationHookErrorDomain", 5, v13);
    if (v18)
    {
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v36 = objc_msgSend_description(v18, v34, v35);
          *buf = 138412290;
          v60 = v36;
          _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (a5 && !*a5)
      {
        v37 = v18;
        *a5 = v18;
      }
    }
  }

  v22 = 0;
LABEL_26:

  v55 = *MEMORY[0x1E69E9840];

  return v22;
}

@end