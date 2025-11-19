@interface _UIDocumentPickerContainerItem
+ (id)_blockingBadgeForContainer:(id)a3 size:(CGSize)a4 scale:(double)a5;
+ (id)_blockingFolderIconForURL:(id)a3 container:(id)a4 size:(CGSize)a5 scale:(double)a6;
+ (id)_blockingIconForDocumentProxy:(id)a3 withSize:(CGSize)a4;
+ (id)_blockingIconForURL:(id)a3 withSize:(CGSize)a4;
+ (id)_blockingThumbnailForItem:(id)a3 documentProxy:(id)a4 withSize:(CGSize)a5 scale:(double)a6 wantsBorder:(BOOL *)a7 generatedThumbnail:(BOOL *)a8;
+ (id)_lruThumbnailArray;
+ (void)clearLRUThumbnailCache;
+ (void)markThumbnailAsRecentlyUsed:(id)a3;
- (BOOL)isActionApplicableForItem:(int64_t)a3;
- (BOOL)isAlias;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIDocumentPickerContainerItem)init;
- (_UIDocumentPickerContainerModel)parentModel;
- (id)_blipWithTags:(id)a3 height:(double)a4 scale:(double)a5;
- (id)_blockingThumbnailWithSize:(CGSize)a3 scale:(double)a4 wantsBorder:(BOOL *)a5;
- (id)_createThumbnailWithSize:(CGSize)a3 scale:(double)a4;
- (id)_formattedSubtitleForNumberOfItems:(unint64_t)a3;
- (id)_resourceIdentifier;
- (id)sortPath;
- (id)tagBlipsWithHeight:(double)a3 scale:(double)a4;
- (id)tags;
- (id)thumbnailWithSize:(CGSize)a3 scale:(double)a4;
- (unint64_t)hash;
- (void)_ensureModelPresent;
- (void)dealloc;
- (void)decrementModelDisplayCount;
- (void)incrementModelDisplayCount;
- (void)modelChanged;
@end

@implementation _UIDocumentPickerContainerItem

- (BOOL)isActionApplicableForItem:(int64_t)a3
{
  v4 = self;
  v5 = v4;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (![(_UIDocumentPickerContainerItem *)v4 type])
      {
        v6 = ![(_UIDocumentPickerContainerItem *)v5 isAlias];
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (a3 != 5 && a3 != 6)
    {
LABEL_13:
      LOBYTE(v6) = 0;
      goto LABEL_18;
    }

    if ([(_UIDocumentPickerContainerItem *)v4 type])
    {
      v7 = [(_UIDocumentPickerContainerItem *)v5 type]== 1;
      goto LABEL_15;
    }

LABEL_11:
    LOBYTE(v6) = 1;
    goto LABEL_18;
  }

  if (a3 < 2)
  {
    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      LOBYTE(v6) = [(_UIDocumentPickerContainerItem *)v4 renameable];
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v7 = [(_UIDocumentPickerContainerItem *)v4 type]== 0;
LABEL_15:
  LOBYTE(v6) = v7;
LABEL_18:

  return v6;
}

- (_UIDocumentPickerContainerItem)init
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerContainerItem;
  v2 = [(_UIDocumentPickerContainerItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIDocumentPickerContainerItem *)v2 setPickable:1];
  }

  return v3;
}

- (void)dealloc
{
  [(_UIDocumentPickerContainerItem *)self setParentModel:0];
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerContainerItem;
  [(_UIDocumentPickerContainerItem *)&v3 dealloc];
}

+ (id)_lruThumbnailArray
{
  if (_lruThumbnailArray_onceToken != -1)
  {
    +[_UIDocumentPickerContainerItem _lruThumbnailArray];
  }

  v3 = _lruThumbnailArray_cacheArray;

  return v3;
}

+ (void)markThumbnailAsRecentlyUsed:(id)a3
{
  v4 = a3;
  v5 = [a1 _lruThumbnailArray];
  [v5 insertObject:v4 atIndex:0];

  if ([v5 count] >= 0x29)
  {
    [v5 removeObjectsInRange:{40, objc_msgSend(v5, "count") - 40}];
  }
}

+ (void)clearLRUThumbnailCache
{
  v2 = [a1 _lruThumbnailArray];
  [v2 removeAllObjects];
}

