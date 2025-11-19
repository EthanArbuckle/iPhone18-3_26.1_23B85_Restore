@interface ICGalleryAttachmentView
+ (CGSize)sizeOfViewForAttachment:(id)a3 textViewContentWidth:(double)a4 existingView:(id)a5;
+ (double)effectiveAspectRatioForWidth:(double)a3 height:(double)a4;
+ (id)subAttachmentItemsForGalleryAttachment:(id)a3;
+ (id)titleForGalleryAttachment:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)updateItems;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionViewItemHeight;
- (double)galleryAttachmentViewItemHeight;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)attachmentPresenter:(id)a3 transitionViewForAttachment:(id)a4;
- (id)attachmentPresenter:(id)a3 transitionViewForIndexPath:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)indexPathForItemClosestToPoint:(CGPoint)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)dealloc;
- (void)didChangeAttachmentTitle;
- (void)didChangeMergeableData;
- (void)didUpdatePreviewImages;
- (void)didUpdateSubAttachmentAtIndex:(int64_t)a3 sizeDidChange:(BOOL)a4;
- (void)didUpdateSubAttachmentItems;
- (void)invalidateCollectionViewLayout;
- (void)invalidateCollectionViewLayoutWithNewItemHeight:(double)a3;
- (void)openAttachment;
- (void)openAttachmentAtIndex:(unint64_t)a3;
- (void)respondToLongPressReorderingGesture:(id)a3;
- (void)scrollCollectionViewToIndexPath:(id)a3;
- (void)setAttachment:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightColor:(id)a3;
- (void)setHighlightPatternRegexFinder:(id)a3;
- (void)setupCollectionViewIfNecessary;
- (void)updateActivityView;
- (void)updateAttachmentTitleLabel;
- (void)updateItemForObjectID:(id)a3;
- (void)updateItemsAndLayout;
@end

@implementation ICGalleryAttachmentView

- (void)dealloc
{
  v3 = [(ICGalleryAttachmentView *)self attachmentDidLoadObserver];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = [(ICGalleryAttachmentView *)self attachmentDidLoadObserver];
    [v4 removeObserver:v5];

    [(ICGalleryAttachmentView *)self setAttachmentDidLoadObserver:0];
  }

  v6 = [(ICGalleryAttachmentView *)self previewImagesDidUpdateObserver];

  if (v6)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = [(ICGalleryAttachmentView *)self previewImagesDidUpdateObserver];
    [v7 removeObserver:v8];

    [(ICGalleryAttachmentView *)self setPreviewImagesDidUpdateObserver:0];
  }

  v9.receiver = self;
  v9.super_class = ICGalleryAttachmentView;
  [(ICAttachmentView *)&v9 dealloc];
}

