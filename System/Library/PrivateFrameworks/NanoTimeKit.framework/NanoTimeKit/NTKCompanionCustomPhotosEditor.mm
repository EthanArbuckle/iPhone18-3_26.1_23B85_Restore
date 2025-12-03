@interface NTKCompanionCustomPhotosEditor
- (BOOL)addAssetsFromAssetList:(id)list maxPhotosCount:(unint64_t)count;
- (BOOL)addPhotosFromUIImagePicker:(id)picker;
- (BOOL)isPhotoInPhotoLibraryAtIndex:(int64_t)index;
- (BOOL)setOriginalCrop:(CGRect)crop forPhotoAtIndex:(int64_t)index;
- (CGRect)originalCropForPhotoAtIndex:(int64_t)index;
- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)index;
- (NTKCompanionCustomPhotosEditor)initWithResourceDirectory:(id)directory forDevice:(id)device;
- (id)_copyOrTranscodePhotosTo:(id)to;
- (id)_fetchAssetsForNewPhotos:(id)photos;
- (void)_fetchAssetsForPickedPhotos;
- (void)_readPickedPhotosFrom:(id)from;
- (void)_reinitializeWithImageList:(id)list andResourceDirectory:(id)directory;
- (void)deletePhotoAtIndex:(int64_t)index;
- (void)finalizeWithCompletion:(id)completion;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion;
- (void)imageAndCropForPhotoAtIndex:(int64_t)index completion:(id)completion;
- (void)imageInPhotoLibraryForPhotoAtIndex:(int64_t)index completion:(id)completion;
- (void)movePhotoAtIndex:(int64_t)index toIndex:(int64_t)toIndex;
@end

@implementation NTKCompanionCustomPhotosEditor

- (NTKCompanionCustomPhotosEditor)initWithResourceDirectory:(id)directory forDevice:(id)device
{
  v16.receiver = self;
  v16.super_class = NTKCompanionCustomPhotosEditor;
  v4 = [(NTKCompanionResourceDirectoryEditor *)&v16 initWithResourceDirectory:directory forDevice:device];
  if (v4)
  {
    v5 = objc_opt_new();
    pickedPhotos = v4->_pickedPhotos;
    v4->_pickedPhotos = v5;

    v7 = objc_opt_new();
    newPhotos = v4->_newPhotos;
    v4->_newPhotos = v7;

    v9 = objc_opt_new();
    orderList = v4->_orderList;
    v4->_orderList = v9;

    v11 = objc_opt_new();
    scaledImageCache = v4->_scaledImageCache;
    v4->_scaledImageCache = v11;

    v4->_previewIsValid = 0;
    resourceDirectory = [(NTKCompanionResourceDirectoryEditor *)v4 resourceDirectory];

    if (resourceDirectory)
    {
      resourceDirectory2 = [(NTKCompanionResourceDirectoryEditor *)v4 resourceDirectory];
      [(NTKCompanionCustomPhotosEditor *)v4 _readPickedPhotosFrom:resourceDirectory2];

      [(NTKCompanionCustomPhotosEditor *)v4 _fetchAssetsForPickedPhotos];
    }

    [(NTKCompanionResourceDirectoryEditor *)v4 setState:1];
  }

  return v4;
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "generateGalleryPreviewResourceDirectoryWithCompletion: generating preview for CustomPhotosEditor", buf, 2u);
  }

  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  state = [(NTKCompanionResourceDirectoryEditor *)self state];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__NTKCompanionCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke;
  aBlock[3] = &unk_27877FEC0;
  v18 = buf;
  v19 = state;
  aBlock[4] = self;
  v7 = completionCopy;
  v17 = v7;
  v8 = _Block_copy(aBlock);
  if ([(NTKCompanionResourceDirectoryEditor *)self state]&& [(NTKCompanionResourceDirectoryEditor *)self state]<= 2)
  {
    if ([(NTKCompanionResourceDirectoryEditor *)self state]== 1)
    {
      resourceDirectory = [(NTKCompanionResourceDirectoryEditor *)self resourceDirectory];
    }

    else
    {
      if (!self->_previewIsValid)
      {
        [(NTKCompanionResourceDirectoryEditor *)self setState:3];
        v12 = dispatch_get_global_queue(2, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __88__NTKCompanionCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_3;
        block[3] = &unk_27877FEE8;
        v15 = buf;
        block[4] = self;
        v14 = v8;
        dispatch_async(v12, block);

        goto LABEL_12;
      }

      resourceDirectory = [(NTKCompanionResourceDirectoryEditor *)self galleryPreviewResourceDirectory];
    }

    v11 = *(v21 + 5);
    *(v21 + 5) = resourceDirectory;

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  (*(v8 + 2))(v8, v9);
LABEL_12:

  _Block_object_dispose(buf, 8);
}

void __88__NTKCompanionCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 56);
  }

  else
  {
    v4 = *(*(*(a1 + 48) + 8) + 40);
    if (v4)
    {
      v5 = [MEMORY[0x277CCAA00] defaultManager];
      [v5 removeItemAtPath:*(*(*(a1 + 48) + 8) + 40) error:0];

      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;

      v4 = 0;
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__NTKCompanionCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_2;
  block[3] = &unk_27877FE98;
  v8 = *(a1 + 32);
  v14 = a2;
  block[4] = v8;
  v13 = v4;
  v10 = *(a1 + 40);
  v9 = v10;
  v12 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __88__NTKCompanionCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 80) = *(a1 + 64);
  [*(a1 + 32) setState:*(a1 + 56)];
  [*(a1 + 32) setGalleryPreviewResourceDirectory:*(*(*(a1 + 48) + 8) + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) galleryPreviewResourceDirectory];
  (*(v2 + 16))(v2, v3);
}

