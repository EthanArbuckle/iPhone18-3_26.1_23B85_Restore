@interface PXGGridLayout(PXZoomablePhotosContentLayoutAdoption)
- (uint64_t)shiftItem:()PXZoomablePhotosContentLayoutAdoption toColumn:topPaddingRows:hideIncompleteRows:;
@end

@implementation PXGGridLayout(PXZoomablePhotosContentLayoutAdoption)

- (uint64_t)shiftItem:()PXZoomablePhotosContentLayoutAdoption toColumn:topPaddingRows:hideIncompleteRows:
{
  v12 = [a1 numberOfColumns];
  v13 = v12;
  v14 = v12 - 1;
  if (v12 - 1 >= a4)
  {
    v14 = a4;
  }

  v15 = (v14 & ~(v14 >> 63)) + a3 / v12 * v12 - a3;
  if (v15 < 0)
  {
    v15 += v12;
    if (v15 < 0)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:a1 file:@"PXZoomablePhotosContentLayout.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"visualItemShift >= 0"}];
    }
  }

  if (((v15 > 0) & a6) != 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  [a1 setVisualItemShift:v15 + v13 * a5 - v16];
  return 1;
}

@end