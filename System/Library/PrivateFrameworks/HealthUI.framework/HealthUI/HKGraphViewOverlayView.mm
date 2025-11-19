@interface HKGraphViewOverlayView
@end

@implementation HKGraphViewOverlayView

uint64_t __49___HKGraphViewOverlayView_drawContentUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 40);
  v10 = [v4 CGContext];

  v11 = *(v9 + 16);
  v12.n128_u64[0] = v6;
  v13.n128_u64[0] = v8;

  return v11(v9, v10, v12, v13);
}

@end