@interface CAMFilterScrubberView
- (void)setItemDisplayNames:(id)names;
- (void)setThumbnailContents:(id)contents;
- (void)updateCell:(id)cell forItemAtIndex:(unint64_t)index;
@end

@implementation CAMFilterScrubberView

- (void)setThumbnailContents:(id)contents
{
  contentsCopy = contents;
  if (self->_thumbnailContents != contentsCopy)
  {
    v6 = contentsCopy;
    objc_storeStrong(&self->_thumbnailContents, contents);
    [(CEKWheelScrubberView *)self updateItems];
    contentsCopy = v6;
  }
}

- (void)setItemDisplayNames:(id)names
{
  namesCopy = names;
  itemDisplayNames = self->_itemDisplayNames;
  if (itemDisplayNames != namesCopy)
  {
    v7 = namesCopy;
    itemDisplayNames = [itemDisplayNames isEqualToArray:namesCopy];
    namesCopy = v7;
    if ((itemDisplayNames & 1) == 0)
    {
      objc_storeStrong(&self->_itemDisplayNames, names);
      itemDisplayNames = [(CEKWheelScrubberView *)self updateItems];
      namesCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](itemDisplayNames, namesCopy);
}

- (void)updateCell:(id)cell forItemAtIndex:(unint64_t)index
{
  cellCopy = cell;
  v7 = [(CEKWheelScrubberView *)self itemCount]- 1;
  [MEMORY[0x1E69938A8] defaultScreenScaleContentSize];
  v9 = v8;
  v11 = v10;
  itemView = [cellCopy itemView];
  layer = [itemView layer];

  thumbnailContents = [(CAMFilterScrubberView *)self thumbnailContents];
  [layer setContents:thumbnailContents];

  [MEMORY[0x1E6987188] contentsRectForFilterAtIndex:index thumbnailSize:v7 filterCount:{v9, v11}];
  [layer setContentsRect:?];
  itemDisplayNames = [(CAMFilterScrubberView *)self itemDisplayNames];
  if ([itemDisplayNames count] <= index)
  {
    v17 = 0;
  }

  else
  {
    itemDisplayNames2 = [(CAMFilterScrubberView *)self itemDisplayNames];
    v17 = [itemDisplayNames2 objectAtIndexedSubscript:index];
  }

  [cellCopy setAccessibilityLabel:v17];
  v18.receiver = self;
  v18.super_class = CAMFilterScrubberView;
  [(CEKWheelScrubberView *)&v18 updateCell:cellCopy forItemAtIndex:index];
}

@end