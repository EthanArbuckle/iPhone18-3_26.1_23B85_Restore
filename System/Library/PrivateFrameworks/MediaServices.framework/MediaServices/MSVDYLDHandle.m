@interface MSVDYLDHandle
@end

@implementation MSVDYLDHandle

void ___MSVDYLDHandle_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = CFDictionaryGetValue(__dlHandles, *(a1 + 32));
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = dlopen([*(a1 + 32) fileSystemRepresentation], 2);
    v2 = *(*(*(a1 + 40) + 8) + 24);
    if (v2)
    {
      v3 = __dlHandles;
      v4 = *(a1 + 32);

      CFDictionarySetValue(v3, v4, v2);
    }

    else
    {
      v5 = *(a1 + 32);
      v6 = dlerror();
      NSLog(&cfstr_CouldNotWeakLi.isa, v5, v6);
    }
  }
}

uint64_t ___MSVDYLDHandle_block_invoke()
{
  __dlHandles = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], 0);
  __handlesQueue = dispatch_queue_create(0, 0);

  return MEMORY[0x1EEE66BB8]();
}

@end