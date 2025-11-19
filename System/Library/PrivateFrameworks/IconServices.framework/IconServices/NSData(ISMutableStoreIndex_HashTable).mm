@interface NSData(ISMutableStoreIndex_HashTable)
+ (id)_ISMutableStoreIndex_mappedDataWithCapacity:()ISMutableStoreIndex_HashTable additionalSize:;
- (uint64_t)_ISMutableStoreIndex_addValue:()ISMutableStoreIndex_HashTable size:forUUID:;
- (uint64_t)_ISStoreIndex_addNodeWithSize:()ISMutableStoreIndex_HashTable;
@end

@implementation NSData(ISMutableStoreIndex_HashTable)

+ (id)_ISMutableStoreIndex_mappedDataWithCapacity:()ISMutableStoreIndex_HashTable additionalSize:
{
  v4 = a3;
  v5 = (a4 + 40 * a3 + *MEMORY[0x1E69E9AC8] + 19) & -*MEMORY[0x1E69E9AC8];
  v6 = mmap(0, v5, 3, 4097, 0, 0);
  v7 = 0;
  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v5)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEF0]);
    v7 = [v10 initWithBytesNoCopy:v8 length:v5 deallocator:*MEMORY[0x1E696A268]];
  }

  v11 = [v7 _ISStoreIndex_hashTableHeader];
  if (v11)
  {
    *v11 = 11;
    *(v11 + 4) = 1;
    *(v11 + 12) = v4;
  }

  return v7;
}

- (uint64_t)_ISStoreIndex_addNodeWithSize:()ISMutableStoreIndex_HashTable
{
  result = [a1 _ISStoreIndex_hashTableHeader];
  if (result)
  {
    v6 = a3 + 36;
    v7 = *(result + 16);
    *(result + 16) = v7 + a3 + 36;
    v8 = [a1 length];
    v9 = [a1 bytes];
    v10 = [a1 _ISStoreIndex_nodesOffset];
    v11 = (v10 + v7 + v9);
    if (v10 + v7 + v6 < v8 && v11 != 0)
    {
      *v11 = v7 | (v6 << 32);
    }

    return v7 | (v6 << 32);
  }

  return result;
}

- (uint64_t)_ISMutableStoreIndex_addValue:()ISMutableStoreIndex_HashTable size:forUUID:
{
  result = [a1 _ISStoreIndex_hashTableHeader];
  if (result)
  {
    v10 = result;
    v11 = [a1 _ISStoreIndex_addNodeWithSize:a4];
    result = [a1 _ISStoreIndex_nodeForRef:v11];
    if (result)
    {
      v12 = result;
      *result = v11;
      uuid_copy((result + 8), a5);
      *(v12 + 32) = 0;
      *(v12 + 24) = 0;
      memcpy((v12 + 36), a3, a4);
      v13 = *a5;
      v14 = *(a5 + 1);
      v15 = [a1 _ISStoreIndex_nodeRefForKey:v14 ^ *a5];
      if (v15)
      {
        v16 = v15;
        result = [a1 _ISStoreIndex_nodeForRef:v15];
        if (!result)
        {
          return result;
        }

        v17 = v16;
        while (1)
        {
          v18 = *(result + 24);
          if (!v18)
          {
            v19 = (result + 24);
            goto LABEL_17;
          }

          if (v17 >= v18)
          {
            break;
          }

          result = [a1 _ISStoreIndex_nodeForRef:v18];
          HIDWORD(v16) = HIDWORD(v18);
          v17 = v18;
          if (!result)
          {
            return result;
          }
        }

        v19 = (result + 24);
        if (v18)
        {
          v20 = _ISDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            [NSData(ISMutableStoreIndex_HashTable) _ISMutableStoreIndex_addValue:v17 size:SHIDWORD(v16) forUUID:v20];
          }
        }

LABEL_17:
        *v19 = v11;
      }

      else if (([a1 _ISStoreIndex_setNodeRef:v11 forKey:v14 ^ v13] & 1) == 0)
      {
        return 0;
      }

      result = 1;
      *(v12 + 32) = 1;
      ++*(v10 + 8);
    }
  }

  return result;
}

- (void)_ISMutableStoreIndex_addValue:()ISMutableStoreIndex_HashTable size:forUUID:.cold.1(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_fault_impl(&dword_1A77B8000, log, OS_LOG_TYPE_FAULT, "Cyclic node detected: (offset: %u, size: %u) ", v4, 0xEu);
  v3 = *MEMORY[0x1E69E9840];
}

@end