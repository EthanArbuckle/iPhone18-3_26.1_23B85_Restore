@interface ICGalleryAttachmentView
+ (CGSize)sizeOfViewForAttachment:(id)attachment textViewContentWidth:(double)width existingView:(id)view;
+ (double)effectiveAspectRatioForWidth:(double)width height:(double)height;
+ (id)subAttachmentItemsForGalleryAttachment:(id)attachment;
+ (id)titleForGalleryAttachment:(id)attachment;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)updateItems;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)collectionViewItemHeight;
- (double)galleryAttachmentViewItemHeight;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)attachmentPresenter:(id)presenter transitionViewForAttachment:(id)attachment;
- (id)attachmentPresenter:(id)presenter transitionViewForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)indexPathForItemClosestToPoint:(CGPoint)point;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)dealloc;
- (void)didChangeAttachmentTitle;
- (void)didChangeMergeableData;
- (void)didUpdatePreviewImages;
- (void)didUpdateSubAttachmentAtIndex:(int64_t)index sizeDidChange:(BOOL)change;
- (void)didUpdateSubAttachmentItems;
- (void)invalidateCollectionViewLayout;
- (void)invalidateCollectionViewLayoutWithNewItemHeight:(double)height;
- (void)openAttachment;
- (void)openAttachmentAtIndex:(unint64_t)index;
- (void)respondToLongPressReorderingGesture:(id)gesture;
- (void)scrollCollectionViewToIndexPath:(id)path;
- (void)setAttachment:(id)attachment;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightColor:(id)color;
- (void)setHighlightPatternRegexFinder:(id)finder;
- (void)setupCollectionViewIfNecessary;
- (void)updateActivityView;
- (void)updateAttachmentTitleLabel;
- (void)updateItemForObjectID:(id)d;
- (void)updateItemsAndLayout;
@end

@implementation ICGalleryAttachmentView

- (void)dealloc
{
  attachmentDidLoadObserver = [(ICGalleryAttachmentView *)self attachmentDidLoadObserver];

  if (attachmentDidLoadObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    attachmentDidLoadObserver2 = [(ICGalleryAttachmentView *)self attachmentDidLoadObserver];
    [defaultCenter removeObserver:attachmentDidLoadObserver2];

    [(ICGalleryAttachmentView *)self setAttachmentDidLoadObserver:0];
  }

  previewImagesDidUpdateObserver = [(ICGalleryAttachmentView *)self previewImagesDidUpdateObserver];

  if (previewImagesDidUpdateObserver)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    previewImagesDidUpdateObserver2 = [(ICGalleryAttachmentView *)self previewImagesDidUpdateObserver];
    [defaultCenter2 removeObserver:previewImagesDidUpdateObserver2];

    [(ICGalleryAttachmentView *)self setPreviewImagesDidUpdateObserver:0];
  }

  v9.receiver = self;
  v9.super_class = ICGalleryAttachmentView;
  [(ICAttachmentView *)&v9 dealloc];
}

+ (double)effectiveAspectRatioForWidth:(double)width height:(double)height
{
  result = 0.75;
  if (width != 0.0 && height != 0.0)
  {
    result = width / height;
    if (width / height < *MEMORY[0x277D36508])
    {
      result = *MEMORY[0x277D36508];
    }

    if (result >= *MEMORY[0x277D36500])
    {
      return *MEMORY[0x277D36500];
    }
  }

  return result;
}

