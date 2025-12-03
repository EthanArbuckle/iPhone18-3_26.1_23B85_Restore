@interface WFPhotoMediaContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance;
+ (id)coercions;
+ (id)fetchOptionsForLibrary:(int64_t)library;
+ (id)itemWithAssetIdentifier:(id)identifier library:(int64_t)library assetFile:(id)file nameIfKnown:(id)known attributionSet:(id)set cachingIdentifier:(id)cachingIdentifier;
+ (id)itemWithSerializedItem:(id)item forType:(id)type named:(id)named attributionSet:(id)set cachingIdentifier:(id)identifier;
+ (id)itemsWithBurstIdentifier:(id)identifier;
+ (id)localizedFilterDescriptionWithContext:(id)context;
+ (id)localizedPluralFilterDescriptionWithContext:(id)context;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedPasteboardTypes;
+ (id)ownedTypes;
+ (id)photoAlbums;
+ (id)propertyBuilders;
+ (id)remoteItemWithAssetIdentifier:(id)identifier named:(id)named;
+ (id)stringConversionBehavior;
- (BOOL)canGenerateRepresentationForType:(id)type;
- (BOOL)getListAltText:(id)text;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPhotoType:(id)type;
- (BOOL)isScreenRecording;
- (BOOL)isScreenshot;
- (CGSize)size;
- (NSDictionary)additionalRepresentationsForSerialization;
- (PHAsset)asset;
- (WFFileType)preferredFileType;
- (id)assetRepresentationTypes;
- (id)assetResourceManager;
- (id)defaultSourceForRepresentation:(id)representation;
- (id)duration;
- (id)fullSizeAssetResourcesInResources:(id)resources;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (id)height;
- (id)imageManager;
- (id)intermediaryTypesForCoercionToItemClass:(Class)class;
- (id)isBurst;
- (id)isFavorite;
- (id)isHidden;
- (id)isLivePhoto;
- (id)location;
- (id)make;
- (id)mediaType;
- (id)metadataIfLocallyAvailable;
- (id)model;
- (id)orientation;
- (id)outputTypes;
- (id)photoTypes;
- (id)preferredAssetResourceForType:(id)type;
- (id)width;
- (unint64_t)hash;
- (void)copyStateToItem:(id)item;
- (void)generateAVAsset:(id)asset networkAccessAllowed:(BOOL)allowed;
- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type;
- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class;
- (void)getFrameRate:(id)rate;
- (void)getMetadata:(id)metadata;
- (void)getPreferredFileExtension:(id)extension;
- (void)getPreferredFileSize:(id)size;
- (void)getThumbnail:(id)thumbnail ofSize:(CGSize)size;
- (void)retrieveAssetResource:(id)resource withNetworkAccess:(BOOL)access completionHandler:(id)handler;
- (void)retrieveFileWithImageManager:(id)manager forType:(id)type;
@end

@implementation WFPhotoMediaContentItem

- (id)defaultSourceForRepresentation:(id)representation
{
  v4 = objc_alloc(MEMORY[0x277CD3A58]);
  v5 = [v4 initWithBundleIdentifier:*MEMORY[0x277D7A2A8]];
  mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
  v7 = [mEMORY[0x277CD3A88] resolvedAppMatchingDescriptor:v5];

  cachingIdentifier = [(WFContentItem *)self cachingIdentifier];
  v9 = [WFContentAttributionSet attributionSetWithAppDescriptor:v7 disclosureLevel:1 originalItemIdentifier:cachingIdentifier];

  return v9;
}

- (id)outputTypes
{
  v3 = MEMORY[0x277D79F68];
  assetRepresentationTypes = [(WFPhotoMediaContentItem *)self assetRepresentationTypes];
  v5 = [v3 typesFromStrings:assetRepresentationTypes];

  v6 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v5];
  v10.receiver = self;
  v10.super_class = WFPhotoMediaContentItem;
  outputTypes = [(WFContentItem *)&v10 outputTypes];
  [v6 unionOrderedSet:outputTypes];

  preferredFileType = self->_preferredFileType;
  if (preferredFileType)
  {
    [v6 insertObject:preferredFileType atIndex:0];
  }

  return v6;
}

- (id)intermediaryTypesForCoercionToItemClass:(Class)class
{
  v10.receiver = self;
  v10.super_class = WFPhotoMediaContentItem;
  v4 = [(WFContentItem *)&v10 intermediaryTypesForCoercionToItemClass:?];
  v5 = [WFObjectType typeWithClassName:@"AVAsset" frameworkName:@"AVFoundation" location:0];
  if ([v4 containsObject:v5] && objc_opt_class() == class)
  {
    v6 = [v4 mutableCopy];
    v8 = [v6 indexOfObject:v5];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:v8];
      [v6 moveObjectsAtIndexes:v9 toIndex:0];
    }
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (WFFileType)preferredFileType
{
  preferredFileType = self->_preferredFileType;
  if (preferredFileType)
  {
    preferredFileType = preferredFileType;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFPhotoMediaContentItem;
    preferredFileType = [(WFContentItem *)&v5 preferredFileType];
  }

  return preferredFileType;
}

