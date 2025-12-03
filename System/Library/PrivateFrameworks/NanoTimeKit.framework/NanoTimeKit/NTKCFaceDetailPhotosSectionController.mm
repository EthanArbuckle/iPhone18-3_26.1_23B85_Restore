@interface NTKCFaceDetailPhotosSectionController
- (BOOL)_canDisplayActionRowForCustomEditMode:(int64_t)mode andOption:(id)option;
- (BOOL)_handleDidSelectActionRowForOption:(id)option;
- (BOOL)_handleDidSelectOption:(id)option;
- (BOOL)canAddFace;
- (BOOL)hasChanges;
- (NTKCFaceDetailPhotosSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view externalAssets:(id)assets;
- (UIViewController)parentViewController;
- (id)_actionNameForOption:(id)option;
- (id)_currentEditor;
- (void)_customizeActionRow:(id)row withEditOption:(id)option;
- (void)_setPhotos:(id)photos;
- (void)_updatePhotosSection;
- (void)albumChooserDidFinish:(id)finish;
- (void)customPhotosControllerDidFinish:(id)finish;
- (void)faceDidChange;
- (void)faceDidChangeResourceDirectory;
- (void)saveChangesWithCompletion:(id)completion;
- (void)setSelectedOptions:(id)options;
@end

@implementation NTKCFaceDetailPhotosSectionController

- (NTKCFaceDetailPhotosSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view externalAssets:(id)assets
{
  galleryCopy = gallery;
  controllerCopy = controller;
  faceCopy = face;
  collectionCopy = collection;
  viewCopy = view;
  assetsCopy = assets;
  if (assetsCopy)
  {
    v19 = [collectionCopy filteredCollectionWithObjectsPassingTest:&__block_literal_global_139];
  }

  else
  {
    v19 = collectionCopy;
  }

  v20 = v19;
  v24.receiver = self;
  v24.super_class = NTKCFaceDetailPhotosSectionController;
  v21 = [(NTKCFaceDetailEditOptionVerticalSectionController *)&v24 initWithTableViewController:controllerCopy face:faceCopy inGallery:galleryCopy editOptionCollection:v19 faceView:viewCopy];
  v22 = v21;
  if (v21)
  {
    [(NTKCFaceDetailPhotosSectionController *)v21 setExternalAssets:assetsCopy];
  }

  return v22;
}

- (BOOL)canAddFace
{
  selectedOptions = [(NTKCFaceDetailEditOptionSectionController *)self selectedOptions];
  v4 = MEMORY[0x277CCABB0];
  collection = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v6 = [v4 numberWithInteger:{objc_msgSend(collection, "mode")}];
  v7 = [selectedOptions objectForKeyedSubscript:v6];

  photosContent = [v7 photosContent];
  if (photosContent)
  {
    v9 = photosContent == 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 1;
  }

  else if (photosContent == 1)
  {
    transientEditor = self->_transientEditor;
    if (!transientEditor)
    {
      transientEditor = self->_customPhotosEditor;
    }

    v10 = [(NTKCompanionTransientCustomPhotosEditor *)transientEditor photosCount]!= 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)faceDidChange
{
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailPhotosSectionController;
  [(NTKCFaceDetailEditOptionVerticalSectionController *)&v3 faceDidChange];
  [(NTKCFaceDetailPhotosSectionController *)self _updatePhotosSection];
}

- (void)faceDidChangeResourceDirectory
{
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailPhotosSectionController;
  [(NTKCFaceDetailSectionController *)&v3 faceDidChangeResourceDirectory];
  [(NTKCFaceDetailPhotosSectionController *)self _updatePhotosSection];
}

- (void)setSelectedOptions:(id)options
{
  v107.receiver = self;
  v107.super_class = NTKCFaceDetailPhotosSectionController;
  optionsCopy = options;
  [(NTKCFaceDetailEditOptionVerticalSectionController *)&v107 setSelectedOptions:optionsCopy];
  v5 = *&self->_syncedAlbumEditor == 0 && !self->_customPhotosEditor && self->_transientEditor == 0;
  v6 = MEMORY[0x277CCABB0];
  collection = [(NTKCFaceDetailEditOptionSectionController *)self collection];
  v8 = [v6 numberWithInteger:{objc_msgSend(collection, "mode")}];
  v9 = [optionsCopy objectForKeyedSubscript:v8];

  if (v5 || (currentContent = self->_currentContent, currentContent != [v9 photosContent]))
  {
    photosContent = [v9 photosContent];
    self->_currentContent = photosContent;
    if (photosContent)
    {
      if (photosContent != 2)
      {
        if (photosContent != 1)
        {
LABEL_65:
          [(NTKCFaceDetailEditOptionVerticalSectionController *)self reloadActionRow];
          goto LABEL_66;
        }

        v12 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_PHOTOS_OPTION_DESCRIPTION", @"Photos");
        [(NTKCFaceDetailEditOptionVerticalSectionController *)self setFooter:v12];

        externalAssets = self->_externalAssets;
        if (externalAssets)
        {
          firstObject = [(NSArray *)externalAssets firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            transientEditor = self->_transientEditor;
            if (!transientEditor)
            {
              v17 = [NTKCompanionTransientCustomPhotosEditor alloc];
              face = [(NTKCFaceDetailSectionController *)self face];
              device = [face device];
              v20 = [(NTKCompanionTransientCustomPhotosEditor *)v17 initWithResourceDirectory:0 forDevice:device];
              [(NTKCFaceDetailPhotosSectionController *)self setTransientEditor:v20];

              [(NTKCompanionTransientCustomPhotosEditor *)self->_transientEditor addImageList:self->_externalAssets];
              transientEditor = self->_transientEditor;
            }

            galleryPreviewResourceDirectory = [(NTKCompanionResourceDirectoryEditor *)transientEditor galleryPreviewResourceDirectory];

            v22 = self->_transientEditor;
            if (!galleryPreviewResourceDirectory)
            {
              v106[0] = MEMORY[0x277D85DD0];
              v106[1] = 3221225472;
              v106[2] = __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke;
              v106[3] = &unk_27877F598;
              v106[4] = self;
              v23 = v106;
LABEL_64:
              [v22 generateGalleryPreviewResourceDirectoryWithCompletion:v23];
              goto LABEL_65;
            }

            goto LABEL_33;
          }
        }

        if (v5)
        {
          v36 = self->_externalAssets;
          if (v36)
          {
            firstObject2 = [(NSArray *)v36 firstObject];
            objc_opt_class();
            v38 = objc_opt_isKindOfClass();

            if (v38)
            {
              v39 = [NTKCompanionCustomPhotosEditor alloc];
              face2 = [(NTKCFaceDetailSectionController *)self face];
              device2 = [face2 device];
              v42 = [(NTKCompanionCustomPhotosEditor *)v39 initWithResourceDirectory:0 forDevice:device2];
              customPhotosEditor = self->_customPhotosEditor;
              self->_customPhotosEditor = v42;

              [(NTKCompanionCustomPhotosEditor *)self->_customPhotosEditor addAssetsFromAssetList:self->_externalAssets];
              v22 = self->_customPhotosEditor;
              v105[0] = MEMORY[0x277D85DD0];
              v105[1] = 3221225472;
              v105[2] = __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_2;
              v105[3] = &unk_27877F598;
              v105[4] = self;
              v23 = v105;
              goto LABEL_64;
            }
          }

          v82 = [NTKCompanionCustomPhotosEditor alloc];
          face3 = [(NTKCFaceDetailSectionController *)self face];
          resourceDirectory = [face3 resourceDirectory];
          face4 = [(NTKCFaceDetailSectionController *)self face];
          device3 = [face4 device];
          v30 = [(NTKCompanionCustomPhotosEditor *)v82 initWithResourceDirectory:resourceDirectory forDevice:device3];
          v31 = 160;
          goto LABEL_46;
        }

        inGallery = [(NTKCFaceDetailSectionController *)self inGallery];
        v64 = self->_customPhotosEditor;
        if (inGallery)
        {
          if (!v64)
          {
            v65 = [NTKCompanionCustomPhotosEditor alloc];
            face5 = [(NTKCFaceDetailSectionController *)self face];
            device4 = [face5 device];
            v68 = [(NTKCompanionCustomPhotosEditor *)v65 initWithResourceDirectory:0 forDevice:device4];
            v69 = self->_customPhotosEditor;
            self->_customPhotosEditor = v68;

            v64 = self->_customPhotosEditor;
          }

          galleryPreviewResourceDirectory2 = [(NTKCompanionResourceDirectoryEditor *)v64 galleryPreviewResourceDirectory];

          v71 = self->_customPhotosEditor;
          if (galleryPreviewResourceDirectory2)
          {
            galleryPreviewResourceDirectory3 = [(NTKCompanionResourceDirectoryEditor *)v71 galleryPreviewResourceDirectory];
          }

          else
          {
            resourceDirectory2 = [(NTKCompanionResourceDirectoryEditor *)v71 resourceDirectory];

            v98 = self->_customPhotosEditor;
            if (!resourceDirectory2)
            {
              v104[0] = MEMORY[0x277D85DD0];
              v104[1] = 3221225472;
              v104[2] = __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_3;
              v104[3] = &unk_27877F598;
              v104[4] = self;
              [(NTKCompanionCustomPhotosEditor *)v98 generateGalleryPreviewResourceDirectoryWithCompletion:v104];
              goto LABEL_60;
            }

            galleryPreviewResourceDirectory3 = [(NTKCompanionResourceDirectoryEditor *)v98 resourceDirectory];
          }

          face8 = galleryPreviewResourceDirectory3;
          face6 = [(NTKCFaceDetailSectionController *)self face];
          [face6 setResourceDirectory:face8];
        }

        else
        {
          if (!v64)
          {
            v84 = [NTKCompanionCustomPhotosEditor alloc];
            face7 = [(NTKCFaceDetailSectionController *)self face];
            device5 = [face7 device];
            v87 = [(NTKCompanionCustomPhotosEditor *)v84 initWithResourceDirectory:0 forDevice:device5];
            v88 = self->_customPhotosEditor;
            self->_customPhotosEditor = v87;
          }

          face8 = [(NTKCFaceDetailSectionController *)self face];
          [face8 setResourceDirectory:0];
        }

LABEL_60:
        if (!self->_externalAssets && ![(NTKCompanionCustomPhotosEditor *)self->_customPhotosEditor photosCount])
        {
          [(NTKCFaceDetailPhotosSectionController *)self _handleDidSelectActionRowForOption:v9];
        }

        goto LABEL_65;
      }

      v24 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_DYNAMIC_OPTION_DESCRIPTION", @"Dynamic");
      [(NTKCFaceDetailEditOptionVerticalSectionController *)self setFooter:v24];

      if (v5)
      {
        v25 = [NTKCompanionMemoriesEditor alloc];
        face3 = [(NTKCFaceDetailSectionController *)self face];
        resourceDirectory = [face3 resourceDirectory];
        face4 = [(NTKCFaceDetailSectionController *)self face];
        device3 = [face4 device];
        v30 = [(NTKCompanionSinglePHAssetEditor *)v25 initWithResourceDirectory:resourceDirectory forDevice:device3 shouldFinalize:[(NTKCFaceDetailSectionController *)self inGallery]];
        v31 = 176;
LABEL_46:
        v83 = *(&self->super.super.super.super.isa + v31);
        *(&self->super.super.super.super.isa + v31) = v30;

        goto LABEL_47;
      }

      inGallery2 = [(NTKCFaceDetailSectionController *)self inGallery];
      memoriesEditor = self->_memoriesEditor;
      if (inGallery2)
      {
        if (!memoriesEditor)
        {
          v46 = [NTKCompanionMemoriesEditor alloc];
          face9 = [(NTKCFaceDetailSectionController *)self face];
          device6 = [face9 device];
          v49 = [(NTKCompanionSinglePHAssetEditor *)v46 initWithResourceDirectory:0 forDevice:device6 shouldFinalize:1];
          v50 = self->_memoriesEditor;
          self->_memoriesEditor = v49;

          memoriesEditor = self->_memoriesEditor;
        }

        galleryPreviewResourceDirectory4 = [memoriesEditor galleryPreviewResourceDirectory];

        v22 = self->_memoriesEditor;
        if (!galleryPreviewResourceDirectory4)
        {
          resourceDirectory3 = [v22 resourceDirectory];

          v22 = self->_memoriesEditor;
          if (!resourceDirectory3)
          {
            v101[0] = MEMORY[0x277D85DD0];
            v101[1] = 3221225472;
            v101[2] = __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_6;
            v101[3] = &unk_27877F598;
            v101[4] = self;
            v23 = v101;
            goto LABEL_64;
          }

          goto LABEL_52;
        }

        goto LABEL_33;
      }

      if (!memoriesEditor)
      {
        v73 = [NTKCompanionMemoriesEditor alloc];
        face10 = [(NTKCFaceDetailSectionController *)self face];
        device7 = [face10 device];
        v76 = [(NTKCompanionSinglePHAssetEditor *)v73 initWithResourceDirectory:0 forDevice:device7 shouldFinalize:1];
        v77 = self->_memoriesEditor;
        self->_memoriesEditor = v76;

        v78 = self->_memoriesEditor;
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_7;
        v100[3] = &unk_27877F598;
        v100[4] = self;
        v79 = v100;
LABEL_54:
        [v78 finalizeWithCompletion:v79];
        goto LABEL_55;
      }
    }

    else
    {
      v32 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_SYNCED_ALBUM_OPTION_DESCRIPTION", @"Synced Album");
      [(NTKCFaceDetailEditOptionVerticalSectionController *)self setFooter:v32];

      if (v5)
      {
        v33 = [NTKCompanionSyncedAlbumEditor alloc];
        face3 = [(NTKCFaceDetailSectionController *)self face];
        resourceDirectory = [face3 resourceDirectory];
        face4 = [(NTKCFaceDetailSectionController *)self face];
        device3 = [face4 device];
        v34 = [(NTKCompanionSinglePHAssetEditor *)v33 initWithResourceDirectory:resourceDirectory forDevice:device3 shouldFinalize:[(NTKCFaceDetailSectionController *)self inGallery]];
        syncedAlbumEditor = self->_syncedAlbumEditor;
        self->_syncedAlbumEditor = v34;

LABEL_47:
        goto LABEL_65;
      }

      inGallery3 = [(NTKCFaceDetailSectionController *)self inGallery];
      memoriesEditor = self->_syncedAlbumEditor;
      if (inGallery3)
      {
        if (!memoriesEditor)
        {
          v54 = [NTKCompanionSyncedAlbumEditor alloc];
          face11 = [(NTKCFaceDetailSectionController *)self face];
          device8 = [face11 device];
          v57 = [(NTKCompanionSinglePHAssetEditor *)v54 initWithResourceDirectory:0 forDevice:device8 shouldFinalize:1];
          v58 = self->_syncedAlbumEditor;
          self->_syncedAlbumEditor = v57;

          memoriesEditor = self->_syncedAlbumEditor;
        }

        galleryPreviewResourceDirectory5 = [memoriesEditor galleryPreviewResourceDirectory];

        v22 = self->_syncedAlbumEditor;
        if (!galleryPreviewResourceDirectory5)
        {
          resourceDirectory4 = [v22 resourceDirectory];

          v22 = self->_syncedAlbumEditor;
          if (!resourceDirectory4)
          {
            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_4;
            v103[3] = &unk_27877F598;
            v103[4] = self;
            v23 = v103;
            goto LABEL_64;
          }

LABEL_52:
          resourceDirectory5 = [v22 resourceDirectory];
          goto LABEL_34;
        }

LABEL_33:
        resourceDirectory5 = [v22 galleryPreviewResourceDirectory];
LABEL_34:
        v61 = resourceDirectory5;
        face12 = [(NTKCFaceDetailSectionController *)self face];
        [face12 setResourceDirectory:v61];

        goto LABEL_65;
      }

      if (!memoriesEditor)
      {
        v91 = [NTKCompanionSyncedAlbumEditor alloc];
        face13 = [(NTKCFaceDetailSectionController *)self face];
        device9 = [face13 device];
        v94 = [(NTKCompanionSinglePHAssetEditor *)v91 initWithResourceDirectory:0 forDevice:device9 shouldFinalize:1];
        v95 = self->_syncedAlbumEditor;
        self->_syncedAlbumEditor = v94;

        v78 = self->_syncedAlbumEditor;
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_5;
        v102[3] = &unk_27877F598;
        v102[4] = self;
        v79 = v102;
        goto LABEL_54;
      }
    }

    resourceDirectory6 = [memoriesEditor resourceDirectory];
    face14 = [(NTKCFaceDetailSectionController *)self face];
    [face14 setResourceDirectory:resourceDirectory6];

LABEL_55:
    v96 = self->_customPhotosEditor;
    self->_customPhotosEditor = 0;

    goto LABEL_65;
  }

LABEL_66:
}

void __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 face];
  [v4 setResourceDirectory:v3];
}

void __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 face];
  [v4 setResourceDirectory:v3];
}