void __88__NTKCompanionCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_3(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = NTKPhotosCreateResourceDirectory();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[6] + 8) + 40))
  {
    v5 = [*(a1[4] + 64) firstObject];
    if (!v5)
    {
      v12 = *(a1[5] + 16);
LABEL_14:
      v12();
      goto LABEL_15;
    }

    v6 = [*(a1[4] + 48) objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = objc_opt_class();
      v8 = [*(a1[4] + 48) objectForKeyedSubscript:v5];
      v9 = [v8 photo];
      v10 = [v7 _linkPhoto:v9 to:*(*(a1[6] + 8) + 40) previewOnly:1];
    }

    else
    {
      v13 = [*(a1[4] + 56) objectForKeyedSubscript:v5];

      if (!v13)
      {
LABEL_13:
        v12 = *(a1[5] + 16);
        goto LABEL_14;
      }

      v14 = objc_opt_class();
      v8 = [*(a1[4] + 56) objectForKeyedSubscript:v5];
      v9 = [v8 asset];
      v15 = [*(a1[4] + 56) objectForKeyedSubscript:v5];
      [v15 crop];
      v10 = [v14 _transcodeAsset:v9 withCrop:*(*(a1[6] + 8) + 40) into:1 previewOnly:?];
    }

    if (v10)
    {
      v16 = [v10 encodeAsDictionary];
      v18[0] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

      NTKPhotosWriteImageList(v17, *(*(a1[6] + 8) + 40));
      (*(a1[5] + 16))();

LABEL_15:
      return;
    }

    goto LABEL_13;
  }

  v11 = *(a1[5] + 16);

  v11();
}

- (void)finalizeWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(NTKCompanionResourceDirectoryEditor *)self state]&& [(NTKCompanionResourceDirectoryEditor *)self state]< 3)
  {
    if ([(NTKCompanionResourceDirectoryEditor *)self state]== 1)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __57__NTKCompanionCustomPhotosEditor_finalizeWithCompletion___block_invoke_2;
      v9[3] = &unk_27877E570;
      v9[4] = self;
      v10 = completionCopy;
      dispatch_async(MEMORY[0x277D85CD0], v9);
      v5 = v10;
    }

    else
    {
      [(NTKCompanionResourceDirectoryEditor *)self setState:4];
      v6 = dispatch_get_global_queue(2, 0);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __57__NTKCompanionCustomPhotosEditor_finalizeWithCompletion___block_invoke_3;
      v7[3] = &unk_27877FF60;
      v7[4] = self;
      v8 = completionCopy;
      dispatch_async(v6, v7);

      v5 = v8;
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NTKCompanionCustomPhotosEditor_finalizeWithCompletion___block_invoke;
    block[3] = &unk_27877E960;
    v12 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v5 = v12;
  }
}

void __57__NTKCompanionCustomPhotosEditor_finalizeWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) resourceDirectory];
  (*(v1 + 16))(v1, v2);
}

