@interface _NTKPhotosPhotoFaceUpgradeContext
- (_NTKPhotosPhotoFaceUpgradeContext)initWithReader:(id)a3 contentOption:(id)a4 positionOption:(id)a5 topComplication:(id)a6 bottomComplication:(id)a7 colorOption:(id)a8;
- (id)itemAtIndex:(unint64_t)a3;
@end

@implementation _NTKPhotosPhotoFaceUpgradeContext

- (_NTKPhotosPhotoFaceUpgradeContext)initWithReader:(id)a3 contentOption:(id)a4 positionOption:(id)a5 topComplication:(id)a6 bottomComplication:(id)a7 colorOption:(id)a8
{
  v51 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v47 = a6;
  v18 = a7;
  v19 = a8;
  v48.receiver = self;
  v48.super_class = _NTKPhotosPhotoFaceUpgradeContext;
  v20 = [(_NTKPhotosPhotoFaceUpgradeContext *)&v48 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_25;
  }

  objc_storeStrong(&v20->_reader, a3);
  objc_storeStrong(&v21->_topComplication, a6);
  objc_storeStrong(&v21->_bottomComplication, a7);
  v21->_contentType = 0;
  v22 = [v16 photosContent];
  if (v22 == 2)
  {
    v23 = 3;
    goto LABEL_8;
  }

  if (v22 == 1)
  {
    v23 = 1;
LABEL_8:
    v21->_contentType = v23;
    goto LABEL_15;
  }

  if (v22)
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

  v24 = [v15 assetCollectionIdentifier];
  albumIdentifier = v21->_albumIdentifier;
  v21->_albumIdentifier = v24;

  if (!v21->_albumIdentifier)
  {
    v26 = [MEMORY[0x277CBBAE8] currentDevice];
    v27 = [v26 nrDevice];

    v46 = [objc_alloc(MEMORY[0x277D2BA48]) initWithCollectionTarget:1 device:v27];
    v28 = [v46 assetCollections];
    v29 = [v28 anyObject];

    if (v29)
    {
      v44 = MEMORY[0x277CD97B8];
      NTK_npto_uuid(v29);
      v30 = v45 = v27;
      v31 = [v30 UUIDString];
      v43 = [v44 localIdentifierWithUUID:v31];

      v32 = v43;
      v27 = v45;
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
  v34 = [v17 alignment];
  if (v34)
  {
    if (v34 != 1)
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
  v36 = [v19 optionName];
  v37 = +[NTKPhotosColorEditOption originalColorName];
  v38 = [v36 isEqualToString:v37];

  if (v38)
  {
    v21->_colorEffect = 0;
  }

  else
  {
    v39 = [v19 isMultitoneOption];
    v40 = 3;
    if (!v39)
    {
      v40 = 1;
    }

    v21->_colorEffect = v40;
    objc_storeStrong(&v21->_colorOption, a8);
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

- (id)itemAtIndex:(unint64_t)a3
{
  v4 = [(NTKPhotosReader *)self->_reader objectAtIndexedSubscript:a3];
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