void __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 face];
  [v4 setResourceDirectory:v3];
}

void __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 face];
  [v4 setResourceDirectory:v3];
}

void __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 face];
  [v4 setResourceDirectory:v3];
}

void __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 face];
  [v4 setResourceDirectory:v3];
}

void __60__NTKCFaceDetailPhotosSectionController_setSelectedOptions___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 face];
  [v4 setResourceDirectory:v3];
}

- (BOOL)_canDisplayActionRowForCustomEditMode:(int64_t)mode andOption:(id)option
{
  optionCopy = option;
  if (!self->_externalAssets)
  {
    goto LABEL_5;
  }

  transientEditor = self->_transientEditor;
  if (!transientEditor)
  {
    transientEditor = self->_customPhotosEditor;
  }

  if (![(NTKCompanionTransientCustomPhotosEditor *)transientEditor photosCount])
  {
    v8 = 0;
  }

  else
  {
LABEL_5:
    v10.receiver = self;
    v10.super_class = NTKCFaceDetailPhotosSectionController;
    v8 = [(NTKCFaceDetailEditOptionSectionController *)&v10 _canDisplayActionRowForCustomEditMode:mode andOption:optionCopy];
  }

  return v8;
}

- (BOOL)_handleDidSelectOption:(id)option
{
  optionCopy = option;
  if ([optionCopy photosContent] == 1 || -[NTKCFaceDetailSectionController inGallery](self, "inGallery"))
  {
    goto LABEL_6;
  }

  if (self->_currentContent != 1 || self->_canDeleteCustomPhotos)
  {
    self->_canDeleteCustomPhotos = 0;
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  if ([optionCopy photosContent])
  {
    if ([optionCopy photosContent] != 2)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v8 = @"PHOTOS_DELETE_CUSTOM_FOR_MEMORY_MESSAGE";
    v9 = @"delete for memory custom message";
  }

  else
  {
    v8 = @"PHOTOS_DELETE_CUSTOM_FOR_SYNCED_ALBUM_MESSAGE";
    v9 = @"delete for synced album custom message";
  }

  v10 = NTKCCustomizationLocalizedString(v8, v9, v7);
LABEL_14:
  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v10 preferredStyle:0];
  if ([(NTKCompanionCustomPhotosEditor *)self->_customPhotosEditor photosCount]== 1)
  {
    v12 = @"_SINGULAR";
  }

  else
  {
    v12 = @"_PLURAL";
  }

  v13 = [@"PHOTOS_DELETE_BUTTON" stringByAppendingString:v12];
  v15 = NTKCCustomizationLocalizedString(v13, @"Delete Confirmation", v14);

  v16 = MEMORY[0x277D750F8];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __64__NTKCFaceDetailPhotosSectionController__handleDidSelectOption___block_invoke;
  v26 = &unk_278786078;
  selfCopy = self;
  v28 = optionCopy;
  v17 = [v16 actionWithTitle:v15 style:2 handler:&v23];
  [v11 addAction:{v17, v23, v24, v25, v26, selfCopy}];

  v18 = MEMORY[0x277D750F8];
  v20 = NTKCCustomizationLocalizedString(@"PHOTOS_CANCEL_BUTTON", @"Cancel", v19);
  v21 = [v18 actionWithTitle:v20 style:1 handler:0];
  [v11 addAction:v21];

  parentViewController = [(NTKCFaceDetailPhotosSectionController *)self parentViewController];
  [parentViewController presentViewController:v11 animated:1 completion:0];

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t __64__NTKCFaceDetailPhotosSectionController__handleDidSelectOption___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 136) = 1;
  v2 = [*(a1 + 32) actionRow];
  if (v2)
  {
    v3 = [*(a1 + 32) rows];
    v4 = [*(a1 + 32) actionRow];
    v5 = [v3 indexOfObject:v4];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [*(a1 + 32) collection];
  v7 = [v6 options];
  v8 = [v7 indexOfObject:*(a1 + 40)];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v8 < v5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 + 1;
  }

  v11 = *(a1 + 32);

  return [v11 didSelectRow:v10];
}

