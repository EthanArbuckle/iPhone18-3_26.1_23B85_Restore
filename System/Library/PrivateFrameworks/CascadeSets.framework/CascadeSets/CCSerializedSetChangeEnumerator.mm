@interface CCSerializedSetChangeEnumerator
- (BOOL)beginWithBookmark:(id)a3 error:(id *)a4;
- (BOOL)isBookmarkUpToDate:(id)a3;
- (CCSerializedSetChangeEnumerator)initWithSetMessage:(id)a3;
- (id)_nextWithError:(id *)a3;
- (id)itemInstanceCount:(id *)a3;
- (id)next;
- (id)sharedItemCount:(id *)a3;
- (void)next;
@end

@implementation CCSerializedSetChangeEnumerator

- (CCSerializedSetChangeEnumerator)initWithSetMessage:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32.receiver = self;
  v32.super_class = CCSerializedSetChangeEnumerator;
  v6 = [(CCSerializedSetChangeEnumerator *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_setMessage, a3);
    v8 = [(CCSerializedSetMessage *)v7->_setMessage items];
    items = v7->_items;
    v7->_items = v8;

    v10 = [(CCSerializedSetMessage *)v7->_setMessage localDevice];
    v11 = v10;
    if (v10)
    {
      v12 = _decodeDevice(v10);
      localDevice = v7->_localDevice;
      v7->_localDevice = v12;

      if (!v7->_localDevice)
      {
LABEL_17:

        v25 = 0;
        goto LABEL_18;
      }
    }

    v14 = [(CCSerializedSetMessage *)v7->_setMessage remoteDevices];
    if ([v14 count])
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        while (2)
        {
          v20 = 0;
          do
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = _decodeDevice(*(*(&v28 + 1) + 8 * v20));
            if (!v21)
            {

              goto LABEL_17;
            }

            v22 = v21;
            [v15 addObject:{v21, v28}];

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v23 = [v15 copy];
      remoteDevices = v7->_remoteDevices;
      v7->_remoteDevices = v23;
    }
  }

  v25 = v7;
LABEL_18:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)beginWithBookmark:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = *MEMORY[0x1E696A578];
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v9 stringWithFormat:@"The provided bookmark was of class %@, but we expected %@", v11, v13];
      v20[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v16 = [v8 initWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v15];
      CCSetError(a4, v16);

      v7 = 0;
      goto LABEL_7;
    }

    self->_index = [v6 unsignedIntegerValue];
  }

  else
  {
    self->_index = 0;
  }

  v7 = 1;
LABEL_7:

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_nextWithError:(id *)a3
{
  if ([(CCSerializedSetChangeEnumerator *)self hasNext])
  {
    items = self->_items;
    ++self->_index;
    v6 = [(NSArray *)items objectAtIndexedSubscript:?];
    v7 = [v6 itemType];
    v8 = [v6 content];
    v9 = [CCItemMessage contentMessageForItemType:v7 data:v8 error:a3];

    if (v9)
    {
      v10 = [CCSharedItem alloc];
      v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "sharedIdentifier")}];
      v24 = [(CCSharedItem *)v10 initWithSharedIdentifier:v11 content:v9];

      v12 = [v6 localMetaContent];
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = __Block_byref_object_copy__0;
      v47 = __Block_byref_object_dispose__0;
      v23 = [v12 count];
      v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v23];
      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x2020000000;
      v42[3] = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = __Block_byref_object_copy__0;
      v40 = __Block_byref_object_dispose__0;
      v41 = 0;
      v13 = [v6 localInstanceIdentifiers];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __50__CCSerializedSetChangeEnumerator__nextWithError___block_invoke;
      v28[3] = &unk_1E7C8AE88;
      v32 = &v43;
      v35 = v7;
      v14 = v12;
      v29 = v14;
      v33 = v42;
      v34 = &v36;
      v15 = v24;
      v30 = v15;
      v31 = v9;
      [v13 enumerateInt64ValuesWithBlock:v28];

      if (v44[5])
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v17 = v16;
        if (v23)
        {
          [v16 addObject:self->_localDevice];
        }

        v18 = [v6 remoteDeviceIndices];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __50__CCSerializedSetChangeEnumerator__nextWithError___block_invoke_2;
        v25[3] = &unk_1E7C8AEB0;
        v19 = v17;
        v26 = v19;
        v27 = self;
        [v18 enumerateUInt32ValuesWithBlock:v25];

        v20 = [CCSetChange alloc];
        v21 = [CCSetChange initWithSharedItem:v20 sharedItemChangeType:"initWithSharedItem:sharedItemChangeType:allDevices:addedDevices:removedDevices:allLocalInstances:addedLocalInstances:removedLocalInstances:" allDevices:v15 addedDevices:0 removedDevices:v19 allLocalInstances:v19 addedLocalInstances:v44[5] removedLocalInstances:MEMORY[0x1E695E0F0]];
      }

      else
      {
        CCSetError(a3, v37[5]);
        v21 = 0;
      }

      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(v42, 8);
      _Block_object_dispose(&v43, 8);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __50__CCSerializedSetChangeEnumerator__nextWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v4 = *(a1 + 80);
    v5 = *(a1 + 32);
    ++*(*(*(a1 + 64) + 8) + 24);
    v6 = [v5 objectAtIndex:?];
    v7 = *(*(a1 + 72) + 8);
    obj = *(v7 + 40);
    v8 = [CCItemMessage metaContentMessageForItemType:v4 data:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);

    if (v8)
    {
      v9 = [CCItemInstance alloc];
      v10 = [*(a1 + 40) sharedIdentifier];
      v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
      v12 = [(CCItemInstance *)v9 initWithSharedIdentifier:v10 instanceIdentifier:v11 content:*(a1 + 48) metaContent:v8];

      [*(*(*(a1 + 56) + 8) + 40) addObject:v12];
    }

    else
    {
      v13 = *(*(a1 + 56) + 8);
      v12 = *(v13 + 40);
      *(v13 + 40) = 0;
    }
  }
}

void __50__CCSerializedSetChangeEnumerator__nextWithError___block_invoke_2(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 32) objectAtIndex:a2];
  [v2 addObject:v3];
}

- (id)next
{
  v6 = 0;
  v2 = [(CCSerializedSetChangeEnumerator *)self _nextWithError:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [CCSerializedSetChangeEnumerator next];
    }
  }

  return v2;
}

- (id)sharedItemCount:(id *)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(CCSerializedSetMessage *)self->_setMessage sharedItemCount];

  return [v3 numberWithUnsignedInt:v4];
}

- (id)itemInstanceCount:(id *)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(CCSerializedSetMessage *)self->_setMessage localItemInstanceCount];

  return [v3 numberWithUnsignedInt:v4];
}

- (BOOL)isBookmarkUpToDate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 unsignedIntegerValue];
    v6 = v5 == [(NSArray *)self->_items count];
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CCSerializedSetChangeEnumerator isBookmarkUpToDate:];
    }

    v6 = 0;
  }

  return v6;
}

- (void)next
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1B6DB2000, v0, OS_LOG_TYPE_ERROR, "Error enumerating serialized set change: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)isBookmarkUpToDate:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B6DB2000, v2, v3, "Unexpected bookmark class: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end