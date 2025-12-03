@interface MSProtocolUtilities
+ (id)Win32SHA1OfUDID:(id)d;
+ (id)_urlSession;
+ (id)appleIDSession;
+ (id)deviceInfoDictForPersonID:(id)d;
+ (id)retryAfterDateBasedOnRetryAfterHeaderString:(id)string;
+ (void)applyUserDefaultOverridesToResponse:(id)response;
+ (void)fetchMPSStateWithBaseAvailabilityURL:(id)l personID:(id)d originalLibrarySize:(id)size completionBlock:(id)block;
@end

@implementation MSProtocolUtilities

+ (void)applyUserDefaultOverridesToResponse:(id)response
{
  v19 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults stringForKey:@"MPSStateResponseOverride"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 componentsSeparatedByString:@":"];
    if ([v7 count] == 6)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      [responseCopy setHasRetryAfterSeconds:{objc_msgSend(v8, "BOOLValue")}];

      v9 = [v7 objectAtIndexedSubscript:1];
      [responseCopy setRetryAfterSeconds:{objc_msgSend(v9, "integerValue")}];

      v10 = [v7 objectAtIndexedSubscript:2];
      [responseCopy setHasMpsAction:{objc_msgSend(v10, "BOOLValue")}];

      v11 = [v7 objectAtIndexedSubscript:3];
      [responseCopy setMpsAction:{objc_msgSend(v11, "intValue")}];

      v12 = [v7 objectAtIndexedSubscript:4];
      [responseCopy setHasIcplAction:{objc_msgSend(v12, "BOOLValue")}];

      v13 = [v7 objectAtIndexedSubscript:5];
      [responseCopy setIcplAction:{objc_msgSend(v13, "intValue")}];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        v16 = responseCopy;
        v17 = 2114;
        v18 = @"MPSStateResponseOverride";
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Overriding MPS state response to %{public}@ because %{public}@ user default is set", &v15, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invalid override string, unexpected item count: %{public}@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)fetchMPSStateWithBaseAvailabilityURL:(id)l personID:(id)d originalLibrarySize:(id)size completionBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  sizeCopy = size;
  v12 = [l URLByAppendingPathComponent:dCopy];
  v13 = [v12 URLByAppendingPathComponent:@"sharedstreams"];
  v14 = [v13 URLByAppendingPathComponent:@"mpsstate"];

  v47 = v14;
  v15 = [MEMORY[0x277CBAB50] requestWithURL:v14];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  v17 = [self deviceInfoDictForPersonID:dCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = v17;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "deviceInfo %@", buf, 0xCu);
  }

  v18 = [(__CFString *)v17 objectForKey:@"authToken"];
  if (v18)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", dCopy, v18];
    v20 = [v19 dataUsingEncoding:4];
    v21 = MSPCUCreateBase64StringFromData(v20);
    if (v21)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"X-MobileMe-AuthToken %@", v21];
      [dictionary setObject:v22 forKey:@"authorization"];
    }
  }

  v23 = [(__CFString *)v17 objectForKey:@"clientInfo"];
  if (v23)
  {
    [dictionary setObject:v23 forKey:@"X-MMe-Client-Info"];
  }

  v42 = v23;
  v48 = dCopy;
  [dictionary setObject:@"application/protobuf" forKey:@"Content-Type"];
  [(__CFString *)v15 setAllHTTPHeaderFields:dictionary];
  v24 = objc_alloc_init(MPSStateRequest);
  v40 = [(__CFString *)v17 objectForKey:@"UDID"];
  SHA1StringOfUDID = createSHA1StringOfUDID(v40);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = SHA1StringOfUDID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting MPS deviceID: %@", buf, 0xCu);
  }

  v39 = SHA1StringOfUDID;
  [(MPSStateRequest *)v24 setMPSDeviceID:SHA1StringOfUDID];
  v26 = dispatch_group_create();
  v27 = [getCKContainerClass() containerWithIdentifier:@"com.apple.photos.cloud"];
  if (v27)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v61 = v27;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "iCPLContainer is %p", buf, 0xCu);
    }

    dispatch_group_enter(v26);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke;
    v57[3] = &unk_278E91B28;
    v58 = v24;
    v59 = v26;
    [(__CFString *)v27 fetchCurrentDeviceIDWithCompletionHandler:v57];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v61 = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "iCPLContainer is %p", buf, 0xCu);
  }

  v49 = [getCKContainerClass() containerWithIdentifier:@"com.apple.backup.ios"];
  v45 = v17;
  if (v49)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v61 = v49;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "backupContainer is %p", buf, 0xCu);
    }

    dispatch_group_enter(v26);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke_54;
    v54[3] = &unk_278E91B28;
    v55 = v24;
    v56 = v26;
    [(__CFString *)v49 fetchCurrentDeviceIDWithCompletionHandler:v54];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v61 = 0;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "backupContainer is %p", buf, 0xCu);
  }

  v43 = v18;
  v28 = objc_alloc_init(MEMORY[0x277D28A40]);
  backupDeviceUUID = [v28 backupDeviceUUID];
  if (backupDeviceUUID)
  {
    [(MPSStateRequest *)v24 setBackupDeviceUUID:backupDeviceUUID];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = backupDeviceUUID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting Backup deviceUUID: %@", buf, 0xCu);
    }
  }

  v38 = v27;
  backupDeviceUDID = [v28 backupDeviceUDID];
  if (backupDeviceUDID)
  {
    [(MPSStateRequest *)v24 setBackupDeviceUDID:backupDeviceUDID];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = backupDeviceUDID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting Backup deviceUDID: %@", buf, 0xCu);
    }
  }

  v46 = dictionary;
  dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  longLongValue = [sizeCopy longLongValue];

  [(MPSStateRequest *)v24 setOriginalLibrarySize:longLongValue];
  data = [(MPSStateRequest *)v24 data];
  [(__CFString *)v15 setHTTPBody:data];
  [(__CFString *)v15 setHTTPMethod:@"POST"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = v15;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Request %@", buf, 0xCu);
  }

  _urlSession = [objc_opt_class() _urlSession];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke_59;
  v50[3] = &unk_278E91B50;
  v51 = v15;
  v52 = blockCopy;
  v53 = selfCopy;
  v34 = blockCopy;
  v35 = v15;
  v36 = [_urlSession dataTaskWithRequest:v35 completionHandler:v50];

  [v36 resume];
  v37 = *MEMORY[0x277D85DE8];
}

