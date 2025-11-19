@interface SUUIGridPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUIGridPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)_contentInsetForMediaIndex:(int64_t)a3;
- (UIEdgeInsets)_contentInsetForVideoLockupIndex:(int64_t)a3;
- (double)_heightForEditorialAtIndexPath:(id)a3;
- (double)_heightForEditorialLockup:(id)a3;
- (double)_heightForEditorialLockupAtIndexPath:(id)a3;
- (double)_heightForLockupAtIndexPath:(id)a3 gridType:(int64_t)a4;
- (double)_heightForMedia:(id)a3 width:(double)a4;
- (double)_heightForMediaAtIndexPath:(id)a3;
- (double)_mediaWidthForMediaIndex:(int64_t)a3 gridWidth:(double)a4;
- (id)_artworkContextForLockupSize:(int64_t)a3;
- (id)_cellImageForItem:(id)a3 lockupSize:(int64_t)a4;
- (id)_editorialCellWithEditorials:(id)a3 indexPath:(id)a4;
- (id)_editorialLayoutForEditorial:(id)a3;
- (id)_editorialLayoutForLockup:(id)a3;
- (id)_editorialLockupCellWithLockups:(id)a3 indexPath:(id)a4;
- (id)_itemCellWithLockups:(id)a3 indexPath:(id)a4;
- (id)_itemForIndex:(int64_t)a3;
- (id)_mediaCellWithMedia:(id)a3 indexPath:(id)a4;
- (id)_missingItemLoader;
- (id)_newSizeToFitArtworkRequestWithArtwork:(id)a3 mediaIndex:(int64_t)a4;
- (id)_popSourceViewForOverlayController:(id)a3;
- (id)_videoThumbnailImageForVideo:(id)a3 thumbnailSize:(CGSize)a4;
- (id)cellForIndexPath:(id)a3;
- (id)clickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5;
- (id)itemOfferClickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5;
- (int64_t)_numberOfLandscapeColumnsWithGridType:(int64_t)a3;
- (int64_t)_numberOfPortraitColumnsWithGridType:(int64_t)a3;
- (int64_t)numberOfCells;
- (void)_enumerateItemsFromStartIndex:(int64_t)a3 withBlock:(id)a4;
- (void)_enumerateVisibleIndexPathsWithBlock:(id)a3;
- (void)_enumerateVisibleItemsWithBlock:(id)a3;
- (void)_loadImageForItem:(id)a3 lockupSize:(int64_t)a4 loader:(id)a5 reason:(int64_t)a6;
- (void)_loadImageForVideo:(id)a3 thumbnailSize:(CGSize)a4 loader:(id)a5 reason:(int64_t)a6;
- (void)_loadMissingItemsFromIndex:(int64_t)a3 withReason:(int64_t)a4;
- (void)_reloadEditorialLockupCell:(id)a3 withLockup:(id)a4 index:(int64_t)a5;
- (void)_reloadItemCell:(id)a3 withLockup:(id)a4 index:(int64_t)a5;
- (void)_selectItem:(id)a3 withIndex:(int64_t)a4;
- (void)_setPositionForClickEvent:(id)a3 withElementIndex:(int64_t)a4;
- (void)_showProductPageWithItem:(id)a3 index:(int64_t)a4 animated:(BOOL)a5;
- (void)_updateVisibileEditorialWithEditorialOrientation:(int64_t)a3;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionViewDidConfirmItemOfferAtIndexPath:(id)a3;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewDidSelectItemAtIndexPath:(id)a3;
- (void)collectionViewDidTapVideoAtIndexPath:(id)a3;
- (void)collectionViewWillApplyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4;
- (void)itemStateCenterRestrictionsChanged:(id)a3;
- (void)mediaView:(id)a3 playbackStateDidChange:(int64_t)a4;
- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)productPageOverlayDidDismiss:(id)a3;
- (void)willAppearInContext:(id)a3;
- (void)willHideInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIGridPageSection

