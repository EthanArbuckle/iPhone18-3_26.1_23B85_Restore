@interface _UIDocumentPickerContainerItem
+ (id)_blockingBadgeForContainer:(id)container size:(CGSize)size scale:(double)scale;
+ (id)_blockingFolderIconForURL:(id)l container:(id)container size:(CGSize)size scale:(double)scale;
+ (id)_blockingIconForDocumentProxy:(id)proxy withSize:(CGSize)size;
+ (id)_blockingIconForURL:(id)l withSize:(CGSize)size;
+ (id)_blockingThumbnailForItem:(id)item documentProxy:(id)proxy withSize:(CGSize)size scale:(double)scale wantsBorder:(BOOL *)border generatedThumbnail:(BOOL *)thumbnail;
+ (id)_lruThumbnailArray;
+ (void)clearLRUThumbnailCache;
+ (void)markThumbnailAsRecentlyUsed:(id)used;
- (BOOL)isActionApplicableForItem:(int64_t)item;
- (BOOL)isAlias;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIDocumentPickerContainerItem)init;
- (_UIDocumentPickerContainerModel)parentModel;
- (id)_blipWithTags:(id)tags height:(double)height scale:(double)scale;
- (id)_blockingThumbnailWithSize:(CGSize)size scale:(double)scale wantsBorder:(BOOL *)border;
- (id)_createThumbnailWithSize:(CGSize)size scale:(double)scale;
- (id)_formattedSubtitleForNumberOfItems:(unint64_t)items;
- (id)_resourceIdentifier;
- (id)sortPath;
- (id)tagBlipsWithHeight:(double)height scale:(double)scale;
- (id)tags;
- (id)thumbnailWithSize:(CGSize)size scale:(double)scale;
- (unint64_t)hash;
- (void)_ensureModelPresent;
- (void)dealloc;
- (void)decrementModelDisplayCount;
- (void)incrementModelDisplayCount;
- (void)modelChanged;
@end

@implementation _UIDocumentPickerContainerItem

