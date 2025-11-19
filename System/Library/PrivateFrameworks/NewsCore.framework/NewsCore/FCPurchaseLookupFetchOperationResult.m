@interface FCPurchaseLookupFetchOperationResult
- (FCPurchaseLookupFetchOperationResult)initWithChannelIDsByPurchaseID:(id)a3 bundleChannelIDsByPurchaseID:(id)a4 bundleChannelIDsVersion:(id)a5 error:(id)a6;
@end

@implementation FCPurchaseLookupFetchOperationResult

- (FCPurchaseLookupFetchOperationResult)initWithChannelIDsByPurchaseID:(id)a3 bundleChannelIDsByPurchaseID:(id)a4 bundleChannelIDsVersion:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = FCPurchaseLookupFetchOperationResult;
  v14 = [(FCPurchaseLookupFetchOperationResult *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    channelIDsByPurchaseID = v14->_channelIDsByPurchaseID;
    v14->_channelIDsByPurchaseID = v15;

    v17 = [v11 copy];
    bundleChannelIDsByPurchaseID = v14->_bundleChannelIDsByPurchaseID;
    v14->_bundleChannelIDsByPurchaseID = v17;

    v19 = [v12 copy];
    bundleChannelIDsVersion = v14->_bundleChannelIDsVersion;
    v14->_bundleChannelIDsVersion = v19;

    v21 = [v13 copy];
    error = v14->_error;
    v14->_error = v21;
  }

  return v14;
}

@end