+ (double)effectiveAspectRatioForWidth:(double)a3 height:(double)a4
{
  result = 0.75;
  if (a3 != 0.0 && a4 != 0.0)
  {
    result = a3 / a4;
    if (a3 / a4 < *MEMORY[0x277D36508])
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

+ (CGSize)sizeOfViewForAttachment:(id)a3 textViewContentWidth:(double)a4 existingView:(id)a5
{
  v8 = a3;
  v9 = [a5 subAttachmentItems];
  if (!v9)
  {
    v9 = [a1 subAttachmentItemsForGalleryAttachment:v8];
  }

  v10 = floor(a4);
  [a1 collectionViewLeftRightMargins];
  v12 = v11;
  [a1 topButtonHeight];
  v14 = v13;
  [a1 collectionViewTopBottomMargins];
  v16 = v15;
  v17 = [v9 count];
  if (v10 <= 0.0 || v17 == 0)
  {
    v19 = 160.0;
    v20 = 160.0;
  }

  else
  {
    [a1 collectionViewLeftRightMargins];
    v22 = v21;
    [a1 collectionViewLeftRightMargins];
    v24 = v23;
    v25 = [v9 firstObject];
    [v25 size];
    v27 = v26;
    [v25 size];
    [objc_opt_class() effectiveAspectRatioForWidth:v28 height:v27];
    v30 = v29;
    [a1 collectionViewMaxHeight];
    if (v27 >= v31)
    {
      v27 = v31;
    }

    [a1 collectionViewMinHeight];
    if (v27 < v32)
    {
      v27 = v32;
    }

    v33 = [a1 collectionViewShouldPeek];
    v34 = [v9 count];
    if (v33 && ((v35 = v34, v36 = [MEMORY[0x277D75418] ic_isiPad], v10 < 500.0) || !v36))
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
          v45 = [v9 objectAtIndexedSubscript:i];
          [v45 size];
          v47 = v46;
          [v45 size];
          [a1 effectiveAspectRatioForWidth:v47 height:?];
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
            v54 = [v9 objectAtIndexedSubscript:v52];
            [v54 size];
            v56 = v55;
            [v54 size];
            [a1 effectiveAspectRatioForWidth:v56 height:?];
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
      [MEMORY[0x277D36798] sizeOfViewForAttachment:v8 textViewContentWidth:v10];
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

+ (id)titleForGalleryAttachment:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  if ([v4 length])
  {
    [v3 title];
  }

  else
  {
    [v3 defaultTitle];
  }
  v5 = ;

  if ([v3 needsInitialFetchFromCloud])
  {
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"Downloading…" value:&stru_282757698 table:0];

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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
      v13 = [(ICGalleryAttachmentView *)self attachment];

      if (v13)
      {
        [(ICGalleryAttachmentView *)self setupCollectionViewIfNecessary];
      }
    }
  }
}

- (void)setAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICGalleryAttachmentView *)self attachment];

  if (v5 != v4)
  {
    v23.receiver = self;
    v23.super_class = ICGalleryAttachmentView;
    [(ICGalleryAttachmentView *)&v23 setAttachment:v4];
    [(ICGalleryAttachmentView *)self invalidateCollectionViewLayout];
    v6 = [(ICGalleryAttachmentView *)self attachmentDidLoadObserver];

    if (v6)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = [(ICGalleryAttachmentView *)self attachmentDidLoadObserver];
      [v7 removeObserver:v8];

      [(ICGalleryAttachmentView *)self setAttachmentDidLoadObserver:0];
    }

    v9 = [(ICGalleryAttachmentView *)self previewImagesDidUpdateObserver];

    if (v9)
    {
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = [(ICGalleryAttachmentView *)self previewImagesDidUpdateObserver];
      [v10 removeObserver:v11];

      [(ICGalleryAttachmentView *)self setPreviewImagesDidUpdateObserver:0];
    }

    if (v4)
    {
      [(ICGalleryAttachmentView *)self updateItems];
      objc_initWeak(&location, self);
      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      v13 = *MEMORY[0x277D35B88];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __41__ICGalleryAttachmentView_setAttachment___block_invoke;
      v20[3] = &unk_2781ABCA8;
      objc_copyWeak(&v21, &location);
      v14 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v20];
      [(ICGalleryAttachmentView *)self setAttachmentDidLoadObserver:v14];

      v15 = [MEMORY[0x277CCAB98] defaultCenter];
      v16 = *MEMORY[0x277D35BB8];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __41__ICGalleryAttachmentView_setAttachment___block_invoke_2;
      v18[3] = &unk_2781ABCA8;
      objc_copyWeak(&v19, &location);
      v17 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v18];
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

- (void)setHighlightColor:(id)a3
{
  v9.receiver = self;
  v9.super_class = ICGalleryAttachmentView;
  v4 = a3;
  [(ICGalleryAttachmentView *)&v9 setHighlightColor:v4];
  if (v4)
  {
    v5 = *MEMORY[0x277D364B0];
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(ICGalleryAttachmentView *)self layer:v9.receiver];
  [v6 setBorderWidth:v5];

  v7 = [v4 CGColor];
  v8 = [(ICGalleryAttachmentView *)self layer];
  [v8 setBorderColor:v7];
}