- (id)thumbnailWithSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(_UIDocumentPickerContainerItem *)self url];

  if (v8)
  {
    if (!self->_thumbnailsBySize)
    {
      v9 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:5];
      thumbnailsBySize = self->_thumbnailsBySize;
      self->_thumbnailsBySize = v9;
    }

    v11 = [_UIDocumentPickerContainerItemThumbnailKey alloc];
    v12 = [(_UIDocumentPickerContainerItem *)self url];
    v13 = [(_UIDocumentPickerContainerItemThumbnailKey *)v11 initWithPrimaryKey:v12 size:width scale:height, a4];

    v14 = [(NSMapTable *)self->_thumbnailsBySize objectForKey:v13];
    if (!v14)
    {
      v15 = [(_UIDocumentPickerContainerItem *)self parentModel];
      if (v15)
      {
        objc_initWeak(&location, self);
        v16 = MEMORY[0x277CCA8C8];
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __58___UIDocumentPickerContainerItem_thumbnailWithSize_scale___block_invoke;
        v25 = &unk_278DD6530;
        objc_copyWeak(v29, &location);
        v26 = self;
        v29[1] = *&width;
        v29[2] = *&height;
        v29[3] = *&a4;
        v27 = v13;
        v17 = v15;
        v28 = v17;
        v18 = [v16 blockOperationWithBlock:&v22];
        thumbnailLoadOperation = self->_thumbnailLoadOperation;
        self->_thumbnailLoadOperation = v18;

        v20 = [v17 thumbnailQueue];
        [v20 addOperation:self->_thumbnailLoadOperation];

        objc_destroyWeak(v29);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_createThumbnailWithSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = objc_autoreleasePoolPush();
  v28 = 0;
  v9 = [(_UIDocumentPickerContainerItem *)self _blockingThumbnailWithSize:&v28 scale:width wantsBorder:height, a4];
  v10 = v9;
  if (v9)
  {
    [v9 size];
    v12 = v11 / height;
    [v10 size];
    v14 = fmax(v12, v13 / width);
    if (fabs(v14 + -1.0) >= 2.22044605e-16 || v28 == 1)
    {
      [v10 size];
      v16 = v15 / v14;
      [v10 size];
      v18 = v17 / v14;
      v19 = objc_opt_new();
      [v19 setScale:a4];
      v20 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v19 format:{v16, v18}];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __65___UIDocumentPickerContainerItem__createThumbnailWithSize_scale___block_invoke;
      v23[3] = &unk_278DD6558;
      v25 = v16;
      v26 = v18;
      v24 = v10;
      v27 = v28;
      v21 = [v20 imageWithActions:v23];
    }

    else
    {
      v21 = v10;
    }
  }

  else
  {
    v21 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v21;
}

- (id)_blockingThumbnailWithSize:(CGSize)a3 scale:(double)a4 wantsBorder:(BOOL *)a5
{
  height = a3.height;
  width = a3.width;
  if ([(_UIDocumentPickerContainerItem *)self type]== 1)
  {
    if (a5)
    {
      *a5 = 0;
    }

    v10 = objc_opt_class();
    v11 = [(_UIDocumentPickerContainerItem *)self url];
    v12 = [v10 _blockingFolderIconForURL:v11 container:0 size:width scale:{height, a4}];
  }

  else
  {
    v13 = MEMORY[0x277CC1EB8];
    v14 = [(_UIDocumentPickerContainerItem *)self url];
    v15 = [v14 lastPathComponent];
    v16 = [(_UIDocumentPickerContainerItem *)self contentType];
    v11 = [v13 documentProxyForName:v15 type:v16 MIMEType:0];

    v17 = objc_opt_class();
    v18 = [(_UIDocumentPickerContainerItem *)self url];
    v12 = [v17 _blockingThumbnailForItem:v18 documentProxy:v11 withSize:a5 scale:0 wantsBorder:width generatedThumbnail:{height, a4}];
  }

  return v12;
}

- (id)_resourceIdentifier
{
  resourceIdentifier = self->_resourceIdentifier;
  if (!resourceIdentifier)
  {
    v4 = [(_UIDocumentPickerContainerItem *)self url];
    v12 = 0;
    v5 = *MEMORY[0x277CBE808];
    v11 = 0;
    [v4 getPromisedItemResourceValue:&v12 forKey:v5 error:&v11];
    v6 = v12;
    v7 = v11;

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(_UIDocumentPickerContainerItem *)self url];
    }

    v9 = self->_resourceIdentifier;
    self->_resourceIdentifier = v8;

    resourceIdentifier = self->_resourceIdentifier;
  }

  return resourceIdentifier;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 _resourceIdentifier];
    v6 = [(_UIDocumentPickerContainerItem *)self _resourceIdentifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(_UIDocumentPickerContainerItem *)self _resourceIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)tags
{
  v2 = [(_UIDocumentPickerContainerItem *)self url];
  v6 = 0;
  [v2 br_getTagNames:&v6 error:0];
  v3 = v6;
  v4 = v6;

  return v3;
}

