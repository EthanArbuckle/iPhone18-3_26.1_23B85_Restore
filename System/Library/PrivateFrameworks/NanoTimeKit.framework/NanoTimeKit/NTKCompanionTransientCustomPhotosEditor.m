@interface NTKCompanionTransientCustomPhotosEditor
- (BOOL)addImageList:(id)a3;
- (BOOL)setOriginalCrop:(CGRect)a3 forPhotoAtIndex:(int64_t)a4;
- (CGRect)originalCropForPhotoAtIndex:(int64_t)a3;
- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)a3;
- (NTKCompanionTransientCustomPhotosEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4;
- (id)_writeTransientPhotosInto:(id)a3;
- (void)deletePhotoAtIndex:(int64_t)a3;
- (void)finalizeWithCompletion:(id)a3;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3;
- (void)imageAndCropForPhotoAtIndex:(int64_t)a3 completion:(id)a4;
- (void)imageInPhotoLibraryForPhotoAtIndex:(int64_t)a3 completion:(id)a4;
- (void)movePhotoAtIndex:(int64_t)a3 toIndex:(int64_t)a4;
@end

@implementation NTKCompanionTransientCustomPhotosEditor

- (NTKCompanionTransientCustomPhotosEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4
{
  v8.receiver = self;
  v8.super_class = NTKCompanionTransientCustomPhotosEditor;
  v4 = [(NTKCompanionCustomPhotosEditor *)&v8 initWithResourceDirectory:0 forDevice:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    photos = v4->_photos;
    v4->_photos = v5;

    v4->_previewIsValid = 0;
    [(NTKCompanionResourceDirectoryEditor *)v4 setState:1];
  }

  return v4;
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "generateGalleryPreviewResourceDirectoryWithCompletion: generating preview for TransientCustomPhotosEditor", buf, 2u);
  }

  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__29;
  v24 = __Block_byref_object_dispose__29;
  v25 = 0;
  v6 = [(NTKCompanionResourceDirectoryEditor *)self state];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__NTKCompanionTransientCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke;
  aBlock[3] = &unk_27877FEC0;
  v18 = buf;
  v19 = v6;
  aBlock[4] = self;
  v7 = v4;
  v17 = v7;
  v8 = _Block_copy(aBlock);
  if ([(NTKCompanionResourceDirectoryEditor *)self state]>= 2 && [(NTKCompanionResourceDirectoryEditor *)self state]<= 2)
  {
    if (!self->_previewIsValid)
    {
      [(NTKCompanionResourceDirectoryEditor *)self setState:3];
      v12 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __97__NTKCompanionTransientCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_3;
      block[3] = &unk_27877FEE8;
      v15 = buf;
      block[4] = self;
      v14 = v8;
      dispatch_async(v12, block);

      goto LABEL_7;
    }

    v10 = [(NTKCompanionResourceDirectoryEditor *)self galleryPreviewResourceDirectory];
    v11 = *(v21 + 5);
    *(v21 + 5) = v10;

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  (*(v8 + 2))(v8, v9);
LABEL_7:

  _Block_object_dispose(buf, 8);
}

void __97__NTKCompanionTransientCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke(uint64_t a1, char a2)
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
  block[2] = __97__NTKCompanionTransientCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_2;
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

void __97__NTKCompanionTransientCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 96) = *(a1 + 64);
  [*(a1 + 32) setState:*(a1 + 56)];
  [*(a1 + 32) setGalleryPreviewResourceDirectory:*(*(*(a1 + 48) + 8) + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) galleryPreviewResourceDirectory];
  (*(v2 + 16))(v2, v3);
}

void __97__NTKCompanionTransientCustomPhotosEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_3(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = NTKPhotosCreateResourceDirectory();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[6] + 8) + 40))
  {
    v5 = [*(a1[4] + 88) firstObject];
    if (v5)
    {
      [objc_opt_class() _watchPhotoImageSize];
      v7 = v6;
      v9 = v8;
      v10 = objc_opt_class();
      v11 = [v5 image];
      [v5 originalCrop];
      v12 = [v10 _cropAndScaleUIImage:v11 cropRect:? outputSize:?];

      v13 = [objc_opt_class() _writeAsset:0 image:v12 withImageCrop:*(*(a1[6] + 8) + 40) to:{0.0, 0.0, v7, v9}];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 encodeAsDictionary];
        v18[0] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

        NTKPhotosWriteImageList(v16, *(*(a1[6] + 8) + 40));
        (*(a1[5] + 16))();
      }

      else
      {
        (*(a1[5] + 16))();
      }
    }

    else
    {
      (*(a1[5] + 16))();
    }
  }

  else
  {
    v17 = *(a1[5] + 16);

    v17();
  }
}