- (void)setHighlightPatternRegexFinder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICGalleryAttachmentView;
  [(ICGalleryAttachmentView *)&v4 setHighlightPatternRegexFinder:a3];
  [(ICGalleryAttachmentView *)self updateAttachmentTitleLabel];
}

+ (id)subAttachmentItemsForGalleryAttachment:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 attachmentModel];
  v5 = ICCheckedDynamicCast();

  v6 = MEMORY[0x277CBEB18];
  v7 = [v3 subAttachments];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __66__ICGalleryAttachmentView_subAttachmentItemsForGalleryAttachment___block_invoke;
  v16 = &unk_2781ABCD0;
  v17 = v3;
  v18 = v8;
  v9 = v8;
  v10 = v3;
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
  v4 = [(ICGalleryAttachmentView *)self attachment];
  v5 = [v3 subAttachmentItemsForGalleryAttachment:v4];

  v6 = [(ICGalleryAttachmentView *)self subAttachmentItems];
  v7 = [v5 isEqual:v6];

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

- (void)updateItemForObjectID:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D35E00];
  v6 = [(ICGalleryAttachmentView *)self attachment];
  v7 = [v6 managedObjectContext];
  v8 = [v5 ic_existingObjectWithID:v4 context:v7];

  v9 = [v8 parentAttachment];
  v10 = [(ICGalleryAttachmentView *)self attachment];

  if (v9 == v10)
  {
    v11 = [(ICGalleryAttachmentView *)self subAttachmentItems];
    v12 = [v11 count];

    if (v12)
    {
      v13 = 0;
      while (1)
      {
        v14 = [(ICGalleryAttachmentView *)self subAttachmentItems];
        v15 = [v14 objectAtIndexedSubscript:v13];

        v16 = [v15 attachment];

        if (v16 == v8)
        {
          break;
        }

        ++v13;
        v17 = [(ICGalleryAttachmentView *)self subAttachmentItems];
        v18 = [v17 count];

        if (v13 >= v18)
        {
          goto LABEL_2;
        }
      }

      v19 = [v8 managedObjectContext];
      [v19 ic_refreshObject:v8 mergeChanges:0];

      v20 = [v15 updateSize];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__ICGalleryAttachmentView_updateItemForObjectID___block_invoke;
      block[3] = &unk_2781ABD20;
      v22 = v20;
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
  v3 = [(ICGalleryAttachmentView *)self indexPathForPreviewing];
  if (v3)
  {
    v4 = [(ICGalleryAttachmentView *)self indexPathForPreviewing];
    v5 = [v4 row];
    v6 = [(ICGalleryAttachmentView *)self subAttachmentItems];
    v7 = [v6 count];

    if (v5 >= v7)
    {
      v3 = 0;
    }

    else
    {
      v8 = [(ICGalleryAttachmentView *)self indexPathForPreviewing];
      v3 = [v8 row];

      [(ICGalleryAttachmentView *)self setIndexPathForPreviewing:0];
    }
  }

  [(ICGalleryAttachmentView *)self openAttachmentAtIndex:v3];
}

- (id)indexPathForItemClosestToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v36 = *MEMORY[0x277D85DE8];
  v6 = [(ICGalleryAttachmentView *)self collectionView];
  v7 = [v6 indexPathForItemAtPoint:{x, y}];

  if (!v7)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [(ICGalleryAttachmentView *)self collectionView];
    v9 = [v8 indexPathsForVisibleItems];

    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [(ICGalleryAttachmentView *)self collectionView];
          v17 = [v16 cellForItemAtIndexPath:v15];

          [v17 bounds];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v26 = [(ICGalleryAttachmentView *)self collectionView];
          [v17 convertRect:v26 toView:{v19, v21, v23, v25}];

          TSDDistanceToRect();
          if (v27 < v13)
          {
            v28 = v27;
            v29 = v15;

            v13 = v28;
            v7 = v29;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
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

- (void)invalidateCollectionViewLayoutWithNewItemHeight:(double)a3
{
  v5 = [(ICGalleryAttachmentView *)self collectionViewLayout];
  [v5 itemHeight];
  v7 = v6;

  v8 = round(a3);
  if (v8 - v7 >= 0.0)
  {
    v9 = v8 - v7;
  }

  else
  {
    v9 = -(v8 - v7);
  }

  v10 = [(ICGalleryAttachmentView *)self collectionViewLayout];
  [v10 invalidateLayoutWithNewItemHeight:v8];

  if (v7 == 0.0 || v9 > 20.0)
  {
    v12 = [(ICGalleryAttachmentView *)self galleryAttachmentViewCellImageCache];
    [v12 removeAllThumbnailData];

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

  v78 = [MEMORY[0x277CBEB18] array];
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

  v4 = [(ICGalleryAttachmentView *)self titleLabel];

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(ICGalleryAttachmentView *)self setTitleLabel:v5];

    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
    v7 = [(ICGalleryAttachmentView *)self titleLabel];
    [v7 setTextColor:v6];

    v8 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74420]];
    v9 = [v8 ic_fontWithSingleLineA];
    v10 = [(ICGalleryAttachmentView *)self titleLabel];
    [v10 setFont:v9];

    v11 = [(ICGalleryAttachmentView *)self titleLabel];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(ICGalleryAttachmentView *)self titleLabel];
    [v12 setUserInteractionEnabled:0];

    v13 = [(ICGalleryAttachmentView *)self titleLabel];
    [(ICGalleryAttachmentView *)self addSubview:v13];

    v14 = objc_alloc_init(MEMORY[0x277D36778]);
    [(ICGalleryAttachmentView *)self setActivityView:v14];

    v15 = [(ICGalleryAttachmentView *)self activityView];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(ICGalleryAttachmentView *)self activityView];
    [v16 setLeadingSpace:8.0];

    v17 = [(ICGalleryAttachmentView *)self activityView];
    [v17 setTrailingSpace:8.0];

    v18 = [(ICGalleryAttachmentView *)self activityView];
    [v18 setCollapsed:1];

    v19 = [(ICGalleryAttachmentView *)self activityView];
    [(ICGalleryAttachmentView *)self addSubview:v19];

    v20 = [(ICGalleryAttachmentView *)self titleLabel];
    v21 = [v20 leadingAnchor];
    v22 = [(ICGalleryAttachmentView *)self leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:9.0];
    [v78 addObject:v23];

    v24 = [(ICGalleryAttachmentView *)self titleLabel];
    v25 = [v24 trailingAnchor];
    v26 = [(ICGalleryAttachmentView *)self activityView];
    v27 = [v26 leadingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [v78 addObject:v28];

    v29 = [(ICGalleryAttachmentView *)self activityView];
    v30 = [v29 centerYAnchor];
    v31 = [(ICGalleryAttachmentView *)self titleLabel];
    v32 = [v31 centerYAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
    [v78 addObject:v33];

    v34 = [(ICGalleryAttachmentView *)self activityView];
    v35 = [v34 trailingAnchor];
    v36 = [(ICGalleryAttachmentView *)self trailingAnchor];
    v37 = [v35 constraintLessThanOrEqualToAnchor:v36];

    [v78 addObject:v37];
    [(ICGalleryAttachmentView *)self didChangeAttachmentTitle];
  }

  v38 = [(ICGalleryAttachmentView *)self tapGestureRecognizer];

  if (!v38)
  {
    v39 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTapTopOfGalleryView_];
    [(ICGalleryAttachmentView *)self setTapGestureRecognizer:v39];

    v40 = [(ICGalleryAttachmentView *)self tapGestureRecognizer];
    [v40 setDelegate:self];

    v41 = [(ICGalleryAttachmentView *)self tapGestureRecognizer];
    [(ICGalleryAttachmentView *)self addGestureRecognizer:v41];
  }

  v42 = [(ICGalleryAttachmentView *)self collectionView];

  if (!v42)
  {
    objc_opt_class();
    v43 = [(ICGalleryAttachmentView *)self attachment];
    v44 = [v43 attachmentModel];
    v45 = ICCheckedDynamicCast();

    v46 = objc_alloc_init(MEMORY[0x277D35E38]);
    [(ICGalleryAttachmentView *)self setCollectionViewCache:v46];

    v47 = [ICGalleryAttachmentViewCollectionViewLayout alloc];
    [(ICGalleryAttachmentView *)self collectionViewItemHeight];
    v48 = [ICGalleryAttachmentViewCollectionViewLayout initWithAttachmentGalleryModel:v47 itemHeight:"initWithAttachmentGalleryModel:itemHeight:itemSpacing:margins:" itemSpacing:v45 margins:?];
    [(ICGalleryAttachmentView *)self setCollectionViewLayout:v48];

    v49 = objc_alloc(MEMORY[0x277D752A0]);
    v50 = [(ICGalleryAttachmentView *)self collectionViewLayout];
    v51 = [v49 initWithFrame:v50 collectionViewLayout:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];
    [(ICGalleryAttachmentView *)self setCollectionView:v51];

    v52 = [(ICGalleryAttachmentView *)self collectionView];
    v53 = MEMORY[0x277D757B0];
    v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v55 = [v53 nibWithNibName:@"ICGalleryAttachmentViewCell" bundle:v54];
    [v52 registerNib:v55 forCellWithReuseIdentifier:@"ICGalleryViewCollectionViewCell"];

    v56 = [(ICGalleryAttachmentView *)self collectionView];
    [v56 setDelegate:self];

    v57 = [(ICGalleryAttachmentView *)self collectionView];
    [v57 setDataSource:self];

    v58 = [MEMORY[0x277D75348] clearColor];
    v59 = [(ICGalleryAttachmentView *)self collectionView];
    [v59 setBackgroundColor:v58];

    v60 = [(ICGalleryAttachmentView *)self collectionView];
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];

    v61 = [(ICGalleryAttachmentView *)self collectionView];
    [v61 setAlwaysBounceVertical:0];

    v62 = [(ICGalleryAttachmentView *)self collectionView];
    [v62 setShowsVerticalScrollIndicator:0];

    v63 = [(ICGalleryAttachmentView *)self collectionView];
    [v63 setScrollsToTop:0];

    v64 = [(ICGalleryAttachmentView *)self collectionView];
    [(ICGalleryAttachmentView *)self addSubview:v64];

    v65 = [(ICGalleryAttachmentView *)self collectionView];
    v66 = _NSDictionaryOfVariableBindings(&cfstr_Collectionview.isa, v65, 0);
    v67 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-0@900-[collectionView]-0@900-|" options:0 metrics:0 views:v66];
    [v78 addObjectsFromArray:v67];

    v68 = MEMORY[0x277CCAAD0];
    v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"V:|-%g-[collectionView]-0-|", 0x4035000000000000];
    v70 = [v68 constraintsWithVisualFormat:v69 options:0 metrics:0 views:v66];
    [v78 addObjectsFromArray:v70];

    v71 = [(ICGalleryAttachmentView *)self titleLabel];
    v72 = [v71 firstBaselineAnchor];
    v73 = [(ICGalleryAttachmentView *)self collectionView];
    v74 = [v73 topAnchor];
    v75 = [v72 constraintEqualToAnchor:v74];
    [v78 addObject:v75];

    v76 = [(ICGalleryAttachmentView *)self layer];
    [v76 setCornerRadius:9.0];

    v77 = [(ICGalleryAttachmentView *)self layer];
    [v77 setMasksToBounds:1];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v78];
  [(ICGalleryAttachmentView *)self updateActivityView];
}