- (BOOL)_handleDidSelectActionRowForOption:(id)option
{
  optionCopy = option;
  if ([optionCopy photosContent] == 1)
  {
    if ([(NTKCompanionCustomPhotosEditor *)self->_customPhotosEditor photosCount]|| [(NTKCompanionTransientCustomPhotosEditor *)self->_transientEditor photosCount])
    {
      transientEditor = self->_transientEditor;
      if (!transientEditor)
      {
        transientEditor = self->_customPhotosEditor;
      }

      v6 = transientEditor;
      v7 = [NTKCFaceDetailCustomPhotosViewController alloc];
      face = [(NTKCFaceDetailSectionController *)self face];
      inGallery = [(NTKCFaceDetailSectionController *)self inGallery];
      faceView = [(NTKCFaceDetailEditOptionSectionController *)self faceView];
      parentViewController2 = [(NTKCFaceDetailCustomPhotosViewController *)v7 initWithPhotosEditor:v6 forFace:face inGallery:inGallery faceView:faceView externalImagesSet:self->_externalAssets != 0];

      [(NTKCFaceDetailCustomPhotosViewController *)parentViewController2 setDelegate:self];
      parentViewController = [(NTKCFaceDetailPhotosSectionController *)self parentViewController];

      [parentViewController presentViewController:parentViewController2 animated:1 completion:0];
    }

    else
    {
      parentViewController2 = [(NTKCFaceDetailPhotosSectionController *)self parentViewController];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __76__NTKCFaceDetailPhotosSectionController__handleDidSelectActionRowForOption___block_invoke;
      v20[3] = &unk_2787860A0;
      v20[4] = self;
      [NTKCPhotosAddController presentPhotosAddControllerFromViewController:parentViewController2 selectionLimit:24 withCompletion:v20];
    }

    goto LABEL_11;
  }

  if (![optionCopy photosContent])
  {
    v14 = [NTKCFaceDetailAlbumChooserViewController alloc];
    syncedAlbumEditor = self->_syncedAlbumEditor;
    face2 = [(NTKCFaceDetailSectionController *)self face];
    v17 = [(NTKCFaceDetailAlbumChooserViewController *)v14 initWithPhotosEditor:syncedAlbumEditor forFace:face2 inGallery:[(NTKCFaceDetailSectionController *)self inGallery]];

    [(NTKCFaceDetailAlbumChooserViewController *)v17 setDelegate:self];
    parentViewController3 = [(NTKCFaceDetailPhotosSectionController *)self parentViewController];
    [parentViewController3 presentViewController:v17 animated:1 completion:0];

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (id)_actionNameForOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = optionCopy;
    if ([v5 photosContent] == 1)
    {
      transientEditor = self->_transientEditor;
      if (!transientEditor)
      {
        transientEditor = self->_customPhotosEditor;
      }

      v7 = transientEditor;
      photosCount = [(NTKCompanionTransientCustomPhotosEditor *)v7 photosCount];
      if (photosCount)
      {
        v10 = photosCount;
        v11 = MEMORY[0x277CCACA8];
        v12 = NTKCCustomizationLocalizedFormat(@"PHOTOS_NUMBER", @"%d Photos", v9);
        v13 = [v11 localizedStringWithFormat:v12, v10];
      }

      else
      {
        v17.receiver = self;
        v17.super_class = NTKCFaceDetailPhotosSectionController;
        v13 = [(NTKCFaceDetailEditOptionSectionController *)&v17 _actionNameForOption:v5];
      }
    }

    else
    {
      v13 = 0;
    }

    if (![v5 photosContent])
    {
      albumName = [(NTKCompanionSinglePHAssetEditor *)self->_syncedAlbumEditor albumName];

      v13 = albumName;
      if (!albumName)
      {
        v16.receiver = self;
        v16.super_class = NTKCFaceDetailPhotosSectionController;
        v13 = [(NTKCFaceDetailEditOptionSectionController *)&v16 _actionNameForOption:v5];
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKCFaceDetailPhotosSectionController;
    v13 = [(NTKCFaceDetailEditOptionSectionController *)&v18 _actionNameForOption:optionCopy];
  }

  return v13;
}

- (void)_customizeActionRow:(id)row withEditOption:(id)option
{
  rowCopy = row;
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(NTKCFaceDetailPhotosSectionController *)self _actionNameForOption:optionCopy];
    textLabel = [rowCopy textLabel];
    [textLabel setText:v7];

    if ([optionCopy photosContent])
    {
      transientEditor = self->_transientEditor;
      if (!transientEditor)
      {
        transientEditor = self->_customPhotosEditor;
      }

      if ([(NTKCompanionTransientCustomPhotosEditor *)transientEditor photosCount])
      {
        goto LABEL_6;
      }
    }

    else
    {
      albumName = [(NTKCompanionSinglePHAssetEditor *)self->_syncedAlbumEditor albumName];

      if (albumName)
      {
LABEL_6:
        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        v11 = 1;
LABEL_9:
        textLabel2 = [rowCopy textLabel];
        [textLabel2 setTextColor:secondaryLabelColor];

        [rowCopy setAccessoryType:v11];
        goto LABEL_10;
      }
    }

    secondaryLabelColor = NTKCActionColor();
    v11 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_setPhotos:(id)photos
{
  [(NTKCompanionCustomPhotosEditor *)self->_customPhotosEditor addPhotosFromUIImagePicker:photos];
  [(NTKCFaceDetailPhotosSectionController *)self _updatePhotosSection];
  if ([(NTKCFaceDetailSectionController *)self inGallery])
  {
    customPhotosEditor = self->_customPhotosEditor;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__NTKCFaceDetailPhotosSectionController__setPhotos___block_invoke;
    v5[3] = &unk_27877F598;
    v5[4] = self;
    [(NTKCompanionCustomPhotosEditor *)customPhotosEditor generateGalleryPreviewResourceDirectoryWithCompletion:v5];
  }

  else
  {

    [(NTKCFaceDetailPhotosSectionController *)self saveChangesWithCompletion:0];
  }
}

void __52__NTKCFaceDetailPhotosSectionController__setPhotos___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 face];
  [v5 setResourceDirectory:v4];

  v6 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) face];
    v8 = [v7 resourceDirectory];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "updated preview directory for custom face to %@", &v9, 0xCu);
  }
}

