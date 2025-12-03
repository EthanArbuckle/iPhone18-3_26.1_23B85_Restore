@interface _NTKPhotosPhotoFaceUpgradeContext
- (_NTKPhotosPhotoFaceUpgradeContext)initWithReader:(id)reader contentOption:(id)option positionOption:(id)positionOption topComplication:(id)complication bottomComplication:(id)bottomComplication colorOption:(id)colorOption;
- (id)itemAtIndex:(unint64_t)index;
@end

@implementation _NTKPhotosPhotoFaceUpgradeContext

- (_NTKPhotosPhotoFaceUpgradeContext)initWithReader:(id)reader contentOption:(id)option positionOption:(id)positionOption topComplication:(id)complication bottomComplication:(id)bottomComplication colorOption:(id)colorOption
{
  v51 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  optionCopy = option;
  positionOptionCopy = positionOption;
  complicationCopy = complication;
  bottomComplicationCopy = bottomComplication;
  colorOptionCopy = colorOption;
  v48.receiver = self;
  v48.super_class = _NTKPhotosPhotoFaceUpgradeContext;
  v20 = [(_NTKPhotosPhotoFaceUpgradeContext *)&v48 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_25;
  }

  objc_storeStrong(&v20->_reader, reader);
  objc_storeStrong(&v21->_topComplication, complication);
  objc_storeStrong(&v21->_bottomComplication, bottomComplication);
  v21->_contentType = 0;
  photosContent = [optionCopy photosContent];
  if (photosContent == 2)
  {
    v23 = 3;
    goto LABEL_8;
  }

  if (photosContent == 1)
  {
    v23 = 1;
LABEL_8:
    v21->_contentType = v23;
    goto LABEL_15;
  }

  if (photosContent)
  {
    if (v21->_contentType != 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21->_contentType = 2;
  }

  assetCollectionIdentifier = [readerCopy assetCollectionIdentifier];
  albumIdentifier = v21->_albumIdentifier;
  v21->_albumIdentifier = assetCollectionIdentifier;

  if (!v21->_albumIdentifier)
  {
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    nrDevice = [currentDevice nrDevice];

    v46 = [objc_alloc(MEMORY[0x277D2BA48]) initWithCollectionTarget:1 device:nrDevice];
    assetCollections = [v46 assetCollections];
    anyObject = [assetCollections anyObject];

    if (anyObject)
    {
      v44 = MEMORY[0x277CD97B8];
      NTK_npto_uuid(anyObject);
      v30 = v45 = nrDevice;
      uUIDString = [v30 UUIDString];
      v43 = [v44 localIdentifierWithUUID:uUIDString];

      v32 = v43;
      nrDevice = v45;
    }

    else
    {
      v32 = 0;
    }

    v33 = v21->_albumIdentifier;
    v21->_albumIdentifier = v32;
  }

LABEL_15:
  v21->_timeAlignment = 0;
  alignment = [positionOptionCopy alignment];
  if (alignment)
  {
    if (alignment != 1)
    {
      goto LABEL_20;
    }

    v35 = 4;
  }

  else
  {
    v35 = 2;
  }

  v21->_timeAlignment = v35;
LABEL_20:
  optionName = [colorOptionCopy optionName];
  v37 = +[NTKPhotosColorEditOption originalColorName];
  v38 = [optionName isEqualToString:v37];

  if (v38)
  {
    v21->_colorEffect = 0;
  }

  else
  {
    isMultitoneOption = [colorOptionCopy isMultitoneOption];
    v40 = 3;
    if (!isMultitoneOption)
    {
      v40 = 1;
    }

    v21->_colorEffect = v40;
    objc_storeStrong(&v21->_colorOption, colorOption);
  }

LABEL_25:
  v41 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v50 = v21;
    _os_log_impl(&dword_22D9C5000, v41, OS_LOG_TYPE_INFO, "Created %@", buf, 0xCu);
  }

  return v21;
}

- (id)itemAtIndex:(unint64_t)index
{
  v4 = [(NTKPhotosReader *)self->_reader objectAtIndexedSubscript:index];
  if (v4)
  {
    v5 = [[_NTKPhotosPhotoFaceUpgradeItemContext alloc] initWithPhoto:v4 timeAlignment:self->_timeAlignment];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end