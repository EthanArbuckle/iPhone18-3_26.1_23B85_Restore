@interface IMAutomation
- (BOOL)checkArgumentValidity:(id)a3 forExpectedNumberOfArguments:(int)a4;
- (id)IMCoreAutomationPerformOperationWithDictionary:(id)a3;
- (id)callIMCoreMethodWithDictionary:(id)a3;
- (id)startConversationFrom:(id)a3 andReceiveAt:(id)a4;
@end

@implementation IMAutomation

- (BOOL)checkArgumentValidity:(id)a3 forExpectedNumberOfArguments:(int)a4
{
  v6 = a3;
  if (a4 < 1)
  {
    v16 = 1;
  }

  else
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"arg%d", 1);
    v9 = objc_msgSend_objectForKey_(v6, v8, v7);

    if (v9)
    {
      v11 = 1;
      do
      {
        v12 = v11;
        if (a4 == v11)
        {
          break;
        }

        ++v11;
        v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"arg%d", (v12 + 1));
        v15 = objc_msgSend_objectForKey_(v6, v14, v13);
      }

      while (v15);
      v16 = v12 >= a4;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)callIMCoreMethodWithDictionary:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (!v4)
  {
    v13 = 0;
    goto LABEL_34;
  }

  v7 = objc_msgSend_objectForKey_(v4, v5, @"methodName");
  v9 = v7;
  if (v7 && !objc_msgSend_isEqualToString_(v7, v8, &stru_1F1B76F98))
  {
    if (objc_msgSend_isEqualToString_(v9, v10, @"clearAttachmentsUploadedToCloudkit"))
    {
      v14 = objc_opt_new();
      v18 = objc_msgSend_clearAttachmentsUploadedToCloudkit(v14, v16, v17);
LABEL_10:
      v13 = v18;
LABEL_32:

      goto LABEL_33;
    }

    if (objc_msgSend_isEqualToString_(v9, v15, @"deleteAttachmentWithMessageGUID") && objc_msgSend_checkArgumentValidity_forExpectedNumberOfArguments_(self, v19, v6, 2))
    {
      v14 = objc_opt_new();
      v21 = objc_msgSend_objectForKeyedSubscript_(v6, v20, @"arg1");
      v23 = objc_msgSend_objectForKeyedSubscript_(v6, v22, @"arg2");
      v26 = objc_msgSend_integerValue(v23, v24, v25);
      v28 = objc_msgSend_deleteAttachmentWithMessageGUID_andFilePathIndex_(v14, v27, v21, v26);
LABEL_30:
      v13 = v28;

      goto LABEL_31;
    }

    if (objc_msgSend_isEqualToString_(v9, v19, @"dictionaryFromGUID") && objc_msgSend_checkArgumentValidity_forExpectedNumberOfArguments_(self, v29, v6, 1))
    {
      v14 = objc_opt_new();
      v21 = objc_msgSend_objectForKeyedSubscript_(v6, v30, @"arg1");
      v32 = objc_msgSend_dictionaryFromGUID_(v14, v31, v21);
    }

    else
    {
      if (objc_msgSend_isEqualToString_(v9, v29, @"fileSizeForMessageGUID") && objc_msgSend_checkArgumentValidity_forExpectedNumberOfArguments_(self, v33, v6, 2))
      {
        v14 = objc_opt_new();
        v21 = objc_msgSend_objectForKeyedSubscript_(v6, v34, @"arg1");
        v23 = objc_msgSend_objectForKeyedSubscript_(v6, v35, @"arg2");
        v38 = objc_msgSend_integerValue(v23, v36, v37);
        v28 = objc_msgSend_fileSizeForMessageGUID_withFilePathIndex_(v14, v39, v21, v38);
        goto LABEL_30;
      }

      if (objc_msgSend_isEqualToString_(v9, v33, @"loadHighResolutionFileForMessageGUID") && objc_msgSend_checkArgumentValidity_forExpectedNumberOfArguments_(self, v40, v6, 2))
      {
        v14 = objc_opt_new();
        v21 = objc_msgSend_objectForKeyedSubscript_(v6, v41, @"arg1");
        v23 = objc_msgSend_objectForKeyedSubscript_(v6, v42, @"arg2");
        v45 = objc_msgSend_integerValue(v23, v43, v44);
        v28 = objc_msgSend_loadHighResolutionFileForMessageGUID_withFilePathIndex_(v14, v46, v21, v45);
        goto LABEL_30;
      }

      if (!objc_msgSend_isEqualToString_(v9, v40, @"startConversationFrom") || !objc_msgSend_checkArgumentValidity_forExpectedNumberOfArguments_(self, v47, v6, 2))
      {
        if (!objc_msgSend_isEqualToString_(v9, v47, @"uploadAttachmentToCloudkitWithMessageGUID") || !objc_msgSend_checkArgumentValidity_forExpectedNumberOfArguments_(self, v50, v6, 2))
        {
          v58 = objc_alloc(MEMORY[0x1E695DF20]);
          v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v59, @"Could not find method %@", v9);
          v18 = objc_msgSend_initWithObjectsAndKeys_(v58, v60, v14, @"error", 0);
          goto LABEL_10;
        }

        v14 = objc_opt_new();
        v21 = objc_msgSend_objectForKeyedSubscript_(v6, v51, @"arg1");
        v23 = objc_msgSend_objectForKeyedSubscript_(v6, v52, @"arg2");
        v55 = objc_msgSend_integerValue(v23, v53, v54);
        v28 = objc_msgSend_uploadAttachmentToCloudkitWithMessageGUID_andFilePathIndex_(v14, v56, v21, v55);
        goto LABEL_30;
      }

      v14 = objc_msgSend_objectForKeyedSubscript_(v6, v47, @"arg1");
      v21 = objc_msgSend_objectForKeyedSubscript_(v6, v48, @"arg2");
      v32 = objc_msgSend_startConversationFrom_andReceiveAt_(self, v49, v14, v21);
    }

    v13 = v32;