+ (CGSize)sizeOfViewForAttachment:(id)attachment textViewContentWidth:(double)width existingView:(id)view
{
  attachmentCopy = attachment;
  subAttachmentItems = [view subAttachmentItems];
  if (!subAttachmentItems)
  {
    subAttachmentItems = [self subAttachmentItemsForGalleryAttachment:attachmentCopy];
  }

  v10 = floor(width);
  [self collectionViewLeftRightMargins];
  v12 = v11;
  [self topButtonHeight];
  v14 = v13;
  [self collectionViewTopBottomMargins];
  v16 = v15;
  v17 = [subAttachmentItems count];
  if (v10 <= 0.0 || v17 == 0)
  {
    v19 = 160.0;
    v20 = 160.0;
  }

  else
  {
    [self collectionViewLeftRightMargins];
    v22 = v21;
    [self collectionViewLeftRightMargins];
    v24 = v23;
    firstObject = [subAttachmentItems firstObject];
    [firstObject size];
    v27 = v26;
    [firstObject size];
    [objc_opt_class() effectiveAspectRatioForWidth:v28 height:v27];
    v30 = v29;
    [self collectionViewMaxHeight];
    if (v27 >= v31)
    {
      v27 = v31;
    }

    [self collectionViewMinHeight];
    if (v27 < v32)
    {
      v27 = v32;
    }

    collectionViewShouldPeek = [self collectionViewShouldPeek];
    v34 = [subAttachmentItems count];
    if (collectionViewShouldPeek && ((v35 = v34, v36 = [MEMORY[0x277D75418] ic_isiPad], v10 < 500.0) || !v36))
    {
      v39 = v12 + v12;
      v40 = v10 + v24 * -2.0;
      v41 = round(v30 * v27);
      v42 = 2;
      if (v35 < 2)
      {
        v42 = v35;
      }

      if (v10 <= 640.0)
      {
        v43 = v35 != 0;
      }

      else
      {
        v43 = v42;
      }

      if (v43 >= 2)
      {
        for (i = 1; i != v43; ++i)
        {
          v39 = v22 + v39;
          v40 = v40 - v22;
          v45 = [subAttachmentItems objectAtIndexedSubscript:i];
          [v45 size];
          v47 = v46;
          [v45 size];
          [self effectiveAspectRatioForWidth:v47 height:?];
          v41 = v41 + round(v27 * v48);
        }
      }

      v49 = 2.0;
      if (v41 >= 160.0)
      {
        v50 = v41;
      }

      else
      {
        v50 = 160.0;
      }

      if (v50 > v40)
      {
        if (v35 >= v43)
        {
          v51 = v43;
        }

        else
        {
          v51 = v35;
        }

        if (v51)
        {
          v52 = 0;
          v53 = 0.0;
          do
          {
            v54 = [subAttachmentItems objectAtIndexedSubscript:v52];
            [v54 size];
            v56 = v55;
            [v54 size];
            [self effectiveAspectRatioForWidth:v56 height:?];
            v53 = v53 + v57;

            ++v52;
          }

          while (v51 != v52);
        }

        else
        {
          v53 = 0.0;
        }

        v27 = round(v40 / v53);
        v50 = v40;
        v49 = 2.0;
      }

      v58 = v14 + v16 * v49;
      if (v35 <= v43 || (v50 = v22 + 50.0 + v50, v50 <= v40))
      {
        v40 = v50;
      }

      else
      {
        v27 = round(v40 / (v50 / v27));
      }

      v20 = v39 + v40;
      v19 = v58 + v27;
    }

    else
    {
      [MEMORY[0x277D36798] sizeOfViewForAttachment:attachmentCopy textViewContentWidth:v10];
      v20 = v37;
      v19 = v38;
    }
  }

  v59 = v20;
  v60 = v19;
  result.height = v60;
  result.width = v59;
  return result;
}

+ (id)titleForGalleryAttachment:(id)attachment
{
  attachmentCopy = attachment;
  title = [attachmentCopy title];
  if ([title length])
  {
    [attachmentCopy title];
  }

  else
  {
    [attachmentCopy defaultTitle];
  }
  v5 = ;

  if ([attachmentCopy needsInitialFetchFromCloud])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle localizedStringForKey:@"Downloading…" value:&stru_282757698 table:0];

    v5 = v7;
  }

  return v5;
}

- (double)collectionViewItemHeight
{
  [(ICGalleryAttachmentView *)self bounds];
  v3 = v2;
  [objc_opt_class() collectionViewTopBottomMargins];
  v5 = v4;
  [objc_opt_class() topButtonHeight];
  return fmax(v3 - (v6 + v5 * 2.0), 16.0);
}

- (void)invalidateCollectionViewLayout
{
  [(ICGalleryAttachmentView *)self collectionViewItemHeight];

  [(ICGalleryAttachmentView *)self invalidateCollectionViewLayoutWithNewItemHeight:?];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(ICGalleryAttachmentView *)self frame];
  v9 = v8;
  v11 = v10;
  v14.receiver = self;
  v14.super_class = ICGalleryAttachmentView;
  [(ICGalleryAttachmentView *)&v14 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(ICGalleryAttachmentView *)self invalidateCollectionViewLayout];
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (!CGRectIsNull(v15))
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    if (!CGRectIsInfinite(v16))
    {
      attachment = [(ICGalleryAttachmentView *)self attachment];

      if (attachment)
      {
        [(ICGalleryAttachmentView *)self setupCollectionViewIfNecessary];
      }
    }
  }
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachment = [(ICGalleryAttachmentView *)self attachment];

  if (attachment != attachmentCopy)
  {
    v23.receiver = self;
    v23.super_class = ICGalleryAttachmentView;
    [(ICGalleryAttachmentView *)&v23 setAttachment:attachmentCopy];
    [(ICGalleryAttachmentView *)self invalidateCollectionViewLayout];
    attachmentDidLoadObserver = [(ICGalleryAttachmentView *)self attachmentDidLoadObserver];

    if (attachmentDidLoadObserver)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      attachmentDidLoadObserver2 = [(ICGalleryAttachmentView *)self attachmentDidLoadObserver];
      [defaultCenter removeObserver:attachmentDidLoadObserver2];

      [(ICGalleryAttachmentView *)self setAttachmentDidLoadObserver:0];
    }

    previewImagesDidUpdateObserver = [(ICGalleryAttachmentView *)self previewImagesDidUpdateObserver];

    if (previewImagesDidUpdateObserver)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      previewImagesDidUpdateObserver2 = [(ICGalleryAttachmentView *)self previewImagesDidUpdateObserver];
      [defaultCenter2 removeObserver:previewImagesDidUpdateObserver2];

      [(ICGalleryAttachmentView *)self setPreviewImagesDidUpdateObserver:0];
    }

    if (attachmentCopy)
    {
      [(ICGalleryAttachmentView *)self updateItems];
      objc_initWeak(&location, self);
      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      v13 = *MEMORY[0x277D35B88];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __41__ICGalleryAttachmentView_setAttachment___block_invoke;
      v20[3] = &unk_2781ABCA8;
      objc_copyWeak(&v21, &location);
      v14 = [defaultCenter3 addObserverForName:v13 object:0 queue:0 usingBlock:v20];
      [(ICGalleryAttachmentView *)self setAttachmentDidLoadObserver:v14];

      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      v16 = *MEMORY[0x277D35BB8];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __41__ICGalleryAttachmentView_setAttachment___block_invoke_2;
      v18[3] = &unk_2781ABCA8;
      objc_copyWeak(&v19, &location);
      v17 = [defaultCenter4 addObserverForName:v16 object:0 queue:0 usingBlock:v18];
      [(ICGalleryAttachmentView *)self setPreviewImagesDidUpdateObserver:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

void __41__ICGalleryAttachmentView_setAttachment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v4 = [v3 object];

  v5 = ICCheckedDynamicCast();
  [WeakRetained updateItemForObjectID:v5];
}

void __41__ICGalleryAttachmentView_setAttachment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v4 = [v3 object];

  v5 = ICCheckedDynamicCast();
  [WeakRetained updateItemForObjectID:v5];
}

