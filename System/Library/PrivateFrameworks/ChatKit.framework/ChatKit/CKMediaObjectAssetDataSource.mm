@interface CKMediaObjectAssetDataSource
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)assetTypeCounts;
- (CKMediaObjectAssetDataSource)initWithChatItems:(id)items parentChatItemGUID:(id)d;
- (CKMediaObjectAssetDataSource)initWithChatItems:(id)items parentChatItemGUID:(id)d displayAssets:(id)assets chatItemGUIDMap:(id)map;
- (NSArray)mediaObjects;
- (NSURL)momentShareURL;
- (PXSimpleIndexPath)_indexPathForMediaObject:(SEL)object;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)assetReferenceForMediaObject:(id)object;
- (id)chatItemForAsset:(id)asset;
- (id)chatItemForAssetReference:(id)reference;
- (id)copyRefreshingAssetsAtIndexes:(id)indexes;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (id)temporaryChatItemForAssetReference:(id)reference;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation CKMediaObjectAssetDataSource

- (CKMediaObjectAssetDataSource)initWithChatItems:(id)items parentChatItemGUID:(id)d
{
  v6 = MEMORY[0x1E695DF70];
  dCopy = d;
  itemsCopy = items;
  v9 = objc_alloc_init(v6);
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __69__CKMediaObjectAssetDataSource_initWithChatItems_parentChatItemGUID___block_invoke;
  v18 = &unk_1E72F7378;
  v19 = v9;
  v20 = v10;
  v11 = v10;
  v12 = v9;
  [itemsCopy enumerateObjectsUsingBlock:&v15];
  v13 = [(CKMediaObjectAssetDataSource *)self initWithChatItems:itemsCopy parentChatItemGUID:dCopy displayAssets:v12 chatItemGUIDMap:v11, v15, v16, v17, v18];

  return v13;
}

void __69__CKMediaObjectAssetDataSource_initWithChatItems_parentChatItemGUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [[CKMediaObjectBackedAsset alloc] initWithChatItem:v3];
  [*(a1 + 32) addObject:v7];
  v4 = *(a1 + 40);
  v5 = [v3 IMChatItem];
  v6 = [v5 guid];
  [v4 setValue:v3 forKey:v6];
}

- (CKMediaObjectAssetDataSource)initWithChatItems:(id)items parentChatItemGUID:(id)d displayAssets:(id)assets chatItemGUIDMap:(id)map
{
  itemsCopy = items;
  dCopy = d;
  assetsCopy = assets;
  mapCopy = map;
  v20.receiver = self;
  v20.super_class = CKMediaObjectAssetDataSource;
  v14 = [(CKMediaObjectAssetDataSource *)&v20 init];
  v15 = v14;
  if (v14)
  {
    [(CKMediaObjectAssetDataSource *)v14 setParentChatItemGUID:dCopy];
    [(CKMediaObjectAssetDataSource *)v15 setChatItems:itemsCopy];
    v16 = [mapCopy copy];
    [(CKMediaObjectAssetDataSource *)v15 setChatItemGUIDMap:v16];

    v17 = [assetsCopy copy];
    [(CKMediaObjectAssetDataSource *)v15 setDisplayAssets:v17];

    v18 = objc_alloc_init(CKMediaObjectAssetCollection);
    [(CKMediaObjectAssetDataSource *)v15 setAssetCollection:v18];
  }

  return v15;
}

- (id)copyRefreshingAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  chatItems = [(CKMediaObjectAssetDataSource *)self chatItems];
  displayAssets = [(CKMediaObjectAssetDataSource *)self displayAssets];
  v7 = [displayAssets mutableCopy];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __62__CKMediaObjectAssetDataSource_copyRefreshingAssetsAtIndexes___block_invoke;
  v18 = &unk_1E72EF010;
  v19 = chatItems;
  v20 = v7;
  v8 = v7;
  v9 = chatItems;
  [indexesCopy enumerateIndexesUsingBlock:&v15];

  v10 = [CKMediaObjectAssetDataSource alloc];
  v11 = [(CKMediaObjectAssetDataSource *)self parentChatItemGUID:v15];
  chatItemGUIDMap = [(CKMediaObjectAssetDataSource *)self chatItemGUIDMap];
  v13 = [(CKMediaObjectAssetDataSource *)v10 initWithChatItems:v9 parentChatItemGUID:v11 displayAssets:v8 chatItemGUIDMap:chatItemGUIDMap];

  return v13;
}

void __62__CKMediaObjectAssetDataSource_copyRefreshingAssetsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [[CKMediaObjectBackedAsset alloc] initWithChatItem:v5];
  [*(a1 + 40) replaceObjectAtIndex:a2 withObject:v4];
}