- (void)_updatePhotosSection
{
  currentContent = self->_currentContent;
  if (currentContent == 1)
  {
    transientEditor = self->_transientEditor;
    if (!transientEditor)
    {
      transientEditor = self->_customPhotosEditor;
    }

    photosCount = [(NTKCompanionTransientCustomPhotosEditor *)transientEditor photosCount];
    actionRow = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];

    if (actionRow)
    {
      if (self->_externalAssets)
      {
        v7 = photosCount == 0;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        [(NTKCFaceDetailEditOptionVerticalSectionController *)self reloadActionRow];
      }

      else
      {
        [(NTKCFaceDetailEditOptionSectionController *)self _refreshActionRowContent];
      }
    }

    currentContent = self->_currentContent;
  }

  if (!currentContent)
  {
    actionRow2 = [(NTKCFaceDetailEditOptionSectionController *)self actionRow];

    if (actionRow2)
    {
      [(NTKCFaceDetailEditOptionSectionController *)self _refreshActionRowContent];
      [(NTKCFaceDetailEditOptionVerticalSectionController *)self reloadActionRow];
    }
  }

  delegate = [(NTKCFaceDetailEditOptionSectionController *)self delegate];
  [delegate photoSectionDidUpdate:self];
}

- (id)_currentEditor
{
  currentContent = self->_currentContent;
  switch(currentContent)
  {
    case 0uLL:
      v4 = &OBJC_IVAR___NTKCFaceDetailPhotosSectionController__syncedAlbumEditor;
      goto LABEL_8;
    case 1uLL:
      transientEditor = self->_transientEditor;
      if (transientEditor)
      {
        goto LABEL_9;
      }

      v4 = &OBJC_IVAR___NTKCFaceDetailPhotosSectionController__customPhotosEditor;
LABEL_8:
      transientEditor = *(&self->super.super.super.super.isa + *v4);
LABEL_9:
      v6 = transientEditor;

      return v6;
    case 2uLL:
      v4 = &OBJC_IVAR___NTKCFaceDetailPhotosSectionController__memoriesEditor;
      goto LABEL_8;
  }

  v6 = 0;

  return v6;
}

