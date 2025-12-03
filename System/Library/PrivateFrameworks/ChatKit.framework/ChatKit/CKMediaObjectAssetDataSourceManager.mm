@interface CKMediaObjectAssetDataSourceManager
- ($DE30A600513D762F9B6AB73D2AED4B95)_additionalCountInMomentShare:(id)share representedCounts:(id *)counts;
- ($DE30A600513D762F9B6AB73D2AED4B95)additionalItemsCount;
- (CKMediaObjectAssetDataSourceManager)initWithDataSource:(id)source;
- (id)_changeDetailsForDataSource:(id)source oldDataSource:(id)dataSource;
- (void)_handleMomentShareCacheDidChange:(id)change;
- (void)_handlePreviewDidChangeNotification:(id)notification;
- (void)_mq_handlePreviewDidChangeNotification:(id)notification;
- (void)_setAdditionalItemsCount:(id)count;
- (void)_updateAdditionalItemsCount;
- (void)_updateMomentShare;
- (void)setMediaObjectDataSource:(id)source withChangeDetails:(id)details;
- (void)setMomentShare:(id)share;
- (void)setMomentShareURL:(id)l;
@end

@implementation CKMediaObjectAssetDataSourceManager

- (CKMediaObjectAssetDataSourceManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = CKMediaObjectAssetDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_additionalItemsCount = *MEMORY[0x1E69C4890];
    objc_storeStrong(&v6->_mediaObjectDataSource, source);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handlePreviewDidChangeNotification_ name:@"CKPreviewDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__handleMomentShareCacheDidChange_ name:*MEMORY[0x1E69A59C8] object:0];

    momentShareURL = [(CKMediaObjectAssetDataSource *)v7->_mediaObjectDataSource momentShareURL];
    [(CKMediaObjectAssetDataSourceManager *)v7 setMomentShareURL:momentShareURL];
  }

  return v7;
}

- (void)setMediaObjectDataSource:(id)source withChangeDetails:(id)details
{
  sourceCopy = source;
  detailsCopy = details;
  if (([(CKMediaObjectAssetDataSource *)self->_mediaObjectDataSource isEqual:sourceCopy]& 1) == 0)
  {
    if (detailsCopy)
    {
      v8 = detailsCopy;
    }

    else
    {
      v8 = [(CKMediaObjectAssetDataSourceManager *)self _changeDetailsForDataSource:sourceCopy oldDataSource:self->_mediaObjectDataSource];
    }

    v9 = v8;
    objc_storeStrong(&self->_mediaObjectDataSource, source);
    [(PXSectionedDataSourceManager *)self setDataSource:self->_mediaObjectDataSource changeDetails:v9];
    momentShareURL = [(CKMediaObjectAssetDataSource *)self->_mediaObjectDataSource momentShareURL];
    [(CKMediaObjectAssetDataSourceManager *)self setMomentShareURL:momentShareURL];
  }
}

- (id)_changeDetailsForDataSource:(id)source oldDataSource:(id)dataSource
{
  v31[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v7 = dataSourceCopy;
  v8 = 0;
  if (sourceCopy && dataSourceCopy)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__57;
    v28 = __Block_byref_object_dispose__57;
    v29 = objc_opt_new();
    chatItems = [sourceCopy chatItems];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __81__CKMediaObjectAssetDataSourceManager__changeDetailsForDataSource_oldDataSource___block_invoke;
    v21[3] = &unk_1E72F6370;
    v10 = v7;
    v22 = v10;
    v23 = &v24;
    [chatItems enumerateObjectsUsingBlock:v21];

    v11 = MEMORY[0x1E69C4478];
    chatItems2 = [v10 chatItems];
    chatItems3 = [sourceCopy chatItems];
    v14 = [v11 changeDetailsFromArray:chatItems2 toArray:chatItems3 changedObjects:v25[5] objectComparator:&__block_literal_global_218];

    v15 = objc_alloc(MEMORY[0x1E69C45B8]);
    identifier = [v10 identifier];
    identifier2 = [sourceCopy identifier];
    changeDetailsWithNoChanges = [MEMORY[0x1E69C4478] changeDetailsWithNoChanges];
    v30 = &unk_1F04E8298;
    v31[0] = v14;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v8 = [v15 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v19 subitemChangeDetailsByItemBySection:0];

    _Block_object_dispose(&v24, 8);
  }

  return v8;
}