- (SUUIGridPageSection)initWithPageComponent:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = SUUIGridPageSection;
  v5 = [(SUUIStorePageSection *)&v34 initWithPageComponent:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:0];
    v7 = *(v5 + 11);
    *(v5 + 11) = v6;

    v8 = [MEMORY[0x277D75418] currentDevice];
    v5[129] = [v8 userInterfaceIdiom] == 1;

    *(v5 + 23) = 0x7FFFFFFFFFFFFFFFLL;
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 scale];
    *(v5 + 24) = v10;

    v11 = [v4 gridType];
    if (v11 <= 5)
    {
      v12 = v11;
      if (((1 << v11) & 0x23) != 0)
      {
        v13 = [v4 children];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v30 + 1) + 8 * i);
              if (v18)
              {
                [*(*(&v30 + 1) + 8 * i) lockupStyle];
                v19 = v29;
              }

              else
              {
                v19 = 0;
                v29 = 0;
              }

              v20 = [v18 item];
              v21 = SUUILockupImageSizeForLockupSize(v19, [v20 itemKind]);
              v27 = v22;
              v28 = v21;

              v23.f64[0] = v28;
              *&v23.f64[1] = v27;
              *(v5 + 136) = vbslq_s8(vcgtq_f64(*(v5 + 136), v23), *(v5 + 136), v23);
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v15);
        }

        v5[104] = 1;

        if (v12 == 5)
        {
          v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v25 = *(v5 + 27);
          *(v5 + 27) = v24;
        }
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[SUUIItemStateCenter defaultCenter];
  [v3 removeObserver:self];

  [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  [(SUUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  v4.receiver = self;
  v4.super_class = SUUIGridPageSection;
  [(SUUIStorePageSection *)&v4 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (self->_containsLockups)
  {
    v7 = [v19 item];
    v8 = [(SUUIStorePageSection *)self pageComponent];
    v9 = [v8 children];

    if (v7 < [v9 count])
    {
      v10 = [v9 objectAtIndex:v7];
      v11 = [v10 item];
      [v6 addItemIdentifier:{objc_msgSend(v11, "itemIdentifier")}];
    }
  }

  v12 = [(SUUIStorePageSection *)self pageComponent];
  v13 = [v12 viewElement];
  [v6 addItemViewElement:v13];

  v14 = [v19 item];
  v15 = [(SUUIStorePageSection *)self pageComponent];
  v16 = [v15 children];

  v17 = [v16 objectAtIndex:v14];
  v18 = [v17 viewElement];
  [v6 addItemViewElement:v18];
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 gridType];
  v7 = 0;
  if (v6 > 2)
  {
    if (v6 != 5)
    {
      if (v6 == 4)
      {
        v8 = [v5 children];
        v9 = [(SUUIGridPageSection *)self _mediaCellWithMedia:v8 indexPath:v4];
      }

      else
      {
        if (v6 != 3)
        {
          goto LABEL_12;
        }

        v8 = [v5 children];
        v9 = [(SUUIGridPageSection *)self _editorialCellWithEditorials:v8 indexPath:v4];
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (!v6)
  {
LABEL_9:
    v8 = [v5 children];
    v9 = [(SUUIGridPageSection *)self _itemCellWithLockups:v8 indexPath:v4];
    goto LABEL_11;
  }

  if (v6 != 1)
  {
    goto LABEL_12;
  }

  v8 = [v5 children];
  v9 = [(SUUIGridPageSection *)self _editorialLockupCellWithLockups:v8 indexPath:v4];
LABEL_11:
  v7 = v9;

LABEL_12:

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = a3;
  if (self->_isPad)
  {
    v5 = 95.0;
  }

  else
  {
    v5 = 84.0;
  }

  v6 = [(SUUIStorePageSection *)self pageComponent];
  v7 = [v6 gridType];

  if (v7 > 2)
  {
    if (v7 != 5)
    {
      if (v7 == 4)
      {
        [(SUUIGridPageSection *)self _heightForMediaAtIndexPath:v4];
      }

      else
      {
        if (v7 != 3)
        {
          goto LABEL_15;
        }

        [(SUUIGridPageSection *)self _heightForEditorialAtIndexPath:v4];
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_12:
    [(SUUIGridPageSection *)self _heightForLockupAtIndexPath:v4 gridType:v7];
    goto LABEL_14;
  }

  if (v7 != 1)
  {
    goto LABEL_15;
  }

  [(SUUIGridPageSection *)self _heightForEditorialLockupAtIndexPath:v4];
LABEL_14:
  v5 = v8;
LABEL_15:
  v9 = [(SUUIStorePageSection *)self context];
  v10 = [v9 collectionView];
  [v10 bounds];
  v12 = v11;

  numberOfColumns = self->_numberOfColumns;
  if (numberOfColumns != 1)
  {
    if (v7 == 5)
    {
      -[SUUIGridPageSection _contentInsetForVideoLockupIndex:](self, "_contentInsetForVideoLockupIndex:", [v4 item]);
      v12 = v15 + v14 + 221.0;
    }

    else
    {
      v16 = v12 / numberOfColumns;
      v12 = floorf(v16);
    }
  }

  v17 = v12;
  v18 = v5;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)clickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = SUUIGridPageSection;
  v7 = [(SUUIStorePageSection *)&v9 clickEventWithItem:a3 elementName:a4 index:?];
  [(SUUIGridPageSection *)self _setPositionForClickEvent:v7 withElementIndex:a5];

  return v7;
}

- (void)collectionViewDidConfirmItemOfferAtIndexPath:(id)a3
{
  v13 = a3;
  v4 = [v13 item];
  v5 = [(SUUIGridPageSection *)self _itemForIndex:v4];
  if (v5)
  {
    v6 = [(SUUIStorePageSection *)self context];
    v7 = [(SUUIGridPageSection *)self itemOfferClickEventWithItem:v5 elementName:*MEMORY[0x277D6A4E0] index:v4];
    if (v7)
    {
      v8 = [v6 metricsController];
      [v8 recordEvent:v7];
    }

    v9 = [v6 collectionView];
    v10 = [v9 cellForItemAtIndexPath:v13];

    v11 = [(SUUIStorePageSection *)self performItemOfferActionForItem:v5];
    v12 = [v10 layout];
    [v12 setItemState:v11 animated:1];
  }
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = -[SUUIGridPageSection _itemForIndex:](self, "_itemForIndex:", [a3 item]);
  v5 = v4;
  if (v4)
  {
    v10 = v4;
    v6 = [(NSMapTable *)self->_artworkRequests objectForKey:v4];
    if (v6)
    {
      v7 = [(SUUIStorePageSection *)self context];
      v8 = [v7 resourceLoader];
      v9 = [v8 trySetReason:0 forRequestWithIdentifier:{objc_msgSend(v6, "unsignedIntegerValue")}];

      if ((v9 & 1) == 0)
      {
        [(NSMapTable *)self->_artworkRequests removeObjectForKey:v10];
      }
    }

    v5 = v10;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)a3
{
  v15 = a3;
  v4 = [(SUUIStorePageSection *)self pageComponent];
  v5 = [v15 item];
  v6 = [(SUUIGridPageSection *)self _itemForIndex:v5];
  if (v6)
  {
    [(SUUIGridPageSection *)self _selectItem:v6 withIndex:v5];
  }

  else if ([v4 gridType] == 4)
  {
    v7 = [v4 children];
    if (v5 < [v7 count])
    {
      v8 = [(SUUIStorePageSection *)self context];
      v9 = [v7 objectAtIndex:v5];
      v10 = [(SUUIStorePageSection *)self clickEventWithMedia:v9 elementName:*MEMORY[0x277D6A4E0] index:v5];
      if (v10)
      {
        v11 = [v8 metricsController];
        [v11 recordEvent:v10];
      }

      if ([v9 mediaType])
      {
        v12 = [v8 collectionView];
        v13 = [v12 cellForItemAtIndexPath:v15];

        v14 = [v13 mediaView];
        [v14 beginPlaybackAnimated:1];
      }

      else
      {
        v13 = [v9 link];
        [(SUUIStorePageSection *)self showPageWithLink:v13];
      }
    }
  }
}

- (void)collectionViewDidTapVideoAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[SUUIGridPageSection _itemForIndex:](self, "_itemForIndex:", [v4 item]);
  v6 = [v5 videos];
  v7 = [v6 firstObject];

  v8 = [v7 URL];
  if (v8)
  {
    v9 = [(SUUIStorePageSection *)self context];
    v10 = [v9 collectionView];

    v11 = [v10 cellForItemAtIndexPath:v4];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __60__SUUIGridPageSection_collectionViewDidTapVideoAtIndexPath___block_invoke;
    v18 = &unk_2798F79A0;
    v19 = v10;
    v20 = v11;
    v12 = v11;
    v13 = v10;
    [(SUUIGridPageSection *)self _enumerateVisibleIndexPathsWithBlock:&v15];
    [v13 scrollToItemAtIndexPath:v4 atScrollPosition:2 animated:{1, v15, v16, v17, v18}];
    v14 = [v12 layout];
    [v14 playInlineVideoWithURL:v8];
  }
}

void __60__SUUIGridPageSection_collectionViewDidTapVideoAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) cellForItemAtIndexPath:a2];
  if (*(a1 + 40) != v3)
  {
    v5 = v3;
    v4 = [v3 layout];
    [v4 endVideoPlaybackAnimated:1];

    v3 = v5;
  }
}

- (void)collectionViewWillApplyLayoutAttributes:(id)a3
{
  v4 = a3;
  v8 = [v4 indexPath];
  v5 = [v8 item];
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:v5 / self->_numberOfColumns inSection:{objc_msgSend(v8, "section")}];
  v7 = [(SUUIStorePageSection *)self backgroundColorForIndexPath:v6];
  [v4 setBackgroundColor:v7];
}

- (id)itemOfferClickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = SUUIGridPageSection;
  v7 = [(SUUIStorePageSection *)&v9 itemOfferClickEventWithItem:a3 elementName:a4 index:?];
  [(SUUIGridPageSection *)self _setPositionForClickEvent:v7 withElementIndex:a5];

  return v7;
}

- (int64_t)numberOfCells
{
  v2 = [(SUUIStorePageSection *)self pageComponent];
  v3 = [v2 children];
  v4 = [v3 count];

  return v4;
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_containsLockups)
  {
    v5 = [(SUUIStorePageSection *)self context];
    v6 = [v5 collectionView];
    v7 = [v6 indexPathsForVisibleItems];

    v8 = [(SUUIStorePageSection *)self sectionIndex];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v7;
    v10 = 0;
    v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          if ([v14 section] == v8)
          {
            v15 = [v14 item];
            if (v10 <= v15)
            {
              v10 = v15;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);
    }

    v16 = [v5 resourceLoader];
    v17 = [(SUUIStorePageSection *)self pageComponent];
    v18 = [v17 gridType];

    v19 = [(SUUIStorePageSection *)self pageComponent];
    v20 = v19;
    if (v19)
    {
      [v19 lockupStyle];
      v21 = v30;
    }

    else
    {
      v21 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
    }

    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__SUUIGridPageSection_prefetchResourcesWithReason___block_invoke;
    v23[3] = &unk_2798F79C8;
    v23[4] = self;
    v22 = v16;
    v26 = a3;
    v27 = v21;
    v24 = v22;
    v25 = v29;
    v28 = v18;
    [(SUUIGridPageSection *)self _enumerateItemsFromStartIndex:v10 withBlock:v23];
    [(SUUIGridPageSection *)self _loadMissingItemsFromIndex:0 withReason:a3];

    _Block_object_dispose(v29, 8);
  }
}

void __51__SUUIGridPageSection_prefetchResourcesWithReason___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v12 = a2;
  v5 = [*(*(a1 + 32) + 88) objectForKey:?];
  v6 = v5;
  if (v5 && [*(a1 + 40) trySetReason:*(a1 + 56) forRequestWithIdentifier:{objc_msgSend(v5, "unsignedIntegerValue")}])
  {
    if (*a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [*(a1 + 32) _loadImageForItem:v12 lockupSize:*(a1 + 64) loader:*(a1 + 40) reason:*(a1 + 56)];
    v7 = ++*(*(*(a1 + 48) + 8) + 24);
    *a3 = v7 > 19;
    if (v7 > 19)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 72) == 5)
  {
    v8 = [v12 videos];
    v9 = [v8 firstObject];

    if (v9)
    {
      v10 = [*(*(a1 + 32) + 88) objectForKey:v9];
      v11 = v10;
      if (!v10 || ([*(a1 + 40) trySetReason:*(a1 + 56) forRequestWithIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}] & 1) == 0)
      {
        [SUUILockupItemCellLayout videoThumbnailSizeForVideo:v9 clientContext:*(*(a1 + 32) + 96)];
        [*(a1 + 32) _loadImageForVideo:v9 thumbnailSize:*(a1 + 40) loader:*(a1 + 56) reason:?];
        *a3 = ++*(*(*(a1 + 48) + 8) + 24) > 19;
      }
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_13:
}

