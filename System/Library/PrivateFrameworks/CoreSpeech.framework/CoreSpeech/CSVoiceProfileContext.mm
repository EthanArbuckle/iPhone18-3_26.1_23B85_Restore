@interface CSVoiceProfileContext
- (CSVoiceProfileContext)initWithSharedSiriId:(id)id languageCode:(id)code productCategory:(id)category version:(id)version sharedHomeId:(id)homeId userName:(id)name;
@end

@implementation CSVoiceProfileContext

- (CSVoiceProfileContext)initWithSharedSiriId:(id)id languageCode:(id)code productCategory:(id)category version:(id)version sharedHomeId:(id)homeId userName:(id)name
{
  idCopy = id;
  codeCopy = code;
  categoryCopy = category;
  versionCopy = version;
  homeIdCopy = homeId;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = CSVoiceProfileContext;
  v18 = [(CSVoiceProfileContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_profileId, id);
    objc_storeStrong(&v19->_languageCode, code);
    objc_storeStrong(&v19->_productCategory, category);
    objc_storeStrong(&v19->_version, version);
    objc_storeStrong(&v19->_homeId, homeId);
    objc_storeStrong(&v19->_userName, name);
  }

  return v19;
}

@end