- (id)assetRepresentationTypes
{
  v11[1] = *MEMORY[0x277D85DE8];
  PHAssetResourceClass = getPHAssetResourceClass();
  asset = [(WFPhotoMediaContentItem *)self asset];
  v5 = [PHAssetResourceClass assetResourcesForAsset:asset];

  if ([v5 count] || (-[WFPhotoMediaContentItem asset](self, "asset"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "uniformTypeIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v8, !v6))
  {
    v6 = [(WFPhotoMediaContentItem *)self fullSizeAssetResourcesInResources:v5];
    v7 = [v6 if_compactMap:&__block_literal_global_558];
  }

  else
  {
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  v9 = v7;

  return v9;
}

- (id)fullSizeAssetResourcesInResources:(id)resources
{
  resourcesCopy = resources;
  v5 = [resourcesCopy if_objectsPassingTest:&__block_literal_global_552];
  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v6 = resourcesCopy;
  }

  v7 = v6;

  isLivePhoto = [(WFPhotoMediaContentItem *)self isLivePhoto];
  bOOLValue = [isLivePhoto BOOLValue];

  if (bOOLValue)
  {
    v10 = [v7 sortedArrayUsingComparator:&__block_literal_global_555];

    v7 = v10;
  }

  return v7;
}

uint64_t __61__WFPhotoMediaContentItem_fullSizeAssetResourcesInResources___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 type];
  v6 = [v4 type];

  v7 = (v6 & 0xFFFFFFFFFFFFFFFBLL) != 1 || (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v8 = !v7;
  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v6 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return -1;
  }

  else
  {
    return v8;
  }
}

- (BOOL)canGenerateRepresentationForType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = typeCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  string = [v6 string];

  LODWORD(v6) = [string isEqualToString:@"AVAsset"];
  if (!v6)
  {
    v15 = typeCopy;
    if (typeCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    string2 = [v17 string];
    if ([string2 isEqualToString:@"PHLivePhoto"])
    {
    }

    else
    {
      v19 = WFLivePhotoFileType();
      v20 = [v15 conformsToUTType:v19];

      if (!v20)
      {
        v23 = v15;
        if (typeCopy)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        string3 = [v25 string];

        LODWORD(v25) = [string3 isEqualToString:@"CLLocation"];
        if (v25)
        {
          location = [(WFPhotoMediaContentItem *)self location];
          bOOLValue = location != 0;

          goto LABEL_18;
        }

        if (![v23 isEqualToClass:objc_opt_class()])
        {
          v29.receiver = self;
          v29.super_class = WFPhotoMediaContentItem;
          bOOLValue = [(WFGenericFileContentItem *)&v29 canGenerateRepresentationForType:v23];
          goto LABEL_18;
        }

        asset = [(WFPhotoMediaContentItem *)self asset];
        creationDate = [asset creationDate];
        bOOLValue = creationDate != 0;

        goto LABEL_17;
      }
    }

    asset = [(WFPhotoMediaContentItem *)self isLivePhoto];
    bOOLValue = [asset BOOLValue];
LABEL_17:

    goto LABEL_18;
  }

  v8 = MEMORY[0x277CBEB98];
  assetRepresentationTypes = [(WFPhotoMediaContentItem *)self assetRepresentationTypes];
  v10 = [v8 setWithArray:assetRepresentationTypes];
  v11 = MEMORY[0x277CBEB98];
  audiovisualTypes = [getAVURLAssetClass() audiovisualTypes];
  v13 = [v11 setWithArray:audiovisualTypes];
  bOOLValue = [v10 intersectsSet:v13];

LABEL_18:
  return bOOLValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      asset = [(WFPhotoMediaContentItem *)self asset];
      asset2 = [(WFPhotoMediaContentItem *)equalCopy asset];
      v7 = [asset isEqual:asset2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  asset = [(WFPhotoMediaContentItem *)self asset];
  v3 = [asset hash];

  return v3 ^ 0xC842;
}

- (void)copyStateToItem:(id)item
{
  objc_storeStrong(item + 6, self->_preferredFileType);
  itemCopy = item;
  itemCopy[7] = self->_library;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v8 = NSStringFromClass(class);
  v9 = [@"CLLocation" isEqualToString:v8];

  if (v9)
  {
    location = [(WFPhotoMediaContentItem *)self location];
    v11 = [WFObjectRepresentation object:location];
LABEL_7:

    goto LABEL_8;
  }

  if (objc_opt_class() == class)
  {
    location = [(WFPhotoMediaContentItem *)self asset];
    creationDate = [location creationDate];
    v11 = [WFObjectRepresentation object:creationDate];

    goto LABEL_7;
  }

  if (objc_opt_class() == class)
  {
    v14 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      asset = [(WFPhotoMediaContentItem *)self asset];
      localIdentifier = [asset localIdentifier];
      *buf = 136315394;
      *&buf[4] = "[WFPhotoMediaContentItem generateObjectRepresentationForClass:options:error:]";
      *&buf[12] = 2112;
      *&buf[14] = localIdentifier;
      _os_log_impl(&dword_21E1BD000, v14, OS_LOG_TYPE_DEFAULT, "%s Creating LNEntity for asset: %@", buf, 0x16u);
    }

    v17 = objc_alloc(MEMORY[0x277D23BA8]);
    v18 = [v17 initWithBundleIdentifier:*MEMORY[0x277D7A2A8]];
    v19 = objc_alloc(MEMORY[0x277D23C60]);
    asset2 = [(WFPhotoMediaContentItem *)self asset];
    localIdentifier2 = [asset2 localIdentifier];
    v22 = [v19 initWithString:localIdentifier2 entityType:@"LinkAsset"];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = __Block_byref_object_copy_;
    v34 = __Block_byref_object_dispose_;
    v35 = 0;
    v23 = dispatch_semaphore_create(0);
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __78__WFPhotoMediaContentItem_generateObjectRepresentationForClass_options_error___block_invoke;
    v29 = &unk_2783484C8;
    v31 = buf;
    v24 = v23;
    v30 = v24;
    [v18 performQuery:v22 completionHandler:&v26];
    v25 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v24, v25);
    v11 = [WFObjectRepresentation object:*(*&buf[8] + 40), v26, v27, v28, v29];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

void __78__WFPhotoMediaContentItem_generateObjectRepresentationForClass_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 value];
    v9 = [v8 value];
    v20 = 136315650;
    v21 = "[WFPhotoMediaContentItem generateObjectRepresentationForClass:options:error:]_block_invoke";
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_DEFAULT, "%s Recieved output: %@ error: %@", &v20, 0x20u);
  }

  v10 = [v5 value];
  v11 = [v10 value];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 firstObject];

  v15 = [v14 value];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class
{
  v50 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  optionsCopy = options;
  v10 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFPhotoMediaContentItem generateObjectRepresentation:options:forClass:]";
    _os_log_impl(&dword_21E1BD000, v10, OS_LOG_TYPE_DEFAULT, "%s Calling old generate method", &buf, 0xCu);
  }

  if (objc_opt_class() == class)
  {
    v13 = objc_alloc_init(getPHImageRequestOptionsClass());
    [v13 setNetworkAccessAllowed:1];
    [v13 setDeliveryMode:1];
    imageManager = [(WFPhotoMediaContentItem *)self imageManager];
    asset = [(WFPhotoMediaContentItem *)self asset];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __73__WFPhotoMediaContentItem_generateObjectRepresentation_options_forClass___block_invoke;
    v40[3] = &unk_278344D58;
    v40[4] = self;
    v41 = representationCopy;
    [imageManager requestImageDataAndOrientationForAsset:asset options:v13 resultHandler:v40];
  }

  else
  {
    v11 = NSStringFromClass(class);
    v12 = [@"AVAsset" isEqualToString:v11];

    if (v12)
    {
      [(WFPhotoMediaContentItem *)self generateAVAsset:representationCopy networkAccessAllowed:1];
    }

    else
    {
      v16 = NSStringFromClass(class);
      v17 = [@"AVPlayerItem" isEqualToString:v16];

      if (v17)
      {
        v18 = objc_alloc_init(getPHVideoRequestOptionsClass());
        [v18 setNetworkAccessAllowed:1];
        [v18 setDeliveryMode:1];
        imageManager2 = [(WFPhotoMediaContentItem *)self imageManager];
        asset2 = [(WFPhotoMediaContentItem *)self asset];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __73__WFPhotoMediaContentItem_generateObjectRepresentation_options_forClass___block_invoke_2;
        v38[3] = &unk_278344D80;
        v38[4] = self;
        v39 = representationCopy;
        [imageManager2 requestPlayerItemForVideo:asset2 options:v18 resultHandler:v38];
      }

      else
      {
        v21 = NSStringFromClass(class);
        v22 = [@"PHLivePhoto" isEqualToString:v21];

        if (v22)
        {
          v42 = 0;
          v43 = &v42;
          v44 = 0x2050000000;
          v23 = getPHLivePhotoRequestOptionsClass_softClass;
          v45 = getPHLivePhotoRequestOptionsClass_softClass;
          if (!getPHLivePhotoRequestOptionsClass_softClass)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v47 = __getPHLivePhotoRequestOptionsClass_block_invoke;
            v48 = &unk_27834A178;
            v49 = &v42;
            __getPHLivePhotoRequestOptionsClass_block_invoke(&buf);
            v23 = v43[3];
          }

          v24 = v23;
          _Block_object_dispose(&v42, 8);
          v25 = objc_alloc_init(v23);
          [v25 setNetworkAccessAllowed:1];
          [v25 setDeliveryMode:1];
          imageManager3 = [(WFPhotoMediaContentItem *)self imageManager];
          asset3 = [(WFPhotoMediaContentItem *)self asset];
          v42 = 0;
          v43 = &v42;
          v44 = 0x2020000000;
          v28 = getPHImageManagerMaximumSizeSymbolLoc_ptr;
          v45 = getPHImageManagerMaximumSizeSymbolLoc_ptr;
          if (!getPHImageManagerMaximumSizeSymbolLoc_ptr)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v47 = __getPHImageManagerMaximumSizeSymbolLoc_block_invoke;
            v48 = &unk_27834A178;
            v49 = &v42;
            v29 = PhotosLibrary();
            v30 = dlsym(v29, "PHImageManagerMaximumSize");
            *(v49[1] + 24) = v30;
            getPHImageManagerMaximumSizeSymbolLoc_ptr = *(v49[1] + 24);
            v28 = v43[3];
          }

          _Block_object_dispose(&v42, 8);
          if (!v28)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGSize getPHImageManagerMaximumSize(void)"];
            [currentHandler handleFailureInFunction:v35 file:@"WFPhotoMediaContentItem.m" lineNumber:51 description:{@"%s", dlerror()}];

            __break(1u);
          }

          v31 = *v28;
          v32 = v28[1];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __73__WFPhotoMediaContentItem_generateObjectRepresentation_options_forClass___block_invoke_3;
          v36[3] = &unk_278344DA8;
          v36[4] = self;
          v37 = representationCopy;
          [imageManager3 requestLivePhotoForAsset:asset3 targetSize:0 contentMode:v25 options:v36 resultHandler:{v31, v32}];
        }

        else
        {
          v33 = [objc_opt_class() badCoercionErrorForObjectClass:class];
          (*(representationCopy + 2))(representationCopy, 0, 0, v33);
        }
      }
    }
  }
}

