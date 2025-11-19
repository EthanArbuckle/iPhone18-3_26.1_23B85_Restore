@interface HMMTRSoftwareUpdateProviderApplyUpdateRequestParams
- (HMMTRSoftwareUpdateProviderApplyUpdateRequestParams)initWithUpdateToken:(id)a3 softwareVersion:(id)a4;
@end

@implementation HMMTRSoftwareUpdateProviderApplyUpdateRequestParams

- (HMMTRSoftwareUpdateProviderApplyUpdateRequestParams)initWithUpdateToken:(id)a3 softwareVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMTRSoftwareUpdateProviderApplyUpdateRequestParams;
  v9 = [(HMMTRSoftwareUpdateProviderApplyUpdateRequestParams *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updateToken, a3);
    objc_storeStrong(&v10->_softwareVersion, a4);
  }

  return v10;
}

@end