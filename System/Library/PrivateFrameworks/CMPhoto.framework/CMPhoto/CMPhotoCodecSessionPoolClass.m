@interface CMPhotoCodecSessionPoolClass
@end

@implementation CMPhotoCodecSessionPoolClass

void __CMPhotoCodecSessionPoolClass_Finalize_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 16) = 1;
  v3 = *(v2 + 136);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    if (*(v4 + 128))
    {
      dispatch_resume(*(v4 + 136));
      *(*(a1 + 32) + 128) = 0;
    }
  }
}

@end