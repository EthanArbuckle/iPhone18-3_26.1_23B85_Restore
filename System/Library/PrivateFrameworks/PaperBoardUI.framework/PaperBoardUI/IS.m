@interface IS
@end

@implementation IS

void *__getPF_IS_PAD_DEVICESymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterFoundationLibrary();
  result = dlsym(v2, "PF_IS_PAD_DEVICE");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPF_IS_PAD_DEVICESymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end