- (void)setHighlightColor:(id)color
{
  v9.receiver = self;
  v9.super_class = ICGalleryAttachmentView;
  colorCopy = color;
  [(ICGalleryAttachmentView *)&v9 setHighlightColor:colorCopy];
  if (colorCopy)
  {
    v5 = *MEMORY[0x277D364B0];
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(ICGalleryAttachmentView *)self layer:v9.receiver];
  [v6 setBorderWidth:v5];

  cGColor = [colorCopy CGColor];
  layer = [(ICGalleryAttachmentView *)self layer];
  [layer setBorderColor:cGColor];
}

- (void)setHighlightPatternRegexFinder:(id)finder
{
  v4.receiver = self;
  v4.super_class = ICGalleryAttachmentView;
  [(ICGalleryAttachmentView *)&v4 setHighlightPatternRegexFinder:finder];
  [(ICGalleryAttachmentView *)self updateAttachmentTitleLabel];
}

+ (id)subAttachmentItemsForGalleryAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  attachmentModel = [attachmentCopy attachmentModel];
  v5 = ICCheckedDynamicCast();

  v6 = MEMORY[0x277CBEB18];
  subAttachments = [attachmentCopy subAttachments];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(subAttachments, "count")}];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __66__ICGalleryAttachmentView_subAttachmentItemsForGalleryAttachment___block_invoke;
  v16 = &unk_2781ABCD0;
  v17 = attachmentCopy;
  v18 = v8;
  v9 = v8;
  v10 = attachmentCopy;
  [v5 enumerateSubAttachmentsWithBlock:&v13];
  v11 = [v9 copy];

  return v11;
}

void __66__ICGalleryAttachmentView_subAttachmentItemsForGalleryAttachment___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [ICGalleryAttachmentViewSubAttachmentItem alloc];
  v6 = [*(a1 + 32) managedObjectContext];
  v7 = [(ICGalleryAttachmentViewSubAttachmentItem *)v5 initWithAttachmentIdentifier:v4 context:v6];

  [*(a1 + 40) addObject:v7];
}

- (BOOL)updateItems
{
  v3 = objc_opt_class();
  attachment = [(ICGalleryAttachmentView *)self attachment];
  v5 = [v3 subAttachmentItemsForGalleryAttachment:attachment];

  subAttachmentItems = [(ICGalleryAttachmentView *)self subAttachmentItems];
  v7 = [v5 isEqual:subAttachmentItems];

  if ((v7 & 1) == 0)
  {
    [(ICGalleryAttachmentView *)self setSubAttachmentItems:v5];
  }

  return v7 ^ 1;
}

- (void)didChangeMergeableData
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICGalleryAttachmentView_didChangeMergeableData__block_invoke;
  block[3] = &unk_2781ABCF8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)didUpdatePreviewImages
{
  v3.receiver = self;
  v3.super_class = ICGalleryAttachmentView;
  [(ICGalleryAttachmentView *)&v3 didUpdatePreviewImages];
  [(ICGalleryAttachmentView *)self didChangeSize];
}

- (void)updateItemsAndLayout
{
  if ([(ICGalleryAttachmentView *)self updateItems])
  {
    [(ICGalleryAttachmentView *)self didUpdateSubAttachmentItems];

    [(ICGalleryAttachmentView *)self didChangeSize];
  }
}

