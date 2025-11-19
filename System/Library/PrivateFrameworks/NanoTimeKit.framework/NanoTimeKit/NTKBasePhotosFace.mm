@interface NTKBasePhotosFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)a3 error:(id *)a4;
- (BOOL)_sanitizeFaceConfiguration:(id *)a3;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_resourceDirectorySnapshotKey;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_migrateLegibility;
- (void)_updateForResourceDirectoryChange:(id)a3;
@end

@implementation NTKBasePhotosFace

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NTKBasePhotosFace;
  v4 = [(NTKFace *)&v8 copyWithZone:a3];
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

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"top"])
  {
    v4 = @"ABOVE_TIME";
  }

  else
  {
    v5 = [v3 isEqualToString:@"bottom"];
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

- (void)_updateForResourceDirectoryChange:(id)a3
{
  cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
  self->_cachedResourceDirectorySnapshotKey = 0;
}

- (id)_resourceDirectorySnapshotKey
{
  v3 = [(NTKFace *)self resourceDirectory];
  if (!v3 || (v4 = v3, [MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), -[NTKFace resourceDirectory](self, "resourceDirectory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:", v6), v6, v5, v4, !v7))
  {
    cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
    self->_cachedResourceDirectorySnapshotKey = 0;

LABEL_6:
    v11 = [MEMORY[0x277CBBAE8] currentDevice];
    v12 = [v11 isTinker];

    if (v12)
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

  v14 = [(NTKFace *)self resourceDirectory];
  v15 = [NTKPhotosReader readerForResourceDirectory:v14];

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

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 14)
  {
    v5 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_LABEL_PHOTO_POSITION_COMPANION", @"Time Position");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v15 = v7;
  v8 = objc_opt_new();
  v16 = v8;
  v9 = objc_opt_new();
  v17 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:3];

  v11 = [NTKResourceDirectoryScrubber alloc];
  v12 = [(NTKResourceDirectoryScrubber *)v11 initWithOperations:v10, v15, v16];
  v13 = [(NTKFace *)self resourceDirectory];
  LOBYTE(a4) = [(NTKResourceDirectoryScrubber *)v12 scrubDirectoryAtPath:v13 toDestinationPath:v6 error:a4];

  return a4;
}

- (BOOL)_sanitizeFaceConfiguration:(id *)a3
{
  v5 = [(NTKFace *)self selectedOptionsForCustomEditModes];
  v6 = [v5 objectForKeyedSubscript:&unk_284183520];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = v7;
    if (!v7 || [v7 photosContent] != 1)
    {
      if (a3)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.photos" code:1005 userInfo:0];
        *a3 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_20;
    }

    v9 = [(NTKFace *)self resourceDirectory];
    v10 = [(NTKBasePhotoResourcesManifest *)NTKPhotosFaceResourcesManifest manifestForResourceDirectory:v9];

    if (v10)
    {
      if ([v10 validateManifestWithError:a3])
      {
        v11 = [(NTKFace *)self resourceDirectory];
        v12 = [NTKPhotosReader readerForResourceDirectory:v11];

        v13 = [v12 count];
        v14 = [v10 imageList];
        v15 = [v14 count];

        v16 = v13 == v15;
        if (v16)
        {
          [(NTKBasePhotosFace *)self _migrateLegibility];
        }

        else if (a3)
        {
          *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.photos" code:1006 userInfo:0];
        }

        goto LABEL_19;
      }
    }

    else if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.photos" code:1006 userInfo:0];
      *a3 = v16 = 0;
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
  v3 = [(NTKFace *)self resourceDirectory];

  if (v3)
  {
    v4 = [(NTKFace *)self resourceDirectory];
    v6 = [NTKPhotosReader readerForResourceDirectory:v4];

    if (NTKPhotosUpdateLegibility(v6))
    {
      v5 = NTKCloneResourceDirectoryForReader(v6);
      [(NTKFace *)self setResourceDirectoryByTransferringOwnership:v5];
    }
  }
}

@end