void __81__CKMediaObjectAssetDataSourceManager__changeDetailsForDataSource_oldDataSource___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [*(a1 + 32) chatItemGUIDMap];
  v4 = [v26 IMChatItem];
  v5 = [v4 guid];
  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    v7 = [v26 visibleAssociatedMessageChatItems];
    v8 = v7;
    v9 = MEMORY[0x1E695E0F0];
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    v11 = v10;

    v12 = [v6 visibleAssociatedMessageChatItems];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v9;
    }

    v15 = v14;

    v16 = [v11 differenceFromArray:v15];
    v17 = [v11 count];
    v18 = [v15 count];

    if (v17 != v18 || ([v16 hasChanges] & 1) != 0 || (objc_msgSend(v6, "mediaObject"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "transfer"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "fileURL"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "mediaObject"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "transfer"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "fileURL"), v23 = objc_claimAutoreleasedReturnValue(), v24 = CKIsEqual(v20, v23), v23, v22, v21, v20, v19, v25, (v24 & 1) == 0))
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v26];
    }
  }
}

uint64_t __81__CKMediaObjectAssetDataSourceManager__changeDetailsForDataSource_oldDataSource___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 IMChatItem];
  v6 = [v5 guid];
  v7 = [v4 IMChatItem];

  v8 = [v7 guid];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)setMomentShare:(id)share
{
  shareCopy = share;
  if (self->_momentShare != shareCopy)
  {
    v6 = shareCopy;
    objc_storeStrong(&self->_momentShare, share);
    [(CKMediaObjectAssetDataSourceManager *)self _updateAdditionalItemsCount];
    shareCopy = v6;
  }
}

- (void)setMomentShareURL:(id)l
{
  lCopy = l;
  momentShareURL = self->_momentShareURL;
  if (momentShareURL != lCopy)
  {
    v8 = lCopy;
    v7 = [(NSURL *)momentShareURL isEqual:lCopy];
    lCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_momentShareURL, l);
      [(CKMediaObjectAssetDataSourceManager *)self _updateMomentShare];
      lCopy = v8;
    }
  }
}

- (void)_setAdditionalItemsCount:(id)count
{
  if (self->_additionalItemsCount.count != count.var0 || self->_additionalItemsCount.type != count.var1)
  {
    self->_additionalItemsCount = count;
    [(CKMediaObjectAssetDataSourceManager *)self signalChange:2];
  }
}

- (void)_updateMomentShare
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "nil response fetching moment share for URL: %@", &v2, 0xCu);
}

