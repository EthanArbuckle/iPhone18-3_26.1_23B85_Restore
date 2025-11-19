@interface HMMTRSoftwareUpdateProviderNotifyUpdateParams
- (HMMTRSoftwareUpdateProviderNotifyUpdateParams)initWithUpdateToken:(id)a3 softwareVersion:(id)a4 didTimeout:(id)a5;
- (HMMTRSoftwareUpdateProviderNotifyUpdateParams)initWithUpdateToken:(id)a3 softwareVersion:(id)a4 linkTypeForMetrics:(id)a5 previousSoftwareVersionNumberForMetrics:(id)a6 didTimeout:(id)a7;
@end

@implementation HMMTRSoftwareUpdateProviderNotifyUpdateParams

- (HMMTRSoftwareUpdateProviderNotifyUpdateParams)initWithUpdateToken:(id)a3 softwareVersion:(id)a4 linkTypeForMetrics:(id)a5 previousSoftwareVersionNumberForMetrics:(id)a6 didTimeout:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HMMTRSoftwareUpdateProviderNotifyUpdateParams;
  v17 = [(HMMTRSoftwareUpdateProviderNotifyUpdateParams *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_updateToken, a3);
    objc_storeStrong(&v18->_softwareVersion, a4);
    objc_storeStrong(&v18->_linkTypeForMetrics, a5);
    objc_storeStrong(&v18->_previousSoftwareVersionNumberForMetrics, a6);
    objc_storeStrong(&v18->_didTimeout, a7);
  }

  return v18;
}

- (HMMTRSoftwareUpdateProviderNotifyUpdateParams)initWithUpdateToken:(id)a3 softwareVersion:(id)a4 didTimeout:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMMTRSoftwareUpdateProviderNotifyUpdateParams;
  v12 = [(HMMTRSoftwareUpdateProviderNotifyUpdateParams *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updateToken, a3);
    objc_storeStrong(&v13->_softwareVersion, a4);
    objc_storeStrong(&v13->_didTimeout, a5);
  }

  return v13;
}

@end