- (void)updateItemForObjectID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x277D35E00];
  attachment = [(ICGalleryAttachmentView *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v8 = [v5 ic_existingObjectWithID:dCopy context:managedObjectContext];

  parentAttachment = [v8 parentAttachment];
  attachment2 = [(ICGalleryAttachmentView *)self attachment];

  if (parentAttachment == attachment2)
  {
    subAttachmentItems = [(ICGalleryAttachmentView *)self subAttachmentItems];
    v12 = [subAttachmentItems count];

    if (v12)
    {
      v13 = 0;
      while (1)
      {
        subAttachmentItems2 = [(ICGalleryAttachmentView *)self subAttachmentItems];
        v15 = [subAttachmentItems2 objectAtIndexedSubscript:v13];

        attachment3 = [v15 attachment];

        if (attachment3 == v8)
        {
          break;
        }

        ++v13;
        subAttachmentItems3 = [(ICGalleryAttachmentView *)self subAttachmentItems];
        v18 = [subAttachmentItems3 count];

        if (v13 >= v18)
        {
          goto LABEL_2;
        }
      }

      managedObjectContext2 = [v8 managedObjectContext];
      [managedObjectContext2 ic_refreshObject:v8 mergeChanges:0];

      updateSize = [v15 updateSize];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__ICGalleryAttachmentView_updateItemForObjectID___block_invoke;
      block[3] = &unk_2781ABD20;
      v22 = updateSize;
      block[4] = self;
      block[5] = v13;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

LABEL_2:
}

uint64_t __49__ICGalleryAttachmentView_updateItemForObjectID___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) didChangeSize];
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 didUpdateSubAttachmentAtIndex:v4 sizeDidChange:v2 & 1];
}

- (void)openAttachment
{
  indexPathForPreviewing = [(ICGalleryAttachmentView *)self indexPathForPreviewing];
  if (indexPathForPreviewing)
  {
    indexPathForPreviewing2 = [(ICGalleryAttachmentView *)self indexPathForPreviewing];
    v5 = [indexPathForPreviewing2 row];
    subAttachmentItems = [(ICGalleryAttachmentView *)self subAttachmentItems];
    v7 = [subAttachmentItems count];

    if (v5 >= v7)
    {
      indexPathForPreviewing = 0;
    }

    else
    {
      indexPathForPreviewing3 = [(ICGalleryAttachmentView *)self indexPathForPreviewing];
      indexPathForPreviewing = [indexPathForPreviewing3 row];

      [(ICGalleryAttachmentView *)self setIndexPathForPreviewing:0];
    }
  }

  [(ICGalleryAttachmentView *)self openAttachmentAtIndex:indexPathForPreviewing];
}

- (id)indexPathForItemClosestToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v36 = *MEMORY[0x277D85DE8];
  collectionView = [(ICGalleryAttachmentView *)self collectionView];
  v7 = [collectionView indexPathForItemAtPoint:{x, y}];

  if (!v7)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    collectionView2 = [(ICGalleryAttachmentView *)self collectionView];
    indexPathsForVisibleItems = [collectionView2 indexPathsForVisibleItems];

    v10 = [indexPathsForVisibleItems countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v7 = 0;
      v12 = *v32;
      v13 = INFINITY;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(indexPathsForVisibleItems);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          collectionView3 = [(ICGalleryAttachmentView *)self collectionView];
          v17 = [collectionView3 cellForItemAtIndexPath:v15];

          [v17 bounds];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          collectionView4 = [(ICGalleryAttachmentView *)self collectionView];
          [v17 convertRect:collectionView4 toView:{v19, v21, v23, v25}];

          TSDDistanceToRect();
          if (v27 < v13)
          {
            v28 = v27;
            v29 = v15;

            v13 = v28;
            v7 = v29;
          }
        }

        v11 = [indexPathsForVisibleItems countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)invalidateCollectionViewLayoutWithNewItemHeight:(double)height
{
  collectionViewLayout = [(ICGalleryAttachmentView *)self collectionViewLayout];
  [collectionViewLayout itemHeight];
  v7 = v6;

  v8 = round(height);
  if (v8 - v7 >= 0.0)
  {
    v9 = v8 - v7;
  }

  else
  {
    v9 = -(v8 - v7);
  }

  collectionViewLayout2 = [(ICGalleryAttachmentView *)self collectionViewLayout];
  [collectionViewLayout2 invalidateLayoutWithNewItemHeight:v8];

  if (v7 == 0.0 || v9 > 20.0)
  {
    galleryAttachmentViewCellImageCache = [(ICGalleryAttachmentView *)self galleryAttachmentViewCellImageCache];
    [galleryAttachmentViewCellImageCache removeAllThumbnailData];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__ICGalleryAttachmentView_PlatformSpecificResponsibilty__invalidateCollectionViewLayoutWithNewItemHeight___block_invoke;
    block[3] = &unk_2781ABCF8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __106__ICGalleryAttachmentView_PlatformSpecificResponsibilty__invalidateCollectionViewLayoutWithNewItemHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];

  v5 = [*(a1 + 32) collectionView];
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 indexPathsForVisibleItems];
  [v5 reloadItemsAtIndexPaths:v4];
}

