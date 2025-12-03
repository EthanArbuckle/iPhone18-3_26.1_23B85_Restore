@interface HMMTRSoftwareUpdateProviderQueryResponseParams
- (HMMTRSoftwareUpdateProviderQueryResponseParams)initWithStatus:(id)status delayedActionTime:(id)time imageURI:(id)i softwareVersion:(id)version softwareVersionString:(id)string updateToken:(id)token userConsentNeeded:(id)needed metadataForRequestor:(id)self0;
@end

@implementation HMMTRSoftwareUpdateProviderQueryResponseParams

- (HMMTRSoftwareUpdateProviderQueryResponseParams)initWithStatus:(id)status delayedActionTime:(id)time imageURI:(id)i softwareVersion:(id)version softwareVersionString:(id)string updateToken:(id)token userConsentNeeded:(id)needed metadataForRequestor:(id)self0
{
  statusCopy = status;
  timeCopy = time;
  iCopy = i;
  versionCopy = version;
  stringCopy = string;
  tokenCopy = token;
  neededCopy = needed;
  requestorCopy = requestor;
  v28.receiver = self;
  v28.super_class = HMMTRSoftwareUpdateProviderQueryResponseParams;
  v19 = [(HMMTRSoftwareUpdateProviderQueryResponseParams *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_status, status);
    objc_storeStrong(&v20->_delayedActionTime, time);
    objc_storeStrong(&v20->_imageURI, i);
    objc_storeStrong(&v20->_softwareVersion, version);
    objc_storeStrong(&v20->_softwareVersionString, string);
    objc_storeStrong(&v20->_updateToken, token);
    objc_storeStrong(&v20->_userConsentNeeded, needed);
    objc_storeStrong(&v20->_metadataForRequestor, requestor);
  }

  return v20;
}

@end