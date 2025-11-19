@interface MDPlistContainerCopyCSObject
@end

@implementation MDPlistContainerCopyCSObject

void ___MDPlistContainerCopyCSObject_block_invoke(uint64_t a1, __int128 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v8 = *a2;
  v9 = *(a2 + 2);
  v4 = _MDPlistContainerCopyCSObject(*(a1 + 32));
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a1 + 48), v4);
    v6 = *MEMORY[0x1E69E9840];

    CFRelease(v5);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
  }
}

void ___MDPlistContainerCopyCSObject_block_invoke_2(uint64_t a1, const char *a2, uint64_t a3, __int128 *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  v13 = *a4;
  v14 = *(a4 + 2);
  v7 = _MDPlistContainerCopyCSObject(*(a1 + 32));
  if (v7)
  {
    v8 = v7;
    v9 = CFStringCreateWithCStringNoCopy(*(a1 + 32), a2, 0x8000100u, *MEMORY[0x1E695E498]);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(*(a1 + 48), v9, v8);
      CFRelease(v10);
    }

    v11 = *MEMORY[0x1E69E9840];

    CFRelease(v8);
  }

  else
  {
    v12 = *MEMORY[0x1E69E9840];
  }
}

@end