- (void)willAppearInContext:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFB0C0];
  v6 = +[SUUIItemStateCenter defaultCenter];
  [v6 addObserver:self];

  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 gridType];
  if ((v8 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v9 = [v7 children];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v35;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [v14 componentType];
        if (v15 == 5)
        {
          v16 = [(SUUIGridPageSection *)self _editorialLayoutForEditorial:v14];
        }

        else
        {
          if (v15 != 9)
          {
            continue;
          }

          v16 = [(SUUIGridPageSection *)self _editorialLayoutForLockup:v14];
        }

        v17 = v16;
        [v16 enqueueLayoutRequests];
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v11)
      {
LABEL_14:

        break;
      }
    }
  }

  [v5 bounds];
  if (self->_isPad)
  {
    if (v18 <= v19)
    {
      self->_isLandscape = 0;
      v20 = [(SUUIGridPageSection *)self _numberOfPortraitColumnsWithGridType:v8];
    }

    else
    {
      self->_isLandscape = 1;
      v20 = [(SUUIGridPageSection *)self _numberOfLandscapeColumnsWithGridType:v8];
    }

    self->_numberOfColumns = v20;
  }

  else
  {
    self->_isLandscape = 0;
    self->_numberOfColumns = 1;
    if (v18 > v19)
    {
      v21 = [MEMORY[0x277D759A0] mainScreen];
      [v21 bounds];
      v23 = v22;

      if (v23 > 375.0)
      {
        self->_isLandscape = 1;
        self->_numberOfColumns = 2;
      }
    }
  }

  v24 = [v4 parentViewController];
  v25 = [v24 clientContext];
  clientContext = self->_clientContext;
  self->_clientContext = v25;

  v27 = objc_alloc_init(SUUIVideoImageDataConsumer);
  videoImageDataConsumer = self->_videoImageDataConsumer;
  self->_videoImageDataConsumer = v27;

  v29 = self->_videoImageDataConsumer;
  v30 = [v4 colorScheme];
  [(SUUIVideoImageDataConsumer *)v29 setColorScheme:v30];

  v31 = SUUIUserInterfaceIdiom(self->_clientContext);
  v32 = self->_videoImageDataConsumer;
  if (v31 == 1)
  {
    [(SUUIVideoImageDataConsumer *)v32 setAllowedOrientations:2];
    [(SUUIVideoImageDataConsumer *)self->_videoImageDataConsumer setLandscapeSize:221.0, 166.0];
  }

  else
  {
    [(SUUIVideoImageDataConsumer *)v32 setAllowedOrientations:3];
    [(SUUIVideoImageDataConsumer *)self->_videoImageDataConsumer setLandscapeSize:320.0, 180.0];
    [(SUUIVideoImageDataConsumer *)self->_videoImageDataConsumer setPortraitSize:180.0, 320.0];
  }

  v33.receiver = self;
  v33.super_class = SUUIGridPageSection;
  [(SUUIStorePageSection *)&v33 willAppearInContext:v4];
}

- (void)willHideInContext:(id)a3
{
  v4 = a3;
  v5 = +[SUUIItemStateCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SUUIGridPageSection;
  [(SUUIStorePageSection *)&v6 willHideInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if (self->_isPad || ([MEMORY[0x277D759A0] mainScreen], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "bounds"), v10 = v9, v8, v10 > 375.0))
  {
    self->_isLandscape = width > height;
    v11 = [(SUUIStorePageSection *)self pageComponent];
    v12 = [v11 gridType];
    if ((v12 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      [(SUUIGridPageSection *)self _updateVisibileEditorialWithEditorialOrientation:self->_isLandscape];
    }

    if (self->_isPad)
    {
      if (self->_isLandscape)
      {
        v13 = [(SUUIGridPageSection *)self _numberOfLandscapeColumnsWithGridType:v12];
      }

      else
      {
        v13 = [(SUUIGridPageSection *)self _numberOfPortraitColumnsWithGridType:v12];
      }
    }

    else if (self->_isLandscape)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    self->_numberOfColumns = v13;
    if (v12 == 5)
    {
      v14 = [(SUUIStorePageSection *)self context];
      v15 = [v14 collectionView];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __70__SUUIGridPageSection_willTransitionToSize_withTransitionCoordinator___block_invoke;
      v18[3] = &unk_2798F79A0;
      v19 = v15;
      v20 = self;
      v16 = v15;
      [(SUUIGridPageSection *)self _enumerateVisibleIndexPathsWithBlock:v18];
    }
  }

  v17.receiver = self;
  v17.super_class = SUUIGridPageSection;
  [(SUUIStorePageSection *)&v17 willTransitionToSize:v7 withTransitionCoordinator:width, height];
}

void __70__SUUIGridPageSection_willTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 cellForItemAtIndexPath:v4];
  v5 = [v8 layout];
  v6 = *(a1 + 40);
  v7 = [v4 item];

  [v6 _contentInsetForVideoLockupIndex:v7];
  [v5 setContentInsets:?];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 collectionView];

  v10 = [v7 requestIdentifier];
  containsLockups = self->_containsLockups;
  v12 = [(SUUIStorePageSection *)self pageComponent];
  v13 = v12;
  if (containsLockups)
  {
    v14 = [v12 gridType];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__SUUIGridPageSection_artworkRequest_didLoadImage___block_invoke;
    v25[3] = &unk_2798F79F0;
    v25[4] = self;
    v26 = v9;
    v27 = v6;
    v28 = v10;
    v29 = v14;
    v15 = v6;
    v16 = v9;
    [(SUUIGridPageSection *)self _enumerateVisibleItemsWithBlock:v25];
  }

  else
  {
    v17 = [v12 children];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__SUUIGridPageSection_artworkRequest_didLoadImage___block_invoke_2;
    v19[3] = &unk_2798F7A18;
    v20 = v17;
    v21 = self;
    v23 = v6;
    v24 = v10;
    v22 = v9;
    v18 = v6;
    v15 = v9;
    v16 = v17;
    [(SUUIGridPageSection *)self _enumerateVisibleIndexPathsWithBlock:v19];
  }
}

void __51__SUUIGridPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = [*(*(a1 + 32) + 88) objectForKey:v17];
  v9 = v8;
  if (v8 && [v8 unsignedIntegerValue] == *(a1 + 56))
  {
    v10 = [*(a1 + 40) cellForItemAtIndexPath:v7];
    v11 = [v10 layout];
    [v11 setIconImage:*(a1 + 48)];

    *a4 = 1;
  }

  else
  {
    if (*(a1 + 64) != 5)
    {
      goto LABEL_12;
    }

    v12 = [v17 videos];
    v10 = [v12 firstObject];

    if (v10)
    {
      v13 = [*(*(a1 + 32) + 88) objectForKey:v10];
      v14 = v13;
      if (v13 && [v13 unsignedIntegerValue] == *(a1 + 56))
      {
        v15 = [*(a1 + 40) cellForItemAtIndexPath:v7];
        v16 = [v15 layout];
        [v16 setVideoThumbnailImage:*(a1 + 48)];

        *a4 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_12:
}

void __51__SUUIGridPageSection_artworkRequest_didLoadImage___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 item];
  if (v5 < [*(a1 + 32) count])
  {
    v6 = *(*(a1 + 40) + 88);
    v7 = [*(a1 + 32) objectAtIndex:v5];
    v8 = [v6 objectForKey:v7];

    if (v8 && [v8 unsignedIntegerValue] == *(a1 + 64))
    {
      v9 = [*(a1 + 48) cellForItemAtIndexPath:v11];
      v10 = [v9 mediaView];
      [v10 setThumbnailImage:*(a1 + 56)];

      *a3 = 1;
    }
  }
}

