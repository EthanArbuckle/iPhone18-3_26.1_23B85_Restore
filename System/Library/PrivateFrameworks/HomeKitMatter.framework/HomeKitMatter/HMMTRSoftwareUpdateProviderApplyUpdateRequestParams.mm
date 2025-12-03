@interface HMMTRSoftwareUpdateProviderApplyUpdateRequestParams
- (HMMTRSoftwareUpdateProviderApplyUpdateRequestParams)initWithUpdateToken:(id)token softwareVersion:(id)version;
@end

@implementation HMMTRSoftwareUpdateProviderApplyUpdateRequestParams

- (HMMTRSoftwareUpdateProviderApplyUpdateRequestParams)initWithUpdateToken:(id)token softwareVersion:(id)version
{
  tokenCopy = token;
  versionCopy = version;
  v12.receiver = self;
  v12.super_class = HMMTRSoftwareUpdateProviderApplyUpdateRequestParams;
  v9 = [(HMMTRSoftwareUpdateProviderApplyUpdateRequestParams *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updateToken, token);
    objc_storeStrong(&v10->_softwareVersion, version);
  }

  return v10;
}

@end