- (void)_updateAdditionalItemsCount
{
  momentShare = [(CKMediaObjectAssetDataSourceManager *)self momentShare];
  if (momentShare)
  {
    v11 = 0uLL;
    v12 = 0;
    mediaObjectDataSource = [(CKMediaObjectAssetDataSourceManager *)self mediaObjectDataSource];
    v5 = mediaObjectDataSource;
    if (mediaObjectDataSource)
    {
      [mediaObjectDataSource assetTypeCounts];
    }

    else
    {
      v11 = 0uLL;
      v12 = 0;
    }

    v9 = v11;
    v10 = v12;
    v6 = [(CKMediaObjectAssetDataSourceManager *)self _additionalCountInMomentShare:momentShare representedCounts:&v9];
  }

  else
  {
    v6 = *MEMORY[0x1E69C4890];
    v7 = *(MEMORY[0x1E69C4890] + 8);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__CKMediaObjectAssetDataSourceManager__updateAdditionalItemsCount__block_invoke;
  v8[3] = &unk_1E72F63B8;
  v8[4] = self;
  v8[5] = v6;
  v8[6] = v7;
  [(CKMediaObjectAssetDataSourceManager *)self performChanges:v8];
}

- ($DE30A600513D762F9B6AB73D2AED4B95)_additionalCountInMomentShare:(id)share representedCounts:(id *)counts
{
  v37 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  photosCount = [shareCopy photosCount];
  videosCount = [shareCopy videosCount];
  assetCount = [shareCopy assetCount];

  v9 = assetCount - (videosCount + photosCount);
  v10 = photosCount - counts->var0;
  if (photosCount >= counts->var0 && (v11 = counts->var1, v12 = videosCount >= v11, v13 = videosCount - v11, v12) && (v14 = counts->var2, v12 = v9 >= v14, v15 = v9 - v14, v12))
  {
    if (v13 > 0)
    {
      v19 = photosCount == counts->var0;
      v20 = v10 < 0;
    }

    else
    {
      v19 = 1;
      v20 = 0;
    }

    if ((v20 || v19) && v15 < 1)
    {
      v21 = *(MEMORY[0x1E69C4890] + 8);
      if (v13 <= 0)
      {
        v13 = *MEMORY[0x1E69C4890];
      }

      else
      {
        v21 = 2;
      }

      if (v10 <= 0)
      {
        v18 = v21;
      }

      else
      {
        v18 = 1;
      }

      if (v10 <= 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = photosCount - counts->var0;
      }
    }

    else
    {
      v18 = 0;
      v17 = v13 + v10 + v15;
    }
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      var0 = counts->var0;
      var1 = counts->var1;
      var2 = counts->var2;
      v25 = 134219264;
      v26 = photosCount;
      v27 = 2048;
      v28 = var0;
      v29 = 2048;
      v30 = videosCount;
      v31 = 2048;
      v32 = var1;
      v33 = 2048;
      v34 = v9;
      v35 = 2048;
      v36 = var2;
      _os_log_error_impl(&dword_19020E000, v16, OS_LOG_TYPE_ERROR, "Invalid moment share counts vs attachment counts %ld:%ld, %ld:%ld, %ld:%ld", &v25, 0x3Eu);
    }

    v17 = *MEMORY[0x1E69C4890];
    v18 = *(MEMORY[0x1E69C4890] + 8);
  }

  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (void)_handleMomentShareCacheDidChange:(id)change
{
  changeCopy = change;
  momentShareURL = [(CKMediaObjectAssetDataSourceManager *)self momentShareURL];
  v5 = momentShareURL;
  if (momentShareURL)
  {
    absoluteString = [momentShareURL absoluteString];
    userInfo = [changeCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A59D0]];
    if ([v8 containsObject:absoluteString])
    {
      [(CKMediaObjectAssetDataSourceManager *)self _updateMomentShare];
    }
  }
}

- (void)_handlePreviewDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(CKMediaObjectAssetDataSourceManager *)self _mq_handlePreviewDidChangeNotification:notificationCopy];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __75__CKMediaObjectAssetDataSourceManager__handlePreviewDidChangeNotification___block_invoke;
    v5[3] = &unk_1E72EB8D0;
    v5[4] = self;
    v6 = notificationCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_mq_handlePreviewDidChangeNotification:(id)notification
{
  v20[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  mediaObjectDataSource = [(CKMediaObjectAssetDataSourceManager *)self mediaObjectDataSource];
  if (mediaObjectDataSource)
  {
    object = [notificationCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isAutoloopVideo = [object isAutoloopVideo];
    }

    else
    {
      isAutoloopVideo = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((([object isMonoskiAsset] | isAutoloopVideo) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (!isAutoloopVideo)
    {
LABEL_11:

      goto LABEL_12;
    }

    mediaObjects = [mediaObjectDataSource mediaObjects];
    v9 = [mediaObjects indexOfObject:object];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:v9];
      v11 = [mediaObjectDataSource copyRefreshingAssetsAtIndexes:v10];
      v18 = objc_alloc(MEMORY[0x1E69C45B8]);
      identifier = [mediaObjectDataSource identifier];
      identifier2 = [v11 identifier];
      changeDetailsWithNoChanges = [MEMORY[0x1E69C4478] changeDetailsWithNoChanges];
      v19 = &unk_1F04E8298;
      v14 = [MEMORY[0x1E69C4478] changeDetailsWithChangedIndexes:v10];
      v20[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v16 = [v18 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v15 subitemChangeDetailsByItemBySection:0];

      [(CKMediaObjectAssetDataSourceManager *)self setMediaObjectDataSource:v11 withChangeDetails:v16];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- ($DE30A600513D762F9B6AB73D2AED4B95)additionalItemsCount
{
  p_additionalItemsCount = &self->_additionalItemsCount;
  count = self->_additionalItemsCount.count;
  type = p_additionalItemsCount->type;
  result.var1 = type;
  result.var0 = count;
  return result;
}

@end