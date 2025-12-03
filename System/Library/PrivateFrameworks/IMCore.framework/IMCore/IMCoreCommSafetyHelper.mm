@interface IMCoreCommSafetyHelper
+ (id)sharedInstance;
- (id)_urlFromAddressList:(id)list;
- (void)addressesForParents:(id)parents completion:(id)completion;
- (void)getOpenChatURLWith:(id)with;
@end

@implementation IMCoreCommSafetyHelper

+ (id)sharedInstance
{
  if (qword_1ED767738 != -1)
  {
    sub_1A84E2018();
  }

  v3 = qword_1EB2E9FB8;

  return v3;
}

- (void)getOpenChatURLWith:(id)with
{
  withCopy = with;
  v7 = objc_msgSend_sharedManager(MEMORY[0x1E69A7FC8], v5, v6);
  IsYoungAgeGroup = objc_msgSend_childIsYoungAgeGroup(v7, v8, v9);
  v11 = IMLogHandleForCategory();
  v12 = v11;
  if (IsYoungAgeGroup)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E202C(v7, v12, v13);
    }

    v16 = objc_msgSend_parents(v7, v14, v15);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1A8365AE0;
    v24[3] = &unk_1E7812890;
    v17 = &v25;
    v24[4] = self;
    v25 = withCopy;
    v18 = withCopy;
    objc_msgSend_addressesForParents_completion_(self, v19, v16, v24);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Opening URL for older child account", buf, 2u);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A8365BF8;
    v21[3] = &unk_1E7810230;
    v17 = &v22;
    v21[4] = self;
    v22 = withCopy;
    v20 = withCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v21);
  }
}

- (void)addressesForParents:(id)parents completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  parentsCopy = parents;
  completionCopy = completion;
  v6 = dispatch_group_create();
  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = parentsCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v43, v47, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v43 + 1) + 8 * i);
        v18 = objc_msgSend_contact(v17, v12, v13, completionCopy);

        if (v18)
        {
          dispatch_group_enter(v6);
          v21 = MEMORY[0x1E695DFD8];
          v24 = objc_msgSend_contact(v17, v22, v23);
          v26 = objc_msgSend_setWithObject_(v21, v25, v24);
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = sub_1A8365F28;
          v40[3] = &unk_1E78136D8;
          v40[4] = v17;
          v41 = v9;
          v42 = v6;
          objc_msgSend_bestHandlesForContacts_completion_(IMHandle, v27, v26, v40);
        }

        else
        {
          v28 = objc_msgSend_appleID(v17, v19, v20);
          objc_msgSend_addObject_(v9, v29, v28);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v43, v47, 16);
    }

    while (v14);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8366138;
  block[3] = &unk_1E7810190;
  v37 = v9;
  v38 = obj;
  v39 = completionCopy;
  v30 = completionCopy;
  v31 = obj;
  v32 = v9;
  dispatch_group_notify(v6, MEMORY[0x1E69E96A0], block);

  v33 = *MEMORY[0x1E69E9840];
}

- (id)_urlFromAddressList:(id)list
{
  listCopy = list;
  v5 = objc_msgSend_componentsWithString_(MEMORY[0x1E696AF20], v4, @"messages://open");
  v6 = objc_opt_new();
  v7 = IMSharedUtilitiesFrameworkBundle();
  v9 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"MESSAGE_GROWNUP_BODY", &stru_1F1B76F98, @"CommSafetyLocalizable");

  v11 = objc_msgSend_queryItemWithName_value_(MEMORY[0x1E696AF60], v10, @"body", v9);
  objc_msgSend_addObject_(v6, v12, v11);

  if (listCopy && objc_msgSend_count(listCopy, v13, v14))
  {
    v15 = objc_msgSend_componentsJoinedByString_(listCopy, v13, @",");
    v17 = objc_msgSend_queryItemWithName_value_(MEMORY[0x1E696AF60], v16, @"recipients", v15);
    objc_msgSend_addObject_(v6, v18, v17);
  }

  objc_msgSend_setQueryItems_(v5, v13, v6);
  v21 = objc_msgSend_URL(v5, v19, v20);

  return v21;
}

@end