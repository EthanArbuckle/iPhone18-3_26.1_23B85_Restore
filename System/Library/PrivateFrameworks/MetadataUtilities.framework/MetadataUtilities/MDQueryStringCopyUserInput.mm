@interface MDQueryStringCopyUserInput
@end

@implementation MDQueryStringCopyUserInput

uint64_t ____MDQueryStringCopyUserInput_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 8);
  if (!*(v3 + 24) && *(a2 + 48) == 4)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v4 + 72);
        if (v6)
        {
          if (*(v4 + 24) <= 8u && *v5 == 42 && (v5[1] == 42 && !v5[2] || !v5[1]))
          {
            *(v3 + 24) = strdup(v6);
          }
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return a2;
}

@end