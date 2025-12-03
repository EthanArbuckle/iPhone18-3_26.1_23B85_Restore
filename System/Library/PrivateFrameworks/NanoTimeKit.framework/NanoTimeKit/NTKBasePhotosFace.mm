@interface NTKBasePhotosFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error;
- (BOOL)_sanitizeFaceConfiguration:(id *)configuration;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_resourceDirectorySnapshotKey;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_migrateLegibility;
- (void)_updateForResourceDirectoryChange:(id)change;
@end

@implementation NTKBasePhotosFace

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NTKBasePhotosFace;
  v4 = [(NTKFace *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_cachedResourceDirectorySnapshotKey copy];
  v6 = v4[21];
  v4[21] = v5;

  return v4;
}

+ (id)_complicationSlotDescriptors
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v3 = NTKAllUtilityLargeNarrowComplicationTypes();
  v10[0] = @"top";
  v4 = NTKComplicationTypeRankedListWithDefaultTypes(&unk_28418B3C8);
  v5 = NTKComplicationSlotDescriptor(6, v2, v4);
  v11[0] = v5;
  v10[1] = @"bottom";
  v6 = NTKComplicationTypeRankedListWithDefaultTypes(&unk_28418B3E0);
  v7 = NTKComplicationSlotDescriptor(104, v3, v6);
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

+ (id)_orderedComplicationSlots
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"top";
  v4[1] = @"bottom";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"top"])
  {
    v4 = @"ABOVE_TIME";
  }

  else
  {
    v5 = [slotCopy isEqualToString:@"bottom"];
    v4 = @"BELOW_TIME";
    if (!v5)
    {
      v4 = 0;
    }
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SLOT_LABEL_%@", v4];
  v7 = NTKClockFaceLocalizedString(v6, @"slot name");

  return v7;
}

- (void)_updateForResourceDirectoryChange:(id)change
{
  cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
  self->_cachedResourceDirectorySnapshotKey = 0;
}

- (id)_resourceDirectorySnapshotKey
{
  resourceDirectory = [(NTKFace *)self resourceDirectory];
  if (!resourceDirectory || (v4 = resourceDirectory, [MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), -[NTKFace resourceDirectory](self, "resourceDirectory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:", v6), v6, v5, v4, !v7))
  {
    cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
    self->_cachedResourceDirectorySnapshotKey = 0;

LABEL_6:
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    isTinker = [currentDevice isTinker];

    if (isTinker)
    {
      v9 = @"T";
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_9;
  }

  v8 = self->_cachedResourceDirectorySnapshotKey;
  if (v8)
  {
    v9 = v8;
    goto LABEL_9;
  }

  resourceDirectory2 = [(NTKFace *)self resourceDirectory];
  v15 = [NTKPhotosReader readerForResourceDirectory:resourceDirectory2];

  if ([v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = NTKUniqueIDForNTKPhoto(v16);
    v18 = self->_cachedResourceDirectorySnapshotKey;
    self->_cachedResourceDirectorySnapshotKey = v17;
  }

  v9 = self->_cachedResourceDirectorySnapshotKey;
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_9:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 14)
  {
    v5 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_LABEL_PHOTO_POSITION_COMPANION", @"Time Position");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = objc_opt_new();
  v15 = v7;
  v8 = objc_opt_new();
  v16 = v8;
  v9 = objc_opt_new();
  v17 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:3];

  v11 = [NTKResourceDirectoryScrubber alloc];
  v12 = [(NTKResourceDirectoryScrubber *)v11 initWithOperations:v10, v15, v16];
  resourceDirectory = [(NTKFace *)self resourceDirectory];
  LOBYTE(error) = [(NTKResourceDirectoryScrubber *)v12 scrubDirectoryAtPath:resourceDirectory toDestinationPath:pathCopy error:error];

  return error;
}

- (BOOL)_sanitizeFaceConfiguration:(id *)configuration
{
  selectedOptionsForCustomEditModes = [(NTKFace *)self selectedOptionsForCustomEditModes];
  v6 = [selectedOptionsForCustomEditModes objectForKeyedSubscript:&unk_284183520];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = v7;
    if (!v7 || [v7 photosContent] != 1)
    {
      if (configuration)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.photos" code:1005 userInfo:0];
        *configuration = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_20;
    }

    resourceDirectory = [(NTKFace *)self resourceDirectory];
    v10 = [(NTKBasePhotoResourcesManifest *)NTKPhotosFaceResourcesManifest manifestForResourceDirectory:resourceDirectory];

    if (v10)
    {
      if ([v10 validateManifestWithError:configuration])
      {
        resourceDirectory2 = [(NTKFace *)self resourceDirectory];
        v12 = [NTKPhotosReader readerForResourceDirectory:resourceDirectory2];

        v13 = [v12 count];
        imageList = [v10 imageList];
        v15 = [imageList count];

        v16 = v13 == v15;
        if (v16)
        {
          [(NTKBasePhotosFace *)self _migrateLegibility];
        }

        else if (configuration)
        {
          *configuration = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.photos" code:1006 userInfo:0];
        }

        goto LABEL_19;
      }
    }

    else if (configuration)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.photos" code:1006 userInfo:0];
      *configuration = v16 = 0;
LABEL_19:

LABEL_20:
      goto LABEL_21;
    }

    v16 = 0;
    goto LABEL_19;
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (void)_migrateLegibility
{
  resourceDirectory = [(NTKFace *)self resourceDirectory];

  if (resourceDirectory)
  {
    resourceDirectory2 = [(NTKFace *)self resourceDirectory];
    v6 = [NTKPhotosReader readerForResourceDirectory:resourceDirectory2];

    if (NTKPhotosUpdateLegibility(v6))
    {
      v5 = NTKCloneResourceDirectoryForReader(v6);
      [(NTKFace *)self setResourceDirectoryByTransferringOwnership:v5];
    }
  }
}

@end