- (void)mediaView:(id)a3 playbackStateDidChange:(int64_t)a4
{
  v39[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SUUIStorePageSection *)self context];
  v8 = [v7 collectionView];
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];

  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;

  v22 = [v8 indexPathForItemAtPoint:{v19, v21}];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 section];
    if (v24 == [(SUUIStorePageSection *)self sectionIndex])
    {
      v25 = [(SUUIStorePageSection *)self context];
      v26 = [v25 metricsController];

      if ([v26 canRecordEventWithType:*MEMORY[0x277D6A488]])
      {
        v27 = objc_alloc_init(MEMORY[0x277D69BA8]);
        v28 = SUUIMetricsMediaEventTypeForPlaybackState(a4);
        [v27 setMediaEventType:v28];

        v29 = [(SUUIStorePageSection *)self pageComponent];
        v30 = [v29 children];
        v31 = [v30 objectAtIndex:{objc_msgSend(v23, "item")}];

        v32 = [v26 locationWithPageComponent:v29];
        v33 = [v26 locationWithPageComponent:v31];
        v34 = v33;
        if (v32 && v33)
        {
          v39[0] = v33;
          v39[1] = v32;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
          [v27 setLocationWithEventLocations:v35];
        }

        v36 = [v31 mediaIdentifier];
        if (v36)
        {
          v37 = [MEMORY[0x277CCABB0] numberWithLongLong:v36];
          [v27 setItemIdentifier:v37];
        }

        v38 = [v31 mediaURLString];
        [v27 setMediaURL:v38];

        [v26 recordEvent:v27];
      }
    }
  }
}

- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 itemIdentifier];
        [v6 setObject:v12 forKey:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SUUIGridPageSection_itemStateCenter_itemStatesChanged___block_invoke;
  v15[3] = &unk_2798F5AF8;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __57__SUUIGridPageSection_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 collectionView];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SUUIGridPageSection_itemStateCenter_itemStatesChanged___block_invoke_2;
  v6[3] = &unk_2798F7A40;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 _enumerateVisibleItemsWithBlock:v6];
}

void __57__SUUIGridPageSection_itemStateCenter_itemStatesChanged___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [v6 itemIdentifier];

  v9 = [v7 initWithLongLong:v8];
  v10 = [*(a1 + 32) objectForKey:v9];
  if (v10)
  {
    v11 = [*(a1 + 40) cellForItemAtIndexPath:v13];
    v12 = [v11 layout];
    [v12 setItemState:v10 animated:1];
  }
}

- (void)itemStateCenterRestrictionsChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SUUIGridPageSection_itemStateCenterRestrictionsChanged___block_invoke;
  v6[3] = &unk_2798F5AF8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__SUUIGridPageSection_itemStateCenterRestrictionsChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 collectionView];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SUUIGridPageSection_itemStateCenterRestrictionsChanged___block_invoke_2;
  v6[3] = &unk_2798F7A40;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _enumerateVisibleItemsWithBlock:v6];
}

void __58__SUUIGridPageSection_itemStateCenterRestrictionsChanged___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v11 = [v5 cellForItemAtIndexPath:a3];
  v7 = *(a1 + 40);
  v8 = [v6 parentalControlsRank];

  v9 = [v7 isItemRestrictedWithParentalControlsRank:v8];
  v10 = [v11 layout];
  [v10 setRestricted:v9];
}

- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SUUIStorePageSection *)self pageComponent];
  if ([v7 count])
  {
    v10 = [v9 _updateWithMissingItems:v7];
    if ([v10 count])
    {
      v11 = [(SUUIStorePageSection *)self context];
      v12 = [v11 collectionView];

      v13 = [v9 gridType];
      v14 = [v9 children];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __77__SUUIGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
      v19[3] = &unk_2798F7A68;
      v23 = v14;
      v24 = v13;
      v20 = v10;
      v21 = v12;
      v22 = self;
      v15 = v14;
      v16 = v12;
      [(SUUIGridPageSection *)self _enumerateVisibleItemsWithBlock:v19];
    }
  }

  if ([v8 count])
  {
    v17 = [v9 _updateWithInvalidItemIdentifiers:v8];
    if ([v17 count])
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __77__SUUIGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke_2;
      v18[3] = &unk_2798F5BE8;
      v18[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v18];
    }
  }
}

void __77__SUUIGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = [v10 item];
  if ([*(a1 + 32) containsIndex:v4])
  {
    v5 = *(a1 + 64);
    if (!v5 || v5 == 5)
    {
      v6 = [*(a1 + 40) cellForItemAtIndexPath:v10];
      v9 = *(a1 + 48);
      v8 = [*(a1 + 56) objectAtIndex:v4];
      [v9 _reloadItemCell:v6 withLockup:v8 index:v4];
    }

    else
    {
      if (v5 != 1)
      {
        goto LABEL_8;
      }

      v6 = [*(a1 + 40) cellForItemAtIndexPath:v10];
      v7 = *(a1 + 48);
      v8 = [*(a1 + 56) objectAtIndex:v4];
      [v7 _reloadEditorialLockupCell:v6 withLockup:v8 index:v4];
    }
  }

LABEL_8:
}

void __77__SUUIGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v4 = [v2 collectionView];

  v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(*(a1 + 32), "sectionIndex")}];
  [v4 reloadSections:v3];
}

- (void)productPageOverlayDidDismiss:(id)a3
{
  v10 = [(SUUIStorePageSection *)self context];
  v4 = [v10 collectionView];
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:self->_overlaySourceItemIndex inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v6 = [v4 cellForItemAtIndexPath:v5];

  v7 = [v6 layout];
  [v7 setIconImageHidden:0];

  v8 = [v10 parentViewController];
  [v8 _pageSectionDidDismissOverlayController:self->_overlayController];

  [(SUUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  overlayController = self->_overlayController;
  self->_overlayController = 0;

  self->_overlaySourceItemIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(NSMutableIndexSet *)self->_hiddenIconIndexSet removeAllIndexes];
}

- (id)_artworkContextForLockupSize:(int64_t)a3
{
  lockupArtworkContexts = self->_lockupArtworkContexts;
  if (!lockupArtworkContexts)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:1282 valueOptions:0 capacity:0];
    v7 = self->_lockupArtworkContexts;
    self->_lockupArtworkContexts = v6;

    lockupArtworkContexts = self->_lockupArtworkContexts;
  }

  v8 = NSMapGet(lockupArtworkContexts, a3);
  if (!v8)
  {
    v8 = objc_alloc_init(SUUIItemArtworkContext);
    v9 = [(SUUIStorePageSection *)self context];
    v10 = [v9 colorScheme];
    [(SUUIItemArtworkContext *)v8 setColorScheme:v10];

    v11 = [SUUIProductImageDataConsumer lockupConsumerWithSize:a3 itemKind:7];
    [(SUUIItemArtworkContext *)v8 setGeneralConsumer:v11];

    v12 = [SUUIStyledImageDataConsumer lockupIconConsumerWithSize:a3];
    [(SUUIItemArtworkContext *)v8 setIconConsumer:v12];

    v13 = [SUUIProductImageDataConsumer lockupConsumerWithSize:a3 itemKind:8];
    [(SUUIItemArtworkContext *)v8 setLetterboxConsumer:v13];

    v14 = [SUUIStyledImageDataConsumer lockupProductImageConsumerWithSize:a3];
    [(SUUIItemArtworkContext *)v8 setNewsstandConsumer:v14];

    v15 = [SUUIProductImageDataConsumer lockupConsumerWithSize:a3 itemKind:6];
    [(SUUIItemArtworkContext *)v8 setPosterConsumer:v15];

    NSMapInsert(self->_lockupArtworkContexts, a3, v8);
  }

  return v8;
}

- (id)_cellImageForItem:(id)a3 lockupSize:(int64_t)a4
{
  v6 = a3;
  v7 = [(SUUIStorePageSection *)self context];
  v8 = [v7 resourceLoader];

  v9 = [(NSMapTable *)self->_artworkRequests objectForKey:v6];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  v11 = [v8 cachedResourceForRequestIdentifier:{objc_msgSend(v9, "unsignedIntegerValue")}];
  if (v11)
  {
    goto LABEL_6;
  }

  if (([v8 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}] & 1) == 0)
  {
LABEL_4:
    [(SUUIGridPageSection *)self _loadImageForItem:v6 lockupSize:a4 loader:v8 reason:1];
  }

  v12 = [(SUUIGridPageSection *)self _artworkContextForLockupSize:a4];
  v11 = [v12 placeholderImageForItem:v6];

LABEL_6:

  return v11;
}

- (UIEdgeInsets)_contentInsetForMediaIndex:(int64_t)a3
{
  v5 = 15.0;
  if (a3 && (a3 != 1 || self->_numberOfColumns <= 1))
  {
    v5 = 8.0;
  }

  v6 = [(SUUIStorePageSection *)self pageComponent];
  v7 = [v6 children];
  v8 = [v7 count];

  numberOfColumns = self->_numberOfColumns;
  v10 = 8.0;
  if (a3)
  {
    v10 = 15.0;
  }

  if (numberOfColumns == 1)
  {
    v11 = 15.0;
  }

  else
  {
    v11 = v10;
  }

  if (numberOfColumns == 1 || (a3 & 1) == 0)
  {
    v13 = 15.0;
  }

  else
  {
    v13 = 7.0;
  }

  if (v8 - numberOfColumns <= a3 && v8 % numberOfColumns == 0)
  {
    v15 = 15.0;
  }

  else
  {
    v15 = 7.0;
  }

  v16 = v5;
  result.right = v11;
  result.bottom = v15;
  result.left = v13;
  result.top = v16;
  return result;
}

