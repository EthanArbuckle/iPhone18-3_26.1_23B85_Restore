@interface CAMFilterScrubberView
- (void)setItemDisplayNames:(id)a3;
- (void)setThumbnailContents:(id)a3;
- (void)updateCell:(id)a3 forItemAtIndex:(unint64_t)a4;
@end

@implementation CAMFilterScrubberView

- (void)setThumbnailContents:(id)a3
{
  v5 = a3;
  if (self->_thumbnailContents != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_thumbnailContents, a3);
    [(CEKWheelScrubberView *)self updateItems];
    v5 = v6;
  }
}

- (void)setItemDisplayNames:(id)a3
{
  v5 = a3;
  itemDisplayNames = self->_itemDisplayNames;
  if (itemDisplayNames != v5)
  {
    v7 = v5;
    itemDisplayNames = [itemDisplayNames isEqualToArray:v5];
    v5 = v7;
    if ((itemDisplayNames & 1) == 0)
    {
      objc_storeStrong(&self->_itemDisplayNames, a3);
      itemDisplayNames = [(CEKWheelScrubberView *)self updateItems];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](itemDisplayNames, v5);
}

- (void)updateCell:(id)a3 forItemAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CEKWheelScrubberView *)self itemCount]- 1;
  [MEMORY[0x1E69938A8] defaultScreenScaleContentSize];
  v9 = v8;
  v11 = v10;
  v12 = [v6 itemView];
  v13 = [v12 layer];

  v14 = [(CAMFilterScrubberView *)self thumbnailContents];
  [v13 setContents:v14];

  [MEMORY[0x1E6987188] contentsRectForFilterAtIndex:a4 thumbnailSize:v7 filterCount:{v9, v11}];
  [v13 setContentsRect:?];
  v15 = [(CAMFilterScrubberView *)self itemDisplayNames];
  if ([v15 count] <= a4)
  {
    v17 = 0;
  }

  else
  {
    v16 = [(CAMFilterScrubberView *)self itemDisplayNames];
    v17 = [v16 objectAtIndexedSubscript:a4];
  }

  [v6 setAccessibilityLabel:v17];
  v18.receiver = self;
  v18.super_class = CAMFilterScrubberView;
  [(CEKWheelScrubberView *)&v18 updateCell:v6 forItemAtIndex:a4];
}

@end