- (NSArray)mediaObjects
{
  mediaObjects = self->_mediaObjects;
  if (!mediaObjects)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    chatItems = [(CKMediaObjectAssetDataSource *)self chatItems];
    v6 = [v4 initWithCapacity:{objc_msgSend(chatItems, "count")}];

    chatItems2 = [(CKMediaObjectAssetDataSource *)self chatItems];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__CKMediaObjectAssetDataSource_mediaObjects__block_invoke;
    v12[3] = &unk_1E72F2768;
    v13 = v6;
    v8 = v6;
    [chatItems2 enumerateObjectsUsingBlock:v12];

    v9 = [v8 copy];
    v10 = self->_mediaObjects;
    self->_mediaObjects = v9;

    mediaObjects = self->_mediaObjects;
  }

  return mediaObjects;
}

void __44__CKMediaObjectAssetDataSource_mediaObjects__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaObject];
  [*(a1 + 32) addObject:v3];
}

- (NSURL)momentShareURL
{
  momentShareURL = self->_momentShareURL;
  if (!momentShareURL)
  {
    if (self->_hasCheckedForMomentShareURL)
    {
      momentShareURL = 0;
    }

    else
    {
      self->_hasCheckedForMomentShareURL = 1;
      mediaObjects = [(CKMediaObjectAssetDataSource *)self mediaObjects];
      v5 = CKMomentShareURLForMediaObjects(mediaObjects);
      v6 = self->_momentShareURL;
      self->_momentShareURL = v5;

      momentShareURL = self->_momentShareURL;
    }
  }

  return momentShareURL;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)assetTypeCounts
{
  selfCopy = self;
  v19 = *MEMORY[0x1E69E9840];
  if (BYTE1(self[5].var2) != 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    displayAssets = [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)self displayAssets];
    v6 = [displayAssets countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(displayAssets);
          }

          mediaType = [*(*(&v14 + 1) + 8 * i) mediaType];
          if (mediaType == 2)
          {
            ++v8;
          }

          else if (mediaType == 1)
          {
            ++v10;
          }

          else
          {
            ++v9;
          }
        }

        v7 = [displayAssets countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    selfCopy[8].var1 = v10;
    selfCopy[8].var2 = v8;
    selfCopy[9].var0 = v9;
    BYTE1(selfCopy[5].var2) = 1;
  }

  *&retstr->var0 = *&selfCopy[8].var1;
  retstr->var2 = selfCopy[9].var0;
  return self;
}