void __57__NTKCompanionCustomPhotosEditor_finalizeWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = NTKPhotosCreateResourceDirectory();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__NTKCompanionCustomPhotosEditor_finalizeWithCompletion___block_invoke_4;
  aBlock[3] = &unk_27877FF38;
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (v3)
  {
    v8 = [*(a1 + 32) _copyOrTranscodePhotosTo:v3];
    v9 = v8;
    if (v8 && NTKPhotosWriteImageList(v8, v3))
    {
      [*(a1 + 32) _reinitializeWithImageList:v9 andResourceDirectory:v3];
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    v7[2](v7, v10);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __57__NTKCompanionCustomPhotosEditor_finalizeWithCompletion___block_invoke_4(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      [v7 removeItemAtPath:v5 error:0];

      v5 = 0;
    }

    v6 = 0;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NTKCompanionCustomPhotosEditor_finalizeWithCompletion___block_invoke_5;
  v10[3] = &unk_27877FF10;
  v13 = v6;
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __57__NTKCompanionCustomPhotosEditor_finalizeWithCompletion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setState:*(a1 + 56)];
  [*(a1 + 32) setResourceDirectory:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (BOOL)addPhotosFromUIImagePicker:(id)picker
{
  pickerCopy = picker;
  if (-[NTKCompanionResourceDirectoryEditor state](self, "state") && -[NTKCompanionResourceDirectoryEditor state](self, "state") <= 2 && (v5 = -[NTKCompanionCustomPhotosEditor photosCount](self, "photosCount"), ([pickerCopy count] + v5) <= 0x18))
  {
    v8 = [(NTKCompanionCustomPhotosEditor *)self _fetchAssetsForNewPhotos:pickerCopy];
    v6 = [(NTKCompanionCustomPhotosEditor *)self addAssetsFromAssetList:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)addAssetsFromAssetList:(id)list maxPhotosCount:(unint64_t)count
{
  v50 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (!-[NTKCompanionResourceDirectoryEditor state](self, "state") || -[NTKCompanionResourceDirectoryEditor state](self, "state") > 2 || (v7 = -[NTKCompanionCustomPhotosEditor photosCount](self, "photosCount"), [listCopy count] + v7 > count))
  {
    v8 = 0;
    goto LABEL_5;
  }

  firstObject = [(NSMutableArray *)self->_orderList firstObject];
  v40 = listCopy;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = listCopy;
  v10 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  v42 = *v44;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v44 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v43 + 1) + 8 * i);
      localIdentifier = [v13 localIdentifier];
      v15 = objc_opt_new();
      device = [(NTKCompanionResourceDirectoryEditor *)self device];
      NTKPhotosDefaultCropForAsset(v13, device);
      [v15 setCrop:?];

      [v15 setAsset:v13];
      [v15 setSubsampleFactor:_subsampleFactorForAsset(v13)];
      v17 = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:localIdentifier];
      v18 = v17;
      if (v17)
      {
        photo = [v17 photo];
        modificationDate = [photo modificationDate];
        modificationDate2 = [v13 modificationDate];
        [modificationDate timeIntervalSince1970];
        v23 = v22;
        [modificationDate2 timeIntervalSince1970];
        v25 = vabdd_f64(v23, v24);

        v26 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (v25 > 2.0)
        {
          if (v27)
          {
            photo2 = [v18 photo];
            imageURL = [photo2 imageURL];
            *buf = 138412290;
            v48 = imageURL;
            _os_log_impl(&dword_22D9C5000, v26, OS_LOG_TYPE_DEFAULT, "addAssetsFromAssetList: replacing existing photo %@ because it was modified", buf, 0xCu);
          }

          [(NSMutableDictionary *)self->_pickedPhotos removeObjectForKey:localIdentifier];
          [(NSMutableDictionary *)self->_newPhotos setObject:v15 forKeyedSubscript:localIdentifier];
          goto LABEL_26;
        }

        if (v27)
        {
          photo3 = [v18 photo];
          imageURL2 = [photo3 imageURL];
          *buf = 138412290;
          v48 = imageURL2;
          v34 = v26;
          v35 = "addAssetsFromAssetList: not adding existing photo %@";
LABEL_21:
          _os_log_impl(&dword_22D9C5000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);
        }

        goto LABEL_22;
      }

      v30 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:localIdentifier];

      v26 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      v31 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v30)
      {
        if (v31)
        {
          photo3 = [v15 asset];
          imageURL2 = [photo3 localIdentifier];
          *buf = 138412290;
          v48 = imageURL2;
          v34 = v26;
          v35 = "addAssetsFromAssetList: not adding new asset again %@";
          goto LABEL_21;
        }

LABEL_22:

        goto LABEL_26;
      }

      if (v31)
      {
        asset = [v15 asset];
        localIdentifier2 = [asset localIdentifier];
        *buf = 138412290;
        v48 = localIdentifier2;
        _os_log_impl(&dword_22D9C5000, v26, OS_LOG_TYPE_DEFAULT, "addAssetsFromAssetList: adding new asset %@", buf, 0xCu);
      }

      [(NSMutableDictionary *)self->_newPhotos setObject:v15 forKeyedSubscript:localIdentifier];
      [(NSMutableArray *)self->_orderList addObject:localIdentifier];
