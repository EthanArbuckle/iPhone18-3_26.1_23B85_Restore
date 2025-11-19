@interface HMMTRSoftwareUpdateProviderQueryResponseParams
- (HMMTRSoftwareUpdateProviderQueryResponseParams)initWithStatus:(id)a3 delayedActionTime:(id)a4 imageURI:(id)a5 softwareVersion:(id)a6 softwareVersionString:(id)a7 updateToken:(id)a8 userConsentNeeded:(id)a9 metadataForRequestor:(id)a10;
@end

@implementation HMMTRSoftwareUpdateProviderQueryResponseParams

- (HMMTRSoftwareUpdateProviderQueryResponseParams)initWithStatus:(id)a3 delayedActionTime:(id)a4 imageURI:(id)a5 softwareVersion:(id)a6 softwareVersionString:(id)a7 updateToken:(id)a8 userConsentNeeded:(id)a9 metadataForRequestor:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = HMMTRSoftwareUpdateProviderQueryResponseParams;
  v19 = [(HMMTRSoftwareUpdateProviderQueryResponseParams *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_status, a3);
    objc_storeStrong(&v20->_delayedActionTime, a4);
    objc_storeStrong(&v20->_imageURI, a5);
    objc_storeStrong(&v20->_softwareVersion, a6);
    objc_storeStrong(&v20->_softwareVersionString, a7);
    objc_storeStrong(&v20->_updateToken, a8);
    objc_storeStrong(&v20->_userConsentNeeded, a9);
    objc_storeStrong(&v20->_metadataForRequestor, a10);
  }

  return v20;
}

@end