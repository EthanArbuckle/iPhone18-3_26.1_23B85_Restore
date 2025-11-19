@interface AddMeshSymbolLoc
@end

@implementation AddMeshSymbolLoc

void *__getkCVAFaceTracking_AddMeshSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_AddMesh");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_AddMeshSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end