- (void)respondToLongPressReorderingGesture:(id)a3
{
  v4 = a3;
  v5 = [(ICGalleryAttachmentView *)self collectionView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(ICGalleryAttachmentView *)self collectionView];
  v20 = [v10 indexPathForItemAtPoint:{v7, v9}];
  [(ICGalleryAttachmentView *)self setMovingIndexPath:?];

  v11 = [v4 state];
  if (v11 == 3)
  {
    v15 = [(ICGalleryAttachmentView *)self collectionView];
    [v15 endInteractiveMovement];
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

  if (v11 == 2)
  {
    v14 = [(ICGalleryAttachmentView *)self collectionView];
    [v14 updateInteractiveMovementTargetPosition:{v7, v9}];

    goto LABEL_10;
  }

  if (v11 != 1)
  {
    v15 = [(ICGalleryAttachmentView *)self collectionView];
    [v15 cancelInteractiveMovement];
    goto LABEL_9;
  }

  v12 = v20;
  if (!v20)
  {
    goto LABEL_14;
  }

  v13 = [(ICGalleryAttachmentView *)self collectionView];
  [v13 beginInteractiveMovementForItemAtIndexPath:v20];

LABEL_11:
  v16 = [(ICGalleryAttachmentView *)self collectionView];
  v17 = [v16 cellForItemAtIndexPath:v20];

  v18 = [(ICGalleryAttachmentView *)self movingIndexPath];
  v19 = 0.5;
  if (!v18)
  {
    v19 = 1.0;
  }

  [v17 setAlpha:v19];

  v12 = v20;
LABEL_14:
}

- (void)didChangeAttachmentTitle
{
  v3 = [(ICGalleryAttachmentView *)self galleryEditorController];
  [v3 attachmentTitleDidChange];

  [(ICGalleryAttachmentView *)self updateAttachmentTitleLabel];
}

- (void)updateAttachmentTitleLabel
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] secondaryLabelColor];
  v4 = [(ICGalleryAttachmentView *)self titleLabel];
  [v4 setTextColor:v3];

  v5 = objc_opt_class();
  v6 = [(ICGalleryAttachmentView *)self attachment];
  v7 = [v5 titleForGalleryAttachment:v6];

  v8 = [(ICGalleryAttachmentView *)self highlightPatternRegexFinder];

  if (v8 && v7)
  {
    v19[0] = *MEMORY[0x277D740C0];
    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    v20[0] = v9;
    v19[1] = *MEMORY[0x277D740A8];
    v10 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74420]];
    v11 = [v10 ic_fontWithSingleLineA];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v12];
    if (v13)
    {
      v14 = [(ICGalleryAttachmentView *)self highlightPatternRegexFinder];
      v15 = [MEMORY[0x277D75348] ICTintColor];
      v16 = [v13 ic_attributedStringByHighlightingRegexFinderMatches:v14 withHighlightColor:v15];

      v17 = [(ICGalleryAttachmentView *)self titleLabel];
      [v17 setAttributedText:v16];
    }
  }

  else
  {
    v18 = [(ICGalleryAttachmentView *)self titleLabel];
    [v18 setText:v7];
  }
}