- (void)finalizeWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NTKCompanionResourceDirectoryEditor *)self state]>= 2 && [(NTKCompanionResourceDirectoryEditor *)self state]< 3)
  {
    [(NTKCompanionResourceDirectoryEditor *)self setState:4];
    v7 = dispatch_get_global_queue(2, 0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__NTKCompanionTransientCustomPhotosEditor_finalizeWithCompletion___block_invoke_2;
    v9[3] = &unk_27877FF60;
    v9[4] = self;
    v10 = v4;
    v8 = v4;
    dispatch_async(v7, v9);

    v6 = v10;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__NTKCompanionTransientCustomPhotosEditor_finalizeWithCompletion___block_invoke;
    block[3] = &unk_27877E960;
    v12 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v6 = v12;
  }
}

void __66__NTKCompanionTransientCustomPhotosEditor_finalizeWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = NTKPhotosCreateResourceDirectory();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__NTKCompanionTransientCustomPhotosEditor_finalizeWithCompletion___block_invoke_3;
  aBlock[3] = &unk_27877FF38;
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (v3)
  {
    v8 = [*(a1 + 32) _writeTransientPhotosInto:v3];
    v9 = v8;
    if (v8 && NTKPhotosWriteImageList(v8, v3))
    {
      v10 = objc_opt_new();
      v11 = *(a1 + 32);
      v12 = *(v11 + 88);
      *(v11 + 88) = v10;

      *(*(a1 + 32) + 96) = 0;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v7[2](v7, v13);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __66__NTKCompanionTransientCustomPhotosEditor_finalizeWithCompletion___block_invoke_3(uint64_t a1, char a2)
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
  v10[2] = __66__NTKCompanionTransientCustomPhotosEditor_finalizeWithCompletion___block_invoke_4;
  v10[3] = &unk_27877FF10;
  v13 = v6;
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __66__NTKCompanionTransientCustomPhotosEditor_finalizeWithCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setState:*(a1 + 56)];
  [*(a1 + 32) setResourceDirectory:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (BOOL)addImageList:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NTKCompanionResourceDirectoryEditor *)self state]&& [(NTKCompanionResourceDirectoryEditor *)self state]<= 2 && (v5 = [(NTKCompanionTransientCustomPhotosEditor *)self photosCount], ([(NSMutableArray *)self->_photos count]+ v5) <= 0x18))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = objc_opt_new();
          [v14 setImage:v13];
          v15 = [v14 image];
          v16 = [(NTKCompanionResourceDirectoryEditor *)self device];
          NTKPhotosDefaultCropForImage(v15, v16);
          [v14 setOriginalCrop:?];

          [(NSMutableArray *)self->_photos addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [(NTKCompanionResourceDirectoryEditor *)self setState:2];
    self->_previewIsValid = 0;
    v6 = 1;
    v4 = v17;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deletePhotoAtIndex:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(NTKCompanionResourceDirectoryEditor *)self state])
  {
    v5 = [(NTKCompanionResourceDirectoryEditor *)self state];
    if ((a3 & 0x8000000000000000) == 0 && v5 <= 2 && [(NSMutableArray *)self->_photos count]> a3)
    {
      [(NSMutableArray *)self->_photos removeObjectAtIndex:a3];
      v6 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = a3;
        _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "deletePhotoAtIndex: deleting image at index %ld", &v7, 0xCu);
      }

      if (self->_previewIsValid)
      {
        self->_previewIsValid = a3 != 0;
      }

      [(NTKCompanionResourceDirectoryEditor *)self setState:2];
    }
  }
}

- (void)movePhotoAtIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(NTKCompanionResourceDirectoryEditor *)self state])
  {
    v7 = [(NTKCompanionResourceDirectoryEditor *)self state];
    if ((a3 & 0x8000000000000000) == 0 && v7 <= 2)
    {
      v8 = [(NSMutableArray *)self->_photos count];
      if ((a4 & 0x8000000000000000) == 0 && v8 > a3 && [(NSMutableArray *)self->_photos count]> a4)
      {
        v9 = [(NSMutableArray *)self->_photos objectAtIndexedSubscript:a3];
        v10 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 134218240;
          v15 = a3;
          v16 = 2048;
          v17 = a4;
          _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "movePhotoAtIndex: moving photo from index %ld to index %ld", &v14, 0x16u);
        }

        [(NSMutableArray *)self->_photos removeObjectAtIndex:a3];
        [(NSMutableArray *)self->_photos insertObject:v9 atIndex:a4];
        if (self->_previewIsValid)
        {
          if (a3)
          {
            v11 = a4 == 0;
          }

          else
          {
            v11 = 1;
          }

          v13 = !v11 || a3 == a4;
          self->_previewIsValid = v13;
        }

        [(NTKCompanionResourceDirectoryEditor *)self setState:2];
      }
    }
  }
}