void __73__WFPhotoMediaContentItem_generateObjectRepresentation_options_forClass___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = a2;
  v7 = a5;
  if (v16)
  {
    v8 = [objc_alloc(MEMORY[0x277D79FC8]) initWithData:v16 scale:0 allowAnimated:1.0];
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) name];
    (*(v9 + 16))(v9, v8, v10, 0);
  }

  else
  {
    v11 = getPHImageErrorKey();
    v8 = [v7 objectForKey:v11];

    if (!v8)
    {
      v12 = [*(a1 + 32) preferredFileType];
      v13 = [v12 conformsToUTType:*MEMORY[0x277CE1D08]];

      if (v13)
      {
        v14 = objc_opt_class();
        v15 = WFLocalizedString(@"a video was provided instead of an image");
        v8 = [v14 badCoercionErrorWithReasonString:v15];
      }

      else
      {
        v8 = 0;
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __73__WFPhotoMediaContentItem_generateObjectRepresentation_options_forClass___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v9)
  {
    v7 = [*(a1 + 32) name];
    (*(v6 + 16))(v6, v9, v7, 0);
  }

  else
  {
    v7 = getPHImageErrorKey();
    v8 = [v5 objectForKey:v7];
    (*(v6 + 16))(v6, 0, 0, v8);
  }
}

void __73__WFPhotoMediaContentItem_generateObjectRepresentation_options_forClass___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v9)
  {
    v7 = [*(a1 + 32) name];
    (*(v6 + 16))(v6, v9, v7, 0);
  }

  else
  {
    v7 = getPHImageErrorKey();
    v8 = [v5 objectForKey:v7];
    (*(v6 + 16))(v6, 0, 0, v8);
  }
}

- (void)generateAVAsset:(id)asset networkAccessAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  assetCopy = asset;
  v7 = objc_alloc_init(getPHVideoRequestOptionsClass());
  [v7 setNetworkAccessAllowed:allowedCopy];
  [v7 setDeliveryMode:1];
  imageManager = [(WFPhotoMediaContentItem *)self imageManager];
  asset = [(WFPhotoMediaContentItem *)self asset];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__WFPhotoMediaContentItem_generateAVAsset_networkAccessAllowed___block_invoke;
  v11[3] = &unk_278344D30;
  v11[4] = self;
  v12 = assetCopy;
  v10 = assetCopy;
  [imageManager requestAVAssetForVideo:asset options:v7 resultHandler:v11];
}

void __64__WFPhotoMediaContentItem_generateAVAsset_networkAccessAllowed___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = *(a1 + 40);
  if (v10)
  {
    v8 = [*(a1 + 32) name];
    (*(v7 + 16))(v7, v10, v8, 0);
  }

  else
  {
    v8 = getPHImageErrorKey();
    v9 = [v6 objectForKey:v8];
    (*(v7 + 16))(v7, 0, 0, v9);
  }
}

- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type
{
  representationCopy = representation;
  optionsCopy = options;
  typeCopy = type;
  asset = [(WFPhotoMediaContentItem *)self asset];
  if ([asset mediaType] == 2)
  {
    v12 = [typeCopy conformsToUTType:*MEMORY[0x277CE1D08]];

    if (v12)
    {
      [(WFPhotoMediaContentItem *)self retrieveFileWithImageManager:representationCopy forType:typeCopy];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = WFLivePhotoFileType();
  v14 = [typeCopy conformsToUTType:v13];

  if (v14)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__WFPhotoMediaContentItem_generateFileRepresentation_options_forType___block_invoke;
    v21[3] = &unk_278344D08;
    v23 = representationCopy;
    v22 = typeCopy;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v15 = getPHLivePhotoClass_softClass;
    v28 = getPHLivePhotoClass_softClass;
    if (!getPHLivePhotoClass_softClass)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __getPHLivePhotoClass_block_invoke;
      v24[3] = &unk_27834A178;
      v24[4] = &v25;
      __getPHLivePhotoClass_block_invoke(v24);
      v15 = v26[3];
    }

    v16 = v15;
    _Block_object_dispose(&v25, 8);
    [(WFContentItem *)self getObjectRepresentation:v21 forClass:v15];
  }

  else
  {
    v17 = [(WFPhotoMediaContentItem *)self preferredAssetResourceForType:typeCopy];
    if (v17)
    {
      [(WFPhotoMediaContentItem *)self retrieveAssetResource:v17 withNetworkAccess:1 completionHandler:representationCopy];
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __70__WFPhotoMediaContentItem_generateFileRepresentation_options_forType___block_invoke_2;
      v18[3] = &unk_278349FC8;
      v18[4] = self;
      v19 = typeCopy;
      v20 = representationCopy;
      [(WFPhotoMediaContentItem *)self retrieveFileWithImageManager:v18 forType:v19];
    }
  }

LABEL_13:
}

void __70__WFPhotoMediaContentItem_generateFileRepresentation_options_forType___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = [a2 videoComplement];
    v10 = [WFFileRepresentation proposedFilenameForFile:v7 ofType:*(a1 + 32)];
    v11 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v10];
    v15 = v8;
    v12 = [v9 writeToBundleAtURL:v11 error:&v15];
    v13 = v15;

    if (v12)
    {
      v14 = [WFFileRepresentation fileWithURL:v11 options:1 ofType:*(a1 + 32)];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v13 = v8;
  }
}

void __70__WFPhotoMediaContentItem_generateFileRepresentation_options_forType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!(v6 | v5))
  {
    v5 = [objc_opt_class() badCoercionErrorForType:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)preferredAssetResourceForType:(id)type
{
  v27 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  PHAssetResourceClass = getPHAssetResourceClass();
  asset = [(WFPhotoMediaContentItem *)self asset];
  v7 = [PHAssetResourceClass assetResourcesForAsset:asset];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = MEMORY[0x277D79F68];
        uniformTypeIdentifier = [v13 uniformTypeIdentifier];
        v16 = [v14 typeWithString:uniformTypeIdentifier];
        v17 = [v16 conformsToType:typeCopy];

        if (v17)
        {
          v18 = [v13 type] - 7;
          v19 = v13;
          if (v18 > 0xFFFFFFFFFFFFFFFDLL)
          {

            goto LABEL_15;
          }

          v10 = v19;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  v10 = v10;
  v19 = v10;
LABEL_15:

  return v19;
}

- (void)retrieveFileWithImageManager:(id)manager forType:(id)type
{
  managerCopy = manager;
  typeCopy = type;
  if ([typeCopy conformsToUTType:*MEMORY[0x277CE1DB0]])
  {
    v8 = objc_alloc_init(getPHImageRequestOptionsClass());
    [v8 setNetworkAccessAllowed:1];
    [v8 setDeliveryMode:1];
    imageManager = [(WFPhotoMediaContentItem *)self imageManager];
    asset = [(WFPhotoMediaContentItem *)self asset];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__WFPhotoMediaContentItem_retrieveFileWithImageManager_forType___block_invoke;
    v16[3] = &unk_278344CB8;
    v17 = typeCopy;
    selfCopy = self;
    v19 = managerCopy;
    [imageManager requestImageDataAndOrientationForAsset:asset options:v8 resultHandler:v16];

LABEL_8:
    goto LABEL_9;
  }

  if (([typeCopy conformsToUTType:*MEMORY[0x277CE1D08]] & 1) != 0 || objc_msgSend(typeCopy, "conformsToUTType:", *MEMORY[0x277CE1D00]))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__WFPhotoMediaContentItem_retrieveFileWithImageManager_forType___block_invoke_2;
    v13[3] = &unk_278344CE0;
    v15 = managerCopy;
    v13[4] = self;
    v14 = typeCopy;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v11 = getAVAssetClass_softClass;
    v24 = getAVAssetClass_softClass;
    if (!getAVAssetClass_softClass)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __getAVAssetClass_block_invoke;
      v20[3] = &unk_27834A178;
      v20[4] = &v21;
      __getAVAssetClass_block_invoke(v20);
      v11 = v22[3];
    }

    v12 = v11;
    _Block_object_dispose(&v21, 8);
    [(WFContentItem *)self getObjectRepresentation:v13 forClass:v11];

    v8 = v15;
    goto LABEL_8;
  }

LABEL_9:
}

