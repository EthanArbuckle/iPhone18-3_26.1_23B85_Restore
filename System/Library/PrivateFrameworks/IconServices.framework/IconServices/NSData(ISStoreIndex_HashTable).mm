@interface NSData(ISStoreIndex_HashTable)
- (uint64_t)_ISStoreIndex_checkNodeBounds:()ISStoreIndex_HashTable;
- (uint64_t)_ISStoreIndex_enumerateValuesForUUID:()ISStoreIndex_HashTable bock:;
- (uint64_t)_ISStoreIndex_hashTable;
- (uint64_t)_ISStoreIndex_hashTableHeader;
- (uint64_t)_ISStoreIndex_isValid;
- (uint64_t)_ISStoreIndex_nodeForRef:()ISStoreIndex_HashTable;
- (uint64_t)_ISStoreIndex_nodeRefForKey:()ISStoreIndex_HashTable;
- (uint64_t)_ISStoreIndex_nodesOffset;
- (void)_ISStoreIndex_enumerateValuesWithBock:()ISStoreIndex_HashTable;
@end

@implementation NSData(ISStoreIndex_HashTable)

- (uint64_t)_ISStoreIndex_hashTable
{
  [a1 length];
  v2 = [a1 bytes];
  v3 = [a1 _ISStoreIndex_hashTableHeader];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v2 + 20;
  }
}

- (uint64_t)_ISStoreIndex_hashTableHeader
{
  if ([a1 length] < 0x15)
  {
    return 0;
  }

  v2 = a1;

  return [v2 bytes];
}

- (uint64_t)_ISStoreIndex_nodesOffset
{
  v2 = [a1 bytes];
  result = [a1 _ISStoreIndex_hashTableHeader];
  if (result)
  {
    v4 = *(result + 12);
    if (v4)
    {
      v5 = v2 == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = 8 * v4 + 20;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

- (uint64_t)_ISStoreIndex_isValid
{
  result = [a1 _ISStoreIndex_hashTableHeader];
  if (result)
  {
    return *(result + 4) == 1 && *result == 11;
  }

  return result;
}

- (uint64_t)_ISStoreIndex_nodeForRef:()ISStoreIndex_HashTable
{
  if (!a3)
  {
    return 0;
  }

  v5 = [a1 length];
  v6 = [a1 bytes];
  v7 = [a1 _ISStoreIndex_nodesOffset] + a3;
  v8 = (v7 + v6);
  if (v7 + HIDWORD(a3) >= v5 || v8 == 0)
  {
    return 0;
  }

  if (*v8 != a3)
  {
    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(NSData(ISStoreIndex_HashTable) *)v8 _ISStoreIndex_nodeForRef:a3];
    }

    return 0;
  }

  return v8;
}

- (uint64_t)_ISStoreIndex_nodeRefForKey:()ISStoreIndex_HashTable
{
  v5 = [a1 _ISStoreIndex_hashTable];
  result = [a1 _ISStoreIndex_hashTableHeader];
  if (result)
  {
    v7 = result;
    result = 0;
    if (v5)
    {
      v8 = *(v7 + 12);
      if (v8)
      {
        return *(v5 + 8 * (a3 % v8));
      }
    }
  }

  return result;
}

- (uint64_t)_ISStoreIndex_checkNodeBounds:()ISStoreIndex_HashTable
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [NSData(ISStoreIndex_HashTable) _ISStoreIndex_checkNodeBounds:v5];
    }

    goto LABEL_17;
  }

  if ([a1 bytes] > a3)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [NSData(ISStoreIndex_HashTable) _ISStoreIndex_checkNodeBounds:a1];
    }