- (BOOL)hasChanges
{
  _currentEditor = [(NTKCFaceDetailPhotosSectionController *)self _currentEditor];
  v3 = [_currentEditor state] == 2;

  return v3;
}

- (void)saveChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(NTKCFaceDetailPhotosSectionController *)self hasChanges])
  {
    _currentEditor = [(NTKCFaceDetailPhotosSectionController *)self _currentEditor];
    if (_currentEditor)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __67__NTKCFaceDetailPhotosSectionController_saveChangesWithCompletion___block_invoke;
      v6[3] = &unk_2787860C8;
      v6[4] = self;
      v7 = completionCopy;
      [_currentEditor finalizeWithCompletion:v6];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __67__NTKCFaceDetailPhotosSectionController_saveChangesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _updatePhotosSection];
    v4 = [*(a1 + 32) face];
    [v4 setResourceDirectory:v3];

    v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) face];
      v7 = [v6 resourceDirectory];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "finalizeWithCompletion: new face resource directory is %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

- (void)customPhotosControllerDidFinish:(id)finish
{
  finishCopy = finish;
  [(NTKCFaceDetailPhotosSectionController *)self _updatePhotosSection];
  [finishCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)albumChooserDidFinish:(id)finish
{
  v17 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    editor = [finishCopy editor];
    albumIdentifier = [editor albumIdentifier];
    *buf = 138412290;
    v16 = albumIdentifier;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[NTKCFaceDetailPhotosSectionController albumChooserDidFinish:] chose asset collection %@", buf, 0xCu);
  }

  editor2 = [finishCopy editor];
  state = [editor2 state];

  if (state != 1)
  {
    inGallery = [finishCopy inGallery];
    editor3 = [finishCopy editor];
    v12 = editor3;
    if (inGallery)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __63__NTKCFaceDetailPhotosSectionController_albumChooserDidFinish___block_invoke;
      v14[3] = &unk_27877F598;
      v14[4] = self;
      [editor3 generateGalleryPreviewResourceDirectoryWithCompletion:v14];
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __63__NTKCFaceDetailPhotosSectionController_albumChooserDidFinish___block_invoke_2;
      v13[3] = &unk_27877F598;
      v13[4] = self;
      [editor3 finalizeWithCompletion:v13];
    }
  }

  [finishCopy dismissViewControllerAnimated:1 completion:0];
}

uint64_t __63__NTKCFaceDetailPhotosSectionController_albumChooserDidFinish___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 face];
  [v5 setResourceDirectory:v4];

  v6 = *(a1 + 32);

  return [v6 _updatePhotosSection];
}

uint64_t __63__NTKCFaceDetailPhotosSectionController_albumChooserDidFinish___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 face];
  [v5 setResourceDirectory:v4];

  v6 = *(a1 + 32);

  return [v6 _updatePhotosSection];
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end