@interface MDStoreOIDArrayCreateWithDeallocator
@end

@implementation MDStoreOIDArrayCreateWithDeallocator

void *___MDStoreOIDArrayCreateWithDeallocator_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (qword_1EB7ABC90 == 0xFFFFFFFFLL)
  {
    qword_1EB7ABC90 = 0;
    v1 = *(a1 + 32);
    _CFRuntimeInitStaticInstance();
  }

  result = _Block_copy(&__block_literal_global_43);
  qword_1EB7ABC98 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end