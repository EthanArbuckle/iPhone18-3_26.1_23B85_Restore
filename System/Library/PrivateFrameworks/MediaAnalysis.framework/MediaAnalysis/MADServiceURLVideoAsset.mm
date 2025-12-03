@interface MADServiceURLVideoAsset
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillTime;
- (MADServiceURLVideoAsset)initWithURL:(id)l identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD;
@end

@implementation MADServiceURLVideoAsset

- (MADServiceURLVideoAsset)initWithURL:(id)l identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD
{
  lCopy = l;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = MADServiceURLVideoAsset;
  v13 = [(MADServiceVideoAsset *)&v16 initWithClientBundleID:d clientTeamID:iD];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_url, l);
    objc_storeStrong(&v14->_identifier, identifier);
  }

  return v14;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillTime
{
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E6987E28] assetWithURL:self->_url];
  v7 = v6;
  if (v6)
  {
    [v6 vcp_livePhotoStillDisplayTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return result;
}

@end