- (id)tagBlipsWithHeight:(double)a3 scale:(double)a4
{
  v7 = [(_UIDocumentPickerContainerItem *)self tags];
  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 allObjects];

  if ([v9 count] >= 4)
  {
    v10 = [v9 subarrayWithRange:{0, 3}];

    v9 = v10;
  }

  v11 = [(_UIDocumentPickerContainerItem *)self _blipWithTags:v9 height:a3 scale:a4];

  return v11;
}

- (id)_blipWithTags:(id)a3 height:(double)a4 scale:(double)a5
{
  v7 = a3;
  if ([v7 count])
  {
    v8 = MEMORY[0x277D755B8];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    v14 = *MEMORY[0x277D776E0];
    v11 = __UIImageCacheKeyWithSentinel();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61___UIDocumentPickerContainerItem__blipWithTags_height_scale___block_invoke;
    v15[3] = &unk_278DD65A8;
    v17 = a4;
    v16 = v7;
    v18 = a5;
    v12 = [v8 _cachedImageForKey:v11 fromBlock:{v15, v7, v9, v10, v14}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UIDocumentPickerContainerItem *)self url];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, v6];

  return v7;
}

- (BOOL)isAlias
{
  if ([(_UIDocumentPickerContainerItem *)self type])
  {
    return 0;
  }

  else
  {
    if (!self->_hasCachedIsAlias)
    {
      v4 = [(_UIDocumentPickerContainerItem *)self url];
      v7 = 0;
      [v4 getResourceValue:&v7 forKey:*MEMORY[0x277CBE858] error:0];
      v5 = v7;

      LOBYTE(v4) = [v5 BOOLValue];
      self->_cachedIsAlias = v4;
      self->_hasCachedIsAlias = 1;
    }

    return self->_cachedIsAlias;
  }
}

- (void)incrementModelDisplayCount
{
  ++self->_modelDisplayCount;
  [(_UIDocumentPickerContainerItem *)self _ensureModelPresent];
  if (self->_modelDisplayCount == 1 && self->_model)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel_modelChanged name:@"_UIDocumentPickerModelUpdatedNotification" object:self->_model];

    model = self->_model;

    [(_UIDocumentPickerURLContainerModel *)model startMonitoringChanges];
  }
}

- (void)_ensureModelPresent
{
  if (([(_UIDocumentPickerContainerItem *)self type]== 1 || [(_UIDocumentPickerContainerItem *)self type]== 2) && !self->_model)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weak_model);
    model = self->_model;
    self->_model = WeakRetained;

    if (!self->_model)
    {
      v5 = [(_UIDocumentPickerContainerItem *)self url];
      v13 = [v5 br_realpathURL];

      v6 = [_UIDocumentPickerURLContainerModel alloc];
      v7 = [(_UIDocumentPickerContainerItem *)self parentModel];
      v8 = [v7 pickableTypes];
      v9 = [(_UIDocumentPickerContainerItem *)self parentModel];
      v10 = -[_UIDocumentPickerURLContainerModel initWithURL:pickableTypes:mode:](v6, "initWithURL:pickableTypes:mode:", v13, v8, [v9 pickerMode]);
      v11 = self->_model;
      self->_model = v10;

      v12 = [(_UIDocumentPickerContainerItem *)self title];
      [(_UIDocumentPickerURLContainerModel *)self->_model setDisplayTitle:v12];

      objc_storeWeak(&self->_weak_model, self->_model);
    }
  }
}

- (void)modelChanged
{
  [(_UIDocumentPickerContainerItem *)self _modelChanged];
  v3 = [(_UIDocumentPickerContainerItem *)self parentModel];
  [v3 refreshItem:self thumbnailOnly:0];
}

