@interface IMDDatabaseLegacyXPCBridge
- (id)_attachmentRecordsCopiedFromXPCArray:(id)a3;
- (id)_chatRecordsCopiedFromXPCArray:(id)a3;
- (id)_codableDictionaryCopiedFromXPCDictionary:(id)a3 objectClass:(Class)a4;
- (id)_codableObjectsCopiedFromXPCArray:(id)a3 objectClass:(Class)a4;
- (id)_handleRecordsCopiedFromXPCArray:(id)a3;
- (id)_messageRecordsCopiedFromXPCArray:(id)a3;
- (id)_xpcArrayWithAttachmentRecords:(id)a3;
- (id)_xpcArrayWithChatRecords:(id)a3;
- (id)_xpcArrayWithCodableObjects:(id)a3;
- (id)_xpcArrayWithHandleRecords:(id)a3;
- (id)_xpcArrayWithMessageRecords:(id)a3;
- (id)_xpcDictionaryWithCodableObjects:(id)a3;
@end

@implementation IMDDatabaseLegacyXPCBridge

- (id)_xpcArrayWithChatRecords:(id)a3
{
  v3 = a3;
  empty = xpc_array_create_empty();
  _IMDChatRecordCopyChatsToXPCArray(v3, empty, 0, 0, 1, 1);

  return empty;
}

- (id)_xpcArrayWithMessageRecords:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  empty = xpc_array_create_empty();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = xpc_dictionary_create_empty();
        _IMDMessageRecordBulkCopyXPCDictionary(v11, v12, 1, 0);
        xpc_array_append_value(empty, v12);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, &v16, v20, 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return empty;
}

- (id)_xpcArrayWithAttachmentRecords:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  empty = xpc_array_create_empty();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = xpc_dictionary_create_empty();
        _IMDAttachmentRecordBulkCopyXPCDictionary(v11, v12, 1);
        xpc_array_append_value(empty, v12);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, &v16, v20, 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return empty;
}

- (id)_xpcArrayWithHandleRecords:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  empty = xpc_array_create_empty();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = xpc_dictionary_create_empty();
        _IMDHandleRecordBulkCopyXPCDictionary(v11, v12, 1);
        xpc_array_append_value(empty, v12);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, &v16, v20, 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return empty;
}

- (id)_xpcArrayWithCodableObjects:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  empty = xpc_array_create_empty();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = xpc_dictionary_create_empty();
        IMInsertKeyedCodableObjectsToXPCDictionary();
        xpc_array_append_value(empty, v12);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, &v16, v20, 16, v11, 0);
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return empty;
}

- (id)_xpcDictionaryWithCodableObjects:(id)a3
{
  v3 = a3;
  empty = xpc_dictionary_create_empty();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B48368;
  v8[3] = &unk_1E7CB8C80;
  v5 = empty;
  v9 = v5;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v3, v6, v8);

  return v5;
}

- (id)_chatRecordsCopiedFromXPCArray:(id)a3
{
  if (a3)
  {
    v4 = _IMDChatRecordCopyChatsFromXPCArray(a3);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_handleRecordsCopiedFromXPCArray:(id)a3
{
  if (a3)
  {
    v4 = _IMDHandleRecordCopyHandlesFromXPCArray(a3);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_messageRecordsCopiedFromXPCArray:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = a3;
    v5 = [v3 alloc];
    count = xpc_array_get_count(v4);
    v8 = objc_msgSend_initWithCapacity_(v5, v7, count);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B48568;
    applier[3] = &unk_1E7CB8CA8;
    v15 = v8;
    v9 = v8;
    xpc_array_apply(v4, applier);

    v12 = objc_msgSend_copy(v9, v10, v11);
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)_codableObjectsCopiedFromXPCArray:(id)a3 objectClass:(Class)a4
{
  if (a3)
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = a3;
    v7 = [v5 alloc];
    count = xpc_array_get_count(v6);
    v10 = objc_msgSend_initWithCapacity_(v7, v9, count);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = sub_1B7B486A4;
    v19 = &unk_1E7CB8CD0;
    v20 = v10;
    v21 = a4;
    v11 = v10;
    xpc_array_apply(v6, &v16);

    v14 = objc_msgSend_copy(v11, v12, v13, v16, v17, v18, v19);
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)_codableDictionaryCopiedFromXPCDictionary:(id)a3 objectClass:(Class)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF90]);
    count = xpc_dictionary_get_count(v5);
    v9 = objc_msgSend_initWithCapacity_(v6, v8, count);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B48808;
    applier[3] = &unk_1E7CB8CF8;
    v16 = v9;
    v17 = v5;
    v18 = a4;
    v10 = v9;
    xpc_dictionary_apply(v17, applier);
    v13 = objc_msgSend_copy(v10, v11, v12);
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  return v13;
}

- (id)_attachmentRecordsCopiedFromXPCArray:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = a3;
    v5 = [v3 alloc];
    count = xpc_array_get_count(v4);
    v8 = objc_msgSend_initWithCapacity_(v5, v7, count);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B48974;
    applier[3] = &unk_1E7CB8CA8;
    v15 = v8;
    v9 = v8;
    xpc_array_apply(v4, applier);

    v12 = objc_msgSend_copy(v9, v10, v11);
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

@end