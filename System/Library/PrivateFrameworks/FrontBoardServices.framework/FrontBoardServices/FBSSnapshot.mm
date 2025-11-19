@interface FBSSnapshot
@end

@implementation FBSSnapshot

void __23___FBSSnapshot_CGImage__block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (!v2[2] && !v2[4])
  {
    v4 = v2[3];
    if (v4)
    {
      v5 = a2 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v7 = [v4 CGImageBuilder];
      v6 = [v7 setOpaque:{objc_msgSend(*(*(a1 + 32) + 8), "isOpaque")}];
      *(*(a1 + 32) + 16) = [v7 buildCGImage];
    }
  }
}

@end