- (void)decrementModelDisplayCount
{
  v3 = self->_modelDisplayCount - 1;
  self->_modelDisplayCount = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:self name:@"_UIDocumentPickerModelUpdatedNotification" object:self->_model];

    model = self->_model;
    self->_model = 0;

    [(NSOperation *)self->_thumbnailLoadOperation cancel];
    thumbnailLoadOperation = self->_thumbnailLoadOperation;
    self->_thumbnailLoadOperation = 0;
  }
}

- (id)_formattedSubtitleForNumberOfItems:(unint64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v6 = [v5 localizedStringForKey:@"%lu items" value:@"%lu items" table:@"Localizable"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

- (_UIDocumentPickerContainerModel)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

- (id)sortPath
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(_UIDocumentPickerContainerItem *)self url];
  v5 = [v4 absoluteString];

  objc_autoreleasePoolPop(v3);

  return v5;
}

+ (id)_blockingThumbnailForItem:(id)a3 documentProxy:(id)a4 withSize:(CGSize)a5 scale:(double)a6 wantsBorder:(BOOL *)a7 generatedThumbnail:(BOOL *)a8
{
  height = a5.height;
  width = a5.width;
  v15 = a3;
  v16 = a4;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v17 = [objc_alloc(MEMORY[0x277CDAA60]) initWithURL:v15];
  v18 = [MEMORY[0x277CDAA68] descriptorWithSize:width scaleFactor:{height, a6}];
  v23 = 0;
  v19 = [v17 imageForUseMode:0 descriptor:v18 generateIfNeeded:1 contentRect:0 error:&v23];
  v20 = v23;
  if (v19)
  {
    if (a8)
    {
      *a8 = 1;
    }

    if (a7)
    {
      *a7 = 1;
    }
  }

  else
  {
    v21 = cdui_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_UIDocumentPickerContainerItem(Icons) _blockingThumbnailForItem:v15 documentProxy:? withSize:? scale:? wantsBorder:? generatedThumbnail:?];
    }

    if (a8)
    {
      *a8 = 0;
    }

    v19 = [a1 _blockingIconForDocumentProxy:v16 withSize:{width, height}];
  }

  return v19;
}

+ (id)_blockingIconForURL:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v12 = 0;
  [v7 getPromisedItemResourceValue:&v12 forKey:*MEMORY[0x277CBE918] error:0];
  v8 = v12;
  if (UTTypeConformsTo(v8, *MEMORY[0x277CC2078]))
  {
    v9 = [a1 _blockingFolderIconForURL:v7 container:0 size:width scale:{height, 0.0}];
  }

  else
  {
    v10 = [MEMORY[0x277CC1EB8] documentProxyForName:0 type:v8 MIMEType:0];
    v9 = [a1 _blockingIconForDocumentProxy:v10 withSize:{width, height}];
  }

  return v9;
}

+ (id)_blockingIconForDocumentProxy:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  v5 = a3;
  if (height <= 100.0)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = v5;
    if (height >= 50.0)
    {
      v8 = 11;
    }

    else
    {
      v8 = 13;
    }
  }

  else
  {
    v6 = MEMORY[0x277D755B8];
    v7 = v5;
    v8 = 12;
  }

  v9 = [v6 _iconForResourceProxy:v7 format:v8];

  return v9;
}

+ (id)_blockingBadgeForContainer:(id)a3 size:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v43 = 1;
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CFAD68]];

  if (v10 && (v11 = MEMORY[0x277D755B8], [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D75C80], "traitCollectionWithDisplayScale:", a5), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "imageNamed:inBundle:compatibleWithTraitCollection:", @"iCloudDrive-TopLevel", v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v43 = 0, v14) || (v15 = MEMORY[0x277D755B8], objc_msgSend(v8, "imageDataForSize:scale:shouldTransformToAppIcon:", a5, &v43, width, height), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "imageWithData:scale:", v16, a5), v14 = objc_claimAutoreleasedReturnValue(), v16, v14) || (v17 = width * a5, v18 = MEMORY[0x277D755B8], objc_msgSend(v8, "imageDataForSize:scale:shouldTransformToAppIcon:", 1, &v43, v17, height * a5), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "imageWithData:scale:", v19, a5), v14 = objc_claimAutoreleasedReturnValue(), v19, v14))
  {
LABEL_5:
    if (v43 != 1)
    {
      goto LABEL_8;
    }

    [v14 scale];
    v20 = [v14 _applicationIconImageForFormat:2 precomposed:0 scale:?];
    goto LABEL_7;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = [v8 imageRepresentationsAvailable];
  v22 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v22)
  {
LABEL_19:
    v20 = 0;
LABEL_7:

    v14 = v20;
    goto LABEL_8;
  }

  v23 = v22;
  v24 = *v40;
