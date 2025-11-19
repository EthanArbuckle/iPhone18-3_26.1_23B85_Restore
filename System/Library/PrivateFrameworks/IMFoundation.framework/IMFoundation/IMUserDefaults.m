@interface IMUserDefaults
+ (BOOL)isEngramEnabled;
+ (BOOL)isLiveDeliveryWarmUpEnabled;
+ (BOOL)isWriteBlastDoorPayloadsToDiskEnabled;
+ (BOOL)isWritePushPayloadsToDiskEnabled;
+ (BOOL)shouldDisableFailFastWhenSatelliteIsAvailable;
+ (BOOL)trustAnyCredential;
+ (NSString)phoneNumberValidationPreflightTestData;
+ (NSString)writePushPayloadsToDiskPath;
+ (id)sharedDefaults;
+ (int64_t)phoneNumberValidationMode;
+ (void)setPhoneNumberValidationMode:(int64_t)a3;
+ (void)setPhoneNumberValidationPreflightTestData:(id)a3;
- (id)copyKeyListForAppID:(id)a3;
- (id)copyMultipleForCurrentKeys:(id)a3 appID:(id)a4;
- (id)copyValueForKey:(id)a3 appID:(id)a4;
- (void)setMultiple:(id)a3 remove:(id)a4 appID:(id)a5;
- (void)setValue:(void *)a3 forKey:(id)a4 appID:(id)a5;
- (void)synchronizeAppID:(id)a3;
@end

@implementation IMUserDefaults

+ (id)sharedDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19598CD34;
  block[3] = &unk_1E7438860;
  block[4] = a1;
  if (qword_1ED517358 != -1)
  {
    dispatch_once(&qword_1ED517358, block);
  }

  v2 = qword_1ED517350;

  return v2;
}

+ (BOOL)isWritePushPayloadsToDiskEnabled
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"WritePushPayloadsToDisk");

  return v6;
}

+ (BOOL)shouldDisableFailFastWhenSatelliteIsAvailable
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"ShouldDisableFailFastWhenSatelliteIsAvailable");

  return v6;
}

+ (BOOL)isEngramEnabled
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_integerForKey_(v4, v5, @"EnableEngramVersion") == 2;

  return v6;
}

+ (void)setPhoneNumberValidationMode:(int64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = objc_msgSend_initWithSuiteName_(v4, v5, @"com.apple.ids");
  objc_msgSend_setInteger_forKey_(v7, v6, a3, @"PhoneNumberValidationMode");
}

+ (int64_t)phoneNumberValidationMode
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_integerForKey_(v4, v5, @"PhoneNumberValidationMode");

  return v6;
}

+ (void)setPhoneNumberValidationPreflightTestData:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 alloc];
  v8 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.ids");
  objc_msgSend_setObject_forKey_(v8, v7, v4, @"PreflightTestData");
}

+ (NSString)phoneNumberValidationPreflightTestData
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_stringForKey_(v4, v5, @"PreflightTestData");

  return v6;
}

+ (BOOL)isLiveDeliveryWarmUpEnabled
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"EnableLiveDeliveryWarmUp");

  return v6;
}

+ (BOOL)trustAnyCredential
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"TrustAnyCredential");

  return v6;
}

+ (BOOL)isWriteBlastDoorPayloadsToDiskEnabled
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"WriteBlastDoorPayloadsToDisk");

  return v6;
}

+ (NSString)writePushPayloadsToDiskPath
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_stringForKey_(v4, v5, @"WritePushPayloadsToDiskPath");

  return v6;
}

- (void)setValue:(void *)a3 forKey:(id)a4 appID:(id)a5
{
  v5 = *MEMORY[0x1E695E8B8];
  v6 = *MEMORY[0x1E695E898];
  MEMORY[0x1EEE66B58](self, sel_setValue_forKey_applicationID_userName_hostName_, a3);
}

- (void)setMultiple:(id)a3 remove:(id)a4 appID:(id)a5
{
  v5 = *MEMORY[0x1E695E8B8];
  v6 = *MEMORY[0x1E695E898];
  MEMORY[0x1EEE66B58](self, sel_setMultiple_remove_applicationID_userName_hostName_, a3);
}

- (void)synchronizeAppID:(id)a3
{
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];
  MEMORY[0x1EEE66B58](self, sel_synchronizeApplicationID_userName_hostName_, a3);
}

- (id)copyKeyListForAppID:(id)a3
{
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];
  return MEMORY[0x1EEE66B58](self, sel_copyKeyListForApplicationID_userName_hostName_, a3);
}

- (id)copyMultipleForCurrentKeys:(id)a3 appID:(id)a4
{
  v4 = *MEMORY[0x1E695E8B8];
  v5 = *MEMORY[0x1E695E898];
  return MEMORY[0x1EEE66B58](self, sel_copyMultipleForCurrentKeys_applicationID_userName_hostName_, a3);
}

- (id)copyValueForKey:(id)a3 appID:(id)a4
{
  v4 = *MEMORY[0x1E695E8B8];
  v5 = *MEMORY[0x1E695E898];
  return MEMORY[0x1EEE66B58](self, sel_copyValueForKey_applicationID_userName_hostName_, a3);
}

@end