void __64__WFPhotoMediaContentItem_retrieveFileWithImageManager_forType___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v19 = a2;
  v8 = a3;
  v9 = a5;
  if (v19 && ([MEMORY[0x277D79F68] typeWithString:v8], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "conformsToType:", *(a1 + 32)), v10, (v11 & 1) != 0))
  {
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277D79F68] typeWithString:v8];
    v14 = [*(a1 + 40) name];
    v15 = [WFFileRepresentation fileWithData:v19 ofType:v13 proposedFilename:v14];
    v16 = getPHImageErrorKey();
    v17 = [v9 objectForKey:v16];
    (*(v12 + 16))(v12, v15, v17);
  }

  else
  {
    v18 = *(a1 + 48);
    v13 = getPHImageErrorKey();
    v14 = [v9 objectForKey:v13];
    (*(v18 + 16))(v18, 0, v14);
  }
}

void __64__WFPhotoMediaContentItem_retrieveFileWithImageManager_forType___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (v13)
  {
    getAVURLAssetClass();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v13 URL];
      v10 = *(a1 + 48);
      v11 = [*(a1 + 32) name];
      v12 = [WFFileRepresentation fileWithURL:v9 options:5 ofType:0 proposedFilename:v11];
      (*(v10 + 16))(v10, v12, 0);
    }

    else
    {
      v9 = [(WFContentItem *)WFAVAssetContentItem itemWithObject:v13];
      [v9 getFileRepresentation:*(a1 + 48) forType:*(a1 + 40)];
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)retrieveAssetResource:(id)resource withNetworkAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  resourceCopy = resource;
  handlerCopy = handler;
  name = [(WFContentItem *)self name];
  v11 = MEMORY[0x277D79F68];
  uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
  v13 = [v11 typeWithString:uniformTypeIdentifier];
  v14 = [WFFileRepresentation proposedFilenameForFile:name ofType:v13];
  v15 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v14];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v16 = getPHAssetResourceRequestOptionsClass_softClass;
  v31 = getPHAssetResourceRequestOptionsClass_softClass;
  if (!getPHAssetResourceRequestOptionsClass_softClass)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __getPHAssetResourceRequestOptionsClass_block_invoke;
    v27[3] = &unk_27834A178;
    v27[4] = &v28;
    __getPHAssetResourceRequestOptionsClass_block_invoke(v27);
    v16 = v29[3];
  }

  v17 = v16;
  _Block_object_dispose(&v28, 8);
  v18 = objc_opt_new();
  [v18 setNetworkAccessAllowed:accessCopy];
  assetResourceManager = [(WFPhotoMediaContentItem *)self assetResourceManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __85__WFPhotoMediaContentItem_retrieveAssetResource_withNetworkAccess_completionHandler___block_invoke;
  v23[3] = &unk_278344C90;
  v25 = resourceCopy;
  v26 = handlerCopy;
  v24 = v15;
  v20 = resourceCopy;
  v21 = v15;
  v22 = handlerCopy;
  [assetResourceManager writeDataForAssetResource:v20 toFile:v21 options:v18 completionHandler:v23];
}

void __85__WFPhotoMediaContentItem_retrieveAssetResource_withNetworkAccess_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *MEMORY[0x277CBE7B0];
    v13[0] = *MEMORY[0x277CBE7C0];
    v13[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v7 = [v4 resourceValuesForKeys:v6 error:0];

    v8 = MEMORY[0x277D79F68];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) uniformTypeIdentifier];
    v11 = [v8 typeWithString:v10];
    v12 = [WFFileRepresentation fileWithURL:v9 options:1 ofType:v11];

    (*(*(a1 + 48) + 16))();
  }
}

- (void)getThumbnail:(id)thumbnail ofSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  thumbnailCopy = thumbnail;
  v8 = objc_alloc_init(getPHImageRequestOptionsClass());
  [v8 setNetworkAccessAllowed:1];
  [v8 setDeliveryMode:1];
  [v8 setResizeMode:2];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__WFPhotoMediaContentItem_getThumbnail_ofSize___block_invoke;
  aBlock[3] = &unk_278349EF0;
  aBlock[4] = self;
  v9 = v8;
  v20 = v9;
  v10 = thumbnailCopy;
  v21 = v10;
  v11 = _Block_copy(aBlock);
  asset = [(WFPhotoMediaContentItem *)self asset];
  isAnimatedGIF = [asset isAnimatedGIF];

  if (isAnimatedGIF)
  {
    v11[2](v11);
  }

  else
  {
    imageManager = [(WFPhotoMediaContentItem *)self imageManager];
    asset2 = [(WFPhotoMediaContentItem *)self asset];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__WFPhotoMediaContentItem_getThumbnail_ofSize___block_invoke_3;
    v16[3] = &unk_278344C68;
    v17 = v11;
    v18 = v10;
    [imageManager requestImageForAsset:asset2 targetSize:1 contentMode:v9 options:v16 resultHandler:{width, height}];
  }
}

void __47__WFPhotoMediaContentItem_getThumbnail_ofSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageManager];
  v3 = [*(a1 + 32) asset];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__WFPhotoMediaContentItem_getThumbnail_ofSize___block_invoke_2;
  v5[3] = &unk_278344C40;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 requestImageDataAndOrientationForAsset:v3 options:v4 resultHandler:v5];
}

void __47__WFPhotoMediaContentItem_getThumbnail_ofSize___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = [objc_alloc(MEMORY[0x277D79FC8]) initWithPlatformImage:v12];
LABEL_5:
    v9 = *(a1 + 40);
    v10 = getPHImageErrorKey();
    v11 = [v5 objectForKey:v10];
    (*(v9 + 16))(v9, v6, v11);

    goto LABEL_6;
  }

  v7 = getPHImageErrorKey();
  v8 = [v5 objectForKey:v7];

  if (v8)
  {
    v6 = 0;
    goto LABEL_5;
  }

  (*(*(a1 + 32) + 16))();
LABEL_6:
}

void __47__WFPhotoMediaContentItem_getThumbnail_ofSize___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = a5;
  if (a2)
  {
    a2 = [MEMORY[0x277D79FC8] imageWithData:a2];
  }

  v7 = *(a1 + 32);
  v8 = getPHImageErrorKey();
  v9 = [v10 objectForKey:v8];
  (*(v7 + 16))(v7, a2, v9);
}

- (PHAsset)asset
{
  PHAssetClass = getPHAssetClass();

  return [(WFContentItem *)self objectForClass:PHAssetClass];
}

