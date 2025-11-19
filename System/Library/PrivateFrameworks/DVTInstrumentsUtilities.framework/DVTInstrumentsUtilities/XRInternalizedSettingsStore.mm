@interface XRInternalizedSettingsStore
+ (void)initialize;
@end

@implementation XRInternalizedSettingsStore

+ (void)initialize
{
  v106 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v2 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v3 = objc_opt_new();
    v8 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v4, v5, v6, v7);
    v13 = objc_msgSend_environment(v8, v9, v10, v11, v12);

    v17 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"XrayInternalSettingsPath", v15, v16);
    if (v17)
    {
      v90 = v17;
      v91 = v13;
      v21 = objc_msgSend_componentsSeparatedByString_(v17, v18, @":", v19, v20);
      v26 = objc_msgSend_firstObject(v21, v22, v23, v24, v25);
      isEqual = objc_msgSend_isEqual_(v26, v27, @"-", v28, v29);

      if (isEqual)
      {
        objc_msgSend_removeAllObjects(v3, v31, v32, v33, v34);
        if (objc_msgSend_count(v21, v35, v36, v37, v38) < 2)
        {
          v46 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v43 = objc_msgSend_count(v21, v39, v40, v41, v42);
          v46 = objc_msgSend_subarrayWithRange_(v21, v44, 1, v43 - 1, v45);
        }

        v21 = v46;
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      obj = v21;
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v98, v105, 16);
      if (v48)
      {
        v53 = v48;
        v54 = *v99;
        v92 = *MEMORY[0x277CCA450];
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v99 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v56 = MEMORY[0x277CBEBC0];
            v57 = objc_msgSend_stringByStandardizingPath(*(*(&v98 + 1) + 8 * i), v49, v50, v51, v52);
            v60 = objc_msgSend_fileURLWithPath_isDirectory_(v56, v58, v57, 1, v59);

            if (v60)
            {
              objc_msgSend_addObject_(v3, v61, v60, v62, v63);
            }

            else
            {
              v64 = MEMORY[0x277CCA9B8];
              v103 = v92;
              v65 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v61, @"Failed to use internal settings override path: %@", v62, v63, 0);
              v104 = v65;
              v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v66, &v104, &v103, 1);
              v69 = objc_msgSend_errorWithDomain_code_userInfo_(v64, v68, @"Instruments Frameworks", 0, v67);

              v74 = objc_msgSend_defaultResponder(XRStandardIssueResponder, v70, v71, v72, v73);
              objc_msgSend_handleIssue_type_from_(v74, v75, v69, 0, 0);
            }
          }

          v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v98, v105, 16);
        }

        while (v53);
      }

      v17 = v90;
      v13 = v91;
    }

    v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v76, &v94, v102, 16);
    if (v77)
    {
      v78 = v77;
      v79 = *v95;
      do
      {
        for (j = 0; j != v78; ++j)
        {
          if (*v95 != v79)
          {
            objc_enumerationMutation(v3);
          }

          v81 = *(*(&v94 + 1) + 8 * j);
          sub_2480A26E8(v2, v81, @"ExternalSettings.plist");
          sub_2480A26E8(v2, v81, @"InternalSettings.plist");
          sub_2480A26E8(v2, v81, @"AppleInternal.plist");
        }

        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v82, &v94, v102, 16);
      }

      while (v78);
    }

    v87 = objc_msgSend_copy(v2, v83, v84, v85, v86);
    v88 = qword_27EE869F0;
    qword_27EE869F0 = v87;
  }

  v89 = *MEMORY[0x277D85DE8];
}

@end