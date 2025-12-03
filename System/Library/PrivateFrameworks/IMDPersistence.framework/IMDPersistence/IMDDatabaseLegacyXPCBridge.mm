@interface IMDDatabaseLegacyXPCBridge
- (id)_attachmentRecordsCopiedFromXPCArray:(id)array;
- (id)_chatRecordsCopiedFromXPCArray:(id)array;
- (id)_codableDictionaryCopiedFromXPCDictionary:(id)dictionary objectClass:(Class)class;
- (id)_codableObjectsCopiedFromXPCArray:(id)array objectClass:(Class)class;
- (id)_handleRecordsCopiedFromXPCArray:(id)array;
- (id)_messageRecordsCopiedFromXPCArray:(id)array;
- (id)_xpcArrayWithAttachmentRecords:(id)records;
- (id)_xpcArrayWithChatRecords:(id)records;
- (id)_xpcArrayWithCodableObjects:(id)objects;
- (id)_xpcArrayWithHandleRecords:(id)records;
- (id)_xpcArrayWithMessageRecords:(id)records;
- (id)_xpcDictionaryWithCodableObjects:(id)objects;
@end

@implementation IMDDatabaseLegacyXPCBridge

- (id)_xpcArrayWithChatRecords:(id)records
{
  recordsCopy = records;
  empty = xpc_array_create_empty();
  _IMDChatRecordCopyChatsToXPCArray(recordsCopy, empty, 0, 0, 1, 1);

  return empty;
}

- (id)_xpcArrayWithMessageRecords:(id)records
{
  v21 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  empty = xpc_array_create_empty();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = recordsCopy;
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

- (id)_xpcArrayWithAttachmentRecords:(id)records
{
  v21 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  empty = xpc_array_create_empty();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = recordsCopy;
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

- (id)_xpcArrayWithHandleRecords:(id)records
{
  v21 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  empty = xpc_array_create_empty();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = recordsCopy;
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

- (id)_xpcArrayWithCodableObjects:(id)objects
{
  v21 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  empty = xpc_array_create_empty();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objectsCopy;
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

- (id)_xpcDictionaryWithCodableObjects:(id)objects
{
  objectsCopy = objects;
  empty = xpc_dictionary_create_empty();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B48368;
  v8[3] = &unk_1E7CB8C80;
  v5 = empty;
  v9 = v5;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(objectsCopy, v6, v8);

  return v5;
}

- (id)_chatRecordsCopiedFromXPCArray:(id)array
{
  if (array)
  {
    v4 = _IMDChatRecordCopyChatsFromXPCArray(array);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_handleRecordsCopiedFromXPCArray:(id)array
{
  if (array)
  {
    v4 = _IMDHandleRecordCopyHandlesFromXPCArray(array);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_messageRecordsCopiedFromXPCArray:(id)array
{
  if (array)
  {
    v3 = MEMORY[0x1E695DF70];
    arrayCopy = array;
    v5 = [v3 alloc];
    count = xpc_array_get_count(arrayCopy);
    v8 = objc_msgSend_initWithCapacity_(v5, v7, count);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B48568;
    applier[3] = &unk_1E7CB8CA8;
    v15 = v8;
    v9 = v8;
    xpc_array_apply(arrayCopy, applier);

    v12 = objc_msgSend_copy(v9, v10, v11);
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)_codableObjectsCopiedFromXPCArray:(id)array objectClass:(Class)class
{
  if (array)
  {
    v5 = MEMORY[0x1E695DF70];
    arrayCopy = array;
    v7 = [v5 alloc];
    count = xpc_array_get_count(arrayCopy);
    v10 = objc_msgSend_initWithCapacity_(v7, v9, count);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = sub_1B7B486A4;
    v19 = &unk_1E7CB8CD0;
    v20 = v10;
    classCopy = class;
    v11 = v10;
    xpc_array_apply(arrayCopy, &v16);

    v14 = objc_msgSend_copy(v11, v12, v13, v16, v17, v18, v19);
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)_codableDictionaryCopiedFromXPCDictionary:(id)dictionary objectClass:(Class)class
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF90]);
    count = xpc_dictionary_get_count(dictionaryCopy);
    v9 = objc_msgSend_initWithCapacity_(v6, v8, count);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B48808;
    applier[3] = &unk_1E7CB8CF8;
    v16 = v9;
    v17 = dictionaryCopy;
    classCopy = class;
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

- (id)_attachmentRecordsCopiedFromXPCArray:(id)array
{
  if (array)
  {
    v3 = MEMORY[0x1E695DF70];
    arrayCopy = array;
    v5 = [v3 alloc];
    count = xpc_array_get_count(arrayCopy);
    v8 = objc_msgSend_initWithCapacity_(v5, v7, count);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B48974;
    applier[3] = &unk_1E7CB8CA8;
    v15 = v8;
    v9 = v8;
    xpc_array_apply(arrayCopy, applier);

    v12 = objc_msgSend_copy(v9, v10, v11);
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

@end