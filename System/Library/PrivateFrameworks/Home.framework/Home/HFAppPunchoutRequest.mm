@interface HFAppPunchoutRequest
+ (BOOL)canHandleBundleID:(id)d;
+ (id)_openApplicationService;
+ (id)handleRequest:(id)request;
- (HFAppPunchoutRequest)initWithCoder:(id)coder;
- (HFAppPunchoutRequest)initWithName:(id)name bundleID:(id)d payloadURL:(id)l storeURL:(id)rL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HFAppPunchoutRequest

- (HFAppPunchoutRequest)initWithName:(id)name bundleID:(id)d payloadURL:(id)l storeURL:(id)rL
{
  nameCopy = name;
  dCopy = d;
  lCopy = l;
  rLCopy = rL;
  v18.receiver = self;
  v18.super_class = HFAppPunchoutRequest;
  v15 = [(HFAppPunchoutRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_bundleID, d);
    objc_storeStrong(&v16->_payloadURL, l);
    objc_storeStrong(&v16->_storeURL, rL);
  }

  return v16;
}

+ (BOOL)canHandleBundleID:(id)d
{
  if (!d)
  {
    return 0;
  }

  v8 = 0;
  dCopy = d;
  _openApplicationService = [self _openApplicationService];
  v6 = [_openApplicationService canOpenApplication:dCopy reason:&v8];

  return v6;
}

+ (id)handleRequest:(id)request
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = HFLogForCategory(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = requestCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Handling HFAppPunchoutRequest %@", buf, 0xCu);
  }

  v6 = MEMORY[0x277D2C900];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__HFAppPunchoutRequest_handleRequest___block_invoke;
  v11[3] = &unk_277DF2770;
  v12 = requestCopy;
  selfCopy = self;
  v7 = requestCopy;
  v8 = [v6 futureWithBlock:v11];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __38__HFAppPunchoutRequest_handleRequest___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) bundleID];

  if (v4)
  {
    v5 = [*(a1 + 40) _openApplicationService];
    if (!v5)
    {
      v6 = HFLogForCategory(8uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FBSOpenApplicationService", buf, 2u);
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1002 userInfo:MEMORY[0x277CBEC10]];
      [v3 finishWithError:v7];
    }

    v34 = 0;
    v8 = [*(a1 + 32) bundleID];
    v9 = [v5 canOpenApplication:v8 reason:&v34];

    if (v9)
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      v11 = [*(a1 + 32) payloadURL];
      [v10 na_safeSetObject:v11 forKey:*MEMORY[0x277D0AC40]];

      v12 = HFLogForCategory(8uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) bundleID];
        *buf = 138412546;
        v36 = v13;
        v37 = 2112;
        v38 = v10;
        _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Launching application for bundleID %@ options %@", buf, 0x16u);
      }

      v14 = [*(a1 + 32) bundleID];
      v15 = [MEMORY[0x277D0AD60] optionsWithDictionary:v10];
      [v5 openApplication:v14 withOptions:v15 completion:0];

      [v3 finishWithNoResult];
      goto LABEL_20;
    }

    v16 = HFLogForCategory(8uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 32) bundleID];
      *buf = 138412546;
      v36 = v27;
      v37 = 2048;
      v38 = v34;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Failed to launch application for bundleID %@ with FBSOpenApplicationErrorCode %li", buf, 0x16u);
    }
  }

  v17 = [*(a1 + 32) storeURL];

  v18 = HFLogForCategory(8uLL);
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 32) storeURL];
      *buf = 138412290;
      v36 = v20;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Launching URL %@", buf, 0xCu);
    }

    v21 = +[HFOpenURLRouter sharedInstance];
    v22 = [*(a1 + 32) storeURL];
    v5 = [v21 openURL:v22];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __38__HFAppPunchoutRequest_handleRequest___block_invoke_20;
    v32[3] = &unk_277DF2720;
    v23 = v3;
    v33 = v23;
    v24 = [v5 addSuccessBlock:v32];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __38__HFAppPunchoutRequest_handleRequest___block_invoke_2;
    v29[3] = &unk_277DF2748;
    v30 = *(a1 + 32);
    v31 = v23;
    v25 = [v5 addFailureBlock:v29];
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      *buf = 138412290;
      v36 = v28;
      _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "Failed to handle HFAppPunchoutRequest %@", buf, 0xCu);
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1002 userInfo:MEMORY[0x277CBEC10]];
    [v3 finishWithError:v5];
  }

LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
}

void __38__HFAppPunchoutRequest_handleRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(8uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) storeURL];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to launch URL %@ with error %@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  name = [(HFAppPunchoutRequest *)self name];
  v7 = [name copyWithZone:zone];
  bundleID = [(HFAppPunchoutRequest *)self bundleID];
  v9 = [bundleID copyWithZone:zone];
  payloadURL = [(HFAppPunchoutRequest *)self payloadURL];
  v11 = [payloadURL copyWithZone:zone];
  storeURL = [(HFAppPunchoutRequest *)self storeURL];
  v13 = [storeURL copyWithZone:zone];
  v14 = [v5 initWithName:v7 bundleID:v9 payloadURL:v11 storeURL:v13];

  return v14;
}

- (HFAppPunchoutRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HFAppPunchoutRequest;
  v5 = [(HFAppPunchoutRequest *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HFAppPunchoutRequestEncodedNameKey"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HFAppPunchoutRequestEncodedBundleIDKey"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HFAppPunchoutRequestEncodedPayloadURLKey"];
    payloadURL = v5->_payloadURL;
    v5->_payloadURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HFAppPunchoutRequestEncodedStoreURLKey"];
    storeURL = v5->_storeURL;
    v5->_storeURL = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(HFAppPunchoutRequest *)self name];
  [coderCopy encodeObject:name forKey:@"HFAppPunchoutRequestEncodedNameKey"];

  bundleID = [(HFAppPunchoutRequest *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"HFAppPunchoutRequestEncodedBundleIDKey"];

  payloadURL = [(HFAppPunchoutRequest *)self payloadURL];
  [coderCopy encodeObject:payloadURL forKey:@"HFAppPunchoutRequestEncodedPayloadURLKey"];

  storeURL = [(HFAppPunchoutRequest *)self storeURL];
  [coderCopy encodeObject:storeURL forKey:@"HFAppPunchoutRequestEncodedStoreURLKey"];
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  name = [(HFAppPunchoutRequest *)self name];
  [v3 appendString:name withName:@"name"];

  bundleID = [(HFAppPunchoutRequest *)self bundleID];
  [v3 appendString:bundleID withName:@"bundleID"];

  payloadURL = [(HFAppPunchoutRequest *)self payloadURL];
  v7 = [v3 appendObject:payloadURL withName:@"payloadURL"];

  storeURL = [(HFAppPunchoutRequest *)self storeURL];
  v9 = [v3 appendObject:storeURL withName:@"storeURL"];

  build = [v3 build];

  return build;
}

+ (id)_openApplicationService
{
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  if (!serviceWithDefaultShellEndpoint)
  {
    v3 = HFLogForCategory(8uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Failed to initialize FBSOpenApplicationService", v5, 2u);
    }
  }

  return serviceWithDefaultShellEndpoint;
}

@end