- (void)didUpdateSubAttachmentItems
{
  v3 = [(ICGalleryAttachmentView *)self collectionViewLayout];
  [v3 invalidateLayout];

  v4 = [(ICGalleryAttachmentView *)self collectionView];
  [v4 reloadData];

  v5 = [(ICGalleryAttachmentView *)self galleryEditorController];
  [v5 updateDocumentViewControllerFromModel];

  [(ICGalleryAttachmentView *)self updateActivityView];
}

- (void)didUpdateSubAttachmentAtIndex:(int64_t)a3 sizeDidChange:(BOOL)a4
{
  v4 = a4;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = [(ICGalleryAttachmentView *)self collectionView];
  v8 = [v7 numberOfItemsInSection:0];

  if (v8 > a3)
  {
    v9 = [(ICGalleryAttachmentView *)self collectionView];
    v10 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v9 reloadItemsAtIndexPaths:v11];

    if (v4)
    {
      v12 = [(ICGalleryAttachmentView *)self collectionViewLayout];
      [v12 invalidateLayout];
    }
  }

  [(ICGalleryAttachmentView *)self updateActivityView];
}

- (void)updateActivityView
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(ICGalleryAttachmentView *)self attachment];
  v4 = [v3 needsInitialFetchFromCloud];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(ICGalleryAttachmentView *)self subAttachmentItems];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) attachment];
          v13 = v12 == 0;

          v9 |= v13;
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
      v5 = v9 ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  v14 = [(ICGalleryAttachmentView *)self activityView];
  [v14 setCollapsed:v5 & 1];
}