- (id)orientation
{
  asset = [(WFPhotoMediaContentItem *)self asset];
  if ([asset mediaType] == 1)
  {
    v3 = [asset imageOrientation] - 1;
    if (v3 > 6)
    {
      v4 = 1;
    }

    else
    {
      v4 = dword_21E356A80[v3];
    }

    v5 = WFImageStringFromOrientation(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isScreenRecording
{
  asset = [(WFPhotoMediaContentItem *)self asset];
  v3 = ([asset mediaSubtypes] >> 19) & 1;

  return v3;
}

- (BOOL)isScreenshot
{
  asset = [(WFPhotoMediaContentItem *)self asset];
  v3 = ([asset mediaSubtypes] >> 2) & 1;

  return v3;
}

- (id)mediaType
{
  asset = [(WFPhotoMediaContentItem *)self asset];
  mediaType = [asset mediaType];

  if ((mediaType - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = WFLocalizedContentPropertyPossibleValueMarker(off_27834A698[mediaType - 1]);
  }

  return v4;
}

- (id)isFavorite
{
  v2 = MEMORY[0x277CCABB0];
  asset = [(WFPhotoMediaContentItem *)self asset];
  v4 = [v2 numberWithBool:{objc_msgSend(asset, "isFavorite")}];

  return v4;
}

- (id)isHidden
{
  v2 = MEMORY[0x277CCABB0];
  asset = [(WFPhotoMediaContentItem *)self asset];
  v4 = [v2 numberWithBool:{objc_msgSend(asset, "isHidden")}];

  return v4;
}

- (id)isLivePhoto
{
  v2 = MEMORY[0x277CCABB0];
  asset = [(WFPhotoMediaContentItem *)self asset];
  v4 = [v2 numberWithInt:{(objc_msgSend(asset, "mediaSubtypes") >> 3) & 1}];

  return v4;
}

- (id)isBurst
{
  v2 = MEMORY[0x277CCABB0];
  asset = [(WFPhotoMediaContentItem *)self asset];
  burstIdentifier = [asset burstIdentifier];
  v5 = [v2 numberWithInt:burstIdentifier != 0];

  return v5;
}

- (id)photoTypes
{
  v3 = WFPhotoLibraryPossiblePhotoTypes();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__WFPhotoMediaContentItem_photoTypes__block_invoke;
  v6[3] = &unk_278344C18;
  v6[4] = self;
  v4 = [v3 if_objectsPassingTest:v6];

  return v4;
}

- (BOOL)isPhotoType:(id)type
{
  typeCopy = type;
  v5 = WFLocalizedContentPropertyPossibleValueMarker(@"HDR");
  v6 = [typeCopy isEqualToString:v5];

  if (v6)
  {
    asset = [(WFPhotoMediaContentItem *)self asset];
    v8 = ([asset mediaSubtypes] >> 1) & 1;
  }

  else
  {
    v9 = WFLocalizedContentPropertyPossibleValueMarker(@"Panorama");
    v10 = [typeCopy isEqualToString:v9];

    if (v10)
    {
      asset = [(WFPhotoMediaContentItem *)self asset];
      v8 = [asset mediaSubtypes] & 1;
    }

    else
    {
      v11 = WFLocalizedContentPropertyPossibleValueMarker(@"Burst");
      v12 = [typeCopy isEqualToString:v11];

      if (v12)
      {
        asset = [(WFPhotoMediaContentItem *)self asset];
        burstIdentifier = [asset burstIdentifier];
        LOBYTE(v8) = burstIdentifier != 0;
      }

      else
      {
        v14 = WFLocalizedContentPropertyPossibleValueMarker(@"Live Photo");
        v15 = [typeCopy isEqualToString:v14];

        if (!v15)
        {
          LOBYTE(v8) = 0;
          goto LABEL_10;
        }

        asset = [(WFPhotoMediaContentItem *)self isLivePhoto];
        LOBYTE(v8) = [asset BOOLValue];
      }
    }
  }

LABEL_10:
  return v8;
}

- (id)height
{
  v2 = MEMORY[0x277CCABB0];
  [(WFPhotoMediaContentItem *)self size];

  return [v2 numberWithDouble:v3];
}

- (id)width
{
  v2 = MEMORY[0x277CCABB0];
  [(WFPhotoMediaContentItem *)self size];

  return [v2 numberWithDouble:?];
}

- (id)model
{
  metadataIfLocallyAvailable = [(WFPhotoMediaContentItem *)self metadataIfLocallyAvailable];
  v3 = WFImageModelFromMetadata(metadataIfLocallyAvailable);

  return v3;
}

- (id)make
{
  metadataIfLocallyAvailable = [(WFPhotoMediaContentItem *)self metadataIfLocallyAvailable];
  v3 = WFImageMakeFromMetadata(metadataIfLocallyAvailable);

  return v3;
}

- (CGSize)size
{
  asset = [(WFPhotoMediaContentItem *)self asset];
  pixelWidth = [asset pixelWidth];
  pixelHeight = [asset pixelHeight];

  v5 = pixelWidth;
  v6 = pixelHeight;
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)location
{
  v3 = [(WFContentItem *)self fileRepresentationForType:self->_preferredFileType];
  if (v3)
  {
    asset = [(WFContentItem *)WFAVAssetContentItem itemWithFile:v3];
    if (!asset)
    {
      v5 = [(WFContentItem *)WFImageContentItem itemWithFile:v3];
      v6 = v5;
      if (v5)
      {
        location = [v5 location];
      }

      else
      {
        location = 0;
      }

      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    asset = [(WFPhotoMediaContentItem *)self asset];
  }

  v8 = asset;
  location = [asset location];
LABEL_9:

  return location;
}

- (id)metadataIfLocallyAvailable
{
  asset = [(WFPhotoMediaContentItem *)self asset];
  if ([asset mediaType] == 1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy_;
    v13 = __Block_byref_object_dispose_;
    v14 = 0;
    v4 = objc_alloc_init(getPHImageRequestOptionsClass());
    [v4 setNetworkAccessAllowed:0];
    [v4 setSynchronous:1];
    [v4 setDeliveryMode:1];
    imageManager = [(WFPhotoMediaContentItem *)self imageManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__WFPhotoMediaContentItem_metadataIfLocallyAvailable__block_invoke;
    v8[3] = &unk_278344BF0;
    v8[4] = &v9;
    [imageManager requestImageDataAndOrientationForAsset:asset options:v4 resultHandler:v8];

    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __53__WFPhotoMediaContentItem_metadataIfLocallyAvailable__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  data = a2;
  v8 = a3;
  v9 = a5;
  if (data)
  {
    v10 = CGImageSourceCreateWithData(data, 0);
    if (v10)
    {
      v11 = v10;
      v12 = CGImageSourceCopyPropertiesAtIndex(v10, 0, 0);
      v13 = *(*(a1 + 32) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      CFRelease(v11);
    }
  }
}

- (void)getFrameRate:(id)rate
{
  rateCopy = rate;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__WFPhotoMediaContentItem_getFrameRate___block_invoke;
  v6[3] = &unk_278344BC8;
  v7 = rateCopy;
  v5 = rateCopy;
  [(WFPhotoMediaContentItem *)self generateAVAsset:v6 networkAccessAllowed:0];
}

void __40__WFPhotoMediaContentItem_getFrameRate___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    (*(*(a1 + 32) + 16))();
    goto LABEL_7;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v10 = getAVMediaTypeVideoSymbolLoc_ptr;
  v24 = getAVMediaTypeVideoSymbolLoc_ptr;
  if (!getAVMediaTypeVideoSymbolLoc_ptr)
  {
    v11 = AVFoundationLibrary();
    v22[3] = dlsym(v11, "AVMediaTypeVideo");
    getAVMediaTypeVideoSymbolLoc_ptr = v22[3];
    v10 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (v10)
  {
    v12 = [v7 tracksWithMediaType:*v10];
    v13 = [v12 firstObject];
    [v13 nominalFrameRate];
    v15 = v14;

    v16 = *(a1 + 32);
    LODWORD(v17) = v15;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    (*(v16 + 16))(v16, v18, 0);

LABEL_7:
    return;
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMediaType getAVMediaTypeVideo(void)"];
  [v19 handleFailureInFunction:v20 file:@"WFPhotoMediaContentItem.m" lineNumber:60 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)getMetadata:(id)metadata
{
  metadataCopy = metadata;
  asset = [(WFPhotoMediaContentItem *)self asset];
  if ([asset mediaType] == 1)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy_;
    v11[4] = __Block_byref_object_dispose_;
    v12 = 0;
    v6 = objc_alloc_init(getPHImageRequestOptionsClass());
    [v6 setNetworkAccessAllowed:1];
    [v6 setSynchronous:0];
    [v6 setDeliveryMode:1];
    imageManager = [(WFPhotoMediaContentItem *)self imageManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__WFPhotoMediaContentItem_getMetadata___block_invoke;
    v8[3] = &unk_278344BA0;
    v9 = metadataCopy;
    v10 = v11;
    [imageManager requestImageDataAndOrientationForAsset:asset options:v6 resultHandler:v8];

    _Block_object_dispose(v11, 8);
  }

  else
  {
    (*(metadataCopy + 2))(metadataCopy, 0, 0);
  }
}

void __39__WFPhotoMediaContentItem_getMetadata___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  data = a2;
  v8 = a3;
  v9 = a5;
  if (data && (v10 = CGImageSourceCreateWithData(data, 0)) != 0)
  {
    v11 = v10;
    v12 = CGImageSourceCopyPropertiesAtIndex(v10, 0, 0);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    CFRelease(v11);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = getPHImageErrorKey();
    v17 = [v9 objectForKey:v16];
    (*(v15 + 16))(v15, 0, v17);
  }
}

- (id)assetResourceManager
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPHAssetResourceManagerClass_softClass;
  v10 = getPHAssetResourceManagerClass_softClass;
  if (!getPHAssetResourceManagerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getPHAssetResourceManagerClass_block_invoke;
    v6[3] = &unk_27834A178;
    v6[4] = &v7;
    __getPHAssetResourceManagerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  defaultManager = [v2 defaultManager];

  return defaultManager;
}

- (id)imageManager
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPHImageManagerClass_softClass;
  v10 = getPHImageManagerClass_softClass;
  if (!getPHImageManagerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getPHImageManagerClass_block_invoke;
    v6[3] = &unk_27834A178;
    v6[4] = &v7;
    __getPHImageManagerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  defaultManager = [v2 defaultManager];

  return defaultManager;
}

- (id)duration
{
  asset = [(WFPhotoMediaContentItem *)self asset];
  [asset duration];
  v4 = v3;

  if (v4 == 0.0)
  {
    v11 = 0;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [date dateByAddingTimeInterval:v4];
    v8 = 224;
    v9 = [currentCalendar components:224 fromDate:date toDate:v7 options:0];

    if ([v9 hour])
    {
      v10 = 1;
    }

    else
    {
      minute = [v9 minute];
      if (minute)
      {
        v8 = 224;
      }

      else
      {
        v8 = 192;
      }

      if (minute)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x10000;
      }
    }

    v11 = [[WFTimeInterval alloc] initWithTimeInterval:v8 allowedUnits:0 unitsStyle:v10 zeroFormattingBehavior:v4];
  }

  return v11;
}

- (void)getPreferredFileExtension:(id)extension
{
  extensionCopy = extension;
  preferredFileType = [(WFPhotoMediaContentItem *)self preferredFileType];
  fileExtension = [preferredFileType fileExtension];
  (*(extension + 2))(extensionCopy, fileExtension);
}

- (void)getPreferredFileSize:(id)size
{
  sizeCopy = size;
  preferredFileType = [(WFPhotoMediaContentItem *)self preferredFileType];
  v6 = [(WFPhotoMediaContentItem *)self preferredAssetResourceForType:preferredFileType];

  sizeCopy[2](sizeCopy, [v6 fileSize]);
}

- (NSDictionary)additionalRepresentationsForSerialization
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v18[0] = @"com.apple.mobileslideshow.asset.localidentifier";
  asset = [(WFPhotoMediaContentItem *)self asset];
  localIdentifier = [asset localIdentifier];
  v19[0] = localIdentifier;
  v18[1] = @"link.contentkit.phasset.representationtypes";
  assetRepresentationTypes = [(WFPhotoMediaContentItem *)self assetRepresentationTypes];
  v19[1] = assetRepresentationTypes;
  v18[2] = @"link.contentkit.remoteitem.preferredfiletype";
  preferredFileType = [(WFPhotoMediaContentItem *)self preferredFileType];
  string = [preferredFileType string];
  v19[2] = string;
  v18[3] = @"library";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFPhotoMediaContentItem library](self, "library")}];
  v19[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v11 = [v3 dictionaryWithDictionary:v10];

  preferredFileType2 = [(WFPhotoMediaContentItem *)self preferredFileType];
  v13 = [(WFContentItem *)self fileRepresentationForType:preferredFileType2];

  originalURL = [v13 originalURL];
  absoluteString = [originalURL absoluteString];

  if (absoluteString)
  {
    originalURL2 = [v13 originalURL];
    [v11 setObject:originalURL2 forKey:@"fileURL"];
  }

  return v11;
}

+ (id)localizedPluralFilterDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Photos", @"Photos");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedFilterDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Photo (singular)", @"Photo");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClassName:@"AVAsset" frameworkName:@"AVFoundation" location:0];
  v5 = [WFObjectType typeWithClassName:@"AVPlayerItem" frameworkName:@"AVFoundation" location:0];
  v6 = [WFObjectType typeWithClassName:@"PHLivePhoto" frameworkName:@"Photos" location:0];
  v7 = MEMORY[0x277D79F68];
  v8 = WFLivePhotoFileType();
  v9 = [v7 typeWithUTType:v8];
  v10 = [WFObjectType typeWithClassName:@"CLLocation" frameworkName:@"CoreLocation" location:0];
  v11 = [WFObjectType typeWithClass:objc_opt_class()];
  v12 = [WFObjectType typeWithClass:objc_opt_class()];
  v13 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, v9, v10, v11, v12, 0}];

  return v13;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Photo media (plural)", @"Photo media");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Photo media (singular)", @"Photo media");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)ownedPasteboardTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.mobileslideshow.asset.localidentifier"];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"PHAsset" frameworkName:@"Photos" location:0];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance
{
  instanceCopy = instance;
  if (instanceCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = instanceCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  string = [v6 string];

  LOBYTE(v6) = [string isEqualToString:@"AVAsset"];
  if (v6 & 1) != 0 || ((v8 = instanceCopy, !instanceCopy) ? (v9 = 0) : (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v9 = 0) : (v9 = v8), (v10 = v9, v8, [v10 string], v11 = objc_claimAutoreleasedReturnValue(), v10, LOBYTE(v10) = objc_msgSend(v11, "isEqualToString:", @"CLLocation"), v11, (v10) || (objc_msgSend(v8, "isEqualToClass:", objc_opt_class())))
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___WFPhotoMediaContentItem;
    v12 = objc_msgSendSuper2(&v14, sel_supportedTypeMustBeDeterminedByInstance_, v8);
  }

  return v12;
}

id __52__WFPhotoMediaContentItem_linkEntityCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D23808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 asset];

  v6 = [v5 uuid];
  v7 = [v4 initWithTypeIdentifier:@"AssetEntity" instanceIdentifier:v6];

  v8 = [objc_alloc(MEMORY[0x277D237F8]) initWithIdentifier:v7];

  return v8;
}

