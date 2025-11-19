@interface IMDIndexingUtilities
+ (BOOL)canDonateItemDictionary:(id)a3;
+ (BOOL)isItemGroupPhoto:(id)a3;
@end

@implementation IMDIndexingUtilities

+ (BOOL)isItemGroupPhoto:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"attachments");
  if (objc_msgSend_count(v3, v4, v5) == 1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v3;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
    if (v8)
    {
      v10 = v8;
      v11 = *v21;
      v12 = *MEMORY[0x1E69A7018];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v14 = objc_msgSend_objectForKeyedSubscript_(*(*(&v20 + 1) + 8 * i), v9, @"name", v20);
          isEqualToString = objc_msgSend_isEqualToString_(v14, v15, v12);

          if (isEqualToString)
          {
            v17 = 1;
            goto LABEL_13;
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v20, v24, 16);
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_13:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)canDonateItemDictionary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v5 = objc_msgSend_objectForKey_(v3, v4, @"associatedMessageType");
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_integerValue(v5, v6, v7);
    v10 = 1;
    if (v9)
    {
      v11 = v9;
      if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0x7D0)
      {
        v12 = IMLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v14 = objc_msgSend_objectForKey_(v3, v13, @"guid");
          v17 = 136315650;
          v18 = "+[IMDIndexingUtilities canDonateItemDictionary:]";
          v19 = 2112;
          v20 = v14;
          v21 = 2048;
          v22 = v11;
          _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "%s GUID %@ is of type %ld, not indexing", &v17, 0x20u);
        }

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

@end