- (void)openAttachmentAtIndex:(unint64_t)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (![(ICAttachmentView *)self showRecoverNoteAlertIfNecessary])
  {
    objc_opt_class();
    v5 = [(ICGalleryAttachmentView *)self attachment];
    v6 = [v5 attachmentModel];
    v7 = ICCheckedDynamicCast();

    if ([v7 subAttachmentCount])
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
      [(ICGalleryAttachmentView *)self setIndexPathForZoomTransition:v8];

      v9 = [(ICGalleryAttachmentView *)self galleryEditorController];

      if (!v9)
      {
        v10 = [ICGalleryAttachmentEditorController alloc];
        v11 = [(ICGalleryAttachmentView *)self attachment];
        v12 = [(ICGalleryAttachmentEditorController *)v10 initWithGalleryAttachment:v11 browserMode:0 delegate:self];
        [(ICGalleryAttachmentView *)self setGalleryEditorController:v12];
      }

      v13 = [v7 singleSubAttachmentAtIndex:a3];
      if (_UIApplicationIsExtension())
      {
        v14 = [ICAttachmentPresenter alloc];
        v15 = [(ICGalleryAttachmentView *)self attachment];
        v26[0] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
        v17 = [(ICGalleryAttachmentView *)self attachment];
        v18 = [v17 isReadOnly];
        v19 = [(ICGalleryAttachmentView *)self window];
        v20 = [v19 rootViewController];
        v21 = [(ICAttachmentPresenter *)v14 initWithViewControllerManager:0 attachments:v16 startingAtIndex:0 delegate:self displayShowInNote:0 editable:v18 ^ 1u presentingViewController:v20];
        [(ICGalleryAttachmentView *)self setIPhoneSystemPaperAttachmentPresenter:v21];

        v22 = [(ICGalleryAttachmentView *)self iPhoneSystemPaperAttachmentPresenter];
        [v22 presentAttachmentWithSelectedSubAttachment:v13];
      }

      else
      {
        v23 = [(ICGalleryAttachmentView *)self ic_viewControllerManager];
        v24 = [(ICGalleryAttachmentView *)self attachment];
        v25 = [(ICGalleryAttachmentView *)self attachment];
        [v23 presentAttachment:v24 delegate:self displayShowInNote:0 editable:objc_msgSend(v25 selectedSubAttachment:"isReadOnly") ^ 1 presentingViewController:{v13, 0}];
      }
    }
  }
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [(ICGalleryAttachmentView *)self galleryEditorController];
  v9 = [v8 row];

  v10 = [v7 row];
  [v11 movePageFromIndex:v9 toIndex:v10];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(ICGalleryAttachmentView *)self subAttachmentItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [(ICGalleryAttachmentView *)self collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"ICGalleryViewCollectionViewCell" forIndexPath:v5];
  v8 = ICCheckedDynamicCast();

  v9 = [v5 row];
  v10 = [(ICGalleryAttachmentView *)self subAttachmentItems];
  v11 = [v10 count];

  if (v9 >= v11)
  {
    v16 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ICGalleryAttachmentView(PlatformSpecificResponsibilty) *)v5 collectionView:v16 cellForItemAtIndexPath:?];
    }
  }

  else
  {
    [v8 setDelegate:self];
    v12 = [(ICGalleryAttachmentView *)self subAttachmentItems];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
    v14 = [v13 attachment];
    [v8 setAttachment:v14];

    v15 = [MEMORY[0x277D75348] clearColor];
    [v8 setBackgroundColor:v15];
  }

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = [a4 item];

  [(ICGalleryAttachmentView *)self openAttachmentAtIndex:v5];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(ICGalleryAttachmentView *)self collectionViewLayout];
  [v7 itemSize];
  v9 = v8;
  v11 = v10;

  v12 = [v6 item];
  v13 = [(ICGalleryAttachmentView *)self subAttachmentItems];
  v14 = [v13 count];

  if (v12 < v14)
  {
    v15 = [(ICGalleryAttachmentView *)self subAttachmentItems];
    v16 = [v15 objectAtIndexedSubscript:v12];

    v17 = [v16 attachment];

    if (v17)
    {
      v18 = objc_opt_class();
      v19 = [v16 attachment];
      [v19 sizeWidth];
      v21 = v20;
      v22 = [v16 attachment];
      [v22 sizeHeight];
      [v18 effectiveAspectRatioForWidth:v21 height:v23];
      v25 = v24;

      v26 = [(ICGalleryAttachmentView *)self collectionViewLayout];
      [v26 itemHeight];
      v9 = round(v25 * v27);

      v28 = [(ICGalleryAttachmentView *)self collectionViewLayout];
      [v28 itemHeight];
      v11 = v29;
    }
  }

  v30 = v9;
  v31 = v11;
  result.height = v31;
  result.width = v30;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
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
  v2 = [(ICGalleryAttachmentView *)self collectionViewLayout];
  [v2 itemHeight];
  v4 = v3;

  return v4;
}

