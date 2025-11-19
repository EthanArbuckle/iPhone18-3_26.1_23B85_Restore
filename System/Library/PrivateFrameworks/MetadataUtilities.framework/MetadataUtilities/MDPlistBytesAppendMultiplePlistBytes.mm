@interface MDPlistBytesAppendMultiplePlistBytes
@end

@implementation MDPlistBytesAppendMultiplePlistBytes

void *___MDPlistBytesAppendMultiplePlistBytes_block_invoke(void *result, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(result[4] + 8 * a2);
  if (v2)
  {
    v3 = *(result[6] + 8 * a2);
    if (v3)
    {
      if (*(v3 + 32))
      {
        v3 = 0;
      }

      else
      {
        v3 = *(v3 + 8);
      }
    }

    v5 = *(result[5] + 8 * a2);
    v6 = *MEMORY[0x1E69E9840];

    return memcpy(v5, v3, v2);
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

@end