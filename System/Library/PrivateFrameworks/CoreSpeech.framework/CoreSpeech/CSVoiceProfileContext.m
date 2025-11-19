@interface CSVoiceProfileContext
- (CSVoiceProfileContext)initWithSharedSiriId:(id)a3 languageCode:(id)a4 productCategory:(id)a5 version:(id)a6 sharedHomeId:(id)a7 userName:(id)a8;
@end

@implementation CSVoiceProfileContext

- (CSVoiceProfileContext)initWithSharedSiriId:(id)a3 languageCode:(id)a4 productCategory:(id)a5 version:(id)a6 sharedHomeId:(id)a7 userName:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = CSVoiceProfileContext;
  v18 = [(CSVoiceProfileContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_profileId, a3);
    objc_storeStrong(&v19->_languageCode, a4);
    objc_storeStrong(&v19->_productCategory, a5);
    objc_storeStrong(&v19->_version, a6);
    objc_storeStrong(&v19->_homeId, a7);
    objc_storeStrong(&v19->_userName, a8);
  }

  return v19;
}

@end