- (UIEdgeInsets)_contentInsetForVideoLockupIndex:(int64_t)a3
{
  v5 = 15.0;
  v6 = 15.0;
  if (self->_numberOfColumns > a3)
  {
    if (self->_isPad)
    {
      v6 = 28.0;
    }

    else
    {
      v6 = 0.0;
    }
  }

  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 children];
  v9 = [v8 count];

  numberOfColumns = self->_numberOfColumns;
  v11 = 15.0;
  if (numberOfColumns != 1)
  {
    if (a3 % numberOfColumns)
    {
      if (numberOfColumns == 4)
      {
        v11 = 28.0;
      }

      else
      {
        v11 = 25.0;
      }

      v12 = 26.0;
      if (numberOfColumns == 4)
      {
        v12 = 28.0;
      }

      if (a3 % numberOfColumns == numberOfColumns - 1)
      {
        v5 = v12;
      }

      else
      {
        v5 = 0.0;
      }
    }

    else
    {
      v11 = 28.0;
      if (numberOfColumns != 4)
      {
        v11 = 26.0;
      }

      v5 = 0.0;
    }
  }

  v13 = v9 % numberOfColumns;
  v14 = v9 - numberOfColumns;
  v15 = 40.0;
  if (!self->_isPad)
  {
    v15 = 7.0;
  }

  v16 = 12.0;
  if (self->_isPad)
  {
    v16 = 28.0;
  }

  if (v14 > a3 || v13 != 0)
  {
    v16 = v15;
  }

  v18 = v6;
  v19 = v5;
  result.right = v19;
  result.bottom = v16;
  result.left = v11;
  result.top = v18;
  return result;
}

- (id)_editorialCellWithEditorials:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 collectionView];
  v10 = [v9 dequeueReusableCellWithReuseIdentifier:0x286AFFD40 forIndexPath:v7];
  v11 = [v10 layout];
  v12 = SUUIEditorialLayoutOrientationForView(v9);
  v13 = [v7 item];

  if (v13 >= [v6 count])
  {
    [v11 applyEditorialLayout:0 withOrientation:v12 expanded:1];
  }

  else
  {
    v14 = [v6 objectAtIndex:v13];
    v15 = [(SUUIGridPageSection *)self _editorialLayoutForEditorial:v14];
    [v11 applyEditorialLayout:v15 withOrientation:v12 expanded:1];
  }

  v16 = [v8 colorScheme];
  [v11 setColoringWithColorScheme:v16];

  return v10;
}

- (id)_editorialLayoutForEditorial:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_editorialLayouts objectForKey:v4];
  if (!v5)
  {
    v6 = [SUUIEditorialLayout alloc];
    v7 = [(SUUIStorePageSection *)self context];
    v8 = [v7 textLayoutCache];
    v5 = [(SUUIEditorialLayout *)v6 initWithEditorial:v4 layoutCache:v8];

    v9 = [(SUUIStorePageSection *)self context];
    v10 = [v9 collectionView];
    [v10 bounds];
    v12 = v11;
    v14 = v13;

    if (self->_isPad)
    {
      v15 = v14 * 0.5 + -30.0;
      [(SUUIEditorialLayout *)v5 setLayoutWidth:1 forOrientation:floorf(v15)];
      v16 = v12 * 0.5 + -30.0;
      v17 = floorf(v16);
    }

    else
    {
      [(SUUIEditorialLayout *)v5 setLayoutWidth:1 forOrientation:v14 + -30.0];
      v17 = v12 + -30.0;
    }

    [(SUUIEditorialLayout *)v5 setLayoutWidth:0 forOrientation:v17];
    editorialLayouts = self->_editorialLayouts;
    if (!editorialLayouts)
    {
      v19 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v20 = self->_editorialLayouts;
      self->_editorialLayouts = v19;

      editorialLayouts = self->_editorialLayouts;
    }

    [(NSMapTable *)editorialLayouts setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)_editorialLayoutForLockup:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_editorialLayouts objectForKey:v4];
  if (!v5)
  {
    v6 = [v4 editorial];
    v7 = [SUUIEditorialLayout alloc];
    v8 = [(SUUIStorePageSection *)self context];
    v9 = [v8 textLayoutCache];
    v5 = [(SUUIEditorialLayout *)v7 initWithEditorial:v6 layoutCache:v9];

    if (v4)
    {
      [v4 lockupStyle];
    }

    IsHorizontal = SUUILockupLayoutStyleIsHorizontal(0);
    v11 = 328.0;
    if (IsHorizontal)
    {
      v11 = 477.0;
      v12 = 349.0;
    }

    else
    {
      v12 = 200.0;
    }

    [(SUUIEditorialLayout *)v5 setLayoutWidth:1 forOrientation:v11, 200.0];
    [(SUUIEditorialLayout *)v5 setLayoutWidth:0 forOrientation:v12];
    editorialLayouts = self->_editorialLayouts;
    if (!editorialLayouts)
    {
      v14 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v15 = self->_editorialLayouts;
      self->_editorialLayouts = v14;

      editorialLayouts = self->_editorialLayouts;
    }

    [(NSMapTable *)editorialLayouts setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)_editorialLockupCellWithLockups:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 collectionView];
  v10 = [v9 dequeueReusableCellWithReuseIdentifier:0x286AEE560 forIndexPath:v7];
  v11 = [v10 layout];
  [v11 setClientContext:self->_clientContext];
  v12 = [v8 itemOfferButtonAppearance];
  [v11 setItemOfferButtonAppearance:v12];

  v13 = [v7 item];
  v14 = 20.0;
  if (v13)
  {
    v15 = 15.0;
  }

  else
  {
    v15 = 20.0;
  }

  if ((v13 & 1) == 0)
  {
    v14 = 15.0;
  }

  if (self->_numberOfColumns == 1)
  {
    v14 = 15.0;
    v16 = 15.0;
  }

  else
  {
    v16 = v15;
  }

  [v11 setContentInsets:{15.0, v14, 15.0, v16}];
  if (v13 >= [v6 count])
  {
    [v10 configureForItem:0 clientContext:self->_clientContext];
    v18 = [v11 lockupCellLayout];
    [v18 setIconImage:0];

    [v11 applyEditorialLayout:0 withOrientation:0];
  }

  else
  {
    v17 = [v6 objectAtIndex:v13];
    [(SUUIGridPageSection *)self _reloadEditorialLockupCell:v10 withLockup:v17 index:v13];
  }

  return v10;
}

- (void)_enumerateItemsFromStartIndex:(int64_t)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 children];
  v9 = [v8 count];
  v13 = 0;
  if (v9 > a3)
  {
    v10 = v9;
    do
    {
      v11 = [v8 objectAtIndex:a3];
      v12 = [v11 item];
      v6[2](v6, v12, &v13);

      ++a3;
    }

    while (a3 < v10 && (v13 & 1) == 0);
  }
}

- (void)_enumerateVisibleIndexPathsWithBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [(SUUIStorePageSection *)self sectionIndex];
  [v6 indexPathsForVisibleItems];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      if ([v13 section] == v7)
      {
        v14 = 0;
        v4[2](v4, v13, &v14);
        if (v14)
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_enumerateVisibleItemsWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SUUIGridPageSection__enumerateVisibleItemsWithBlock___block_invoke;
  v6[3] = &unk_2798F7A90;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SUUIGridPageSection *)self _enumerateVisibleIndexPathsWithBlock:v6];
}

