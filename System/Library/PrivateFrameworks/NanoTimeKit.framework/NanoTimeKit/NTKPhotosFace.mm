@interface NTKPhotosFace
+ (BOOL)_customEditMode:(int64_t)mode hasActionForOption:(id)option forDevice:(id)device;
+ (BOOL)_customEditModeIsRows:(int64_t)rows forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)sortableFaceWithAssets:(id)assets forDevice:(id)device;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)addFaceDetailViewController;
- (id)libraryDetailViewController;
- (id)upgradeContext;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)companionEditorWithAssets:(id)assets completion:(id)completion;
@end

@implementation NTKPhotosFace

- (id)_customEditModes
{
  device = [(NTKFace *)self device];
  v3 = [device supportsPDRCapability:1426106713];

  if (v3)
  {
    return &unk_284189F70;
  }

  else
  {
    return &unk_284189F88;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      device = [(NTKFace *)self device];
      v8 = [NTKPhotosColorEditOption optionWithColor:3000 forDevice:device];
      goto LABEL_7;
    case 14:
      device = [(NTKFace *)self device];
      v8 = [NTKDateAlignmentEditOption optionWithAlignment:0 forDevice:device];
      goto LABEL_7;
    case 12:
      device = [(NTKFace *)self device];
      v8 = [NTKPhotosContentEditOption optionWithPhotosContent:0 forDevice:device];
LABEL_7:
      v9 = v8;

      goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (BOOL)_customEditModeIsRows:(int64_t)rows forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___NTKPhotosFace;
  result = objc_msgSendSuper2(&v6, sel__customEditModeIsRows_forDevice_, rows, device);
  if (rows == 12)
  {
    return 1;
  }

  return result;
}

+ (BOOL)_customEditMode:(int64_t)mode hasActionForOption:(id)option forDevice:(id)device
{
  optionCopy = option;
  deviceCopy = device;
  if (mode != 12)
  {
    goto LABEL_7;
  }

  if ([optionCopy photosContent] != 1)
  {
    if (![optionCopy photosContent] && objc_msgSend(deviceCopy, "isPaired"))
    {
      v9 = [deviceCopy supportsPDRCapability:1097943847];
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

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 12)
  {
    v4 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_LABEL_PHOTOS_CONTENT_COMPANION", @"Photos");
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NTKPhotosFace;
    v4 = objc_msgSendSuper2(&v6, sel__localizedNameOverrideForCustomEditMode_forDevice_, mode, device);
  }

  return v4;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = NTKPhotosFace;
  return [(NTKFace *)&v4 _hasOptionsForCustomEditMode:mode];
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  switch(mode)
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
  device = [(NTKFace *)self device];
  v10 = [(__objc2_class *)v8 numberOfOptionsForDevice:device];

LABEL_9:
  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  switch(mode)
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
      device = [(NTKFace *)self device];
      v12 = [(__objc2_class *)v10 optionAtIndex:index forDevice:device];

      goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  switch(mode)
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
  device = [(NTKFace *)self device];
  v13 = [(__objc2_class *)v11 indexOfOption:optionCopy forDevice:device];

LABEL_9:
  return v13;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10 || mode == 12 || mode == 14)
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
  resourceDirectory = [(NTKFace *)self resourceDirectory];
  v4 = [NTKPhotosReader readerForResourceDirectory:resourceDirectory];

  selectedOptionsForCustomEditModes = [(NTKFace *)self selectedOptionsForCustomEditModes];
  v6 = [selectedOptionsForCustomEditModes objectForKeyedSubscript:&unk_284181C18];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedOptionsForCustomEditModes2 = [(NTKFace *)self selectedOptionsForCustomEditModes];
    v8 = [selectedOptionsForCustomEditModes2 objectForKeyedSubscript:&unk_284181C30];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(NTKFace *)self complicationForSlot:@"top"];
      v10 = [(NTKFace *)self complicationForSlot:@"bottom"];
      selectedOptionsForCustomEditModes3 = [(NTKFace *)self selectedOptionsForCustomEditModes];
      v12 = [selectedOptionsForCustomEditModes3 objectForKeyedSubscript:&unk_284181C00];

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
  externalAssets = [(NTKFace *)self externalAssets];
  v5 = [(NTKCFaceDetailViewController *)v3 initWithCandidateFace:self externalAssets:externalAssets];

  return v5;
}

+ (id)sortableFaceWithAssets:(id)assets forDevice:(id)device
{
  assetsCopy = assets;
  if ([device supportsPDRCapability:4067975928])
  {
    v6 = 0;
  }

  else
  {
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    v8 = [NTKFace defaultFaceOfStyle:22 forDevice:currentDevice];

    [v8 setExternalAssets:assetsCopy];
    device = [v8 device];
    v10 = [NTKPhotosContentEditOption optionWithPhotosContent:1 forDevice:device];

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

- (void)companionEditorWithAssets:(id)assets completion:(id)completion
{
  completionCopy = completion;
  assetsCopy = assets;
  firstObject = [assetsCopy firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [NTKCompanionCustomPhotosEditor alloc];
    device = [(NTKFace *)self device];
    v14 = [(NTKCompanionCustomPhotosEditor *)v10 initWithResourceDirectory:0 forDevice:device];

    [(NTKCompanionTransientCustomPhotosEditor *)v14 addAssetsFromAssetList:assetsCopy];
  }

  else
  {
    v12 = [NTKCompanionTransientCustomPhotosEditor alloc];
    device2 = [(NTKFace *)self device];
    v14 = [(NTKCompanionTransientCustomPhotosEditor *)v12 initWithResourceDirectory:0 forDevice:device2];

    [(NTKCompanionTransientCustomPhotosEditor *)v14 addImageList:assetsCopy];
  }

  completionCopy[2](completionCopy, v14);
}

@end