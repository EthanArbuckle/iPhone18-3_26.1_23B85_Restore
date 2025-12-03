@interface NTKUserPhotoFace
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode;
- (BOOL)_option:(id)_option migratesToValidOption:(id *)option forCustomEditMode:(int64_t)mode;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKUserPhotoFace

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 14)
  {
    device = [(NTKFace *)self device];
    v8 = [NTKDateAlignmentEditOption optionWithAlignment:0 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 12)
  {
    device = [(NTKFace *)self device];
    v8 = [NTKUserPhotoEditOption optionUsingDefaultPhoto:1 forDevice:device];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 12)
  {
    v4 = [@"EDIT_MODE_LABEL_PHOTO_CONTENT" stringByAppendingString:{@"_COMPANION", device}];
    v5 = NTKCompanionClockFaceLocalizedString(v4, @"Photo");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NTKUserPhotoFace;
    v5 = objc_msgSendSuper2(&v7, sel__localizedNameOverrideForCustomEditMode_forDevice_, mode, device);
  }

  return v5;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode
{
  if (mode == 12)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = NTKUserPhotoFace;
  return [(NTKFace *)&v6 _hasOptionsForCustomEditMode:?];
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode != 14)
  {
    return 0;
  }

  v4 = [(NTKFace *)self device:mode];
  v5 = [(NTKEnumeratedEditOption *)NTKDateAlignmentEditOption numberOfOptionsForDevice:v4];

  return v5;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 14)
  {
    device = [(NTKFace *)self device];
    v9 = [(NTKEnumeratedEditOption *)NTKDateAlignmentEditOption optionAtIndex:index forDevice:device];
  }

  else if (mode == 12 && !index)
  {
    v9 = [(NTKFace *)self selectedOptionForCustomEditMode:12 slot:slotCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 14)
  {
    device = [(NTKFace *)self device];
    v11 = [(NTKEnumeratedEditOption *)NTKDateAlignmentEditOption indexOfOption:optionCopy forDevice:device];
  }

  else
  {
    if (mode != 12)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_9;
    }

    device = [(NTKFace *)self selectedOptionForCustomEditMode:12 slot:slotCopy];
    if (device == optionCopy)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_9:
  return v11;
}

- (BOOL)_option:(id)_option migratesToValidOption:(id *)option forCustomEditMode:(int64_t)mode
{
  _optionCopy = _option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = _optionCopy;
    if (([v8 isDefaultPhoto] & 1) == 0)
    {
      path = [v8 path];
      if (path)
      {
        v10 = path;
        [(NTKFace *)self setResourceDirectoryByTransferringOwnership:path];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtPath:v10 error:0];
      }
    }

    isDefaultPhoto = [v8 isDefaultPhoto];
    device = [(NTKFace *)self device];
    *option = [NTKUserPhotoEditOption optionUsingDefaultPhoto:isDefaultPhoto forDevice:device];

    v14 = *option != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 12 || mode == 14)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end