void __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setICPLDeviceID:v5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting iCPL deviceID: %@ Error: %@", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

void __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setBackupDeviceID:v5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting Backup deviceID: %@ Error: %@", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

void __105__MSProtocolUtilities_fetchMPSStateWithBaseAvailabilityURL_personID_originalLibrarySize_completionBlock___block_invoke_59(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Response %@", buf, 0xCu);
    }

    v12 = v8;
    v13 = [(MPSStateResponse *)v12 statusCode];
    if (v13 == 200)
    {
      if (v7)
      {
        v11 = [[MPSStateResponse alloc] initWithData:v7];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v19 = v11;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MPSStateResponse %{public}@", buf, 0xCu);
        }

        [*(a1 + 48) applyUserDefaultOverridesToResponse:v11];
        v10 = 0;
        goto LABEL_16;
      }

      v10 = [MEMORY[0x277CCA9B8] MSErrorWithDomain:@"MSASProtocolErrorDomain" code:4 description:@"Missing data in the response"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Missing data from response", buf, 2u);
      }
    }

    else
    {
      v14 = v13;
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid status code %ld in the response", v13];
      v10 = [MEMORY[0x277CCA9B8] MSErrorWithDomain:@"MSASProtocolErrorDomain" code:4 description:v15];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = v14;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid status code %ld, ignoring", buf, 0xCu);
      }
    }

    v11 = 0;
LABEL_16:

    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    *buf = 138412546;
    v19 = v17;
    v20 = 2112;
    v21 = v9;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Received error for request %@: %@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CCA9B8] MSErrorWithDomain:@"MSASProtocolErrorDomain" code:10 description:@"received an error from server" underlyingError:v9];
  v11 = 0;
LABEL_17:
  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)_urlSession
{
  if (_urlSession_onceToken != -1)
  {
    dispatch_once(&_urlSession_onceToken, &__block_literal_global_18);
  }

  v3 = _urlSession_session;

  return v3;
}

void __34__MSProtocolUtilities__urlSession__block_invoke()
{
  v3 = [MEMORY[0x277CBABC8] defaultSessionConfiguration];
  v0 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"com.apple.mediastream"];
  [v3 set_appleIDContext:v0];

  v1 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v3];
  v2 = _urlSession_session;
  _urlSession_session = v1;
}

+ (id)appleIDSession
{
  if (appleIDSession_onceToken != -1)
  {
    dispatch_once(&appleIDSession_onceToken, &__block_literal_global_6336);
  }

  v3 = appleIDSession_session;

  return v3;
}

uint64_t __37__MSProtocolUtilities_appleIDSession__block_invoke()
{
  appleIDSession_session = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"com.apple.mediastream"];

  return MEMORY[0x2821F96F8]();
}