- (void)setupCollectionViewIfNecessary
{
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    [(ICGalleryAttachmentView *)self setOverrideUserInterfaceStyle:1];
  }

  array = [MEMORY[0x277CBEB18] array];
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    [MEMORY[0x277D75348] secondarySystemFillColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemFillColor];
  }
  v3 = ;
  [(ICGalleryAttachmentView *)self setBackgroundColor:v3];

  titleLabel = [(ICGalleryAttachmentView *)self titleLabel];

  if (!titleLabel)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(ICGalleryAttachmentView *)self setTitleLabel:v5];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    titleLabel2 = [(ICGalleryAttachmentView *)self titleLabel];
    [titleLabel2 setTextColor:secondaryLabelColor];

    v8 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74420]];
    ic_fontWithSingleLineA = [v8 ic_fontWithSingleLineA];
    titleLabel3 = [(ICGalleryAttachmentView *)self titleLabel];
    [titleLabel3 setFont:ic_fontWithSingleLineA];

    titleLabel4 = [(ICGalleryAttachmentView *)self titleLabel];
    [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel5 = [(ICGalleryAttachmentView *)self titleLabel];
    [titleLabel5 setUserInteractionEnabled:0];

    titleLabel6 = [(ICGalleryAttachmentView *)self titleLabel];
    [(ICGalleryAttachmentView *)self addSubview:titleLabel6];

    v14 = objc_alloc_init(MEMORY[0x277D36778]);
    [(ICGalleryAttachmentView *)self setActivityView:v14];

    activityView = [(ICGalleryAttachmentView *)self activityView];
    [activityView setTranslatesAutoresizingMaskIntoConstraints:0];

    activityView2 = [(ICGalleryAttachmentView *)self activityView];
    [activityView2 setLeadingSpace:8.0];

    activityView3 = [(ICGalleryAttachmentView *)self activityView];
    [activityView3 setTrailingSpace:8.0];

    activityView4 = [(ICGalleryAttachmentView *)self activityView];
    [activityView4 setCollapsed:1];

    activityView5 = [(ICGalleryAttachmentView *)self activityView];
    [(ICGalleryAttachmentView *)self addSubview:activityView5];

    titleLabel7 = [(ICGalleryAttachmentView *)self titleLabel];
    leadingAnchor = [titleLabel7 leadingAnchor];
    leadingAnchor2 = [(ICGalleryAttachmentView *)self leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:9.0];
    [array addObject:v23];

    titleLabel8 = [(ICGalleryAttachmentView *)self titleLabel];
    trailingAnchor = [titleLabel8 trailingAnchor];
    activityView6 = [(ICGalleryAttachmentView *)self activityView];
    leadingAnchor3 = [activityView6 leadingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
    [array addObject:v28];

    activityView7 = [(ICGalleryAttachmentView *)self activityView];
    centerYAnchor = [activityView7 centerYAnchor];
    titleLabel9 = [(ICGalleryAttachmentView *)self titleLabel];
    centerYAnchor2 = [titleLabel9 centerYAnchor];
    v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v33];

    activityView8 = [(ICGalleryAttachmentView *)self activityView];
    trailingAnchor2 = [activityView8 trailingAnchor];
    trailingAnchor3 = [(ICGalleryAttachmentView *)self trailingAnchor];
    v37 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];

    [array addObject:v37];
    [(ICGalleryAttachmentView *)self didChangeAttachmentTitle];
  }

  tapGestureRecognizer = [(ICGalleryAttachmentView *)self tapGestureRecognizer];

  if (!tapGestureRecognizer)
  {
    v39 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTapTopOfGalleryView_];
    [(ICGalleryAttachmentView *)self setTapGestureRecognizer:v39];

    tapGestureRecognizer2 = [(ICGalleryAttachmentView *)self tapGestureRecognizer];
    [tapGestureRecognizer2 setDelegate:self];

    tapGestureRecognizer3 = [(ICGalleryAttachmentView *)self tapGestureRecognizer];
    [(ICGalleryAttachmentView *)self addGestureRecognizer:tapGestureRecognizer3];
  }

  collectionView = [(ICGalleryAttachmentView *)self collectionView];

  if (!collectionView)
  {
    objc_opt_class();
    attachment = [(ICGalleryAttachmentView *)self attachment];
    attachmentModel = [attachment attachmentModel];
    v45 = ICCheckedDynamicCast();

    v46 = objc_alloc_init(MEMORY[0x277D35E38]);
    [(ICGalleryAttachmentView *)self setCollectionViewCache:v46];

    v47 = [ICGalleryAttachmentViewCollectionViewLayout alloc];
    [(ICGalleryAttachmentView *)self collectionViewItemHeight];
    v48 = [ICGalleryAttachmentViewCollectionViewLayout initWithAttachmentGalleryModel:v47 itemHeight:"initWithAttachmentGalleryModel:itemHeight:itemSpacing:margins:" itemSpacing:v45 margins:?];
    [(ICGalleryAttachmentView *)self setCollectionViewLayout:v48];

    v49 = objc_alloc(MEMORY[0x277D752A0]);
    collectionViewLayout = [(ICGalleryAttachmentView *)self collectionViewLayout];
    v51 = [v49 initWithFrame:collectionViewLayout collectionViewLayout:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];
    [(ICGalleryAttachmentView *)self setCollectionView:v51];

    collectionView2 = [(ICGalleryAttachmentView *)self collectionView];
    v53 = MEMORY[0x277D757B0];
    v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v55 = [v53 nibWithNibName:@"ICGalleryAttachmentViewCell" bundle:v54];
    [collectionView2 registerNib:v55 forCellWithReuseIdentifier:@"ICGalleryViewCollectionViewCell"];

    collectionView3 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView3 setDelegate:self];

    collectionView4 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView4 setDataSource:self];

    clearColor = [MEMORY[0x277D75348] clearColor];
    collectionView5 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView5 setBackgroundColor:clearColor];

    collectionView6 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView6 setTranslatesAutoresizingMaskIntoConstraints:0];

    collectionView7 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView7 setAlwaysBounceVertical:0];

    collectionView8 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView8 setShowsVerticalScrollIndicator:0];

    collectionView9 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView9 setScrollsToTop:0];

    collectionView10 = [(ICGalleryAttachmentView *)self collectionView];
    [(ICGalleryAttachmentView *)self addSubview:collectionView10];

    collectionView11 = [(ICGalleryAttachmentView *)self collectionView];
    v66 = _NSDictionaryOfVariableBindings(&cfstr_Collectionview.isa, collectionView11, 0);
    v67 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-0@900-[collectionView]-0@900-|" options:0 metrics:0 views:v66];
    [array addObjectsFromArray:v67];

    v68 = MEMORY[0x277CCAAD0];
    0x4035000000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"V:|-%g-[collectionView]-0-|", 0x4035000000000000];
    v70 = [v68 constraintsWithVisualFormat:0x4035000000000000 options:0 metrics:0 views:v66];
    [array addObjectsFromArray:v70];

    titleLabel10 = [(ICGalleryAttachmentView *)self titleLabel];
    firstBaselineAnchor = [titleLabel10 firstBaselineAnchor];
    collectionView12 = [(ICGalleryAttachmentView *)self collectionView];
    topAnchor = [collectionView12 topAnchor];
    v75 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
    [array addObject:v75];

    layer = [(ICGalleryAttachmentView *)self layer];
    [layer setCornerRadius:9.0];

    layer2 = [(ICGalleryAttachmentView *)self layer];
    [layer2 setMasksToBounds:1];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  [(ICGalleryAttachmentView *)self updateActivityView];
}