LABEL_13:
  v25 = 0;
  while (1)
  {
    if (*v40 != v24)
    {
      objc_enumerationMutation(v14);
    }

    v26 = *(*(&v39 + 1) + 8 * v25);
    v27 = [v26 objectForKey:@"size"];
    [v27 CGSizeValue];
    v29 = v28;
    v31 = v30;

    v32 = [v26 objectForKey:@"scale"];
    [v32 floatValue];
    v34 = v33;
    v35 = v33;

    v43 = 0;
    if (v29 * v35 >= v17)
    {
      break;
    }

    if (v23 == ++v25)
    {
      v23 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:{16, v29 * v35}];
      if (v23)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  v36 = MEMORY[0x277D755B8];
  v37 = [v8 imageDataForSize:v34 scale:&v43 shouldTransformToAppIcon:{v29, v31}];
  v38 = [v36 imageWithData:v37 scale:a5];

  if (v38)
  {
    v14 = v38;
    goto LABEL_5;
  }

  v14 = 0;
LABEL_8:

  return v14;
}

+ (id)_blockingFolderIconForURL:(id)a3 container:(id)a4 size:(CGSize)a5 scale:(double)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v14 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  v15 = 1;
  v16 = 0;
  v17 = &qword_278DD65D8;
  v18 = 5;
  while (--v18)
  {
    if (vabdd_f64(width, *(v17 - 2)) >= 1.0)
    {
      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v17 - 1)];
      v16 = *v17;
      v13 = *(v17 + 1);
      v15 = *(v17 + 16);
      v14 = v13;
    }

    v17 += 5;
    if (v19)
    {
      if (v12)
      {
        goto LABEL_8;
      }

LABEL_13:
      v22 = [v11 br_containerID];
      if ([v22 isEqualToString:*MEMORY[0x277CFAD68]])
      {
        v23 = [v11 br_pathRelativeToSyncedRootURLForContainerID:v22];
        v24 = [v23 pathComponents];
        v25 = [v24 count];

        if (v25 == 2)
        {
          v26 = [v23 lastPathComponent];
          if ([v26 isEqualToString:*MEMORY[0x277CFAD80]])
          {
            v40 = v26;
            v27 = @"Desktop%@";
            goto LABEL_24;
          }

          if ([v26 isEqualToString:*MEMORY[0x277CFAD90]])
          {
            v40 = v26;
            v27 = @"Documents%@";
LABEL_24:
            v30 = MEMORY[0x277D755B8];
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:v27, v19];
            v32 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
            v33 = [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:a6];
            v20 = [v30 imageNamed:v31 inBundle:v32 compatibleWithTraitCollection:v33];

            v26 = v40;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_29;
    }
  }

  v21 = cdui_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    [_UIDocumentPickerContainerItem(Icons) _blockingFolderIconForURL:height container:? size:? scale:?];
  }

  v19 = 0;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v15)
  {
    v20 = [a1 _blockingBadgeForContainer:v12 size:v14 scale:{v13, a6}];
  }

  else
  {
    v28 = [a1 _blockingBadgeForContainer:v12 size:width scale:{height, a6}];
    if (v28)
    {
      v20 = v28;
      v29 = v20;
      goto LABEL_31;
    }

    v20 = 0;
  }

LABEL_29:
  v34 = MEMORY[0x277D755B8];
  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Folder%@", v19];
  v36 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v29 = [v34 imageNamed:v35 inBundle:v36 compatibleWithTraitCollection:0];

  if (v20)
  {
    v37 = objc_alloc(MEMORY[0x277D75560]);
    [v29 size];
    v38 = [v37 initWithSize:?];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __88___UIDocumentPickerContainerItem_Icons___blockingFolderIconForURL_container_size_scale___block_invoke;
    v41[3] = &unk_278DD6698;
    v42 = v29;
    v44 = v14;
    v45 = v13;
    v46 = v16;
    v20 = v20;
    v43 = v20;
    v29 = [v38 imageWithActions:v41];
  }

LABEL_31:

  return v29;
}

@end