- (id)attachmentPresenter:(id)a3 transitionViewForAttachment:(id)a4
{
  v5 = [(ICGalleryAttachmentView *)self collectionView:a3];
  v6 = [(ICGalleryAttachmentView *)self indexPathForZoomTransition];
  v7 = [v5 cellForItemAtIndexPath:v6];

  return v7;
}

- (id)attachmentPresenter:(id)a3 transitionViewForIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ICGalleryAttachmentView *)self collectionView];
  v7 = [v6 cellForItemAtIndexPath:v5];

  return v7;
}

- (void)scrollCollectionViewToIndexPath:(id)a3
{
  v10 = a3;
  v4 = [v10 section];
  v5 = [(ICGalleryAttachmentView *)self collectionView];
  if (v4 < [v5 numberOfSections])
  {
    v6 = [v10 item];
    v7 = [(ICGalleryAttachmentView *)self collectionView];
    v8 = [v7 numberOfItemsInSection:{objc_msgSend(v10, "section")}];

    if (v6 >= v8)
    {
      goto LABEL_5;
    }

    v9 = [(ICGalleryAttachmentView *)self collectionView];
    [v9 scrollToItemAtIndexPath:v10 atScrollPosition:8 animated:0];

    v5 = [(ICGalleryAttachmentView *)self collectionView];
    [v5 layoutIfNeeded];
  }

LABEL_5:
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(ICGalleryAttachmentView *)self tapGestureRecognizer];

  if (v5 == v4)
  {
    v7 = [(ICGalleryAttachmentView *)self attachment];

    if (v7)
    {
      [v4 locationInView:self];
      v9 = v8;
      v10 = [(ICGalleryAttachmentView *)self collectionView];
      [v10 frame];
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
    v6 = [(ICGalleryAttachmentView *)&v14 gestureRecognizerShouldBegin:v4];
  }

  return v6;
}

- (id)accessibilityLabel
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Scanned document attachment" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityValue
{
  v20.receiver = self;
  v20.super_class = ICGalleryAttachmentView;
  v3 = [(ICAttachmentView *)&v20 accessibilityValue];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"%lu scans" value:&stru_282757698 table:0];

  v6 = MEMORY[0x277CCACA8];
  v7 = [(ICGalleryAttachmentView *)self subAttachmentItems];
  v8 = [v6 localizedStringWithFormat:v5, objc_msgSend(v7, "count")];

  v9 = [(ICGalleryAttachmentView *)self subAttachmentItems];
  v10 = [v9 firstObject];
  v11 = [v10 attachment];
  v12 = [v11 ocrSummary];
  v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  if ([v14 length])
  {
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 localizedStringForKey:@"Possible text for first scan: %@" value:&stru_282757698 table:0];

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