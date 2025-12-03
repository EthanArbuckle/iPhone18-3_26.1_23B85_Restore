@interface FCPurchaseLookupFetchOperationResult
- (FCPurchaseLookupFetchOperationResult)initWithChannelIDsByPurchaseID:(id)d bundleChannelIDsByPurchaseID:(id)iD bundleChannelIDsVersion:(id)version error:(id)error;
@end

@implementation FCPurchaseLookupFetchOperationResult

- (FCPurchaseLookupFetchOperationResult)initWithChannelIDsByPurchaseID:(id)d bundleChannelIDsByPurchaseID:(id)iD bundleChannelIDsVersion:(id)version error:(id)error
{
  dCopy = d;
  iDCopy = iD;
  versionCopy = version;
  errorCopy = error;
  v24.receiver = self;
  v24.super_class = FCPurchaseLookupFetchOperationResult;
  v14 = [(FCPurchaseLookupFetchOperationResult *)&v24 init];
  if (v14)
  {
    v15 = [dCopy copy];
    channelIDsByPurchaseID = v14->_channelIDsByPurchaseID;
    v14->_channelIDsByPurchaseID = v15;

    v17 = [iDCopy copy];
    bundleChannelIDsByPurchaseID = v14->_bundleChannelIDsByPurchaseID;
    v14->_bundleChannelIDsByPurchaseID = v17;

    v19 = [versionCopy copy];
    bundleChannelIDsVersion = v14->_bundleChannelIDsVersion;
    v14->_bundleChannelIDsVersion = v19;

    v21 = [errorCopy copy];
    error = v14->_error;
    v14->_error = v21;
  }

  return v14;
}

@end