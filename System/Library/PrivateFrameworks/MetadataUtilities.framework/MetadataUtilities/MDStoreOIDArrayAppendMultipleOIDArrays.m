@interface MDStoreOIDArrayAppendMultipleOIDArrays
@end

@implementation MDStoreOIDArrayAppendMultipleOIDArrays

void *___MDStoreOIDArrayAppendMultipleOIDArrays_block_invoke(void *result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(result[4] + 8 * a2);
  if (v2 && (v3 = *(v2 + 32), v3))
  {
    v4 = *(result[5] + 8 * a2);
    v5 = *(v2 + 16);
    v6 = *MEMORY[0x1E69E9840];
    v7 = *MEMORY[0x1E69E9840];

    return memcpy(v4, v5, 8 * v3);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    v9 = *MEMORY[0x1E69E9840];
  }

  return result;
}

@end