LABEL_26:
    }

    v11 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  }

  while (v11);
LABEL_28:

  if (self->_previewIsValid)
  {
    firstObject2 = [(NSMutableArray *)self->_orderList firstObject];
    self->_previewIsValid = NTKEqualStrings(firstObject, firstObject2);
  }

  [(NTKCompanionResourceDirectoryEditor *)self setState:2];

  v8 = 1;
  listCopy = v40;
LABEL_5:

  return v8;
}

- (void)deletePhotoAtIndex:(int64_t)index
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NTKCompanionResourceDirectoryEditor *)self state])
  {
    state = [(NTKCompanionResourceDirectoryEditor *)self state];
    if ((index & 0x8000000000000000) == 0 && state <= 2 && [(NSMutableArray *)self->_orderList count]> index)
    {
      v6 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
      [(NSMutableArray *)self->_orderList removeObject:v6];
      v7 = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:v6];

      if (v7)
      {
        v8 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:v6];
          photo = [v9 photo];
          imageURL = [photo imageURL];
          v20 = 138412546;
          v21 = imageURL;
          v22 = 2048;
          indexCopy2 = index;
          _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "deletePhotoAtIndex: deleting existing photo %@ at index %ld", &v20, 0x16u);
        }

        [(NSMutableDictionary *)self->_pickedPhotos removeObjectForKey:v6];
      }

      v12 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:v6];
      if (v12)
      {
        v13 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:v6];
          asset = [v14 asset];
          localIdentifier = [asset localIdentifier];
          v20 = 138412546;
          v21 = localIdentifier;
          v22 = 2048;
          indexCopy2 = index;
          _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "deletePhotoAtIndex: deleting new asset id %@ at index %ld", &v20, 0x16u);
        }

        scaledImageCache = self->_scaledImageCache;
        asset2 = [v12 asset];
        localIdentifier2 = [asset2 localIdentifier];
        [(NSCache *)scaledImageCache removeObjectForKey:localIdentifier2];

        [(NSMutableDictionary *)self->_newPhotos removeObjectForKey:v6];
      }

      if (self->_previewIsValid)
      {
        self->_previewIsValid = index != 0;
      }

      [(NTKCompanionResourceDirectoryEditor *)self setState:2];
    }
  }
}

- (void)movePhotoAtIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(NTKCompanionResourceDirectoryEditor *)self state])
  {
    state = [(NTKCompanionResourceDirectoryEditor *)self state];
    if ((index & 0x8000000000000000) == 0 && state <= 2)
    {
      v8 = [(NSMutableArray *)self->_orderList count];
      if ((toIndex & 0x8000000000000000) == 0 && v8 > index && [(NSMutableArray *)self->_orderList count]> toIndex)
      {
        v9 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
        v10 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 134218240;
          indexCopy = index;
          v16 = 2048;
          toIndexCopy = toIndex;
          _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "movePhotoAtIndex: moving photo from index %ld to index %ld", &v14, 0x16u);
        }

        [(NSMutableArray *)self->_orderList removeObjectAtIndex:index];
        [(NSMutableArray *)self->_orderList insertObject:v9 atIndex:toIndex];
        if (self->_previewIsValid)
        {
          if (index)
          {
            v11 = toIndex == 0;
          }

          else
          {
            v11 = 1;
          }

          v13 = !v11 || index == toIndex;
          self->_previewIsValid = v13;
        }

        [(NTKCompanionResourceDirectoryEditor *)self setState:2];
      }
    }
  }
}