+ (id)coercions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [WFObjectType typeWithClassName:@"LNEntity" frameworkName:@"LinkMetadata" location:1];
  linkEntityCoercionHandler = [self linkEntityCoercionHandler];
  v5 = [WFCoercion coercionToType:v3 handler:linkEntityCoercionHandler];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

+ (id)remoteItemWithAssetIdentifier:(id)identifier named:(id)named
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"com.apple.mobileslideshow.asset.localidentifier";
  v13[0] = identifier;
  v6 = MEMORY[0x277CBEAC0];
  namedCopy = named;
  identifierCopy = identifier;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [self itemWithSerializedItem:v9 forType:0 named:namedCopy attributionSet:0 cachingIdentifier:0];

  return v10;
}

+ (id)stringConversionBehavior
{
  v2 = [self propertyForName:@"Name"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (id)propertyBuilders
{
  v105[20] = *MEMORY[0x277D85DE8];
  v98 = WFLocalizedContentPropertyNameMarkerWithContext(@"Album", @"Image Content Item");
  v97 = [WFContentPropertyBuilder block:&__block_literal_global_616 name:v98 class:objc_opt_class()];
  v96 = [v97 multipleValues:1];
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __43__WFPhotoMediaContentItem_propertyBuilders__block_invoke_383;
  v99[3] = &__block_descriptor_40_e14___NSArray_8__0l;
  v99[4] = self;
  v95 = [v96 possibleValuesGetter:v99];
  v105[0] = v95;
  v94 = WFLocalizedContentPropertyNameMarker(@"Width");
  v93 = [WFContentPropertyBuilder keyPath:@"width" name:v94 class:objc_opt_class()];
  v105[1] = v93;
  v92 = WFLocalizedContentPropertyNameMarker(@"Height");
  v91 = [WFContentPropertyBuilder keyPath:@"height" name:v92 class:objc_opt_class()];
  v105[2] = v91;
  v90 = WFLocalizedContentPropertyNameMarker(@"Date Taken");
  v89 = [WFContentPropertyBuilder keyPath:@"asset.creationDate" name:v90 class:objc_opt_class()];
  v88 = [v89 tense:1];
  v87 = [v88 timeUnits:8220];
  v86 = [v87 comparableUnits:8220];
  v105[3] = v86;
  v85 = WFLocalizedContentPropertyNameMarker(@"Time Taken");
  v84 = [WFContentPropertyBuilder keyPath:@"asset.creationDate" name:v85 class:objc_opt_class()];
  v83 = [v84 tense:1];
  v82 = [v83 timeUnits:224];
  v81 = [v82 comparableUnits:224];
  v80 = [v81 gettable:0];
  v105[4] = v80;
  v79 = WFLocalizedContentPropertyNameMarker(@"Media Type");
  v78 = [WFContentPropertyBuilder keyPath:@"mediaType" name:v79 class:objc_opt_class()];
  v77 = WFPhotoLibraryPossibleMediaTypes();
  v76 = [v78 possibleValues:v77];
  v105[5] = v76;
  v75 = WFLocalizedContentPropertyNameMarker(@"Photo Type");
  v74 = [WFContentPropertyBuilder keyPath:@"photoTypes" name:v75 class:objc_opt_class()];
  v73 = WFPhotoLibraryPossiblePhotoTypes();
  v72 = [v74 possibleValues:v73];
  v71 = [v72 multipleValues:1];
  v70 = [v71 sortable:0];
  v105[6] = v70;
  v68 = WFLocalizedContentPropertyNameMarker(@"Is a Screenshot");
  v69 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v67 = [WFContentPropertyBuilder keyPath:@"isScreenshot" name:v68 class:objc_opt_class()];
  v66 = WFLocalizedContentPropertyNameMarker(@"Is Not a Screenshot");
  v65 = [v67 negativeName:v66];
  v64 = WFLocalizedString(@"Photo");
  v63 = [v65 singularItemName:v64];
  v105[7] = v63;
  v61 = WFLocalizedContentPropertyNameMarker(@"Is a Screen Recording");
  v62 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v60 = [WFContentPropertyBuilder keyPath:@"isScreenRecording" name:v61 class:objc_opt_class()];
  v59 = WFLocalizedContentPropertyNameMarker(@"Is Not a Screen Recording");
  v58 = [v60 negativeName:v59];
  v57 = WFLocalizedString(@"Video");
  v56 = [v58 singularItemName:v57];
  v105[8] = v56;
  v55 = WFLocalizedContentPropertyNameMarker(@"Location");
  v101 = 0;
  v102 = &v101;
  v103 = 0x2050000000;
  v3 = getCLLocationClass_softClass;
  v104 = getCLLocationClass_softClass;
  if (!getCLLocationClass_softClass)
  {
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __getCLLocationClass_block_invoke;
    v100[3] = &unk_27834A178;
    v100[4] = &v101;
    __getCLLocationClass_block_invoke(v100);
    v3 = v102[3];
  }

  v4 = v3;
  _Block_object_dispose(&v101, 8);
  v54 = [WFContentPropertyBuilder keyPath:@"location" name:v55 class:v3];
  v105[9] = v54;
  v53 = WFLocalizedContentPropertyNameMarker(@"Duration");
  v52 = [WFContentPropertyBuilder keyPath:@"duration" name:v53 class:objc_opt_class()];
  v51 = [v52 timeUnits:224];
  v105[10] = v51;
  v50 = WFLocalizedContentPropertyNameMarker(@"Frame Rate");
  v49 = [WFContentPropertyBuilder block:&__block_literal_global_439 name:v50 class:objc_opt_class()];
  v48 = [v49 irrational:1];
  v105[11] = v48;
  v47 = WFLocalizedContentPropertyNameMarker(@"Orientation");
  v46 = [WFContentPropertyBuilder keyPath:@"orientation" name:v47 class:objc_opt_class()];
  v45 = WFImagePossibleOrientationStrings();
  v44 = [v46 possibleValues:v45];
  v43 = [v44 sortable:0];
  v105[12] = v43;
  v42 = WFLocalizedContentPropertyNameMarker(@"Camera Make");
  v41 = [WFContentPropertyBuilder keyPath:@"make" name:v42 class:objc_opt_class()];
  v40 = [v41 sortable:0];
  v39 = [v40 filterable:0];
  v105[13] = v39;
  v38 = WFLocalizedContentPropertyNameMarker(@"Camera Model");
  v37 = [WFContentPropertyBuilder keyPath:@"model" name:v38 class:objc_opt_class()];
  v36 = [v37 sortable:0];
  v35 = [v36 filterable:0];
  v105[14] = v35;
  v34 = WFLocalizedContentPropertyNameMarker(@"Metadata Dictionary");
  v33 = [WFContentPropertyBuilder block:&__block_literal_global_454 name:v34 class:objc_opt_class()];
  v32 = [v33 sortable:0];
  v31 = [v32 filterable:0];
  v105[15] = v31;
  v29 = WFLocalizedContentPropertyNameMarker(@"Is Favorite");
  v30 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v28 = [WFContentPropertyBuilder keyPath:@"isFavorite" name:v29 class:objc_opt_class()];
  v27 = WFLocalizedContentPropertyNameMarker(@"Is Not Favorite");
  v26 = [v28 negativeName:v27];
  v25 = WFLocalizedString(@"Photo");
  v24 = [v26 singularItemName:v25];
  v105[16] = v24;
  v23 = [WFContentPropertyBuilder keyPath:@"asset.creationDate" name:@"Creation Date" class:objc_opt_class()];
  v22 = WFLocalizedContentPropertyNameMarker(@"Date Created");
  v21 = [v23 displayName:v22];
  v20 = [v21 userInfo:@"WFFileCreationDate"];
  v19 = [v20 tense:1];
  v18 = [v19 timeUnits:8444];
  v105[17] = v18;
  v17 = [WFContentPropertyBuilder keyPath:@"asset.modificationDate" name:@"Last Modified Date" class:objc_opt_class()];
  v5 = WFLocalizedContentPropertyNameMarker(@"Date Modified");
  v6 = [v17 displayName:v5];
  v7 = [v6 userInfo:@"WFFileModificationDate"];
  v8 = [v7 tense:1];
  v9 = [v8 timeUnits:8444];
  v105[18] = v9;
  v10 = WFLocalizedContentPropertyNameMarker(@"File Size");
  v11 = [WFContentPropertyBuilder block:&__block_literal_global_479 name:v10 class:objc_opt_class()];
  v12 = [v11 userInfo:@"WFFileSizeProperty"];
  v13 = [v12 sortable:0];
  v14 = [v13 filterable:0];
  v105[19] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:20];

  return v16;
}

id __43__WFPhotoMediaContentItem_propertyBuilders__block_invoke_383(uint64_t a1)
{
  v1 = [*(a1 + 32) photoAlbums];
  v2 = [v1 if_compactMap:&__block_literal_global_386];

  return v2;
}

void __43__WFPhotoMediaContentItem_propertyBuilders__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__WFPhotoMediaContentItem_propertyBuilders__block_invoke_8;
  v7[3] = &unk_278349780;
  v8 = v5;
  v6 = v5;
  [a2 getPreferredFileSize:v7];
}

