@interface ExtractBackgroundFromBundle
@end

@implementation ExtractBackgroundFromBundle

uint64_t ___ExtractBackgroundFromBundle_block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v6 = 1;
  }

  else
  {
    if (a3)
    {
      v7 = [*(a1 + 32) URLForResource:v5 withExtension:@"pdf"];
      v8 = v7;
      if (v7)
      {
        *(*(*(a1 + 56) + 8) + 24) = CGPDFDocumentCreateWithURL(v7);
      }
    }
    v12 = *(*(*(a1 + 56) + 8) + 24) || ([PKImage imageNamed:v5 inBundle:*(a1 + 32) screenScale:*(a1 + 40) suffix:*(a1 + 72)], v9 = ;
    *(*(*(a1 + 48) + 8) + 24) = v12;
    v6 = *(*(*(a1 + 48) + 8) + 24);
  }

  return v6 & 1;
}

@end