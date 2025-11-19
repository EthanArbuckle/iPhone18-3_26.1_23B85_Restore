@interface MADServiceTextAsset
+ (MADServiceTextAsset)assetWithTextInputs:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5;
- (MADServiceTextAsset)initWithTextInputs:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5;
@end

@implementation MADServiceTextAsset

- (MADServiceTextAsset)initWithTextInputs:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MADServiceTextAsset;
  v12 = [(MADServiceTextAsset *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_textInputs, a3);
    objc_storeStrong(&v13->_clientBundleID, a4);
    objc_storeStrong(&v13->_clientTeamID, a5);
  }

  return v13;
}

+ (MADServiceTextAsset)assetWithTextInputs:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithTextInputs:v9 clientBundleID:v8 clientTeamID:v7];

  return v10;
}

@end