void __55__SUUIGridPageSection__enumerateVisibleItemsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _itemForIndex:{objc_msgSend(v4, "item")}];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (double)_heightForEditorialAtIndexPath:(id)a3
{
  v4 = [a3 item];
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 children];

  isLandscape = self->_isLandscape;
  if (self->_numberOfColumns == 1)
  {
    v8 = [v6 objectAtIndex:v4];
    v9 = [(SUUIGridPageSection *)self _editorialLayoutForEditorial:v8];

    [v9 layoutHeightForOrientation:isLandscape expanded:1];
    v11 = v10;
  }

  else
  {
    v12 = v4 - ((v4 & 0x8000000000000001) == 1);
    v13 = [v6 objectAtIndex:v12];
    v9 = [(SUUIGridPageSection *)self _editorialLayoutForEditorial:v13];

    [v9 layoutHeightForOrientation:isLandscape expanded:1];
    v11 = v14;
    v15 = v12 + 1;
    if (v15 < [v6 count])
    {
      v16 = [v6 objectAtIndex:v15];
      v17 = [(SUUIGridPageSection *)self _editorialLayoutForEditorial:v16];

      [v17 layoutHeightForOrientation:isLandscape expanded:1];
      if (v11 < v18)
      {
        v11 = v18;
      }
    }
  }

  return v11 + 32.0;
}

- (double)_heightForEditorialLockup:(id)a3
{
  v4 = a3;
  [SUUILockupItemCellLayout heightForLockupComponent:v4 clientContext:self->_clientContext];
  v6 = v5;
  v7 = [(SUUIGridPageSection *)self _editorialLayoutForLockup:v4];
  [v7 layoutHeightForOrientation:self->_isLandscape expanded:1];
  v9 = v8 + 42.0;
  if (v4)
  {
    [v4 lockupStyle];
    if (!SUUILockupLayoutStyleIsHorizontal(v12))
    {
      [v4 lockupStyle];
      if ((v11 & 4) != 0)
      {
        v9 = v9 + 41.0;
      }

      goto LABEL_7;
    }

LABEL_6:
    v6 = v6 + v9;
    goto LABEL_9;
  }

  if (SUUILockupLayoutStyleIsHorizontal(0))
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v9 >= v6)
  {
    v6 = v9;
  }

LABEL_9:

  return v6;
}

- (double)_heightForEditorialLockupAtIndexPath:(id)a3
{
  v4 = [a3 item];
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 children];

  if (self->_numberOfColumns == 1)
  {
    v7 = [v6 objectAtIndex:v4];
    [(SUUIGridPageSection *)self _heightForEditorialLockup:v7];
    v9 = v8;
  }

  else
  {
    v10 = v4 - ((v4 & 0x8000000000000001) == 1);
    v7 = [v6 objectAtIndex:v10];
    [(SUUIGridPageSection *)self _heightForEditorialLockup:v7];
    v9 = v11;
    v12 = v10 + 1;
    if (v12 < [v6 count])
    {
      v13 = [v6 objectAtIndex:v12];
      [(SUUIGridPageSection *)self _heightForEditorialLockup:v13];
      if (v9 < v14)
      {
        v9 = v14;
      }
    }
  }

  return v9;
}

- (double)_heightForLockupAtIndexPath:(id)a3 gridType:(int64_t)a4
{
  v6 = a3;
  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 children];

  v9 = [v6 item];
  numberOfColumns = self->_numberOfColumns;
  if (numberOfColumns == 1)
  {
    v11 = [v8 objectAtIndex:v9];
    [SUUILockupItemCellLayout heightForLockupComponent:v11 clientContext:self->_clientContext];
    i = v12;
  }

  else
  {
    v14 = v9 / numberOfColumns * numberOfColumns;
    for (i = 0.0; v14 < [v8 count]; ++v14)
    {
      v15 = [v8 objectAtIndex:v14];
      [SUUILockupItemCellLayout heightForLockupComponent:v15 clientContext:self->_clientContext];
      v17 = v16;

      if (i < v17)
      {
        i = v17;
      }
    }
  }

  if (a4 == 5)
  {
    -[SUUIGridPageSection _contentInsetForVideoLockupIndex:](self, "_contentInsetForVideoLockupIndex:", [v6 item]);
    i = i + v18 + v19;
  }

  else if (!a4)
  {
    i = i + 20.0;
  }

  return i;
}

- (double)_heightForMedia:(id)a3 width:(double)a4
{
  v5 = [a3 bestThumbnailArtwork];
  v6 = [v5 height];
  v7 = a4 / [v5 width] * v6;
  v8 = floorf(v7);

  return v8;
}

- (double)_heightForMediaAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  [v6 bounds];
  v8 = v7;

  v9 = [(SUUIStorePageSection *)self pageComponent];
  v10 = [v9 children];

  v11 = [v4 item];
  [(SUUIGridPageSection *)self _mediaWidthForMediaIndex:v11 gridWidth:v8];
  v13 = v12;
  if (self->_numberOfColumns == 1)
  {
    v14 = [v10 objectAtIndex:v11];
    [(SUUIGridPageSection *)self _heightForMedia:v14 width:v13];
    v16 = v15;
  }

  else
  {
    v17 = v11 - ((v11 & 0x8000000000000001) == 1);
    v18 = [v10 objectAtIndex:v17];
    [(SUUIGridPageSection *)self _heightForMedia:v18 width:v13];
    v16 = v19;

    v11 = v17 + 1;
    if (v11 < [v10 count])
    {
      v20 = [v10 objectAtIndex:v11];
      [(SUUIGridPageSection *)self _heightForMedia:v20 width:v13];
      v22 = v21;

      if (v16 < v22)
      {
        v16 = v22;
      }
    }
  }

  [(SUUIGridPageSection *)self _contentInsetForMediaIndex:v11];
  v25 = v16 + v23 + v24;

  return v25;
}

- (id)_itemCellWithLockups:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 collectionView];
  v10 = [v9 dequeueReusableCellWithReuseIdentifier:0x286AFB0C0 forIndexPath:v7];

  v11 = [v8 colorScheme];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 primaryTextColor];
    [v10 setSeparatorColor:v13];
  }

  v14 = [v10 layout];
  [v14 setClientContext:self->_clientContext];
  [v14 setColoringWithColorScheme:v12];
  v15 = [v8 itemOfferButtonAppearance];
  [v14 setItemOfferButtonAppearance:v15];

  [v14 setVerticalAlignment:1];
  v16 = [v7 item];
  if (v16 >= [v6 count])
  {
    [v10 configureForItem:0 clientContext:self->_clientContext];
    [v14 setIconImage:0];
    [v14 setVideoThumbnailImage:0];
    [v14 setVideoThumbnailSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [v14 setVisibleFields:0];
  }

  else
  {
    v17 = [v6 objectAtIndex:v16];
    [(SUUIGridPageSection *)self _reloadItemCell:v10 withLockup:v17 index:v16];
  }

  v20 = 1;
  if (self->_isPad)
  {
    v18 = [(SUUIStorePageSection *)self pageComponent];
    v19 = [v18 gridType];

    if (v19 == 5)
    {
      v20 = 0;
    }
  }

  [v10 setSeparatorStyle:v20];

  return v10;
}

- (id)_itemForIndex:(int64_t)a3
{
  if (self->_containsLockups)
  {
    v4 = [(SUUIStorePageSection *)self pageComponent];
    v5 = [v4 children];

    if ([v5 count] <= a3)
    {
      v7 = 0;
    }

    else
    {
      v6 = [v5 objectAtIndex:a3];
      v7 = [v6 item];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_loadImageForItem:(id)a3 lockupSize:(int64_t)a4 loader:(id)a5 reason:(int64_t)a6
{
  v18 = a3;
  v10 = a5;
  v11 = [(SUUIGridPageSection *)self _artworkContextForLockupSize:a4];
  v12 = [v11 URLForItem:v18];

  if (v12)
  {
    v13 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v13 setDelegate:self];
    v14 = [(SUUIGridPageSection *)self _artworkContextForLockupSize:a4];
    v15 = [v14 dataConsumerForItem:v18];
    [(SUUIArtworkRequest *)v13 setDataConsumer:v15];

    [(SUUIArtworkRequest *)v13 setURL:v12];
    artworkRequests = self->_artworkRequests;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v13, "requestIdentifier")}];
    [(NSMapTable *)artworkRequests setObject:v17 forKey:v18];

    [v10 loadResourceWithRequest:v13 reason:a6];
  }
}

- (void)_loadImageForVideo:(id)a3 thumbnailSize:(CGSize)a4 loader:(id)a5 reason:(int64_t)a6
{
  height = a4.height;
  width = a4.width;
  v18 = a3;
  v11 = a5;
  v12 = [v18 artworks];
  v13 = [v12 bestArtworkForScaledSize:{width, height}];
  v14 = [v13 URL];

  if (v14)
  {
    v15 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v15 setDataConsumer:self->_videoImageDataConsumer];
    [(SUUIArtworkRequest *)v15 setDelegate:self];
    [(SUUIArtworkRequest *)v15 setURL:v14];
    artworkRequests = self->_artworkRequests;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v15, "requestIdentifier")}];
    [(NSMapTable *)artworkRequests setObject:v17 forKey:v18];

    [v11 loadResourceWithRequest:v15 reason:a6];
  }
}

