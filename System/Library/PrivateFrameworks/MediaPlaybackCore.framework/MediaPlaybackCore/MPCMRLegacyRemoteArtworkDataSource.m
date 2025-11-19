@interface MPCMRLegacyRemoteArtworkDataSource
+ (MPCMRLegacyRemoteArtworkDataSource)sharedDataSource;
+ (id)bestArtworkSizes;
- (BOOL)areRepresentationsAvailableForCatalog:(id)a3;
- (id)_urlForCatalog:(id)a3 size:(CGSize)a4;
- (id)requestForCatalog:(id)a3 size:(CGSize)a4;
- (id)supportedSizesForCatalog:(id)a3;
- (void)getExportableArtworkPropertiesForCatalog:(id)a3 completionHandler:(id)a4;
@end

@implementation MPCMRLegacyRemoteArtworkDataSource

- (void)getExportableArtworkPropertiesForCatalog:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7 = [a3 token];
  v6 = [v7 artworkProperties];
  v5[2](v5, v6, 0);
}

- (id)requestForCatalog:(id)a3 size:(CGSize)a4
{
  v4 = [(MPCMRLegacyRemoteArtworkDataSource *)self _urlForCatalog:a3 size:a4.width, a4.height];
  v5 = [MEMORY[0x1E696AF68] requestWithURL:v4 cachePolicy:0 timeoutInterval:60.0];

  return v5;
}

- (id)_urlForCatalog:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
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

  v13 = [v6 token];
  v14 = [v13 artworkProperties];
  v15 = [v14 artworkInfo];

  v16 = [v15 artworkURLWithSize:*MEMORY[0x1E69E4240] cropStyle:*MEMORY[0x1E69E4268] format:MSVDeviceSupportsExtendedColorDisplay() preferP3ColorSpace:{width, height}];

  return v16;
}

- (id)supportedSizesForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = [v3 artworkProperties];
  v5 = [v4 artworkInfo];
  v6 = [v5 sizeInfo];

  v7 = [v6 type];
  if (v7 == 2)
  {
    v19 = [v6 supportedSizes];
    if ([v19 count])
    {
      v20 = [v6 hasMaxSupportedSize];

      if (v20)
      {
        v21 = [v6 supportedSizes];
        [v6 maxSupportedSize];
        v14 = _MPCRemotePlayerArtworkDataSourceValidSupportedSizes(v21, v22, v23);

        if ([v14 count])
        {
          v24 = v14;
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

  if (v7 != 1 || ![v6 hasMaxSupportedSize])
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E69704A8] systemConfiguration];
  v10 = [v3 artworkProperties];
  v11 = [v10 mediaType];
  v12 = [v3 artworkProperties];
  v13 = [v9 supportedSizesForMediaType:v11 artworkType:{objc_msgSend(v12, "mediaLibraryArtworkType")}];
  v14 = [v13 allObjects];

  [v6 maxSupportedSize];
  v17 = _MPCRemotePlayerArtworkDataSourceValidSupportedSizes(v14, v15, v16);
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

- (BOOL)areRepresentationsAvailableForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = [v3 artworkProperties];
  v5 = [v4 isValid];

  return v5;
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
  block[4] = a1;
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