@interface ENPersistentTemporaryExposureKey
- (ENPersistentTemporaryExposureKey)initWithTemporaryExposureKey:(id)key appBundleIdentifier:(id)identifier regionCountryCode:(id)code;
- (id)description;
@end

@implementation ENPersistentTemporaryExposureKey

- (ENPersistentTemporaryExposureKey)initWithTemporaryExposureKey:(id)key appBundleIdentifier:(id)identifier regionCountryCode:(id)code
{
  keyCopy = key;
  identifierCopy = identifier;
  codeCopy = code;
  v19.receiver = self;
  v19.super_class = ENPersistentTemporaryExposureKey;
  v12 = [(ENPersistentTemporaryExposureKey *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    v14 = [identifierCopy copy];
    appBundleIdentifier = v13->_appBundleIdentifier;
    v13->_appBundleIdentifier = v14;

    v16 = [codeCopy copy];
    regionCountryCode = v13->_regionCountryCode;
    v13->_regionCountryCode = v16;

    v13->_originalReportType = [keyCopy diagnosisReportType];
    v13->_originalVariantOfConcernType = [keyCopy variantOfConcernType];
  }

  return v13;
}

- (id)description
{
  v3 = objc_opt_class();
  v9 = NSStringFromClass(v3);
  NSAppendPrintF_safe();
  v4 = 0;

  if (self->_appBundleIdentifier)
  {
    appBundleIdentifier = self->_appBundleIdentifier;
    NSAppendPrintF_safe();
    v5 = v4;

    v4 = v5;
  }

  if (self->_regionCountryCode)
  {
    regionCountryCode = self->_regionCountryCode;
    NSAppendPrintF_safe();
    v6 = v4;

    v4 = v6;
  }

  key = self->_key;
  NSAppendPrintF_safe();
  v7 = v4;

  return v4;
}

@end