LABEL_31:

    goto LABEL_32;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF20]);
  v13 = objc_msgSend_initWithObjectsAndKeys_(v11, v12, @"No method name was passed in", @"error", 0);
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "No method name was passed in", buf, 2u);
    }

    goto LABEL_32;
  }

LABEL_33:

LABEL_34:

  return v13;
}

- (id)IMCoreAutomationPerformOperationWithDictionary:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1A8259BB0;
  v21 = sub_1A825AF04;
  v22 = 0;
  if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "IMCoreAutomationPerformOperationWithDictionary method call already on main queue", buf, 2u);
      }
    }

    v9 = objc_msgSend_callIMCoreMethodWithDictionary_(self, v7, v4);
    v10 = v18[5];
    v18[5] = v9;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A830EF44;
    block[3] = &unk_1E7810CE0;
    v15 = &v17;
    block[4] = self;
    v14 = v4;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)startConversationFrom:(id)a3 andReceiveAt:(id)a4
{
  v151 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = objc_msgSend_length(v5, v8, v9);
  if (!v6 || !v10)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v7, v11, @"Did not pass in a valid set of arguments", @"error");
    v35 = v7;
    goto LABEL_70;
  }

  v135 = v7;
  v136 = v6;
  v13 = objc_msgSend_sharedInstance(IMAccountController, v11, v12);
  v16 = objc_msgSend_iMessageService(IMServiceImpl, v14, v15);
  v18 = objc_msgSend_accountsForService_(v13, v17, v16);

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v19 = v18;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v145, v150, 16);
  if (!v21)
  {
    v25 = 0;
    v26 = 0;
    goto LABEL_17;
  }

  v24 = v21;
  v25 = 0;
  v26 = 0;
  v27 = *v146;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v146 != v27)
      {
        objc_enumerationMutation(v19);
      }

      v29 = *(*(&v145 + 1) + 8 * i);
      if (objc_msgSend_accountType(v29, v22, v23) == 2)
      {
        v32 = v26;
        v33 = v25;
        v26 = v29;
      }

      else
      {
        v32 = v25;
        v33 = v29;
        if (objc_msgSend_accountType(v29, v30, v31) != 1)
        {
          continue;
        }
      }

      v34 = v29;

      v25 = v33;
    }

    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v145, v150, 16);
  }

  while (v24);
LABEL_17:

  if (!(v25 | v26))
  {
    v7 = v135;
    objc_msgSend_setObject_forKeyedSubscript_(v135, v36, @"No usable iMessageAccounts found", @"error");
    v73 = v135;
    goto LABEL_69;
  }

  v37 = v25;
  v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v38, @"P:%@", v5);
  if (v25 || (v42 = v26) == 0)
  {
    if (!v37 || (v42 = v37, v26))
    {
      if (!v26 || (objc_msgSend_login(v26, v39, v40), v43 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v41, v44, v43), v43, v42 = v26, (isEqualToString & 1) == 0))
      {
        v42 = v37;
      }
    }
  }

  v133 = v41;
  v140 = v37;
  v134 = v42;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  obj = v136;
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v141, v149, 16);
  if (!v47)
  {
    v139 = &stru_1F1B76F98;
    v51 = 1;
    goto LABEL_48;
  }

  v50 = v47;
  v138 = *v142;
  v139 = &stru_1F1B76F98;
  LOBYTE(v51) = 1;
  while (2)
  {
    v52 = 0;
    while (2)
    {
      if (*v142 != v138)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(*(&v141 + 1) + 8 * v52);
      if (!objc_msgSend_length(v53, v48, v49))
      {
        v7 = v135;
        objc_msgSend_setObject_forKeyedSubscript_(v135, v54, @"Did not pass in valid alias", @"error");
        v74 = v135;

        goto LABEL_46;
      }

      v56 = objc_msgSend_vettedAliases(v140, v54, v55);
      v58 = objc_msgSend_containsObject_(v56, v57, v53);

      if (v58)
      {
        if ((v51 & 1) == 0)
        {
          v51 = 0;
          goto LABEL_41;
        }

LABEL_36:
        v63 = objc_msgSend_aliases(v140, v48, v49);
        v65 = objc_msgSend_containsObject_(v63, v64, v53);

        if (v65 & 1) != 0 || (objc_msgSend_addAlias_(v140, v48, v53), objc_msgSend_aliases(v140, v66, v67), v68 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend_containsObject_(v68, v69, v53), v68, v49 = @"Failed to add alias to alias array | ", v71 = v139, (v70))
        {
          v51 = 1;
          goto LABEL_41;
        }
      }

      else
      {
        if (objc_msgSend_validateAlias_(v140, v48, v53))
        {
          v60 = objc_msgSend_vettedAliases(v140, v48, v59);
          v62 = objc_msgSend_containsObject_(v60, v61, v53);

          if (v62)
          {
            goto LABEL_36;
          }
        }

        v49 = @"Failed to validate alias | ";
        v71 = v139;
      }

      v72 = objc_msgSend_stringByAppendingString_(v71, v48, v49);

      v51 = 0;
      v139 = v72;
LABEL_41:
      if (v50 != ++v52)
      {
        continue;
      }

      break;
    }

    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, &v141, v149, 16);
    if (v50)
    {
      continue;
    }

    break;
  }

