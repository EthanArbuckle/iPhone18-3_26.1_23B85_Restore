@interface CMPhotoSurfacePoolClass
@end

@implementation CMPhotoSurfacePoolClass

void __CMPhotoSurfacePoolClass_Finalize_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 16) = 1;
  v3 = *(v2 + 328);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    if (*(v4 + 320))
    {
      dispatch_resume(*(v4 + 328));
      *(*(a1 + 32) + 320) = 0;
    }
  }
}

@end