- (void)_loadMissingItemsFromIndex:(int64_t)a3 withReason:(int64_t)a4
{
  v8 = [(SUUIStorePageSection *)self pageComponent];
  if ([v8 isMissingItemData])
  {
    v7 = [(SUUIGridPageSection *)self _missingItemLoader];
    [v7 loadItemsForPageComponent:v8 startIndex:a3 reason:a4];
  }
}

- (id)_mediaCellWithMedia:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 collectionView];

  v10 = [v9 dequeueReusableCellWithReuseIdentifier:0x286AEF8E0 forIndexPath:v7];
  v11 = [v7 item];

  [(SUUIGridPageSection *)self _contentInsetForMediaIndex:v11];
  [v10 setContentInset:?];
  if (v11 >= [v6 count])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v6 objectAtIndex:v11];
    if (v12)
    {
      v13 = [(SUUIStorePageSection *)self context];
      v14 = [v13 resourceLoader];

      v15 = [(NSMapTable *)self->_artworkRequests objectForKey:v12];
      v16 = v15;
      if (!v15)
      {
        goto LABEL_6;
      }

      v17 = [v14 cachedResourceForRequestIdentifier:{objc_msgSend(v15, "unsignedIntegerValue")}];
      if (v17)
      {
LABEL_10:

        goto LABEL_13;
      }

      if (([v14 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v16, "unsignedIntegerValue")}] & 1) == 0)
      {
LABEL_6:
        v18 = [v12 bestThumbnailArtwork];
        if (v18)
        {
          v19 = [(SUUIGridPageSection *)self _newSizeToFitArtworkRequestWithArtwork:v18 mediaIndex:v11];
          artworkRequests = self->_artworkRequests;
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "requestIdentifier")}];
          [(NSMapTable *)artworkRequests setObject:v20 forKey:v12];

          [v14 loadResourceWithRequest:v19 reason:1];
        }
      }

      v17 = 0;
      goto LABEL_10;
    }
  }

  v17 = 0;
LABEL_13:
  v21 = [v10 mediaView];
  v22 = [v12 accessibilityLabel];
  [v21 setAccessibilityLabel:v22];

  [v21 setDelegate:self];
  [v21 setMediaType:{objc_msgSend(v12, "mediaType")}];
  v23 = [v12 mediaURLString];
  [v21 setMediaURLString:v23];

  [v21 setThumbnailImage:v17];

  return v10;
}

- (double)_mediaWidthForMediaIndex:(int64_t)a3 gridWidth:(double)a4
{
  [(SUUIGridPageSection *)self _contentInsetForMediaIndex:a3];
  v8 = a4 * 0.5 - v6 - v7;
  result = floorf(v8);
  v10 = a4 - v6 - v7;
  if (self->_numberOfColumns == 1)
  {
    return v10;
  }

  return result;
}

- (id)_missingItemLoader
{
  missingItemLoader = self->_missingItemLoader;
  if (!missingItemLoader)
  {
    v4 = [SUUIMissingItemLoader alloc];
    v5 = [(SUUIStorePageSection *)self context];
    v6 = [v5 resourceLoader];
    v7 = [(SUUIMissingItemLoader *)v4 initWithResourceLoader:v6];
    v8 = self->_missingItemLoader;
    self->_missingItemLoader = v7;

    [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (id)_newSizeToFitArtworkRequestWithArtwork:(id)a3 mediaIndex:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(SUUIArtworkRequest);
  [(SUUIArtworkRequest *)v7 setDelegate:self];
  v8 = [v6 URL];

  [(SUUIArtworkRequest *)v7 setURL:v8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  v10 = [(SUUIStorePageSection *)self context];
  [v10 landscapePageWidth];
  [(SUUIGridPageSection *)self _mediaWidthForMediaIndex:a4 gridWidth:?];
  v12 = v11;

  v13 = [SUUISizeToFitImageDataConsumer consumerWithConstraintSize:v12, v9];
  [(SUUIArtworkRequest *)v7 setDataConsumer:v13];

  return v7;
}

- (int64_t)_numberOfLandscapeColumnsWithGridType:(int64_t)a3
{
  v3 = 2;
  if (a3 == 5)
  {
    v3 = 4;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 3;
  }
}

- (int64_t)_numberOfPortraitColumnsWithGridType:(int64_t)a3
{
  if (a3 == 5)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)_popSourceViewForOverlayController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_overlaySourceItemIndex == 0x7FFFFFFFFFFFFFFFLL || [v4 numberOfVisibleOverlays] > 1)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v6 = [(SUUIStorePageSection *)self context];
  v7 = [v6 collectionView];

  v8 = [MEMORY[0x277CCAA70] indexPathForItem:self->_overlaySourceItemIndex inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v9 = [v7 cellForItemAtIndexPath:v8];

  v10 = [v9 layout];
  v11 = [(SUUIStorePageSection *)self pageComponent];
  v12 = [v11 children];
  v13 = [v12 objectAtIndex:self->_overlaySourceItemIndex];

  v14 = [v10 iconImage];
  v15 = v14;
  if (v14)
  {
    if (v13)
    {
      [v13 lockupStyle];

      if ((v38 & 2) != 0)
      {
        v16 = objc_alloc(MEMORY[0x277D755E8]);
        v17 = [v10 iconImage];
        v15 = [v16 initWithImage:v17];

        v18 = [MEMORY[0x277D75348] clearColor];
        [v15 setBackgroundColor:v18];

        v19 = [v10 iconImageView];
        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [v15 frame];
        v29 = v28;
        v31 = v30;
        v40.origin.x = v21;
        v40.origin.y = v23;
        v40.size.width = v25;
        v40.size.height = v27;
        v32 = CGRectGetMaxY(v40) - v31;
        v33 = [v19 superview];
        [v33 convertRect:0 toView:{v21, v32, v29, v31}];
        [v15 setFrame:?];

        hiddenIconIndexSet = self->_hiddenIconIndexSet;
        if (!hiddenIconIndexSet)
        {
          v35 = objc_alloc_init(MEMORY[0x277CCAB58]);
          v36 = self->_hiddenIconIndexSet;
          self->_hiddenIconIndexSet = v35;

          hiddenIconIndexSet = self->_hiddenIconIndexSet;
        }

        [(NSMutableIndexSet *)hiddenIconIndexSet addIndex:self->_overlaySourceItemIndex];
        [v10 setIconImageHidden:1];

        goto LABEL_12;
      }
    }

    else
    {
    }

    v15 = 0;
  }

LABEL_12:

LABEL_13:

  return v15;
}

- (void)_reloadEditorialLockupCell:(id)a3 withLockup:(id)a4 index:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v33 = [(SUUIStorePageSection *)self context];
  v10 = [v33 collectionView];
  v11 = [v8 layout];
  if (v9)
  {
    [v9 lockupStyle];
  }

  [v11 setLayoutStyle:0];
  [v11 setVisibleFields:0];
  v12 = [v9 item];
  [v8 configureForItem:v12 clientContext:self->_clientContext];
  v13 = [v11 lockupCellLayout];
  v32 = [(SUUIGridPageSection *)self _cellImageForItem:v12 lockupSize:0];
  [v13 setIconImage:?];
  [v13 setIconImageHidden:{-[NSMutableIndexSet containsIndex:](self->_hiddenIconIndexSet, "containsIndex:", a5)}];
  [v13 setImageBoundingSize:{self->_lockupImageBoundingSize.width, self->_lockupImageBoundingSize.height}];
  v31 = [(SUUIGridPageSection *)self _editorialLayoutForLockup:v9];
  [v11 applyEditorialLayout:v31 withOrientation:SUUIEditorialLayoutOrientationForView(v10)];
  [v9 editorial];
  v14 = v30 = v10;
  v15 = [v11 textBoxView];
  [v15 setNumberOfVisibleLines:{objc_msgSend(v14, "maximumBodyLines")}];
  [v15 setTruncationStyle:1];
  moreButtonTitle = self->_moreButtonTitle;
  v17 = v9;
  if (!moreButtonTitle)
  {
    v27 = v12;
    v28 = v8;
    v18 = v13;
    v19 = v17;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"MORE_BUTTON"];
    }

    else
    {
      v21 = 0;
      [SUUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
    }
    v22 = ;

    v23 = self->_moreButtonTitle;
    self->_moreButtonTitle = v22;

    moreButtonTitle = self->_moreButtonTitle;
    v8 = v28;
    v17 = v19;
    v13 = v18;
  }

  v29 = v17;
  [v15 setMoreButtonTitle:{moreButtonTitle, v27, v28}];
  v24 = +[SUUIItemStateCenter defaultCenter];
  v25 = [v24 stateForItemWithIdentifier:{objc_msgSend(v12, "itemIdentifier")}];
  [v11 setItemState:v25];
  [v11 setRestricted:{objc_msgSend(v24, "isItemRestrictedWithParentalControlsRank:", objc_msgSend(v12, "parentalControlsRank"))}];
  v26 = [v33 colorScheme];
  [v11 setColoringWithColorScheme:v26];
}