LABEL_48:

  if (v134 == v140 && (objc_msgSend_aliases(v140, v78, v79), v80 = objc_claimAutoreleasedReturnValue(), v82 = objc_msgSend_containsObject_(v80, v81, v5), v80, (v82 & 1) == 0))
  {
    v7 = v135;
    objc_msgSend_setObject_forKeyedSubscript_(v135, v78, @"Cannot set apple id caller id if this alias is not in alias list", @"error");
    v115 = v135;
LABEL_46:
    v76 = v139;
    v75 = v140;
    v77 = v133;
  }

  else
  {
    v83 = objc_msgSend_vettedAliases(v134, v78, v79);
    v85 = objc_msgSend_containsObject_(v83, v84, v5);

    v7 = v135;
    if ((v85 & 1) == 0)
    {
      if (objc_msgSend_validateAlias_(v134, v86, v5) && (objc_msgSend_vettedAliases(v134, v86, v88), v89 = objc_claimAutoreleasedReturnValue(), v91 = objc_msgSend_containsObject_(v89, v90, v5), v89, (v91 & 1) != 0))
      {
        v51 = 1;
      }

      else
      {
        v92 = objc_msgSend_stringByAppendingString_(v139, v86, @"Failed to validate callerID | ");

        v51 = 0;
        v139 = v92;
      }
    }

    v93 = objc_msgSend_iMessageService(IMServiceImpl, v86, v87);
    v94 = IMPreferredAccountForService(v93);

    if (v94 == v134)
    {
      if (v51)
      {
        goto LABEL_59;
      }

      v76 = v139;
      v75 = v140;
      v77 = v133;
      objc_msgSend_setObject_forKeyedSubscript_(v135, v95, v139, @"error");
    }

    else
    {
      v97 = objc_msgSend_service(v134, v95, v96);
      v98 = IMSetPreferredAccountForService(v134, v97);

      if ((v98 & 1) == 0)
      {
        v76 = v139;
        v75 = v140;
        v77 = v133;
        objc_msgSend_stringByAppendingString_(v139, v95, @"Preferred account was not set to specified login account");
        goto LABEL_63;
      }

LABEL_59:
      v99 = objc_msgSend_displayName(v134, v95, v96);
      v101 = objc_msgSend_isEqualToString_(v99, v100, v5);

      if (v101)
      {
        v76 = v139;
        v75 = v140;
        v77 = v133;
        objc_msgSend_aliases(v140, v102, v103);
        goto LABEL_67;
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.ft.CallerID.changed", 0, 0, 1u);
      objc_msgSend_setDisplayName_(v134, v105, v5);
      v108 = objc_msgSend_displayName(v134, v106, v107);
      v110 = objc_msgSend_isEqualToString_(v108, v109, v5);

      v76 = v139;
      v75 = v140;
      v77 = v133;
      if ((v110 & 1) == 0)
      {
        objc_msgSend_stringByAppendingString_(v139, v111, @"Failed to change display name | ");
        v113 = LABEL_63:;

        v76 = v113;
        objc_msgSend_setObject_forKeyedSubscript_(v135, v114, v113, @"error");
      }
    }

    objc_msgSend_aliases(v75, v111, v112);
    v116 = LABEL_67:;
    objc_msgSend_setObject_forKeyedSubscript_(v135, v117, v116, @"receivingAliases");

    v120 = objc_msgSend_vettedAliases(v75, v118, v119);
    objc_msgSend_setObject_forKeyedSubscript_(v135, v121, v120, @"receivingVettedAliases");

    v124 = objc_msgSend_displayName(v134, v122, v123);
    objc_msgSend_setObject_forKeyedSubscript_(v135, v125, v124, @"sendingDisplayName");

    v128 = objc_msgSend_login(v134, v126, v127);
    objc_msgSend_setObject_forKeyedSubscript_(v135, v129, v128, @"sendingLogin");

    v130 = v135;
  }

LABEL_69:
  v6 = v136;
LABEL_70:

  v131 = *MEMORY[0x1E69E9840];

  return v7;
}

@end