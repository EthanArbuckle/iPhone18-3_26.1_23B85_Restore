@interface PXGGridLayout(PXZoomablePhotosContentLayoutAdoption)
- (uint64_t)shiftItem:()PXZoomablePhotosContentLayoutAdoption toColumn:topPaddingRows:hideIncompleteRows:;
@end

@implementation PXGGridLayout(PXZoomablePhotosContentLayoutAdoption)

- (uint64_t)shiftItem:()PXZoomablePhotosContentLayoutAdoption toColumn:topPaddingRows:hideIncompleteRows:
{
  numberOfColumns = [self numberOfColumns];
  v13 = numberOfColumns;
  v14 = numberOfColumns - 1;
  if (numberOfColumns - 1 >= a4)
  {
    v14 = a4;
  }

  v15 = (v14 & ~(v14 >> 63)) + a3 / numberOfColumns * numberOfColumns - a3;
  if (v15 < 0)
  {
    v15 += numberOfColumns;
    if (v15 < 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosContentLayout.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"visualItemShift >= 0"}];
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

  [self setVisualItemShift:v15 + v13 * a5 - v16];
  return 1;
}

@end