+ (id)retryAfterDateBasedOnRetryAfterHeaderString:(id)string
{
  v16 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (!stringCopy)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (_nonNumericNonSpaceCharacterSet_onceToken != -1)
  {
    dispatch_once(&_nonNumericNonSpaceCharacterSet_onceToken, &__block_literal_global_93);
  }

  v4 = _nonNumericNonSpaceCharacterSet_charSet_6338;
  v18.length = CFStringGetLength(stringCopy);
  v18.location = 0;
  if (!CFStringFindCharacterFromSet(stringCopy, v4, v18, 0, 0))
  {
    goto LABEL_11;
  }

  if (_retryAfterDateFormatter_once_6339 != -1)
  {
    dispatch_once(&_retryAfterDateFormatter_once_6339, &__block_literal_global_98);
  }

  DateFromString = CFDateFormatterCreateDateFromString(0, _retryAfterDateFormatter_df_6340, stringCopy, 0);
  if (!DateFromString)
  {
LABEL_11:
    intValue = [(__CFString *)stringCopy intValue];
    if (intValue >= 1)
    {
      v8 = intValue;
      Current = CFAbsoluteTimeGetCurrent();
      v10 = CFDateCreate(0, Current + v8);
      if (v10)
      {
        v6 = v10;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v14 = 67109378;
          *v15 = v8;
          *&v15[4] = 2114;
          *&v15[6] = v6;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Found a retry-after header with a relative interval of %d seconds. Date: %{public}@", &v14, 0x12u);
        }

        goto LABEL_15;
      }
    }

LABEL_19:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      *v15 = stringCopy;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Found a retry-after header that could not be parsed: %{public}@", &v14, 0xCu);
    }

    goto LABEL_21;
  }

  v6 = DateFromString;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = 138543618;
    *v15 = stringCopy;
    *&v15[8] = 2114;
    *&v15[10] = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Found a retry-after header with a date string: %{public}@. Date: %{public}@", &v14, 0x16u);
  }

LABEL_15:
  [(__CFDate *)v6 timeIntervalSinceNow];
  if (v11 > 0.0)
  {
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    *v15 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received a retry-after date which occurs in the past: %{public}@. Ignoring.", &v14, 0xCu);
  }

LABEL_21:
  v6 = 0;
LABEL_22:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)deviceInfoDictForPersonID:(id)d
{
  dCopy = d;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSProtocolUtilities_deviceInfoDictForPersonID___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceInfoDictForPersonID__once != -1)
  {
    dispatch_once(&deviceInfoDictForPersonID__once, block);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = MSPlatform();
  uDID = [v6 UDID];
  if (uDID)
  {
    [dictionary setObject:uDID forKey:@"UDID"];
  }

  if (deviceInfoDictForPersonID__clientInfo)
  {
    [dictionary setObject:deviceInfoDictForPersonID__clientInfo forKey:@"clientInfo"];
  }

  v8 = MSPlatform();
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = MSPlatform();
    v11 = [v10 pushTokenForPersonID:dCopy];

    if (v11)
    {
      [dictionary setObject:v11 forKey:@"pushToken"];
    }
  }

  v12 = MSPlatform();
  v13 = [v12 authTokenForPersonID:dCopy];

  if (v13)
  {
    [dictionary setObject:v13 forKey:@"authToken"];
  }

  return dictionary;
}

void __49__MSProtocolUtilities_deviceInfoDictForPersonID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v15 infoDictionary];
  v14 = [v2 objectForKey:*MEMORY[0x277CBED38]];
  v3 = [v2 objectForKey:@"CFBundleShortVersionString"];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v14, v3];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = MSPlatform();
  v7 = [v6 hardwareString];
  v8 = MSPlatform();
  v9 = [v8 OSString];
  v10 = MSPlatform();
  v11 = [v10 appBundleInfoString];
  v12 = [v5 initWithFormat:@"<%@><%@><%@ (%@)>", v7, v9, v4, v11];
  v13 = deviceInfoDictForPersonID__clientInfo;
  deviceInfoDictForPersonID__clientInfo = v12;
}

+ (id)Win32SHA1OfUDID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  CC_SHA1_Update(&v10, &Win32SHA1OfUDID___prepend, 3u);
  uTF8String = [dCopy UTF8String];
  v5 = strlen(uTF8String);
  if (v5 >= 0xFFFFFFFF)
  {
    __assert_rtn("+[MSProtocolUtilities Win32SHA1OfUDID:]", "MSProtocolUtilities.m", 54, "udidLength < UINT32_MAX");
  }

  CC_SHA1_Update(&v10, uTF8String, v5);
  CC_SHA1_Final(md, &v10);
  v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:md length:20 freeWhenDone:0];
  mSHexString = [v6 MSHexString];

  v8 = *MEMORY[0x277D85DE8];

  return mSHexString;
}

@end