- (BOOL)setOriginalCrop:(CGRect)crop forPhotoAtIndex:(int64_t)index
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  state = [(NTKCompanionResourceDirectoryEditor *)self state];
  if (state)
  {
    state2 = [(NTKCompanionResourceDirectoryEditor *)self state];
    LOBYTE(state) = 0;
    if ((index & 0x8000000000000000) == 0 && state2 <= 2)
    {
      if ([(NSMutableArray *)self->_orderList count]<= index)
      {
        LOBYTE(state) = 0;
        return state;
      }

      LODWORD(state) = [(NTKCompanionCustomPhotosEditor *)self canChangeOriginalCropOfPhotoAtIndex:index];
      if (state)
      {
        v12 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
        v13 = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:v12];
        v14 = v13;
        if (v13)
        {
          photo = [v13 photo];
          [photo originalCrop];
          v16 = CLKRectEqualsRect();

          if (v16)
          {
            goto LABEL_13;
          }

          [(NSMutableDictionary *)self->_pickedPhotos removeObjectForKey:v12];
          v17 = objc_opt_new();
          asset = [v14 asset];
          [v17 setAsset:asset];

          [v17 setSubsampleFactor:{objc_msgSend(v14, "subsampleFactor")}];
          [(NSMutableDictionary *)self->_newPhotos setObject:v17 forKeyedSubscript:v12];
        }

        else
        {
          v17 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:v12];
        }

        if (v17)
        {
          scaledImageCache = self->_scaledImageCache;
          asset2 = [v17 asset];
          localIdentifier = [asset2 localIdentifier];
          [(NSCache *)scaledImageCache removeObjectForKey:localIdentifier];

          CGAffineTransformMakeScale(&v24, [v17 subsampleFactor], objc_msgSend(v17, "subsampleFactor"));
          v25.origin.x = x;
          v25.origin.y = y;
          v25.size.width = width;
          v25.size.height = height;
          v26 = CGRectApplyAffineTransform(v25, &v24);
          [v17 setCrop:{v26.origin.x, v26.origin.y, v26.size.width, v26.size.height}];

          v22 = 0;
LABEL_14:
          if (self->_previewIsValid)
          {
            self->_previewIsValid = v22;
          }

          [(NTKCompanionResourceDirectoryEditor *)self setState:2];

          LOBYTE(state) = 1;
          return state;
        }

LABEL_13:
        v22 = 1;
        goto LABEL_14;
      }
    }
  }

  return state;
}

- (BOOL)isPhotoInPhotoLibraryAtIndex:(int64_t)index
{
  if (index < 0 || [(NSMutableArray *)self->_orderList count]<= index)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
  v6 = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:v5];
  asset = [v6 asset];
  if (asset)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:v5];
    v8 = v9 != 0;
  }

  return v8;
}

- (void)imageAndCropForPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  if (index < 0 || [(NSMutableArray *)self->_orderList count]<= index)
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __73__NTKCompanionCustomPhotosEditor_imageAndCropForPhotoAtIndex_completion___block_invoke;
    v50[3] = &unk_27877E960;
    v51 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v50);
    v7 = v51;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
    v8 = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:v7];
    photo = [v8 photo];

    if (photo)
    {
      v10 = NTKPhotosImageForPhoto(photo);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__NTKCompanionCustomPhotosEditor_imageAndCropForPhotoAtIndex_completion___block_invoke_2;
      block[3] = &unk_27877FF88;
      v49 = completionCopy;
      v47 = v10;
      v48 = photo;
      v11 = v10;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v12 = v49;
    }

    else
    {
      v11 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:v7];
      scaledImageCache = self->_scaledImageCache;
      asset = [v11 asset];
      localIdentifier = [asset localIdentifier];
      v12 = [(NSCache *)scaledImageCache objectForKey:localIdentifier];

      [objc_opt_class() _watchPhotoImageSize];
      v17 = v16;
      v19 = v18;
      if (v12)
      {
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __73__NTKCompanionCustomPhotosEditor_imageAndCropForPhotoAtIndex_completion___block_invoke_3;
        v39[3] = &unk_27877FFB0;
        v41 = completionCopy;
        v12 = v12;
        v42 = 0;
        v43 = 0;
        v40 = v12;
        v44 = v17;
        v45 = v19;
        dispatch_async(MEMORY[0x277D85CD0], v39);

        v20 = v41;
      }

      else
      {
        asset2 = [v11 asset];
        [v11 crop];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __73__NTKCompanionCustomPhotosEditor_imageAndCropForPhotoAtIndex_completion___block_invoke_4;
        v32[3] = &unk_27877FFD8;
        v32[4] = self;
        v11 = v11;
        v35 = 0;
        v36 = 0;
        v33 = v11;
        v37 = v17;
        v38 = v19;
        v34 = completionCopy;
        v30 = v32;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = ___watchSizeImageForAsset_block_invoke;
        v52[3] = &unk_2787800A0;
        v55 = v23;
        v56 = v25;
        v57 = v27;
        v58 = v29;
        v53 = asset2;
        v54 = v30;
        v31 = asset2;
        [(NTKCompanionResourceDirectoryEditor *)NTKCompanionCustomPhotosEditor _imageDataForAsset:v31 completion:v52];

        v20 = v33;
      }
    }
  }
}

