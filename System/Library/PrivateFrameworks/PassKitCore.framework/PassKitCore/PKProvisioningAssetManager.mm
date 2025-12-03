@interface PKProvisioningAssetManager
+ (id)sharedInstance;
- (PKProvisioningAssetManager)init;
- (id)_assetNameWithScreenScalingSuffix:(id)suffix;
- (id)_carPairingImageFromBundle:(id)bundle darkMode:(BOOL)mode;
- (id)provisioningString:(id)string templateIdentifier:(id)identifier;
- (void)_defaultCarPairingImage:(unint64_t)image darkMode:(BOOL)mode completion:(id)completion;
- (void)_defaultCardArtwork:(id)artwork;
- (void)carPairingImageForRadioTechnology:(unint64_t)technology templateIdentifier:(id)identifier darkMode:(BOOL)mode completion:(id)completion;
- (void)cardArtworkForTemplateIdentifier:(id)identifier completion:(id)completion;
@end

@implementation PKProvisioningAssetManager

+ (id)sharedInstance
{
  if (_MergedGlobals_215 != -1)
  {
    dispatch_once(&_MergedGlobals_215, &__block_literal_global_77);
  }

  v3 = qword_1ED6D19D8;

  return v3;
}

void __44__PKProvisioningAssetManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKProvisioningAssetManager);
  v1 = qword_1ED6D19D8;
  qword_1ED6D19D8 = v0;
}

- (PKProvisioningAssetManager)init
{
  v6.receiver = self;
  v6.super_class = PKProvisioningAssetManager;
  v2 = [(PKProvisioningAssetManager *)&v6 init];
  if (v2)
  {
    v3 = +[PKMobileAssetManager sharedInstance];
    v4 = _mobileAssetManager;
    _mobileAssetManager = v3;
  }

  return v2;
}

- (void)carPairingImageForRadioTechnology:(unint64_t)technology templateIdentifier:(id)identifier darkMode:(BOOL)mode completion:(id)completion
{
  modeCopy = mode;
  identifierCopy = identifier;
  completionCopy = completion;
  if (identifierCopy)
  {
    if ((technology & 2) != 0)
    {
      v12 = @"CarPairingUWB";
    }

    else
    {
      v12 = @"CarPairingNFC";
    }

    v13 = [(__CFString *)v12 stringByAppendingString:@"_"];
    v14 = _mobileAssetManager;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __103__PKProvisioningAssetManager_carPairingImageForRadioTechnology_templateIdentifier_darkMode_completion___block_invoke;
    v15[3] = &unk_1E79D0138;
    v15[4] = self;
    v18 = modeCopy;
    v16 = completionCopy;
    technologyCopy = technology;
    [v14 dynamicAssetWithIdentifier:identifierCopy mappedIdentifierPrefix:v13 parameters:0 timeout:10 completion:v15];
  }

  else
  {
    [(PKProvisioningAssetManager *)self _defaultCarPairingImage:technology darkMode:modeCopy completion:completionCopy];
  }
}

void __103__PKProvisioningAssetManager_carPairingImageForRadioTechnology_templateIdentifier_darkMode_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _carPairingImageFromBundle:a2 darkMode:*(a1 + 56)];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _defaultCarPairingImage:*(a1 + 48) darkMode:*(a1 + 56) completion:*(a1 + 40)];
  }
}

- (void)cardArtworkForTemplateIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  if (identifier)
  {
    identifier = [@"CardArtwork" stringByAppendingFormat:@"_%@", identifier];
    v8 = _mobileAssetManager;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__PKProvisioningAssetManager_cardArtworkForTemplateIdentifier_completion___block_invoke;
    v9[3] = &unk_1E79C84E0;
    v9[4] = self;
    v10 = completionCopy;
    [v8 dynamicAssetWithIdentifier:identifier parameters:0 timeout:10 completion:v9];
  }

  else
  {
    [(PKProvisioningAssetManager *)self _defaultCardArtwork:completionCopy];
  }
}

void __74__PKProvisioningAssetManager_cardArtworkForTemplateIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 URLForResource:@"image" withExtension:@"png"];
    v4 = *(a1 + 40);
    if (v4)
    {
      v7 = v3;
      (*(v4 + 16))();
      v3 = v7;
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 _defaultCardArtwork:v6];
  }
}

- (id)provisioningString:(id)string templateIdentifier:(id)identifier
{
  stringCopy = string;
  identifierCopy = identifier;
  if (stringCopy)
  {
    v7 = [_mobileAssetManager cachedStringsBundleWithIdentifier:@"Provisioning"];
    if (!identifierCopy || ([(NSString *)stringCopy stringByAppendingFormat:@"_%@", identifierCopy], v8 = objc_claimAutoreleasedReturnValue(), PKLocalizedStringInMobileAssetsStringsBundle(v8, v7, 0), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
    {
      v9 = PKLocalizedStringInMobileAssetsStringsBundle(stringCopy, v7, 0);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_defaultCarPairingImage:(unint64_t)image darkMode:(BOOL)mode completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  v9 = _mobileAssetManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PKProvisioningAssetManager__defaultCarPairingImage_darkMode_completion___block_invoke;
  v12[3] = &unk_1E79D0160;
  modeCopy = mode;
  if ((imageCopy & 2) != 0)
  {
    v10 = @"CarPairingUWB";
  }

  else
  {
    v10 = @"CarPairingNFC";
  }

  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [v9 dynamicAssetWithIdentifier:v10 parameters:0 timeout:10 completion:v12];
}

void __74__PKProvisioningAssetManager__defaultCarPairingImage_darkMode_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _carPairingImageFromBundle:a2 darkMode:*(a1 + 48)];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))();
    v3 = v5;
  }
}

- (void)_defaultCardArtwork:(id)artwork
{
  artworkCopy = artwork;
  v4 = _mobileAssetManager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PKProvisioningAssetManager__defaultCardArtwork___block_invoke;
  v6[3] = &unk_1E79D0188;
  v7 = artworkCopy;
  v5 = artworkCopy;
  [v4 dynamicAssetWithIdentifier:@"GenericCardArtwork" parameters:0 timeout:10 completion:v6];
}

void __50__PKProvisioningAssetManager__defaultCardArtwork___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [v9 URLForResource:@"image" withExtension:@"png"];
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }
}

- (id)_carPairingImageFromBundle:(id)bundle darkMode:(BOOL)mode
{
  if (bundle)
  {
    if (mode)
    {
      v5 = @"dark";
    }

    else
    {
      v5 = @"light";
    }

    bundleCopy = bundle;
    v7 = [(PKProvisioningAssetManager *)self _assetNameWithScreenScalingSuffix:v5];
    v8 = [bundleCopy URLForResource:v7 withExtension:@"png"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_assetNameWithScreenScalingSuffix:(id)suffix
{
  suffixCopy = suffix;
  v4 = PKScreenScale();
  v5 = @"@2x";
  if (v4 < 2.0)
  {
    v5 = @"@1x";
  }

  if (v4 >= 3.0)
  {
    v6 = @"@3x";
  }

  else
  {
    v6 = v5;
  }

  v7 = [suffixCopy stringByAppendingString:v6];

  return v7;
}

@end