- (void)respondToLongPressReorderingGesture:(id)gesture
{
  gestureCopy = gesture;
  collectionView = [(ICGalleryAttachmentView *)self collectionView];
  [gestureCopy locationInView:collectionView];
  v7 = v6;
  v9 = v8;

  collectionView2 = [(ICGalleryAttachmentView *)self collectionView];
  v20 = [collectionView2 indexPathForItemAtPoint:{v7, v9}];
  [(ICGalleryAttachmentView *)self setMovingIndexPath:?];

  state = [gestureCopy state];
  if (state == 3)
  {
    collectionView3 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView3 endInteractiveMovement];
LABEL_9:

    [(ICGalleryAttachmentView *)self setMovingIndexPath:0];
LABEL_10:
    v12 = v20;
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (state == 2)
  {
    collectionView4 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView4 updateInteractiveMovementTargetPosition:{v7, v9}];

    goto LABEL_10;
  }

  if (state != 1)
  {
    collectionView3 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView3 cancelInteractiveMovement];
    goto LABEL_9;
  }

  v12 = v20;
  if (!v20)
  {
    goto LABEL_14;
  }

  collectionView5 = [(ICGalleryAttachmentView *)self collectionView];
  [collectionView5 beginInteractiveMovementForItemAtIndexPath:v20];

LABEL_11:
  collectionView6 = [(ICGalleryAttachmentView *)self collectionView];
  v17 = [collectionView6 cellForItemAtIndexPath:v20];

  movingIndexPath = [(ICGalleryAttachmentView *)self movingIndexPath];
  v19 = 0.5;
  if (!movingIndexPath)
  {
    v19 = 1.0;
  }

  [v17 setAlpha:v19];

  v12 = v20;
LABEL_14:
}

- (void)didChangeAttachmentTitle
{
  galleryEditorController = [(ICGalleryAttachmentView *)self galleryEditorController];
  [galleryEditorController attachmentTitleDidChange];

  [(ICGalleryAttachmentView *)self updateAttachmentTitleLabel];
}

- (void)updateAttachmentTitleLabel
{
  v20[2] = *MEMORY[0x277D85DE8];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  titleLabel = [(ICGalleryAttachmentView *)self titleLabel];
  [titleLabel setTextColor:secondaryLabelColor];

  v5 = objc_opt_class();
  attachment = [(ICGalleryAttachmentView *)self attachment];
  v7 = [v5 titleForGalleryAttachment:attachment];

  highlightPatternRegexFinder = [(ICGalleryAttachmentView *)self highlightPatternRegexFinder];

  if (highlightPatternRegexFinder && v7)
  {
    v19[0] = *MEMORY[0x277D740C0];
    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    v20[0] = secondaryLabelColor2;
    v19[1] = *MEMORY[0x277D740A8];
    v10 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74420]];
    ic_fontWithSingleLineA = [v10 ic_fontWithSingleLineA];
    v20[1] = ic_fontWithSingleLineA;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v12];
    if (v13)
    {
      highlightPatternRegexFinder2 = [(ICGalleryAttachmentView *)self highlightPatternRegexFinder];
      iCTintColor = [MEMORY[0x277D75348] ICTintColor];
      v16 = [v13 ic_attributedStringByHighlightingRegexFinderMatches:highlightPatternRegexFinder2 withHighlightColor:iCTintColor];

      titleLabel2 = [(ICGalleryAttachmentView *)self titleLabel];
      [titleLabel2 setAttributedText:v16];
    }
  }

  else
  {
    titleLabel3 = [(ICGalleryAttachmentView *)self titleLabel];
    [titleLabel3 setText:v7];
  }
}