uint64_t __73__NTKCompanionCustomPhotosEditor_imageAndCropForPhotoAtIndex_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  [*(a1 + 40) crop];
  v3 = *(v2 + 16);

  return v3(v2, v1);
}

void __73__NTKCompanionCustomPhotosEditor_imageAndCropForPhotoAtIndex_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(MEMORY[0x277CBF398] + 16);
  v16 = *MEMORY[0x277CBF398];
  v17 = v4;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 72);
    v6 = [*(a1 + 40) asset];
    v7 = [v6 localIdentifier];
    [v5 setObject:v3 forKey:v7];

    v8 = *(a1 + 72);
    v16 = *(a1 + 56);
    v17 = v8;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__NTKCompanionCustomPhotosEditor_imageAndCropForPhotoAtIndex_completion___block_invoke_5;
  v11[3] = &unk_27877FFB0;
  v9 = *(a1 + 48);
  v12 = v3;
  v13 = v9;
  v14 = v16;
  v15 = v17;
  v10 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

- (void)imageInPhotoLibraryForPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  if (index < 0 || [(NSMutableArray *)self->_orderList count]<= index)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__NTKCompanionCustomPhotosEditor_imageInPhotoLibraryForPhotoAtIndex_completion___block_invoke;
    block[3] = &unk_27877E960;
    v20 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v7 = v20;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
    v8 = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:v7];
    asset = [v8 asset];

    v10 = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:v7];
    subsampleFactor = [v10 subsampleFactor];

    if (asset || (-[NSMutableDictionary objectForKeyedSubscript:](self->_newPhotos, "objectForKeyedSubscript:", v7), v12 = objc_claimAutoreleasedReturnValue(), [v12 asset], asset = objc_claimAutoreleasedReturnValue(), v12, -[NSMutableDictionary objectForKeyedSubscript:](self->_newPhotos, "objectForKeyedSubscript:", v7), v13 = objc_claimAutoreleasedReturnValue(), subsampleFactor = objc_msgSend(v13, "subsampleFactor"), v13, asset))
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __80__NTKCompanionCustomPhotosEditor_imageInPhotoLibraryForPhotoAtIndex_completion___block_invoke_3;
      v15[3] = &unk_278780000;
      v16 = completionCopy;
      v14 = v15;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = ___fullSizeImageForAsset_block_invoke;
      v21[3] = &unk_278780050;
      v22 = v14;
      v23 = subsampleFactor;
      [(NTKCompanionResourceDirectoryEditor *)NTKCompanionCustomPhotosEditor _imageDataForAsset:asset completion:v21];
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __80__NTKCompanionCustomPhotosEditor_imageInPhotoLibraryForPhotoAtIndex_completion___block_invoke_2;
      v17[3] = &unk_27877E960;
      v18 = completionCopy;
      dispatch_async(MEMORY[0x277D85CD0], v17);
      asset = v18;
    }
  }
}

