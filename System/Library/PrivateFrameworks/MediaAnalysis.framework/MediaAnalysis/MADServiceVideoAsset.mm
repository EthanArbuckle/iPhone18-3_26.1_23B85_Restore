@interface MADServiceVideoAsset
+ (MADServiceVideoAsset)assetWithPhotosAsset:(id)asset clientBundleID:(id)d clientTeamID:(id)iD;
+ (MADServiceVideoAsset)assetWithURL:(id)l identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD;
+ (void)unimplementedExceptionForMethodName:(id)name;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)trimTimeRange;
- (MADServiceVideoAsset)initWithClientBundleID:(id)d clientTeamID:(id)iD;
- (void)persistToPhotosWithCompactSCSensitivityAnalysis:(int64_t)analysis screenTimeDeviceImageSensitivity:(signed __int16)sensitivity;
@end

@implementation MADServiceVideoAsset

- (MADServiceVideoAsset)initWithClientBundleID:(id)d clientTeamID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = MADServiceVideoAsset;
  v9 = [(MADServiceVideoAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientBundleID, d);
    objc_storeStrong(&v10->_clientTeamID, iD);
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

+ (MADServiceVideoAsset)assetWithURL:(id)l identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  identifierCopy = identifier;
  lCopy = l;
  v13 = [[MADServiceURLVideoAsset alloc] initWithURL:lCopy identifier:identifierCopy clientBundleID:dCopy clientTeamID:iDCopy];

  return v13;
}

+ (MADServiceVideoAsset)assetWithPhotosAsset:(id)asset clientBundleID:(id)d clientTeamID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  assetCopy = asset;
  v10 = [[MADServicePhotosVideoAsset alloc] initWithPhotosAsset:assetCopy clientBundleID:dCopy clientTeamID:iDCopy];

  return v10;
}

+ (void)unimplementedExceptionForMethodName:(id)name
{
  nameCopy = name;
  v4 = MEMORY[0x1E695DF30];
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADAVAssetResourceLoaderDelegate %@] should not be called", nameCopy];
  v6 = [v4 exceptionWithName:@"NotImplementedException" reason:nameCopy userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)persistToPhotosWithCompactSCSensitivityAnalysis:(int64_t)analysis screenTimeDeviceImageSensitivity:(signed __int16)sensitivity
{
  v4 = objc_opt_class();

  [v4 unimplementedExceptionForMethodName:@"persistToPhotosWithCompactSCSensitivityAnalysis:screenTimeDeviceImageSensitivity:"];
}

@end