- (void)didUpdateSubAttachmentItems
{
  collectionViewLayout = [(ICGalleryAttachmentView *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  collectionView = [(ICGalleryAttachmentView *)self collectionView];
  [collectionView reloadData];

  galleryEditorController = [(ICGalleryAttachmentView *)self galleryEditorController];
  [galleryEditorController updateDocumentViewControllerFromModel];

  [(ICGalleryAttachmentView *)self updateActivityView];
}

- (void)didUpdateSubAttachmentAtIndex:(int64_t)index sizeDidChange:(BOOL)change
{
  changeCopy = change;
  v13[1] = *MEMORY[0x277D85DE8];
  collectionView = [(ICGalleryAttachmentView *)self collectionView];
  v8 = [collectionView numberOfItemsInSection:0];

  if (v8 > index)
  {
    collectionView2 = [(ICGalleryAttachmentView *)self collectionView];
    v10 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [collectionView2 reloadItemsAtIndexPaths:v11];

    if (changeCopy)
    {
      collectionViewLayout = [(ICGalleryAttachmentView *)self collectionViewLayout];
      [collectionViewLayout invalidateLayout];
    }
  }

  [(ICGalleryAttachmentView *)self updateActivityView];
}

- (void)updateActivityView
{
  v20 = *MEMORY[0x277D85DE8];
  attachment = [(ICGalleryAttachmentView *)self attachment];
  needsInitialFetchFromCloud = [attachment needsInitialFetchFromCloud];

  if (needsInitialFetchFromCloud)
  {
    v5 = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subAttachmentItems = [(ICGalleryAttachmentView *)self subAttachmentItems];
    v7 = [subAttachmentItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(subAttachmentItems);
          }

          attachment2 = [*(*(&v15 + 1) + 8 * i) attachment];
          v13 = attachment2 == 0;

          v9 |= v13;
        }

        v8 = [subAttachmentItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
      v5 = v9 ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  activityView = [(ICGalleryAttachmentView *)self activityView];
  [activityView setCollapsed:v5 & 1];
}

- (void)openAttachmentAtIndex:(unint64_t)index
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (![(ICAttachmentView *)self showRecoverNoteAlertIfNecessary])
  {
    objc_opt_class();
    attachment = [(ICGalleryAttachmentView *)self attachment];
    attachmentModel = [attachment attachmentModel];
    v7 = ICCheckedDynamicCast();

    if ([v7 subAttachmentCount])
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
      [(ICGalleryAttachmentView *)self setIndexPathForZoomTransition:v8];

      galleryEditorController = [(ICGalleryAttachmentView *)self galleryEditorController];

      if (!galleryEditorController)
      {
        v10 = [ICGalleryAttachmentEditorController alloc];
        attachment2 = [(ICGalleryAttachmentView *)self attachment];
        v12 = [(ICGalleryAttachmentEditorController *)v10 initWithGalleryAttachment:attachment2 browserMode:0 delegate:self];
        [(ICGalleryAttachmentView *)self setGalleryEditorController:v12];
      }

      v13 = [v7 singleSubAttachmentAtIndex:index];
      if (_UIApplicationIsExtension())
      {
        v14 = [ICAttachmentPresenter alloc];
        attachment3 = [(ICGalleryAttachmentView *)self attachment];
        v26[0] = attachment3;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
        attachment4 = [(ICGalleryAttachmentView *)self attachment];
        isReadOnly = [attachment4 isReadOnly];
        window = [(ICGalleryAttachmentView *)self window];
        rootViewController = [window rootViewController];
        v21 = [(ICAttachmentPresenter *)v14 initWithViewControllerManager:0 attachments:v16 startingAtIndex:0 delegate:self displayShowInNote:0 editable:isReadOnly ^ 1u presentingViewController:rootViewController];
        [(ICGalleryAttachmentView *)self setIPhoneSystemPaperAttachmentPresenter:v21];

        iPhoneSystemPaperAttachmentPresenter = [(ICGalleryAttachmentView *)self iPhoneSystemPaperAttachmentPresenter];
        [iPhoneSystemPaperAttachmentPresenter presentAttachmentWithSelectedSubAttachment:v13];
      }

      else
      {
        ic_viewControllerManager = [(ICGalleryAttachmentView *)self ic_viewControllerManager];
        attachment5 = [(ICGalleryAttachmentView *)self attachment];
        attachment6 = [(ICGalleryAttachmentView *)self attachment];
        [ic_viewControllerManager presentAttachment:attachment5 delegate:self displayShowInNote:0 editable:objc_msgSend(attachment6 selectedSubAttachment:"isReadOnly") ^ 1 presentingViewController:{v13, 0}];
      }
    }
  }
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  galleryEditorController = [(ICGalleryAttachmentView *)self galleryEditorController];
  v9 = [pathCopy row];

  v10 = [indexPathCopy row];
  [galleryEditorController movePageFromIndex:v9 toIndex:v10];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(ICGalleryAttachmentView *)self subAttachmentItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  collectionView = [(ICGalleryAttachmentView *)self collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"ICGalleryViewCollectionViewCell" forIndexPath:pathCopy];
  v8 = ICCheckedDynamicCast();

  v9 = [pathCopy row];
  subAttachmentItems = [(ICGalleryAttachmentView *)self subAttachmentItems];
  v11 = [subAttachmentItems count];

  if (v9 >= v11)
  {
    v16 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ICGalleryAttachmentView(PlatformSpecificResponsibilty) *)pathCopy collectionView:v16 cellForItemAtIndexPath:?];
    }
  }

  else
  {
    [v8 setDelegate:self];
    subAttachmentItems2 = [(ICGalleryAttachmentView *)self subAttachmentItems];
    v13 = [subAttachmentItems2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    attachment = [v13 attachment];
    [v8 setAttachment:attachment];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v8 setBackgroundColor:clearColor];
  }

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  item = [path item];

  [(ICGalleryAttachmentView *)self openAttachmentAtIndex:item];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionViewLayout = [(ICGalleryAttachmentView *)self collectionViewLayout];
  [collectionViewLayout itemSize];
  v9 = v8;
  v11 = v10;

  item = [pathCopy item];
  subAttachmentItems = [(ICGalleryAttachmentView *)self subAttachmentItems];
  v14 = [subAttachmentItems count];

  if (item < v14)
  {
    subAttachmentItems2 = [(ICGalleryAttachmentView *)self subAttachmentItems];
    v16 = [subAttachmentItems2 objectAtIndexedSubscript:item];

    attachment = [v16 attachment];

    if (attachment)
    {
      v18 = objc_opt_class();
      attachment2 = [v16 attachment];
      [attachment2 sizeWidth];
      v21 = v20;
      attachment3 = [v16 attachment];
      [attachment3 sizeHeight];
      [v18 effectiveAspectRatioForWidth:v21 height:v23];
      v25 = v24;

      collectionViewLayout2 = [(ICGalleryAttachmentView *)self collectionViewLayout];
      [collectionViewLayout2 itemHeight];
      v9 = round(v25 * v27);

      collectionViewLayout3 = [(ICGalleryAttachmentView *)self collectionViewLayout];
      [collectionViewLayout3 itemHeight];
      v11 = v29;
    }
  }

  v30 = v9;
  v31 = v11;
  result.height = v31;
  result.width = v30;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v5 = 9.0;
  v6 = 9.0;
  v7 = 9.0;
  v8 = 9.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (double)galleryAttachmentViewItemHeight
{
  collectionViewLayout = [(ICGalleryAttachmentView *)self collectionViewLayout];
  [collectionViewLayout itemHeight];
  v4 = v3;

  return v4;
}

