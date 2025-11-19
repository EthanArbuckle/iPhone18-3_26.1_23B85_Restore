@interface NTKPhotosFace
+ (BOOL)_customEditMode:(int64_t)a3 hasActionForOption:(id)a4 forDevice:(id)a5;
+ (BOOL)_customEditModeIsRows:(int64_t)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)sortableFaceWithAssets:(id)a3 forDevice:(id)a4;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)addFaceDetailViewController;
- (id)libraryDetailViewController;
- (id)upgradeContext;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)companionEditorWithAssets:(id)a3 completion:(id)a4;
@end

@implementation NTKPhotosFace

- (id)_customEditModes
{
  v2 = [(NTKFace *)self device];
  v3 = [v2 supportsPDRCapability:1426106713];

  if (v3)
  {
    return &unk_284189F70;
  }

  else
  {
    return &unk_284189F88;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 10:
      v7 = [(NTKFace *)self device];
      v8 = [NTKPhotosColorEditOption optionWithColor:3000 forDevice:v7];
      goto LABEL_7;
    case 14:
      v7 = [(NTKFace *)self device];
      v8 = [NTKDateAlignmentEditOption optionWithAlignment:0 forDevice:v7];
      goto LABEL_7;
    case 12:
      v7 = [(NTKFace *)self device];
      v8 = [NTKPhotosContentEditOption optionWithPhotosContent:0 forDevice:v7];
LABEL_7:
      v9 = v8;

      goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (BOOL)_customEditModeIsRows:(int64_t)a3 forDevice:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___NTKPhotosFace;
  result = objc_msgSendSuper2(&v6, sel__customEditModeIsRows_forDevice_, a3, a4);
  if (a3 == 12)
  {
    return 1;
  }

  return result;
}

+ (BOOL)_customEditMode:(int64_t)a3 hasActionForOption:(id)a4 forDevice:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 != 12)
  {
    goto LABEL_7;
  }

  if ([v7 photosContent] != 1)
  {
    if (![v7 photosContent] && objc_msgSend(v8, "isPaired"))
    {
      v9 = [v8 supportsPDRCapability:1097943847];
      goto LABEL_8;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 12)
  {
    v4 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_LABEL_PHOTOS_CONTENT_COMPANION", @"Photos");
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___NTKPhotosFace;
    v4 = objc_msgSendSuper2(&v6, sel__localizedNameOverrideForCustomEditMode_forDevice_, a3, a4);
  }

  return v4;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = NTKPhotosFace;
  return [(NTKFace *)&v4 _hasOptionsForCustomEditMode:a3];
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 10:
      v7 = off_27877B568;
      break;
    case 12:
      v7 = off_27877B578;
      break;
    case 14:
      v7 = off_27877AF10;
      break;
    default:
      v10 = 0;
      goto LABEL_9;
  }

  v8 = *v7;
  v9 = [(NTKFace *)self device];
  v10 = [(__objc2_class *)v8 numberOfOptionsForDevice:v9];

LABEL_9:
  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  switch(a4)
  {
    case 10:
      v9 = off_27877B568;
      goto LABEL_7;
    case 12:
      v9 = off_27877B578;
      goto LABEL_7;
    case 14:
      v9 = off_27877AF10;
LABEL_7:
      v10 = *v9;
      v11 = [(NTKFace *)self device];
      v12 = [(__objc2_class *)v10 optionAtIndex:a3 forDevice:v11];

      goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  switch(a4)
  {
    case 10:
      v10 = off_27877B568;
      break;
    case 12:
      v10 = off_27877B578;
      break;
    case 14:
      v10 = off_27877AF10;
      break;
    default:
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_9;
  }

  v11 = *v10;
  v12 = [(NTKFace *)self device];
  v13 = [(__objc2_class *)v11 indexOfOption:v8 forDevice:v12];

LABEL_9:
  return v13;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10 || a3 == 12 || a3 == 14)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)upgradeContext
{
  v3 = [(NTKFace *)self resourceDirectory];
  v4 = [NTKPhotosReader readerForResourceDirectory:v3];

  v5 = [(NTKFace *)self selectedOptionsForCustomEditModes];
  v6 = [v5 objectForKeyedSubscript:&unk_284181C18];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(NTKFace *)self selectedOptionsForCustomEditModes];
    v8 = [v7 objectForKeyedSubscript:&unk_284181C30];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(NTKFace *)self complicationForSlot:@"top"];
      v10 = [(NTKFace *)self complicationForSlot:@"bottom"];
      v11 = [(NTKFace *)self selectedOptionsForCustomEditModes];
      v12 = [v11 objectForKeyedSubscript:&unk_284181C00];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v14 = [[_NTKPhotosPhotoFaceUpgradeContext alloc] initWithReader:v4 contentOption:v6 positionOption:v8 topComplication:v9 bottomComplication:v10 colorOption:v13];
      }

      else
      {
        v17 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [NTKPhotosFace upgradeContext];
        }

        v14 = 0;
      }

      v16 = v8;
    }

    else
    {
      v16 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [NTKPhotosFace upgradeContext];
      }

      v14 = 0;
      v12 = v8;
    }

    v15 = v6;
    v6 = v12;
  }

  else
  {
    v15 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NTKPhotosFace upgradeContext];
    }

    v14 = 0;
  }

  return v14;
}

- (id)libraryDetailViewController
{
  v2 = [[NTKCFaceDetailViewController alloc] initWithLibraryFace:self];

  return v2;
}

- (id)addFaceDetailViewController
{
  v3 = [NTKCFaceDetailViewController alloc];
  v4 = [(NTKFace *)self externalAssets];
  v5 = [(NTKCFaceDetailViewController *)v3 initWithCandidateFace:self externalAssets:v4];

  return v5;
}

+ (id)sortableFaceWithAssets:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  if ([a4 supportsPDRCapability:4067975928])
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CBBAE8] currentDevice];
    v8 = [NTKFace defaultFaceOfStyle:22 forDevice:v7];

    [v8 setExternalAssets:v5];
    v9 = [v8 device];
    v10 = [NTKPhotosContentEditOption optionWithPhotosContent:1 forDevice:v9];

    [v8 selectOption:v10 forCustomEditMode:12 slot:0];
    if (v8)
    {
      v6 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v8 priority:200];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)companionEditorWithAssets:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [NTKCompanionCustomPhotosEditor alloc];
    v11 = [(NTKFace *)self device];
    v14 = [(NTKCompanionCustomPhotosEditor *)v10 initWithResourceDirectory:0 forDevice:v11];

    [(NTKCompanionTransientCustomPhotosEditor *)v14 addAssetsFromAssetList:v7];
  }

  else
  {
    v12 = [NTKCompanionTransientCustomPhotosEditor alloc];
    v13 = [(NTKFace *)self device];
    v14 = [(NTKCompanionTransientCustomPhotosEditor *)v12 initWithResourceDirectory:0 forDevice:v13];

    [(NTKCompanionTransientCustomPhotosEditor *)v14 addImageList:v7];
  }

  v6[2](v6, v14);
}

@end