void __43__WFPhotoMediaContentItem_propertyBuilders__block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[WFFileSize alloc] initWithByteCount:a2];
  (*(v2 + 16))(v2, v3);
}

void __43__WFPhotoMediaContentItem_propertyBuilders__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__WFPhotoMediaContentItem_propertyBuilders__block_invoke_6;
  v7[3] = &unk_278346248;
  v8 = v5;
  v6 = v5;
  [a2 getMetadata:v7];
}

void __43__WFPhotoMediaContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__WFPhotoMediaContentItem_propertyBuilders__block_invoke_4;
  v7[3] = &unk_278344B58;
  v8 = v5;
  v6 = v5;
  [a2 getFrameRate:v7];
}

void __43__WFPhotoMediaContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = +[WFSharedPhotoLibrary sharedLibrary];
  v27 = 0;
  v9 = [v8 fetchOptionsWithError:&v27];
  v10 = v27;

  if (v9)
  {
    [v9 setWantsIncrementalChangeDetails:0];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    PHAssetCollectionClass = getPHAssetCollectionClass();
    v12 = [v5 asset];
    v13 = [PHAssetCollectionClass fetchAssetCollectionsContainingAsset:v12 withType:1 options:v9];

    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v22 = v5;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [v18 wfName];

          if (v19)
          {
            v20 = [v18 wfName];
            [v7 addObject:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
      v21 = v7;
      v5 = v22;
    }

    else
    {
      v21 = v7;
    }
  }

  else
  {
    v13 = getWFGeneralLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "+[WFPhotoMediaContentItem propertyBuilders]_block_invoke";
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Unable to get fetch options for photo library: %@", buf, 0x16u);
    }

    v21 = 0;
  }

  (v6)[2](v6, v21);
}

