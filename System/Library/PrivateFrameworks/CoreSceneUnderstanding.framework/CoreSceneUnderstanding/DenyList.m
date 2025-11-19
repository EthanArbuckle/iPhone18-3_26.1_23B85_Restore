@interface DenyList
- (BOOL)checkIfCaptionInDenylist:(id)a3;
@end

@implementation DenyList

- (BOOL)checkIfCaptionInDenylist:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = objc_msgSend_denyListRules(self, v5, v6, v7, v8);
  v14 = objc_msgSend_count(v9, v10, v11, v12, v13);

  if (v14)
  {
    v19 = objc_msgSend_length(v4, v15, v16, v17, v18);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = objc_msgSend_denyListRules(self, v20, v21, v22, v23, 0);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v32, v36, 16);
    if (v27)
    {
      v28 = *v33;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(v24);
          }

          if (objc_msgSend_rangeOfFirstMatchInString_options_range_(*(*(&v32 + 1) + 8 * i), v26, v4, 0, 0, v19) != 0x7FFFFFFFFFFFFFFFLL)
          {
            LOBYTE(v14) = 1;
            goto LABEL_12;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v32, v36, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v14) = 0;
LABEL_12:
  }

  v30 = *MEMORY[0x1E69E9840];
  return v14;
}

@end