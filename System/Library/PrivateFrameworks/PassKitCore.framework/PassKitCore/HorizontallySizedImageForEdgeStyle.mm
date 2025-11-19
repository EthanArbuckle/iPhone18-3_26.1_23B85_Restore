@interface HorizontallySizedImageForEdgeStyle
@end

@implementation HorizontallySizedImageForEdgeStyle

void ___HorizontallySizedImageForEdgeStyle_block_invoke(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, int a9, int a10)
{
  *(*(*(a1 + 32) + 8) + 48) = a2;
  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  *(*(v12 + 8) + 48) = a3;
  v13 = *(*(a1 + 32) + 8);
  v14 = *(*(a1 + 40) + 8);
  CGContextDrawSubimage(v11, *(a1 + 56), a2 != a3, a6, a7, a8, a9, a10, v13[4], v13[5], v13[6], v13[7], v14[4], v14[5], v14[6], v14[7], *(a1 + 64));
  MaxX = CGRectGetMaxX(*(*(*(a1 + 32) + 8) + 32));
  v16 = *(a1 + 64);
  if (v16 == 0.0)
  {
    v16 = PKScreenScale();
  }

  if (v16 == 0.0)
  {
    v17 = round(MaxX);
  }

  else
  {
    v17 = round(MaxX * v16) / v16;
  }

  *(*(*(a1 + 32) + 8) + 32) = v17;
  v18 = CGRectGetMaxX(*(*(*(a1 + 40) + 8) + 32));
  v19 = *(a1 + 64);
  if (v19 == 0.0)
  {
    v19 = PKScreenScale();
  }

  if (v19 == 0.0)
  {
    v20 = round(v18);
  }

  else
  {
    v20 = round(v18 * v19) / v19;
  }

  *(*(*(a1 + 40) + 8) + 32) = v20;
}

@end