- (void)_reloadItemCell:(id)a3 withLockup:(id)a4 index:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v8 item];
  [v9 configureForItem:v10 clientContext:self->_clientContext];
  v11 = [v9 layout];

  [v11 setImageBoundingSize:{self->_lockupImageBoundingSize.width, self->_lockupImageBoundingSize.height}];
  if (v8)
  {
    [v8 lockupStyle];
  }

  [v11 setLayoutStyle:0];
  [v11 setLockupSize:0];
  [v11 setContentInsets:{10.0, 15.0, 10.0, 15.0}];
  if (v10)
  {
    v12 = [(SUUIGridPageSection *)self _cellImageForItem:v10 lockupSize:0];
    [v11 setIconImage:v12];
    [v11 setIconImageHidden:{-[NSMutableIndexSet containsIndex:](self->_hiddenIconIndexSet, "containsIndex:", a5)}];
    [v11 setPlaysInlineVideo:!self->_isPad];
    [v11 setVisibleFields:0];
    [v11 setVideoThumbnailImage:0];
    [v11 setVideoThumbnailSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  }

  else
  {
    [v11 setIconImage:0];
    [v11 setVideoThumbnailImage:0];
    [v11 setVideoThumbnailSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [v11 setVisibleFields:0];
  }

  v13 = +[SUUIItemStateCenter defaultCenter];
  v14 = [v13 stateForItemWithIdentifier:{objc_msgSend(v10, "itemIdentifier")}];
  [v11 setItemState:v14];
  [v11 setRestricted:{objc_msgSend(v13, "isItemRestrictedWithParentalControlsRank:", objc_msgSend(v10, "parentalControlsRank"))}];
}

- (void)_selectItem:(id)a3 withIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(SUUIStorePageSection *)self context];
  v8 = [(SUUIGridPageSection *)self clickEventWithItem:v6 elementName:*MEMORY[0x277D6A4E0] index:a4];
  if (v8)
  {
    v9 = [v7 metricsController];
    [v9 recordEvent:v8];
  }

  v10 = [v7 parentViewController];
  v11 = [v10 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v11 sectionsViewController:v10 showProductPageForItem:v6] & 1) == 0)
  {
    v12 = [(SUUIStorePageSection *)self pageComponent];
    v13 = [v12 gridType];

    if (v13 == 5)
    {
      v14 = [v6 videos];
      v15 = [v14 firstObject];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 URL];
    if (v16 && (isPad = self->_isPad, v16, isPad))
    {
      v25 = a4;
      v26 = [[SUUIPlayableAsset alloc] initWithVideo:v15];
      v18 = [(SUUIStorePageSection *)self context];
      v19 = [v18 clientContext];
      SUUIVideoPreviewPlayPlayableAsset(v26, v19);
      v21 = v20 = v7;

      v22 = [(SUUIStorePageSection *)self context];
      v23 = [v22 parentViewController];
      [v23 presentViewController:v21 animated:1 completion:0];

      v24 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__SUUIGridPageSection__selectItem_withIndex___block_invoke;
      block[3] = &unk_2798F7AB8;
      block[4] = self;
      v28 = v6;
      v29 = v25;
      dispatch_after(v24, MEMORY[0x277D85CD0], block);

      v7 = v20;
    }

    else
    {
      [(SUUIGridPageSection *)self _showProductPageWithItem:v6 index:a4 animated:1];
    }
  }
}

- (void)_setPositionForClickEvent:(id)a3 withElementIndex:(int64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(SUUIStorePageSection *)self context];
    v10 = [v7 collectionView];

    v8 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v9 = [v10 cellForItemAtIndexPath:v8];

    SUUIMetricsSetClickEventPositionWithView(v6, v9);
  }
}

- (void)_showProductPageWithItem:(id)a3 index:(int64_t)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = v7;
  if (self->_isPad && SUUIItemKindIsSoftwareKind([v7 itemKind]))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__SUUIGridPageSection__showProductPageWithItem_index_animated___block_invoke;
    v9[3] = &unk_2798F71F0;
    v9[4] = self;
    v11 = a4;
    v10 = v8;
    [(SUUIStorePageSection *)self sendXEventWithItem:v10 completionBlock:v9];
  }

  else
  {
    [(SUUIStorePageSection *)self showProductViewControllerWithItem:v8];
  }
}

void __63__SUUIGridPageSection__showProductPageWithItem_index_animated___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 32) context];
    v9 = [v4 parentViewController];

    v5 = *(a1 + 32);
    if (!*(v5 + 176))
    {
      v6 = [[SUUIProductPageOverlayController alloc] initWithParentViewController:v9];
      v7 = *(a1 + 32);
      v8 = *(v7 + 176);
      *(v7 + 176) = v6;

      [*(*(a1 + 32) + 176) setClientContext:*(*(a1 + 32) + 96)];
      [*(*(a1 + 32) + 176) setDelegate:?];
      v5 = *(a1 + 32);
    }

    *(v5 + 184) = *(a1 + 48);
    [*(*(a1 + 32) + 176) showWithInitialItem:*(a1 + 40)];
    [v9 _setActiveProductPageOverlayController:*(*(a1 + 32) + 176)];
  }
}

- (void)_updateVisibileEditorialWithEditorialOrientation:(int64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = [(SUUIStorePageSection *)self context];
  v5 = [v4 collectionView];

  v28 = v5;
  v6 = [v5 indexPathsForVisibleItems];
  v7 = [(SUUIStorePageSection *)self sectionIndex];
  v25 = self;
  v8 = [(SUUIStorePageSection *)self pageComponent];
  v9 = [v8 gridType];
  v24 = v8;
  v27 = [v8 children];
  v10 = [v27 count];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if ([v16 section] == v7)
        {
          v17 = [v16 item];
          if (v17 < v10)
          {
            v18 = v17;
            if (v9 == 1)
            {
              v19 = [v28 cellForItemAtIndexPath:v16];
              v23 = [v27 objectAtIndex:v18];
              v21 = [(SUUIGridPageSection *)v25 _editorialLayoutForLockup:v23];

              v22 = [v19 layout];
              [v22 applyEditorialLayout:v21 withOrientation:a3];
            }

            else
            {
              if (v9 != 3)
              {
                continue;
              }

              v19 = [v28 cellForItemAtIndexPath:v16];
              v20 = [v27 objectAtIndex:v18];
              v21 = [(SUUIGridPageSection *)v25 _editorialLayoutForEditorial:v20];

              v22 = [v19 layout];
              [v22 applyEditorialLayout:v21 withOrientation:a3 expanded:1];
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }
}

- (id)_videoThumbnailImageForVideo:(id)a3 thumbnailSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 resourceLoader];

  v10 = [(NSMapTable *)self->_artworkRequests objectForKey:v7];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  v12 = [v9 cachedResourceForRequestIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}];
  if (v12)
  {
    goto LABEL_12;
  }

  if (([v9 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v11, "unsignedIntegerValue")}] & 1) == 0)
  {
LABEL_4:
    [(SUUIGridPageSection *)self _loadImageForVideo:v7 thumbnailSize:v9 loader:1 reason:width, height];
  }

  v13 = [[SUUISizeValue alloc] initWithSize:width, height];
  v12 = [(NSMutableDictionary *)self->_videoPlaceholderImages objectForKey:v13];
  if (!v12)
  {
    v14 = width <= height ? 1 : 2;
    v12 = [(SUUIVideoImageDataConsumer *)self->_videoImageDataConsumer imageForColor:0 orientation:v14];
    if (v12)
    {
      [(NSMutableDictionary *)self->_videoPlaceholderImages setObject:v12 forKey:v13];
    }
  }

LABEL_12:

  return v12;
}

@end