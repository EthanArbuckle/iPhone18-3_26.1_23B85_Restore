@interface MMCSUtilities
+ (id)failReasonStringForMMCSError:(id)a3;
+ (id)parseMMCSError:(id)a3;
@end

@implementation MMCSUtilities

+ (id)parseMMCSError:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_initWithCapacity_(v4, v5, 8, v6, v7);
  if (a3)
  {
    v9 = MMCSFlattenError();
  }

  else
  {
    v9 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = v9;
      v28 = 2112;
      v29 = a3;
      _os_log_impl(&dword_20E3AF000, v14, OS_LOG_TYPE_INFO, "Flattened MMCS Array from MMCS %@ using error %@", &v26, 0x16u);
    }
  }

  if (objc_msgSend_count(v9, v10, v11, v12, v13))
  {
    for (i = 0; objc_msgSend_count(v9, v15, v16, v17, v18) > i; ++i)
    {
      if (i)
      {
        if (v8)
        {
LABEL_13:
          if (objc_msgSend_objectAtIndexedSubscript_(v9, v15, i, v17, v18))
          {
            v20 = objc_msgSend_objectAtIndexedSubscript_(v9, v15, i, v17, v18);
            CFArrayAppendValue(v8, v20);
          }
        }
      }

      else if (v8)
      {
        goto LABEL_13;
      }
    }
  }

  v21 = objc_msgSend_count(v8, v15, v16, v17, v18);
  if (v21 <= 7)
  {
    do
    {
      if (v8)
      {
        if (v21)
        {
          v22 = &unk_28253EE78;
        }

        else
        {
          v22 = @"NoError";
        }

        CFArrayAppendValue(v8, v22);
      }

      ++v21;
    }

    while (v21 != 8);
  }

  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = v8;
        _os_log_impl(&dword_20E3AF000, v23, OS_LOG_TYPE_INFO, "Resulting error array %@", &v26, 0xCu);
      }
    }
  }

  result = v8;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)failReasonStringForMMCSError:(id)a3
{
  if (!a3)
  {
    return &stru_28253E3E8;
  }

  v5 = objc_msgSend_parseMMCSError_(MMCSUtilities, a2, a3, v3, v4);
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (objc_msgSend_count(v5, v7, v8, v9, v10) >= 2)
  {
    for (i = 1; objc_msgSend_count(v5, v41, v42, v43, v44) > i; i += 2)
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(v5, v11, i, v13, v14);
      v21 = objc_msgSend_intValue(v16, v17, v18, v19, v20);
      v25 = objc_msgSend_objectAtIndexedSubscript_(v5, v22, i - 1, v23, v24);
      v27 = v25;
      if (!v21 && (objc_msgSend_isEqualToString_(v25, v11, @"NoError", v26, v14) & 1) != 0)
      {
        break;
      }

      v28 = objc_msgSend_newMMMCErrorInfoForDomain_code_(MMCSUtilities, v11, v27, v21, v14);
      v33 = objc_msgSend_length(v28, v29, v30, v31, v32);
      if ((v33 + objc_msgSend_length(v6, v34, v35, v36, v37) - 1) >= 0x81)
      {

        break;
      }

      objc_msgSend_appendString_(v6, v38, v28, v39, v40);
    }
  }

  v46 = objc_msgSend_length(v6, v11, v12, v13, v14);
  v49 = objc_msgSend_substringWithRange_(v6, v47, 0, v46 - 1, v48);

  return v49;
}

@end