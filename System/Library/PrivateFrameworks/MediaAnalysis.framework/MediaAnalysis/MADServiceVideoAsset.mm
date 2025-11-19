@interface MADServiceVideoAsset
+ (MADServiceVideoAsset)assetWithPhotosAsset:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5;
+ (MADServiceVideoAsset)assetWithURL:(id)a3 identifier:(id)a4 clientBundleID:(id)a5 clientTeamID:(id)a6;
+ (void)unimplementedExceptionForMethodName:(id)a3;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)trimTimeRange;
- (MADServiceVideoAsset)initWithClientBundleID:(id)a3 clientTeamID:(id)a4;
- (void)persistToPhotosWithCompactSCSensitivityAnalysis:(int64_t)a3 screenTimeDeviceImageSensitivity:(signed __int16)a4;
@end

@implementation MADServiceVideoAsset

- (MADServiceVideoAsset)initWithClientBundleID:(id)a3 clientTeamID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MADServiceVideoAsset;
  v9 = [(MADServiceVideoAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientBundleID, a3);
    objc_storeStrong(&v10->_clientTeamID, a4);
  }

  return v10;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)trimTimeRange
{
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v4;
  *&retstr->var1.var1 = *(v3 + 32);
  return self;
}

+ (MADServiceVideoAsset)assetWithURL:(id)a3 identifier:(id)a4 clientBundleID:(id)a5 clientTeamID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[MADServiceURLVideoAsset alloc] initWithURL:v12 identifier:v11 clientBundleID:v10 clientTeamID:v9];

  return v13;
}

+ (MADServiceVideoAsset)assetWithPhotosAsset:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MADServicePhotosVideoAsset alloc] initWithPhotosAsset:v9 clientBundleID:v8 clientTeamID:v7];

  return v10;
}

+ (void)unimplementedExceptionForMethodName:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF30];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADAVAssetResourceLoaderDelegate %@] should not be called", v3];
  v6 = [v4 exceptionWithName:@"NotImplementedException" reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)persistToPhotosWithCompactSCSensitivityAnalysis:(int64_t)a3 screenTimeDeviceImageSensitivity:(signed __int16)a4
{
  v4 = objc_opt_class();

  [v4 unimplementedExceptionForMethodName:@"persistToPhotosWithCompactSCSensitivityAnalysis:screenTimeDeviceImageSensitivity:"];
}

@end