- (BOOL)setOriginalCrop:(CGRect)a3 forPhotoAtIndex:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(NTKCompanionResourceDirectoryEditor *)self state];
  if (v10)
  {
    v11 = [(NTKCompanionResourceDirectoryEditor *)self state];
    LOBYTE(v10) = 0;
    if ((a4 & 0x8000000000000000) == 0 && v11 <= 2)
    {
      if ([(NSMutableArray *)self->_photos count]<= a4)
      {
        LOBYTE(v10) = 0;
      }

      else
      {
        v12 = [(NSMutableArray *)self->_photos objectAtIndexedSubscript:a4];
        [v12 originalCrop];
        if ((CLKRectEqualsRect() & 1) == 0)
        {
          [v12 setOriginalCrop:{x, y, width, height}];
          if (self->_previewIsValid)
          {
            self->_previewIsValid = a4 != 0;
          }

          [(NTKCompanionResourceDirectoryEditor *)self setState:2];
        }

        LOBYTE(v10) = 1;
      }
    }
  }

  return v10;
}

- (void)imageAndCropForPhotoAtIndex:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (a3 < 0 || [(NSMutableArray *)self->_photos count]<= a3)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__NTKCompanionTransientCustomPhotosEditor_imageAndCropForPhotoAtIndex_completion___block_invoke;
    v14[3] = &unk_27877E960;
    v15 = v6;
    v10 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v14);
    v8 = v15;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_photos objectAtIndexedSubscript:a3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__NTKCompanionTransientCustomPhotosEditor_imageAndCropForPhotoAtIndex_completion___block_invoke_2;
    block[3] = &unk_27877E570;
    v12 = v7;
    v13 = v6;
    v8 = v7;
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __82__NTKCompanionTransientCustomPhotosEditor_imageAndCropForPhotoAtIndex_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) image];
  [*(a1 + 32) originalCrop];
  (*(v2 + 16))(v2, v3);
}

- (void)imageInPhotoLibraryForPhotoAtIndex:(int64_t)a3 completion:(id)a4
{
  v4 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__NTKCompanionTransientCustomPhotosEditor_imageInPhotoLibraryForPhotoAtIndex_completion___block_invoke;
  block[3] = &unk_27877E960;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (CGRect)originalCropForPhotoAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(NSMutableArray *)self->_photos count]<= a3)
  {
    v7 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    v5 = [(NSMutableArray *)self->_photos objectAtIndexedSubscript:a3];
    [v5 originalCrop];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)a3
{
  v3 = 1.0;
  if (a3 < 0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 1.0;
    if ([(NSMutableArray *)self->_photos count]> a3)
    {
      v7 = [(NSMutableArray *)self->_photos objectAtIndexedSubscript:a3];
      v8 = [v7 image];

      [v8 size];
      v10 = v9;
      [v8 scale];
      v12 = v10 * v11;
      [v8 size];
      v14 = v13;
      [v8 scale];
      v16 = v14 * v15;
      [objc_opt_class() _watchPhotoImageSize];
      v18 = v17 / v12;
      v20 = v19 / v16;
      if (v18 <= 1.0)
      {
        v6 = v18;
      }

      else
      {
        v6 = 1.0;
      }

      if (v20 <= 1.0)
      {
        v3 = v20;
      }

      else
      {
        v3 = 1.0;
      }
    }
  }

  v21 = v6;
  v22 = v3;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)_writeTransientPhotosInto:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_photos;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        [objc_opt_class() _watchPhotoImageSize];
        v13 = v12;
        v15 = v14;
        v16 = objc_opt_class();
        v17 = [v10 image];
        [v10 originalCrop];
        v18 = [v16 _cropAndScaleUIImage:v17 cropRect:? outputSize:?];

        v19 = [objc_opt_class() _writeAsset:0 image:v18 withImageCrop:v4 to:{0.0, 0.0, v13, v15}];
        if (!v19)
        {

          objc_autoreleasePoolPop(v11);
          v5 = 0;
          goto LABEL_11;
        }

        v20 = v19;
        v21 = [v19 encodeAsDictionary];
        [v5 addObject:v21];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

@end