- (id)attachmentPresenter:(id)presenter transitionViewForAttachment:(id)attachment
{
  v5 = [(ICGalleryAttachmentView *)self collectionView:presenter];
  indexPathForZoomTransition = [(ICGalleryAttachmentView *)self indexPathForZoomTransition];
  v7 = [v5 cellForItemAtIndexPath:indexPathForZoomTransition];

  return v7;
}

- (id)attachmentPresenter:(id)presenter transitionViewForIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(ICGalleryAttachmentView *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

  return v7;
}

- (void)scrollCollectionViewToIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  collectionView = [(ICGalleryAttachmentView *)self collectionView];
  if (section < [collectionView numberOfSections])
  {
    item = [pathCopy item];
    collectionView2 = [(ICGalleryAttachmentView *)self collectionView];
    v8 = [collectionView2 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];

    if (item >= v8)
    {
      goto LABEL_5;
    }

    collectionView3 = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView3 scrollToItemAtIndexPath:pathCopy atScrollPosition:8 animated:0];

    collectionView = [(ICGalleryAttachmentView *)self collectionView];
    [collectionView layoutIfNeeded];
  }

LABEL_5:
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  tapGestureRecognizer = [(ICGalleryAttachmentView *)self tapGestureRecognizer];

  if (tapGestureRecognizer == beginCopy)
  {
    attachment = [(ICGalleryAttachmentView *)self attachment];

    if (attachment)
    {
      [beginCopy locationInView:self];
      v9 = v8;
      collectionView = [(ICGalleryAttachmentView *)self collectionView];
      [collectionView frame];
      v12 = v11;

      v6 = v9 < v12;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICGalleryAttachmentView;
    v6 = [(ICGalleryAttachmentView *)&v14 gestureRecognizerShouldBegin:beginCopy];
  }

  return v6;
}

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Scanned document attachment" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityValue
{
  v20.receiver = self;
  v20.super_class = ICGalleryAttachmentView;
  accessibilityValue = [(ICAttachmentView *)&v20 accessibilityValue];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"%lu scans" value:&stru_282757698 table:0];

  v6 = MEMORY[0x277CCACA8];
  subAttachmentItems = [(ICGalleryAttachmentView *)self subAttachmentItems];
  v8 = [v6 localizedStringWithFormat:v5, objc_msgSend(subAttachmentItems, "count")];

  subAttachmentItems2 = [(ICGalleryAttachmentView *)self subAttachmentItems];
  firstObject = [subAttachmentItems2 firstObject];
  attachment = [firstObject attachment];
  ocrSummary = [attachment ocrSummary];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v14 = [ocrSummary stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v14 length])
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [mainBundle2 localizedStringForKey:@"Possible text for first scan: %@" value:&stru_282757698 table:0];

    v17 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v16, v14];
  }

  else
  {
    v17 = 0;
  }

  v18 = __ICAccessibilityStringForVariables();

  return v18;
}

@end