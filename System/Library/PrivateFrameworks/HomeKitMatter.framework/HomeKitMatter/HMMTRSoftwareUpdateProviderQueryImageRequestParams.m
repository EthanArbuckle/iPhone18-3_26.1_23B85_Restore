@interface HMMTRSoftwareUpdateProviderQueryImageRequestParams
- (HMMTRSoftwareUpdateProviderQueryImageRequestParams)initWithVendorID:(id)a3 productId:(id)a4 softwareVersion:(id)a5 protocolsSupported:(id)a6 hardwareVersion:(id)a7 location:(id)a8 requestorCanConsent:(id)a9 metadataForProvider:(id)a10;
@end

@implementation HMMTRSoftwareUpdateProviderQueryImageRequestParams

- (HMMTRSoftwareUpdateProviderQueryImageRequestParams)initWithVendorID:(id)a3 productId:(id)a4 softwareVersion:(id)a5 protocolsSupported:(id)a6 hardwareVersion:(id)a7 location:(id)a8 requestorCanConsent:(id)a9 metadataForProvider:(id)a10
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
  v28.super_class = HMMTRSoftwareUpdateProviderQueryImageRequestParams;
  v19 = [(HMMTRSoftwareUpdateProviderQueryImageRequestParams *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_vendorId, a3);
    objc_storeStrong(&v20->_productId, a4);
    objc_storeStrong(&v20->_softwareVersion, a5);
    objc_storeStrong(&v20->_protocolsSupported, a6);
    objc_storeStrong(&v20->_hardwareVersion, a7);
    objc_storeStrong(&v20->_location, a8);
    objc_storeStrong(&v20->_requestorCanConsent, a9);
    objc_storeStrong(&v20->_metadataForProvider, a10);
  }

  return v20;
}

@end