- (BOOL)isActionApplicableForItem:(int64_t)item
{
  selfCopy = self;
  v5 = selfCopy;
  if (item > 3)
  {
    if (item == 4)
    {
      if (![(_UIDocumentPickerContainerItem *)selfCopy type])
      {
        v6 = ![(_UIDocumentPickerContainerItem *)v5 isAlias];
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (item != 5 && item != 6)
    {
LABEL_13:
      LOBYTE(v6) = 0;
      goto LABEL_18;
    }

    if ([(_UIDocumentPickerContainerItem *)selfCopy type])
    {
      v7 = [(_UIDocumentPickerContainerItem *)v5 type]== 1;
      goto LABEL_15;
    }

LABEL_11:
    LOBYTE(v6) = 1;
    goto LABEL_18;
  }

  if (item < 2)
  {
    goto LABEL_11;
  }

  if (item != 2)
  {
    if (item == 3)
    {
      LOBYTE(v6) = [(_UIDocumentPickerContainerItem *)selfCopy renameable];
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v7 = [(_UIDocumentPickerContainerItem *)selfCopy type]== 0;
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

+ (void)markThumbnailAsRecentlyUsed:(id)used
{
  usedCopy = used;
  _lruThumbnailArray = [self _lruThumbnailArray];
  [_lruThumbnailArray insertObject:usedCopy atIndex:0];

  if ([_lruThumbnailArray count] >= 0x29)
  {
    [_lruThumbnailArray removeObjectsInRange:{40, objc_msgSend(_lruThumbnailArray, "count") - 40}];
  }
}

+ (void)clearLRUThumbnailCache
{
  _lruThumbnailArray = [self _lruThumbnailArray];
  [_lruThumbnailArray removeAllObjects];
}

- (id)thumbnailWithSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
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
    scale = [(_UIDocumentPickerContainerItemThumbnailKey *)v11 initWithPrimaryKey:v12 size:width scale:height, scale];

    v14 = [(NSMapTable *)self->_thumbnailsBySize objectForKey:scale];
    if (!v14)
    {
      parentModel = [(_UIDocumentPickerContainerItem *)self parentModel];
      if (parentModel)
      {
        objc_initWeak(&location, self);
        v16 = MEMORY[0x277CCA8C8];
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __58___UIDocumentPickerContainerItem_thumbnailWithSize_scale___block_invoke;
        v25 = &unk_278DD6530;
        objc_copyWeak(v29, &location);
        selfCopy = self;
        v29[1] = *&width;
        v29[2] = *&height;
        v29[3] = *&scale;
        v27 = scale;
        v17 = parentModel;
        v28 = v17;
        v18 = [v16 blockOperationWithBlock:&v22];
        thumbnailLoadOperation = self->_thumbnailLoadOperation;
        self->_thumbnailLoadOperation = v18;

        thumbnailQueue = [v17 thumbnailQueue];
        [thumbnailQueue addOperation:self->_thumbnailLoadOperation];

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

- (id)_createThumbnailWithSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v8 = objc_autoreleasePoolPush();
  v28 = 0;
  scale = [(_UIDocumentPickerContainerItem *)self _blockingThumbnailWithSize:&v28 scale:width wantsBorder:height, scale];
  v10 = scale;
  if (scale)
  {
    [scale size];
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
      [v19 setScale:scale];
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

- (id)_blockingThumbnailWithSize:(CGSize)size scale:(double)scale wantsBorder:(BOOL *)border
{
  height = size.height;
  width = size.width;
  if ([(_UIDocumentPickerContainerItem *)self type]== 1)
  {
    if (border)
    {
      *border = 0;
    }

    v10 = objc_opt_class();
    v11 = [(_UIDocumentPickerContainerItem *)self url];
    v12 = [v10 _blockingFolderIconForURL:v11 container:0 size:width scale:{height, scale}];
  }

  else
  {
    v13 = MEMORY[0x277CC1EB8];
    v14 = [(_UIDocumentPickerContainerItem *)self url];
    lastPathComponent = [v14 lastPathComponent];
    contentType = [(_UIDocumentPickerContainerItem *)self contentType];
    v11 = [v13 documentProxyForName:lastPathComponent type:contentType MIMEType:0];

    v17 = objc_opt_class();
    v18 = [(_UIDocumentPickerContainerItem *)self url];
    v12 = [v17 _blockingThumbnailForItem:v18 documentProxy:v11 withSize:border scale:0 wantsBorder:width generatedThumbnail:{height, scale}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _resourceIdentifier = [equalCopy _resourceIdentifier];
    _resourceIdentifier2 = [(_UIDocumentPickerContainerItem *)self _resourceIdentifier];
    v7 = [_resourceIdentifier isEqual:_resourceIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  _resourceIdentifier = [(_UIDocumentPickerContainerItem *)self _resourceIdentifier];
  v3 = [_resourceIdentifier hash];

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

- (id)tagBlipsWithHeight:(double)height scale:(double)scale
{
  tags = [(_UIDocumentPickerContainerItem *)self tags];
  reverseObjectEnumerator = [tags reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  if ([allObjects count] >= 4)
  {
    v10 = [allObjects subarrayWithRange:{0, 3}];

    allObjects = v10;
  }

  v11 = [(_UIDocumentPickerContainerItem *)self _blipWithTags:allObjects height:height scale:scale];

  return v11;
}

- (id)_blipWithTags:(id)tags height:(double)height scale:(double)scale
{
  tagsCopy = tags;
  if ([tagsCopy count])
  {
    v8 = MEMORY[0x277D755B8];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:height];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:scale];
    v14 = *MEMORY[0x277D776E0];
    v11 = __UIImageCacheKeyWithSentinel();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61___UIDocumentPickerContainerItem__blipWithTags_height_scale___block_invoke;
    v15[3] = &unk_278DD65A8;
    heightCopy = height;
    v16 = tagsCopy;
    scaleCopy = scale;
    v12 = [v8 _cachedImageForKey:v11 fromBlock:{v15, tagsCopy, v9, v10, v14}];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_modelChanged name:@"_UIDocumentPickerModelUpdatedNotification" object:self->_model];

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
      br_realpathURL = [v5 br_realpathURL];

      v6 = [_UIDocumentPickerURLContainerModel alloc];
      parentModel = [(_UIDocumentPickerContainerItem *)self parentModel];
      pickableTypes = [parentModel pickableTypes];
      parentModel2 = [(_UIDocumentPickerContainerItem *)self parentModel];
      v10 = -[_UIDocumentPickerURLContainerModel initWithURL:pickableTypes:mode:](v6, "initWithURL:pickableTypes:mode:", br_realpathURL, pickableTypes, [parentModel2 pickerMode]);
      v11 = self->_model;
      self->_model = v10;

      title = [(_UIDocumentPickerContainerItem *)self title];
      [(_UIDocumentPickerURLContainerModel *)self->_model setDisplayTitle:title];

      objc_storeWeak(&self->_weak_model, self->_model);
    }
  }
}

- (void)modelChanged
{
  [(_UIDocumentPickerContainerItem *)self _modelChanged];
  parentModel = [(_UIDocumentPickerContainerItem *)self parentModel];
  [parentModel refreshItem:self thumbnailOnly:0];
}

- (void)decrementModelDisplayCount
{
  v3 = self->_modelDisplayCount - 1;
  self->_modelDisplayCount = v3;
  if (!v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"_UIDocumentPickerModelUpdatedNotification" object:self->_model];

    model = self->_model;
    self->_model = 0;

    [(NSOperation *)self->_thumbnailLoadOperation cancel];
    thumbnailLoadOperation = self->_thumbnailLoadOperation;
    self->_thumbnailLoadOperation = 0;
  }
}

- (id)_formattedSubtitleForNumberOfItems:(unint64_t)items
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v6 = [v5 localizedStringForKey:@"%lu items" value:@"%lu items" table:@"Localizable"];
  items = [v4 localizedStringWithFormat:v6, items];

  return items;
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
  absoluteString = [v4 absoluteString];

  objc_autoreleasePoolPop(v3);

  return absoluteString;
}

+ (id)_blockingThumbnailForItem:(id)item documentProxy:(id)proxy withSize:(CGSize)size scale:(double)scale wantsBorder:(BOOL *)border generatedThumbnail:(BOOL *)thumbnail
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  proxyCopy = proxy;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v17 = [objc_alloc(MEMORY[0x277CDAA60]) initWithURL:itemCopy];
  v18 = [MEMORY[0x277CDAA68] descriptorWithSize:width scaleFactor:{height, scale}];
  v23 = 0;
  v19 = [v17 imageForUseMode:0 descriptor:v18 generateIfNeeded:1 contentRect:0 error:&v23];
  v20 = v23;
  if (v19)
  {
    if (thumbnail)
    {
      *thumbnail = 1;
    }

    if (border)
    {
      *border = 1;
    }
  }

  else
  {
    v21 = cdui_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_UIDocumentPickerContainerItem(Icons) _blockingThumbnailForItem:itemCopy documentProxy:? withSize:? scale:? wantsBorder:? generatedThumbnail:?];
    }

    if (thumbnail)
    {
      *thumbnail = 0;
    }

    v19 = [self _blockingIconForDocumentProxy:proxyCopy withSize:{width, height}];
  }

  return v19;
}

+ (id)_blockingIconForURL:(id)l withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  v12 = 0;
  [lCopy getPromisedItemResourceValue:&v12 forKey:*MEMORY[0x277CBE918] error:0];
  v8 = v12;
  if (UTTypeConformsTo(v8, *MEMORY[0x277CC2078]))
  {
    v9 = [self _blockingFolderIconForURL:lCopy container:0 size:width scale:{height, 0.0}];
  }

  else
  {
    v10 = [MEMORY[0x277CC1EB8] documentProxyForName:0 type:v8 MIMEType:0];
    v9 = [self _blockingIconForDocumentProxy:v10 withSize:{width, height}];
  }

  return v9;
}

+ (id)_blockingIconForDocumentProxy:(id)proxy withSize:(CGSize)size
{
  height = size.height;
  proxyCopy = proxy;
  if (height <= 100.0)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = proxyCopy;
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
    v7 = proxyCopy;
    v8 = 12;
  }

  v9 = [v6 _iconForResourceProxy:v7 format:v8];

  return v9;
}

+ (id)_blockingBadgeForContainer:(id)container size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v45 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v43 = 1;
  identifier = [containerCopy identifier];
  v10 = [identifier isEqualToString:*MEMORY[0x277CFAD68]];

  if (v10 && (v11 = MEMORY[0x277D755B8], [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D75C80], "traitCollectionWithDisplayScale:", scale), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "imageNamed:inBundle:compatibleWithTraitCollection:", @"iCloudDrive-TopLevel", v12, v13), imageRepresentationsAvailable = objc_claimAutoreleasedReturnValue(), v13, v12, v43 = 0, imageRepresentationsAvailable) || (v15 = MEMORY[0x277D755B8], objc_msgSend(containerCopy, "imageDataForSize:scale:shouldTransformToAppIcon:", scale, &v43, width, height), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "imageWithData:scale:", v16, scale), imageRepresentationsAvailable = objc_claimAutoreleasedReturnValue(), v16, imageRepresentationsAvailable) || (v17 = width * scale, v18 = MEMORY[0x277D755B8], objc_msgSend(containerCopy, "imageDataForSize:scale:shouldTransformToAppIcon:", 1, &v43, v17, height * scale), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "imageWithData:scale:", v19, scale), imageRepresentationsAvailable = objc_claimAutoreleasedReturnValue(), v19, imageRepresentationsAvailable))
  {
LABEL_5:
    if (v43 != 1)
    {
      goto LABEL_8;
    }

    [imageRepresentationsAvailable scale];
    v20 = [imageRepresentationsAvailable _applicationIconImageForFormat:2 precomposed:0 scale:?];
    goto LABEL_7;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  imageRepresentationsAvailable = [containerCopy imageRepresentationsAvailable];
  v22 = [imageRepresentationsAvailable countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v22)
  {
LABEL_19:
    v20 = 0;
LABEL_7:

    imageRepresentationsAvailable = v20;
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
      objc_enumerationMutation(imageRepresentationsAvailable);
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
      v23 = [imageRepresentationsAvailable countByEnumeratingWithState:&v39 objects:v44 count:{16, v29 * v35}];
      if (v23)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  v36 = MEMORY[0x277D755B8];
  v37 = [containerCopy imageDataForSize:v34 scale:&v43 shouldTransformToAppIcon:{v29, v31}];
  v38 = [v36 imageWithData:v37 scale:scale];

  if (v38)
  {
    imageRepresentationsAvailable = v38;
    goto LABEL_5;
  }

  imageRepresentationsAvailable = 0;
LABEL_8:

  return imageRepresentationsAvailable;
}

+ (id)_blockingFolderIconForURL:(id)l container:(id)container size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  lCopy = l;
  containerCopy = container;
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
      if (containerCopy)
      {
        goto LABEL_8;
      }

LABEL_13:
      br_containerID = [lCopy br_containerID];
      if ([br_containerID isEqualToString:*MEMORY[0x277CFAD68]])
      {
        v23 = [lCopy br_pathRelativeToSyncedRootURLForContainerID:br_containerID];
        pathComponents = [v23 pathComponents];
        v25 = [pathComponents count];

        if (v25 == 2)
        {
          lastPathComponent = [v23 lastPathComponent];
          if ([lastPathComponent isEqualToString:*MEMORY[0x277CFAD80]])
          {
            v40 = lastPathComponent;
            v27 = @"Desktop%@";
            goto LABEL_24;
          }

          if ([lastPathComponent isEqualToString:*MEMORY[0x277CFAD90]])
          {
            v40 = lastPathComponent;
            v27 = @"Documents%@";
LABEL_24:
            v30 = MEMORY[0x277D755B8];
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:v27, v19];
            v32 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
            v33 = [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:scale];
            v20 = [v30 imageNamed:v31 inBundle:v32 compatibleWithTraitCollection:v33];

            lastPathComponent = v40;
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
  if (!containerCopy)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v15)
  {
    v20 = [self _blockingBadgeForContainer:containerCopy size:v14 scale:{v13, scale}];
  }

  else
  {
    v28 = [self _blockingBadgeForContainer:containerCopy size:width scale:{height, scale}];
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