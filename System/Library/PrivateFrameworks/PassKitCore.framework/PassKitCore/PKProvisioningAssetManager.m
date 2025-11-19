@interface PKProvisioningAssetManager
+ (id)sharedInstance;
- (PKProvisioningAssetManager)init;
- (id)_assetNameWithScreenScalingSuffix:(id)a3;
- (id)_carPairingImageFromBundle:(id)a3 darkMode:(BOOL)a4;
- (id)provisioningString:(id)a3 templateIdentifier:(id)a4;
- (void)_defaultCarPairingImage:(unint64_t)a3 darkMode:(BOOL)a4 completion:(id)a5;
- (void)_defaultCardArtwork:(id)a3;
- (void)carPairingImageForRadioTechnology:(unint64_t)a3 templateIdentifier:(id)a4 darkMode:(BOOL)a5 completion:(id)a6;
- (void)cardArtworkForTemplateIdentifier:(id)a3 completion:(id)a4;
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

- (void)carPairingImageForRadioTechnology:(unint64_t)a3 templateIdentifier:(id)a4 darkMode:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  if (v10)
  {
    if ((a3 & 2) != 0)
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
    v18 = v7;
    v16 = v11;
    v17 = a3;
    [v14 dynamicAssetWithIdentifier:v10 mappedIdentifierPrefix:v13 parameters:0 timeout:10 completion:v15];
  }

  else
  {
    [(PKProvisioningAssetManager *)self _defaultCarPairingImage:a3 darkMode:v7 completion:v11];
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

- (void)cardArtworkForTemplateIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [@"CardArtwork" stringByAppendingFormat:@"_%@", a3];
    v8 = _mobileAssetManager;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__PKProvisioningAssetManager_cardArtworkForTemplateIdentifier_completion___block_invoke;
    v9[3] = &unk_1E79C84E0;
    v9[4] = self;
    v10 = v6;
    [v8 dynamicAssetWithIdentifier:v7 parameters:0 timeout:10 completion:v9];
  }

  else
  {
    [(PKProvisioningAssetManager *)self _defaultCardArtwork:v6];
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

- (id)provisioningString:(id)a3 templateIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [_mobileAssetManager cachedStringsBundleWithIdentifier:@"Provisioning"];
    if (!v6 || ([(NSString *)v5 stringByAppendingFormat:@"_%@", v6], v8 = objc_claimAutoreleasedReturnValue(), PKLocalizedStringInMobileAssetsStringsBundle(v8, v7, 0), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
    {
      v9 = PKLocalizedStringInMobileAssetsStringsBundle(v5, v7, 0);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_defaultCarPairingImage:(unint64_t)a3 darkMode:(BOOL)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = _mobileAssetManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PKProvisioningAssetManager__defaultCarPairingImage_darkMode_completion___block_invoke;
  v12[3] = &unk_1E79D0160;
  v14 = a4;
  if ((v6 & 2) != 0)
  {
    v10 = @"CarPairingUWB";
  }

  else
  {
    v10 = @"CarPairingNFC";
  }

  v12[4] = self;
  v13 = v8;
  v11 = v8;
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

- (void)_defaultCardArtwork:(id)a3
{
  v3 = a3;
  v4 = _mobileAssetManager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PKProvisioningAssetManager__defaultCardArtwork___block_invoke;
  v6[3] = &unk_1E79D0188;
  v7 = v3;
  v5 = v3;
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

- (id)_carPairingImageFromBundle:(id)a3 darkMode:(BOOL)a4
{
  if (a3)
  {
    if (a4)
    {
      v5 = @"dark";
    }

    else
    {
      v5 = @"light";
    }

    v6 = a3;
    v7 = [(PKProvisioningAssetManager *)self _assetNameWithScreenScalingSuffix:v5];
    v8 = [v6 URLForResource:v7 withExtension:@"png"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_assetNameWithScreenScalingSuffix:(id)a3
{
  v3 = a3;
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

  v7 = [v3 stringByAppendingString:v6];

  return v7;
}

@end