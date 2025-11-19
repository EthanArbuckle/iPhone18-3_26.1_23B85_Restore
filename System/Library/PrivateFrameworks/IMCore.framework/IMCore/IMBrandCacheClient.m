@interface IMBrandCacheClient
- (id)brandLogoDataWithIdentifier:(id)a3;
- (id)brandLogoURLWithIdentifier:(id)a3;
- (id)brandWithIdentifier:(id)a3;
@end

@implementation IMBrandCacheClient

- (id)brandWithIdentifier:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_sharedRegistry(IMChatRegistry, v4, v5);
  v8 = objc_msgSend_cachedChatsWithIdentifier_(v6, v7, v3);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = objc_msgSend_brandInfo(*(*(&v21 + 1) + 8 * i), v12, v13, v21);
        if (v17)
        {
          v18 = v17;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v21, v25, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_11:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)brandLogoURLWithIdentifier:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_sharedRegistry(IMChatRegistry, v4, v5);
  v8 = objc_msgSend_cachedChatsWithIdentifier_(v6, v7, v3);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = objc_msgSend_brandLogoURL(*(*(&v21 + 1) + 8 * i), v12, v13, v21);
        if (v17)
        {
          v18 = v17;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v21, v25, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_11:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)brandLogoDataWithIdentifier:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_sharedRegistry(IMChatRegistry, v4, v5);
  v8 = objc_msgSend_brandLogoDataFromChatIdentifier_(v6, v7, v3);

  return v8;
}

@end