void __80__NTKCompanionCustomPhotosEditor_imageInPhotoLibraryForPhotoAtIndex_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__NTKCompanionCustomPhotosEditor_imageInPhotoLibraryForPhotoAtIndex_completion___block_invoke_4;
  v6[3] = &unk_27877E570;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (CGRect)originalCropForPhotoAtIndex:(int64_t)index
{
  if (index < 0 || [(NSMutableArray *)self->_orderList count]<= index)
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    goto LABEL_17;
  }

  v5 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
  v6 = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    asset = [v6 asset];
    if (!asset)
    {
      subsampleFactor = 1;
      goto LABEL_14;
    }

    photo = [v7 photo];
    modificationDate = [photo modificationDate];
    modificationDate2 = [asset modificationDate];
    [modificationDate timeIntervalSince1970];
    v17 = v16;
    [modificationDate2 timeIntervalSince1970];
    v19 = vabdd_f64(v17, v18);

    if (v19 <= 2.0)
    {
      photo2 = [v7 photo];
      [photo2 originalCrop];
      x = v21;
      y = v22;
      width = v23;
      height = v24;
    }

    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    if (CGRectIsEmpty(v42))
    {
      device = [(NTKCompanionResourceDirectoryEditor *)self device];
      NTKPhotosDefaultCropForAsset(asset, device);
      x = v26;
      y = v27;
      width = v28;
      height = v29;
    }

    v30 = v7;
  }

  else
  {
    v31 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:v5];
    [v31 crop];
    x = v32;
    y = v33;
    width = v34;
    height = v35;

    v30 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:v5];
    asset = v30;
  }

  subsampleFactor = [v30 subsampleFactor];
LABEL_14:

  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  if (!CGRectIsEmpty(v43))
  {
    CGAffineTransformMakeScale(&v41, 1.0 / subsampleFactor, 1.0 / subsampleFactor);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v45 = CGRectApplyAffineTransform(v44, &v41);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
  }

LABEL_17:
  v37 = x;
  v38 = y;
  v39 = width;
  v40 = height;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)index
{
  v3 = 1.0;
  if (index < 0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 1.0;
    if ([(NSMutableArray *)self->_orderList count]> index)
    {
      v7 = [(NSMutableArray *)self->_orderList objectAtIndexedSubscript:index];
      v8 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:v7];
      asset = [v8 asset];

      v10 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:v7];
      subsampleFactor = [v10 subsampleFactor];

      if (asset || (-[NSMutableDictionary objectForKeyedSubscript:](self->_pickedPhotos, "objectForKeyedSubscript:", v7), v12 = objc_claimAutoreleasedReturnValue(), [v12 asset], asset = objc_claimAutoreleasedReturnValue(), v12, -[NSMutableDictionary objectForKeyedSubscript:](self->_pickedPhotos, "objectForKeyedSubscript:", v7), v13 = objc_claimAutoreleasedReturnValue(), subsampleFactor = objc_msgSend(v13, "subsampleFactor"), v13, asset))
      {
        pixelWidth = [asset pixelWidth];
        pixelHeight = [asset pixelHeight];
        [objc_opt_class() _watchPhotoImageSize];
        v17 = v16 * subsampleFactor / pixelWidth;
        v19 = v18 * subsampleFactor / pixelHeight;
        if (NTKPhotosIsPHAssetIris(asset))
        {
          v20 = [objc_opt_class() _videoAssetOf:asset];
          v21 = NTKPhotosVideoDimensions(v20);
          v23 = v22;
          [objc_opt_class() _watchPhotoVideoSize];
          v26 = v25 / v21;
          if (v17 < v26)
          {
            v17 = v26;
          }

          if (v19 < v24 / v23)
          {
            v19 = v24 / v23;
          }
        }

        if (v17 <= 1.0)
        {
          v6 = v17;
        }

        else
        {
          v6 = 1.0;
        }

        if (v19 <= 1.0)
        {
          v3 = v19;
        }

        else
        {
          v3 = 1.0;
        }
      }
    }
  }

  v27 = v6;
  v28 = v3;
  result.height = v28;
  result.width = v27;
  return result;
}

- (void)_readPickedPhotosFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  [NTKPhotosReader readerForResourceDirectory:from];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = v15 = 0u;
  v4 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        localIdentifier = [v8 localIdentifier];
        v10 = objc_opt_new();
        [v10 setPhoto:v8];
        [v10 setSubsampleFactor:1];
        [(NSMutableDictionary *)self->_pickedPhotos setObject:v10 forKeyedSubscript:localIdentifier];
        [(NSMutableArray *)self->_orderList addObject:localIdentifier];
      }

      v5 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_fetchAssetsForPickedPhotos
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  allValues = [(NSMutableDictionary *)self->_pickedPhotos allValues];
  v5 = [allValues countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        photo = [*(*(&v37 + 1) + 8 * i) photo];
        localIdentifier = [photo localIdentifier];

        if (localIdentifier)
        {
          [v3 addObject:localIdentifier];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v6);
  }

  v11 = NTKPHAssetsForLocalIdentifiers(v3);
  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * j);
        localIdentifier2 = [v18 localIdentifier];
        [v12 setObject:v18 forKeyedSubscript:localIdentifier2];
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v15);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_pickedPhotos allValues];
  v21 = [allValues2 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(allValues2);
        }

        v25 = *(*(&v29 + 1) + 8 * k);
        photo2 = [v25 photo];
        localIdentifier3 = [photo2 localIdentifier];

        if (localIdentifier3)
        {
          v28 = [v12 objectForKeyedSubscript:localIdentifier3];
          [v25 setAsset:v28];
          [v25 setSubsampleFactor:_subsampleFactorForAsset(v28)];
        }
      }

      v22 = [allValues2 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v22);
  }
}