- (id)assetReferenceForMediaObject:(id)object
{
  v7 = 0u;
  v8 = 0u;
  [(CKMediaObjectAssetDataSource *)self _indexPathForMediaObject:object];
  if (*MEMORY[0x1E69C4880])
  {
    v6[0] = v7;
    v6[1] = v8;
    v4 = [(CKMediaObjectAssetDataSource *)self assetReferenceAtItemIndexPath:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)chatItemForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy)
  {
    [referenceCopy indexPath];
    v6 = v16;
  }

  else
  {
    v6 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  chatItems = [(CKMediaObjectAssetDataSource *)self chatItems];
  v8 = [chatItems count];

  if (v6 >= v8)
  {
    v11 = 0;
  }

  else
  {
    chatItems2 = [(CKMediaObjectAssetDataSource *)self chatItems];
    if (v5)
    {
      [v5 indexPath];
      v10 = v14;
    }

    else
    {
      v10 = 0;
      v13 = 0u;
      v14 = 0u;
    }

    v11 = [chatItems2 objectAtIndex:{v10, v13, v14, v15, v16}];
  }

  return v11;
}

- (id)chatItemForAsset:(id)asset
{
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = assetCopy;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__69;
    v17 = __Block_byref_object_dispose__69;
    v18 = 0;
    chatItems = [(CKMediaObjectAssetDataSource *)self chatItems];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__CKMediaObjectAssetDataSource_chatItemForAsset___block_invoke;
    v10[3] = &unk_1E72F6370;
    v7 = v5;
    v11 = v7;
    v12 = &v13;
    [chatItems enumerateObjectsUsingBlock:v10];

    v8 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __49__CKMediaObjectAssetDataSource_chatItemForAsset___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 mediaObject];
  v8 = [v7 transfer];
  v9 = [v8 attributionInfo];
  v10 = [v9 objectForKey:*MEMORY[0x1E69A6FC0]];

  v11 = [*(a1 + 32) uuid];
  LODWORD(v8) = [v10 isEqualToString:v11];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)temporaryChatItemForAssetReference:(id)reference
{
  v25[2] = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  v5 = [CKTransientAttachmentMessagePartChatItem alloc];
  parentChatItemGUID = [(CKMediaObjectAssetDataSource *)self parentChatItemGUID];
  v7 = [(CKTransientAttachmentMessagePartChatItem *)v5 initWithParentChatItem:parentChatItemGUID];

  v24[0] = *MEMORY[0x1E69A6FC0];
  asset = [referenceCopy asset];

  uuid = [asset uuid];
  v25[0] = uuid;
  v24[1] = *MEMORY[0x1E69A6FE8];
  v10 = MEMORY[0x1E696AD98];
  chatItems = [(CKMediaObjectAssetDataSource *)self chatItems];
  firstObject = [chatItems firstObject];
  message = [firstObject message];
  fileTransferGUIDs = [message fileTransferGUIDs];
  v15 = [v10 numberWithUnsignedInteger:{objc_msgSend(fileTransferGUIDs, "count")}];
  v25[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v17 = [[CKTransientFileTransfer alloc] initWithAttributionInfo:v16];
  v18 = [[CKMediaObject alloc] initWithTransfer:v17 context:0 forceInlinePreview:0];
  [(CKAttachmentMessagePartChatItem *)v7 setMediaObject:v18];
  chatItems2 = [(CKMediaObjectAssetDataSource *)self chatItems];
  firstObject2 = [chatItems2 firstObject];
  message2 = [firstObject2 message];
  guid = [message2 guid];
  [(CKTransientAttachmentMessagePartChatItem *)v7 setParentGUID:guid];

  return v7;
}

- (PXSimpleIndexPath)_indexPathForMediaObject:(SEL)object
{
  v6 = *(MEMORY[0x1E69C48E8] + 16);
  *&retstr->dataSourceIdentifier = *MEMORY[0x1E69C48E8];
  *&retstr->item = v6;
  v7 = a4;
  mediaObjects = [(CKMediaObjectAssetDataSource *)self mediaObjects];
  v9 = [mediaObjects indexOfObject:v7];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [(CKMediaObjectAssetDataSource *)self identifier];
    retstr->dataSourceIdentifier = result;
    retstr->section = 0;
    retstr->item = v9;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  v15 = *MEMORY[0x1E69E9840];
  if (section)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v9 = 138412802;
        v10 = objc_opt_class();
        v11 = 2080;
        v12 = "[CKMediaObjectAssetDataSource numberOfItemsInSection:]";
        v13 = 2048;
        sectionCopy = section;
        v5 = v10;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@ %s asked for section %ld, does not exist!", &v9, 0x20u);
      }
    }

    return 0;
  }

  else
  {
    mediaObjects = [(CKMediaObjectAssetDataSource *)self mediaObjects];
    v8 = [mediaObjects count];

    return v8;
  }
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  v17 = *MEMORY[0x1E69E9840];
  if (path->dataSourceIdentifier != *MEMORY[0x1E69C4880])
  {
    if (path->item == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (path->section != 0x7FFFFFFFFFFFFFFFLL)
      {
        assetCollection = [(CKMediaObjectAssetDataSource *)self assetCollection];
        goto LABEL_7;
      }
    }

    else if (path->subitem == 0x7FFFFFFFFFFFFFFFLL)
    {
      displayAssets = [(CKMediaObjectAssetDataSource *)self displayAssets];
      assetCollection = [displayAssets objectAtIndex:path->item];

      goto LABEL_7;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      section = path->section;
      v11 = 138412802;
      v12 = v5;
      v13 = 2080;
      v14 = "[CKMediaObjectAssetDataSource objectAtIndexPath:]";
      v15 = 2048;
      v16 = section;
      v7 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@ %s asked for section %ld, does not exist!", &v11, 0x20u);
    }
  }

  assetCollection = 0;
LABEL_7:

  return assetCollection;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  v19 = *MEMORY[0x1E69E9840];
  if (path->dataSourceIdentifier != *MEMORY[0x1E69C4880] && path->section != 0x7FFFFFFFFFFFFFFFLL && path->item == 0x7FFFFFFFFFFFFFFFLL)
  {
    displayAssets = [(CKMediaObjectAssetDataSource *)self displayAssets];
    v10 = PXDisplayAssetFetchResultFromArray();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        section = path->section;
        v13 = 138412802;
        v14 = v7;
        v15 = 2080;
        v16 = "[CKMediaObjectAssetDataSource objectsInIndexPath:]";
        v17 = 2048;
        v18 = section;
        v9 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "%@ %s asked for section %ld, does not exist!", &v13, 0x20u);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v6 = a4;
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v12.receiver = self;
  v12.super_class = CKMediaObjectAssetDataSource;
  [(PXSimpleIndexPath *)&v12 indexPathForObjectReference:v6];
  if (retstr->dataSourceIdentifier == *MEMORY[0x1E69C4880])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      asset = [v6 asset];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        mediaObject = [asset mediaObject];
        [(CKMediaObjectAssetDataSource *)self _indexPathForMediaObject:mediaObject];
        *&retstr->dataSourceIdentifier = v10;
        *&retstr->item = v11;
      }
    }
  }

  return result;
}

@end