+ (id)photoAlbums
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v2 = getPHPhotoLibraryClass_softClass;
  v32 = getPHPhotoLibraryClass_softClass;
  if (!getPHPhotoLibraryClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPHPhotoLibraryClass_block_invoke;
    v36 = &unk_27834A178;
    v37 = &v29;
    __getPHPhotoLibraryClass_block_invoke(buf);
    v2 = v30[3];
  }

  v3 = v2;
  _Block_object_dispose(&v29, 8);
  if ([v2 authorizationStatus] == 3)
  {
    v4 = +[WFSharedPhotoLibrary sharedLibrary];
    v28 = 0;
    v19 = [v4 fetchOptionsWithError:&v28];
    v18 = v28;

    if (v19)
    {
      [v19 setWantsIncrementalChangeDetails:0];
      v5 = objc_opt_new();
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v6 = [getPHAssetCollectionClass() fetchAssetCollectionsWithType:1 subtype:0x7FFFFFFFFFFFFFFFLL options:v19];
      v7 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v7)
      {
        v8 = *v25;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(v6);
            }

            [v5 addObject:{*(*(&v24 + 1) + 8 * i), v18}];
          }

          v7 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
        }

        while (v7);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [getPHAssetCollectionClass() fetchAssetCollectionsWithType:2 subtype:0x7FFFFFFFFFFFFFFFLL options:v19];
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v33 count:16];
      if (v11)
      {
        v12 = *v21;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v20 + 1) + 8 * j);
            if ([v14 assetCollectionSubtype] == 209)
            {
              [v5 insertObject:v14 atIndex:0];
            }

            else
            {
              v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "assetCollectionSubtype")}];
              v16 = [&unk_282F7BE00 containsObject:v15];

              if ((v16 & 1) == 0)
              {
                [v5 addObject:v14];
              }
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v20 objects:v33 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "+[WFPhotoMediaContentItem photoAlbums]";
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_21E1BD000, v10, OS_LOG_TYPE_ERROR, "%s Unable to get fetch options for photo library: %@", buf, 0x16u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)itemWithSerializedItem:(id)item forType:(id)type named:(id)named attributionSet:(id)set cachingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  setCopy = set;
  namedCopy = named;
  itemCopy = item;
  v15 = [itemCopy wfObjectOfClass:objc_opt_class() forKey:@"com.apple.mobileslideshow.asset.localidentifier"];
  v16 = [itemCopy wfObjectOfClass:objc_opt_class() forKey:@"library"];
  v17 = [itemCopy wfObjectOfClass:objc_opt_class() forKey:@"fileURL"];

  v18 = [WFFileRepresentation fileWithURL:v17 options:0];
  v19 = [self itemWithAssetIdentifier:v15 library:objc_msgSend(v16 assetFile:"integerValue") nameIfKnown:v18 attributionSet:namedCopy cachingIdentifier:{setCopy, identifierCopy}];

  return v19;
}

+ (id)fetchOptionsForLibrary:(int64_t)library
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = +[WFSharedPhotoLibrary sharedLibrary];
  v9 = 0;
  v5 = [v4 fetchOptionsWithError:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "+[WFPhotoMediaContentItem fetchOptionsForLibrary:]";
      v12 = 2048;
      libraryCopy = library;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s Unable to get fetch options for library: %li, error: %@", buf, 0x20u);
    }
  }

  [v5 setWantsIncrementalChangeDetails:0];
  [v5 setIncludeGuestAssets:1];

  return v5;
}

+ (id)itemsWithBurstIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [self fetchOptionsForLibrary:0];
  v6 = v5;
  if (v5)
  {
    [v5 setIncludeAssetSourceTypes:7];
    [v6 setIncludeAllBurstAssets:1];
    [v6 setWantsIncrementalChangeDetails:0];
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v22 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [v6 setSortDescriptors:v8];

    v9 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [getPHAssetClass() fetchAssetsWithBurstIdentifier:identifierCopy options:{v6, 0}];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [self itemWithObject:*(*(&v17 + 1) + 8 * i)];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "+[WFPhotoMediaContentItem itemsWithBurstIdentifier:]";
      _os_log_impl(&dword_21E1BD000, v10, OS_LOG_TYPE_ERROR, "%s Unable to get fetch options for photo library", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)itemWithAssetIdentifier:(id)identifier library:(int64_t)library assetFile:(id)file nameIfKnown:(id)known attributionSet:(id)set cachingIdentifier:(id)cachingIdentifier
{
  v37[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  fileCopy = file;
  knownCopy = known;
  setCopy = set;
  cachingIdentifierCopy = cachingIdentifier;
  if (!identifierCopy)
  {
    v24 = 0;
    goto LABEL_11;
  }

  v19 = [self fetchOptionsForLibrary:library];
  PHAssetClass = getPHAssetClass();
  v37[0] = identifierCopy;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v22 = [PHAssetClass fetchAssetsWithLocalIdentifiers:v21 options:v19];

  if (![v22 count])
  {
    v27 = getWFGeneralLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v32 = "+[WFPhotoMediaContentItem itemWithAssetIdentifier:library:assetFile:nameIfKnown:attributionSet:cachingIdentifier:]";
      v33 = 2112;
      v34 = identifierCopy;
      v35 = 2048;
      libraryCopy = library;
      _os_log_impl(&dword_21E1BD000, v27, OS_LOG_TYPE_DEFAULT, "%s No PHAsset found for asset identifier: %@, library: %li", buf, 0x20u);
    }

    v24 = 0;
    goto LABEL_9;
  }

  firstObject = [v22 firstObject];
  v24 = [self itemWithObject:firstObject named:knownCopy attributionSet:setCopy cachingIdentifier:cachingIdentifierCopy];

  [v24 setLibrary:library];
  if (fileCopy)
  {
    wfType = [fileCopy wfType];
    v26 = v24[6];
    v24[6] = wfType;

    v30 = fileCopy;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    wfType2 = [fileCopy wfType];
    [v24 setFileRepresentations:v27 forType:wfType2];

LABEL_9:
  }

LABEL_11:

  return v24;
}

- (BOOL)getListAltText:(id)text
{
  textCopy = text;
  asset = [(WFPhotoMediaContentItem *)self asset];
  if (([asset mediaType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    asset2 = [(WFPhotoMediaContentItem *)self asset];
    [asset2 duration];
    v8 = WFChooseFromListFormatPlaybackDuration(v7);

    if (!textCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (textCopy)
  {
LABEL_5:
    textCopy[2](textCopy, v8);
  }

LABEL_6:

  return 1;
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  thumbnailCopy = thumbnail;
  if (thumbnailCopy)
  {
    currentDevice = [MEMORY[0x277D79F18] currentDevice];
    [currentDevice screenScale];
    v8 = v7;

    CGAffineTransformMakeScale(&v15, v8, v8);
    v12 = vmlaq_n_f64(vmulq_n_f64(*&v15.c, height), *&v15.a, width);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__WFPhotoMediaContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke;
    v13[3] = &unk_278347A98;
    v14 = thumbnailCopy;
    [(WFPhotoMediaContentItem *)self getThumbnail:v13 ofSize:*&v12];
  }

  return 1;
}

- (BOOL)getListSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  asset = [(WFPhotoMediaContentItem *)self asset];
  mediaType = [asset mediaType];
  switch(mediaType)
  {
    case 3:
      v8 = @"Audio";
      break;
    case 2:
      v8 = @"Video";
      break;
    case 1:
      v7 = WFLocalizedStringWithKey(@"Photo (media type)", @"Photo");
      goto LABEL_9;
    default:
      v8 = @"Unknown";
      break;
  }

  v7 = WFLocalizedString(v8);
LABEL_9:
  v9 = v7;
  if (subtitleCopy)
  {
    subtitleCopy[2](subtitleCopy, v7);
  }

  return 1;
}

@end