- (id)_fetchAssetsForNewPhotos:(id)photos
{
  v25 = *MEMORY[0x277D85DE8];
  photosCopy = photos;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = photosCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = *MEMORY[0x277D76A88];
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) objectForKeyedSubscript:{v9, v20}];
        v12 = v11;
        if (v11)
        {
          localIdentifier = [v11 localIdentifier];
          [v4 addObject:localIdentifier];
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v14 = NTKPHAssetsForLocalIdentifiers(v4);
  v15 = [v14 count];
  if (v15 != [v4 count])
  {
    v16 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(NTKCompanionCustomPhotosEditor *)v14 _fetchAssetsForNewPhotos:v4, v16];
    }
  }

  if ([v14 count])
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

- (id)_copyOrTranscodePhotosTo:(id)to
{
  toCopy = to;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = objc_opt_new();
  orderList = self->_orderList;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__NTKCompanionCustomPhotosEditor__copyOrTranscodePhotosTo___block_invoke;
  v9[3] = &unk_278780028;
  v9[4] = self;
  v6 = toCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)orderList enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __59__NTKCompanionCustomPhotosEditor__copyOrTranscodePhotosTo___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [*(a1[4] + 48) objectForKeyedSubscript:?];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [v6 photo];
    v9 = [v7 _linkPhoto:v8 to:a1[5] previewOnly:0];
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1[4] + 56) objectForKeyedSubscript:v17];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [v10 asset];
    [v10 crop];
    v13 = [v11 _transcodeAsset:v12 withCrop:a1[5] into:0 previewOnly:?];

    v9 = v13;
  }

  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  if (v9)
  {
    v16 = [v9 encodeAsDictionary];
    [v15 addObject:v16];
  }

  else
  {
    *(v14 + 40) = 0;

    *a4 = 1;
  }
}

- (void)_reinitializeWithImageList:(id)list andResourceDirectory:(id)directory
{
  v34 = *MEMORY[0x277D85DE8];
  listCopy = list;
  directoryCopy = directory;
  v27 = objc_opt_new();
  v7 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = listCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [NTKPhoto decodeFromDictionary:*(*(&v29 + 1) + 8 * v11) forResourceDirectory:directoryCopy];
        localIdentifier = [v12 localIdentifier];
        asset = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:localIdentifier];

        if (asset)
        {
          v15 = [(NSMutableDictionary *)self->_pickedPhotos objectForKeyedSubscript:localIdentifier];
          asset = [v15 asset];
        }

        v16 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:localIdentifier];

        if (v16)
        {
          v17 = [(NSMutableDictionary *)self->_newPhotos objectForKeyedSubscript:localIdentifier];
          asset2 = [v17 asset];

          asset = asset2;
        }

        v19 = objc_opt_new();
        [v19 setPhoto:v12];
        [v19 setAsset:asset];
        [v19 setSubsampleFactor:_subsampleFactorForAsset(asset)];
        [(NSMutableDictionary *)v27 setObject:v19 forKeyedSubscript:localIdentifier];
        [(NSMutableArray *)v7 addObject:localIdentifier];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  orderList = self->_orderList;
  self->_orderList = v7;
  v21 = v7;

  pickedPhotos = self->_pickedPhotos;
  self->_pickedPhotos = v27;
  v23 = v27;

  v24 = objc_opt_new();
  newPhotos = self->_newPhotos;
  self->_newPhotos = v24;
}

- (void)_fetchAssetsForNewPhotos:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 2048;
  v8 = [a2 count];
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "_fetchAssetsForNewPhotos: could only retrieve %ld assets for %ld local identifiers", &v5, 0x16u);
}

@end