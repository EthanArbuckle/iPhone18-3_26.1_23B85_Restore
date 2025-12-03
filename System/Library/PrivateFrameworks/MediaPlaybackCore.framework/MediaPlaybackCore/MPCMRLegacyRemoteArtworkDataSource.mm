@interface MPCMRLegacyRemoteArtworkDataSource
+ (MPCMRLegacyRemoteArtworkDataSource)sharedDataSource;
+ (id)bestArtworkSizes;
- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog;
- (id)_urlForCatalog:(id)catalog size:(CGSize)size;
- (id)requestForCatalog:(id)catalog size:(CGSize)size;
- (id)supportedSizesForCatalog:(id)catalog;
- (void)getExportableArtworkPropertiesForCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation MPCMRLegacyRemoteArtworkDataSource

- (void)getExportableArtworkPropertiesForCatalog:(id)catalog completionHandler:(id)handler
{
  handlerCopy = handler;
  token = [catalog token];
  artworkProperties = [token artworkProperties];
  handlerCopy[2](handlerCopy, artworkProperties, 0);
}

- (id)requestForCatalog:(id)catalog size:(CGSize)size
{
  v4 = [(MPCMRLegacyRemoteArtworkDataSource *)self _urlForCatalog:catalog size:size.width, size.height];
  v5 = [MEMORY[0x1E696AF68] requestWithURL:v4 cachePolicy:0 timeoutInterval:60.0];

  return v5;
}

- (id)_urlForCatalog:(id)catalog size:(CGSize)size
{
  height = size.height;
  width = size.width;
  catalogCopy = catalog;
  MSVGetMaximumScreenSize();
  if (height >= width)
  {
    v9 = height;
  }

  else
  {
    v9 = width;
  }

  if (v8 >= v7)
  {
    v7 = v8;
  }

  if (v9 > v7 || (width == *MEMORY[0x1E695F060] ? (v10 = height == *(MEMORY[0x1E695F060] + 8)) : (v10 = 0), v10))
  {
    MSVGetMaximumScreenSize();
    width = v11;
    height = v12;
  }

  token = [catalogCopy token];
  artworkProperties = [token artworkProperties];
  artworkInfo = [artworkProperties artworkInfo];

  v16 = [artworkInfo artworkURLWithSize:*MEMORY[0x1E69E4240] cropStyle:*MEMORY[0x1E69E4268] format:MSVDeviceSupportsExtendedColorDisplay() preferP3ColorSpace:{width, height}];

  return v16;
}

- (id)supportedSizesForCatalog:(id)catalog
{
  token = [catalog token];
  artworkProperties = [token artworkProperties];
  artworkInfo = [artworkProperties artworkInfo];
  sizeInfo = [artworkInfo sizeInfo];

  type = [sizeInfo type];
  if (type == 2)
  {
    supportedSizes = [sizeInfo supportedSizes];
    if ([supportedSizes count])
    {
      hasMaxSupportedSize = [sizeInfo hasMaxSupportedSize];

      if (hasMaxSupportedSize)
      {
        supportedSizes2 = [sizeInfo supportedSizes];
        [sizeInfo maxSupportedSize];
        allObjects = _MPCRemotePlayerArtworkDataSourceValidSupportedSizes(supportedSizes2, v22, v23);

        if ([allObjects count])
        {
          v24 = allObjects;
        }

        else
        {
          v24 = +[MPCMRLegacyRemoteArtworkDataSource bestArtworkSizes];
        }

        v8 = v24;
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_3:
    v8 = +[MPCMRLegacyRemoteArtworkDataSource bestArtworkSizes];
    goto LABEL_17;
  }

  if (type != 1 || ![sizeInfo hasMaxSupportedSize])
  {
    goto LABEL_3;
  }

  systemConfiguration = [MEMORY[0x1E69704A8] systemConfiguration];
  artworkProperties2 = [token artworkProperties];
  mediaType = [artworkProperties2 mediaType];
  artworkProperties3 = [token artworkProperties];
  v13 = [systemConfiguration supportedSizesForMediaType:mediaType artworkType:{objc_msgSend(artworkProperties3, "mediaLibraryArtworkType")}];
  allObjects = [v13 allObjects];

  [sizeInfo maxSupportedSize];
  v17 = _MPCRemotePlayerArtworkDataSourceValidSupportedSizes(allObjects, v15, v16);
  if ([v17 count])
  {
    v18 = v17;
  }

  else
  {
    v18 = +[MPCMRLegacyRemoteArtworkDataSource bestArtworkSizes];
  }

  v8 = v18;

LABEL_16:
LABEL_17:

  return v8;
}

- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog
{
  token = [catalog token];
  artworkProperties = [token artworkProperties];
  isValid = [artworkProperties isValid];

  return isValid;
}

+ (id)bestArtworkSizes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B098] valueWithCGSize:{1.79769313e308, 1.79769313e308}];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (MPCMRLegacyRemoteArtworkDataSource)sharedDataSource
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MPCMRLegacyRemoteArtworkDataSource_sharedDataSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDataSource_onceToken != -1)
  {
    dispatch_once(&sharedDataSource_onceToken, block);
  }

  v2 = sharedDataSource___sharedDataSource;

  return v2;
}

uint64_t __54__MPCMRLegacyRemoteArtworkDataSource_sharedDataSource__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedDataSource___sharedDataSource;
  sharedDataSource___sharedDataSource = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end