@interface PKPaymentHeroImageController
+ (CGSize)cardArtSizeForWatchViewSize:(CGSize)size;
+ (id)defaultImages;
- (CGSize)cardArtSizeForSize:(CGSize)size;
- (NSArray)featuredImages;
- (NSString)primaryImageIdentifier;
- (PKPaymentHeroImageController)initWithManifest:(id)manifest webService:(id)service;
- (PKPaymentHeroImageControllerDelegate)delegate;
- (id)featuredDefaultImages;
- (id)featuredImageIdentifiers;
- (id)filterImages:(id)images;
- (void)downloadImages:(id)images;
@end

@implementation PKPaymentHeroImageController

+ (id)defaultImages
{
  v14 = *MEMORY[0x1E69E9840];
  v12[0] = xmmword_1ADB789F0;
  v12[1] = xmmword_1ADB9A870;
  v13 = 11;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PKPaymentHeroImageController_defaultImages__block_invoke;
  aBlock[3] = &unk_1E79D6560;
  v3 = v2;
  v11 = v3;
  v4 = _Block_copy(aBlock);
  for (i = 0; i != 40; i += 8)
  {
    v6 = *(v12 + i);
    v7 = PKPaymentNetworkNameForPaymentCredentialType(v6);
    v4[2](v4, v7, v6);
  }

  v4[2](v4, @"AppleCard", 0);
  v4[2](v4, @"AppleCash", 0);
  v8 = [v3 copy];

  return v8;
}

void __45__PKPaymentHeroImageController_defaultImages__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HeroCard_%@", v17];
  v6 = PKPassKitCoreBundle();
  v7 = [PKImage URLForImageNamed:v5 inBundle:v6 scale:0];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v7 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [PKPaymentHeroImage alloc];
      v13 = MEMORY[0x1E695DEF0];
      v14 = [v7 path];
      v15 = [v13 dataWithContentsOfFile:v14];
      v16 = [(PKPaymentHeroImage *)v12 initWithIdentifier:v17 imageData:v15 credentialType:a3];
      [v11 addObject:v16];
    }
  }
}

- (PKPaymentHeroImageController)initWithManifest:(id)manifest webService:(id)service
{
  manifestCopy = manifest;
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = PKPaymentHeroImageController;
  v9 = [(PKPaymentHeroImageController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manifest, manifest);
    objc_storeStrong(&v10->_webService, service);
  }

  return v10;
}

- (NSArray)featuredImages
{
  v19 = *MEMORY[0x1E69E9840];
  featuredImageIdentifiers = [(PKPaymentHeroImageController *)self featuredImageIdentifiers];
  images = [(PKPaymentHeroImageManifest *)self->_manifest images];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(featuredImageIdentifiers, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = featuredImageIdentifiers;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [images objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [v5 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)primaryImageIdentifier
{
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  deviceRegion = [targetDevice deviceRegion];

  context = [(PKPaymentWebService *)self->_webService context];
  configuration = [context configuration];
  v7 = [configuration primaryFeaturedNetworkForRegion:deviceRegion];

  return v7;
}

- (id)featuredImageIdentifiers
{
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  deviceRegion = [targetDevice deviceRegion];

  context = [(PKPaymentWebService *)self->_webService context];
  configuration = [context configuration];
  v7 = [configuration paymentSetupFeaturedNetworksForRegion:deviceRegion];

  return v7;
}

- (id)filterImages:(id)images
{
  v20 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = imagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 isSupportedByDevice:{targetDevice, v15}])
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)featuredDefaultImages
{
  v21 = *MEMORY[0x1E69E9840];
  defaultImages = [objc_opt_class() defaultImages];
  featuredImageIdentifiers = [(PKPaymentHeroImageController *)self featuredImageIdentifiers];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(featuredImageIdentifiers, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = defaultImages;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [featuredImageIdentifiers containsObject:identifier];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v14 = [v5 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)downloadImages:(id)images
{
  v20 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  v5 = PKScreenScale();
  v6 = +[PKObjectDownloader sharedImageAssetDownloader];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = imagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 hasCachedImageWithScale:v5] & 1) == 0)
        {
          objc_initWeak(&location, self);
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __47__PKPaymentHeroImageController_downloadImages___block_invoke;
          v12[3] = &unk_1E79D6588;
          objc_copyWeak(&v13, &location);
          v12[4] = v11;
          [v11 downloadImageWithScale:v6 fileDownloader:v12 completion:v5];
          objc_destroyWeak(&v13);
          objc_destroyWeak(&location);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

void __47__PKPaymentHeroImageController_downloadImages___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(WeakRetained + 5);
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 heroImageController:v7 didFinishDownloadingImageData:v5 forImage:*(a1 + 32) error:v9];
    }
  }
}

- (CGSize)cardArtSizeForSize:(CGSize)size
{
  width = size.width;
  if (self->_watchSize)
  {
    height = size.height;
    v5 = objc_opt_class();

    [v5 cardArtSizeForWatchViewSize:{width, height}];
  }

  else if (size.width <= 320.0)
  {
    v7 = 113.0;
    v6 = 180.0;
  }

  else
  {
    IsAvailable = PKPearlIsAvailable();
    v7 = 61.0;
    if (!IsAvailable)
    {
      v7 = 53.0;
    }

    v6 = 85.0;
    if (IsAvailable)
    {
      v6 = 96.0;
    }
  }

  result.height = v7;
  result.width = v6;
  return result;
}

+ (CGSize)cardArtSizeForWatchViewSize:(CGSize)size
{
  v3 = size.width * 0.555;
  v4 = size.height * 0.206;
  result.height = v4;
  result.width = v3;
  return result;
}

- (PKPaymentHeroImageControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end