LABEL_17:

    result = 0;
    goto LABEL_18;
  }

  v6 = [a1 bytes];
  if ([a1 length] + v6 <= a3)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [NSData(ISStoreIndex_HashTable) _ISStoreIndex_checkNodeBounds:];
    }

    goto LABEL_17;
  }

  v7 = [a1 bytes];
  if (a3 + 36 >= [a1 length] + v7)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [NSData(ISStoreIndex_HashTable) _ISStoreIndex_checkNodeBounds:];
    }

    goto LABEL_17;
  }

  v8 = *(a3 + 4) + a3;
  v9 = [a1 bytes];
  if (v8 >= [a1 length] + v9)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v12 = [a1 bytes];
      v13 = [a1 length];
      v14 = *(a3 + 4);
      v15 = 134218496;
      v16 = a3;
      v17 = 2048;
      v18 = v12 + v13;
      v19 = 1024;
      v20 = v14;
      _os_log_fault_impl(&dword_1A77B8000, v5, OS_LOG_TYPE_FAULT, "Node exceeds expected bounds, %p vs %p node expected size=%d", &v15, 0x1Cu);
    }

    goto LABEL_17;
  }

  result = 1;
LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_ISStoreIndex_enumerateValuesWithBock:()ISStoreIndex_HashTable
{
  v4 = a3;
  v5 = [a1 _ISStoreIndex_hashTableHeader];
  v6 = [a1 bytes];
  v7 = [a1 _ISStoreIndex_nodesOffset];
  if (v5)
  {
    v8 = *(v5 + 8);
    v12 = 0;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = v7 + v6;
      while (1)
      {
        v10 = objc_autoreleasePoolPush();
        if (([a1 _ISStoreIndex_checkNodeBounds:v9] & 1) == 0)
        {
          break;
        }

        if (*(v9 + 32) == 1)
        {
          v4[2](v4, v9, &v12);
        }

        if ((v12 & 1) == 0)
        {
          v9 += *(v9 + 4);
        }

        objc_autoreleasePoolPop(v10);
        v11 = __OFSUB__(v8--, 1);
        if (v8 < 0 != v11 || v12)
        {
          goto LABEL_13;
        }
      }

      objc_autoreleasePoolPop(v10);
    }
  }

LABEL_13:
}

- (uint64_t)_ISStoreIndex_enumerateValuesForUUID:()ISStoreIndex_HashTable bock:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v16 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1 _ISStoreIndex_nodeRefForKey:*(a3 + 8) ^ *a3];
  v9 = [a1 _ISStoreIndex_nodeForRef:v8];
  if (v9)
  {
    v10 = v9;
    v11 = HIDWORD(v8);
    while ([a1 _ISStoreIndex_checkNodeBounds:v10])
    {
      if (*(v10 + 32) == 1 && !uuid_compare((v10 + 8), a3))
      {
        v6[2](v6, v10, &v16);
      }

      if ((v16 & 1) == 0)
      {
        v12 = *(v10 + 24);
        if (v12 <= v8)
        {
          if (v12)
          {
            v13 = _ISDefaultLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109376;
              v18 = v8;
              v19 = 1024;
              v20 = v11;
              _os_log_fault_impl(&dword_1A77B8000, v13, OS_LOG_TYPE_FAULT, "Cyclic node detected: (offset: %u, size: %u) ", buf, 0xEu);
            }
          }

          break;
        }

        v11 = *(v10 + 28);
        v10 = [a1 _ISStoreIndex_nodeForRef:v12 | (v11 << 32)];
        LODWORD(v8) = v12;
      }

      if (!v10 || v16)
      {
        break;
      }
    }
  }

  objc_autoreleasePoolPop(v7);

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)_ISStoreIndex_nodeForRef:()ISStoreIndex_HashTable .cold.1(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v5 = 134218240;
  v6 = a2;
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(&dword_1A77B8000, v3, OS_LOG_TYPE_DEBUG, "StoreIndex node ref missmatch ref: %llx node: %llx.", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_ISStoreIndex_checkNodeBounds:()ISStoreIndex_HashTable .cold.1()
{
  OUTLINED_FUNCTION_1();
  v8 = *MEMORY[0x1E69E9840];
  [v1 bytes];
  [v0 length];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_ISStoreIndex_checkNodeBounds:()ISStoreIndex_HashTable .cold.2()
{
  OUTLINED_FUNCTION_1();
  v8 = *MEMORY[0x1E69E9840];
  [v1 bytes];
  [v0 length];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_ISStoreIndex_checkNodeBounds:()ISStoreIndex_HashTable .cold.3(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 bytes];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end