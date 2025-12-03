@interface PXGOneColumnLayout(PXZoomablePhotosContentLayoutAdoption)
- (uint64_t)loadedItemsRect;
- (void)setNumberOfColumns:()PXZoomablePhotosContentLayoutAdoption;
@end

@implementation PXGOneColumnLayout(PXZoomablePhotosContentLayoutAdoption)

- (uint64_t)loadedItemsRect
{
  result = [self loadedItems];
  if (v3)
  {
    v4 = v3 + result - 1;
    [self frameForItem:result];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [self frameForItem:v4];
    v30.origin.x = v13;
    rect = v13;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    v30.origin.y = v15;
    v30.size.width = v17;
    v30.size.height = v19;
    v26 = CGRectUnion(v25, v30);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    CGRectGetMinX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    CGRectGetMinY(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    CGRectGetMaxX(v28);
    v29.origin.x = rect;
    v29.origin.y = v15;
    v29.size.width = v17;
    v29.size.height = v19;
    CGRectGetMaxY(v29);
    return PXRectWithEdges();
  }

  return result;
}

- (void)setNumberOfColumns:()PXZoomablePhotosContentLayoutAdoption
{
  if (a3 != 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosContentLayout.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"numberOfColumns == 1"}];
  }
}

@end