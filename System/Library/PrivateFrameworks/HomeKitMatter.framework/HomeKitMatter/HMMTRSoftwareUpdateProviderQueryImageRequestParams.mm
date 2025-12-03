@interface HMMTRSoftwareUpdateProviderQueryImageRequestParams
- (HMMTRSoftwareUpdateProviderQueryImageRequestParams)initWithVendorID:(id)d productId:(id)id softwareVersion:(id)version protocolsSupported:(id)supported hardwareVersion:(id)hardwareVersion location:(id)location requestorCanConsent:(id)consent metadataForProvider:(id)self0;
@end

@implementation HMMTRSoftwareUpdateProviderQueryImageRequestParams

- (HMMTRSoftwareUpdateProviderQueryImageRequestParams)initWithVendorID:(id)d productId:(id)id softwareVersion:(id)version protocolsSupported:(id)supported hardwareVersion:(id)hardwareVersion location:(id)location requestorCanConsent:(id)consent metadataForProvider:(id)self0
{
  dCopy = d;
  idCopy = id;
  versionCopy = version;
  supportedCopy = supported;
  hardwareVersionCopy = hardwareVersion;
  locationCopy = location;
  consentCopy = consent;
  providerCopy = provider;
  v28.receiver = self;
  v28.super_class = HMMTRSoftwareUpdateProviderQueryImageRequestParams;
  v19 = [(HMMTRSoftwareUpdateProviderQueryImageRequestParams *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_vendorId, d);
    objc_storeStrong(&v20->_productId, id);
    objc_storeStrong(&v20->_softwareVersion, version);
    objc_storeStrong(&v20->_protocolsSupported, supported);
    objc_storeStrong(&v20->_hardwareVersion, hardwareVersion);
    objc_storeStrong(&v20->_location, location);
    objc_storeStrong(&v20->_requestorCanConsent, consent);
    objc_storeStrong(&v20->_metadataForProvider, provider);
  }

  return v20;
}

@end