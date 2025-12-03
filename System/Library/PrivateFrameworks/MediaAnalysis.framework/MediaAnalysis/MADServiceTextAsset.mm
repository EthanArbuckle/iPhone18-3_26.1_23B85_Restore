@interface MADServiceTextAsset
+ (MADServiceTextAsset)assetWithTextInputs:(id)inputs clientBundleID:(id)d clientTeamID:(id)iD;
- (MADServiceTextAsset)initWithTextInputs:(id)inputs clientBundleID:(id)d clientTeamID:(id)iD;
@end

@implementation MADServiceTextAsset

- (MADServiceTextAsset)initWithTextInputs:(id)inputs clientBundleID:(id)d clientTeamID:(id)iD
{
  inputsCopy = inputs;
  dCopy = d;
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = MADServiceTextAsset;
  v12 = [(MADServiceTextAsset *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_textInputs, inputs);
    objc_storeStrong(&v13->_clientBundleID, d);
    objc_storeStrong(&v13->_clientTeamID, iD);
  }

  return v13;
}

+ (MADServiceTextAsset)assetWithTextInputs:(id)inputs clientBundleID:(id)d clientTeamID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  inputsCopy = inputs;
  v10 = [objc_alloc(objc_opt_class()) initWithTextInputs:inputsCopy clientBundleID:dCopy clientTeamID:iDCopy];

  return v10;
}

@end