@interface IMBrandManager
+ (id)sharedInstance;
- (id)_init;
- (id)brandInfoFromBSBrand:(id)a3;
- (id)brandManagerForType:(unint64_t)a3;
- (void)_setBrand:(id)a3 forBrand:(id)a4 forType:(unint64_t)a5 error:(id)a6 completion:(id)a7;
- (void)brandWithURI:(id)a3 completion:(id)a4;
- (void)brandWithURI:(id)a3 usingSim:(id)a4 forType:(unint64_t)a5 completion:(id)a6;
- (void)configChatBotBrandManagerWithCacheClient:(id)a3;
@end

@implementation IMBrandManager

- (id)_init
{
  v21.receiver = self;
  v21.super_class = IMBrandManager;
  v2 = [(IMBrandManager *)&v21 init];
  if (v2)
  {
    v3 = [qword_1EB30B6D8 instancesRespondToSelector:sel_initWithCachingEnabled_cacheURL_];
    v4 = [qword_1EB30B6D8 alloc];
    v5 = IMIsRunningInMessages();
    if (v3)
    {
      v6 = IMCachesDirectoryURL();
      v7 = [v4 initWithCachingEnabled:v5 cacheURL:v6];
      mapKitBrandManager = v2->_mapKitBrandManager;
      v2->_mapKitBrandManager = v7;
    }

    else
    {
      v9 = [v4 initWithCachingEnabled:v5];
      v6 = v2->_mapKitBrandManager;
      v2->_mapKitBrandManager = v9;
    }

    v10 = [qword_1EB30B6D8 alloc];
    v11 = IMIsRunningInMessages();
    v12 = IMCachesDirectoryURL();
    v13 = [[IMBrandRBMBrandDataSourceObjcShim alloc] initWithCacheClient:0];
    v14 = [(IMBrandRBMBrandDataSourceObjcShim *)v13 opaqueWrapper];
    v15 = [v10 initWithCachingEnabled:v11 cacheURL:v12 brandDataSourceOpaqueWrapper:v14];
    chatBotBrandManager = v2->_chatBotBrandManager;
    v2->_chatBotBrandManager = v15;

    v17 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    brandFetchQueue = v2->_brandFetchQueue;
    v2->_brandFetchQueue = v17;

    v19 = dispatch_get_global_queue(33, 0);
    [(NSOperationQueue *)v2->_brandFetchQueue setUnderlyingQueue:v19];

    [(NSOperationQueue *)v2->_brandFetchQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1ED8CA2E8 != -1)
  {
    sub_1A86065E4();
  }

  v3 = qword_1ED8C9928;

  return v3;
}

- (void)configChatBotBrandManagerWithCacheClient:(id)a3
{
  v4 = qword_1EB30B6D8;
  v5 = a3;
  v6 = [v4 alloc];
  v7 = IMIsRunningInMessages();
  v12 = IMCachesDirectoryURL();
  v8 = [[IMBrandRBMBrandDataSourceObjcShim alloc] initWithCacheClient:v5];

  v9 = [(IMBrandRBMBrandDataSourceObjcShim *)v8 opaqueWrapper];
  v10 = [v6 initWithCachingEnabled:v7 cacheURL:v12 brandDataSourceOpaqueWrapper:v9];
  chatBotBrandManager = self->_chatBotBrandManager;
  self->_chatBotBrandManager = v10;
}

- (void)_setBrand:(id)a3 forBrand:(id)a4 forType:(unint64_t)a5 error:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A86E0960;
  v20[3] = &unk_1E782A0F8;
  v21 = v12;
  v22 = v14;
  v25 = v15;
  v26 = a5;
  v23 = v13;
  v24 = self;
  v16 = v15;
  v17 = v13;
  v18 = v14;
  v19 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
}

- (id)brandInfoFromBSBrand:(id)a3
{
  v3 = a3;
  v20 = [IMBrandInfo alloc];
  v24 = [v3 brandURI];
  v19 = [v3 name];
  v18 = [v3 categories];
  v17 = [v3 primaryPhoneNumber];
  v16 = [v3 isVerified];
  v23 = [v3 localizedDescription];
  v15 = [v3 verifiedBy];
  v22 = [v3 website];
  v13 = [v22 absoluteString];
  v14 = [v3 messageNumber];
  v12 = [v3 emailAddress];
  v4 = [v3 address];
  v5 = [v3 termsAndConditionsURL];
  v6 = [v5 absoluteString];
  v7 = [v3 localizedResponseTime];
  v8 = [v3 genericCSSTemplateURL];

  v9 = [v8 absoluteString];
  LOBYTE(v11) = v16;
  v21 = [(IMBrandInfo *)v20 initWithBrandURI:v24 name:v19 categories:v18 primaryPhoneNumber:v17 primaryBrandColorHexString:0 secondaryBrandColorHexString:0 isVerified:v11 localizedDescription:v23 verifiedBy:v15 website:v13 messageNumber:v14 emailAddress:v12 address:v4 termsAndConditionsURL:v6 localizedResponseTime:v7 genericCSSTemplateURL:v9 brandLogoGuid:0];

  return v21;
}

- (id)brandManagerForType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = 8;
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    v4 = 16;
  }

  a2 = *(&self->super.isa + v4);
LABEL_6:

  return a2;
}

- (void)brandWithURI:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = a3;
  if (MEMORY[0x1AC570A30]())
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(IMBrandManager *)self brandWithURI:v8 forType:v7 completion:v6];
}

- (void)brandWithURI:(id)a3 usingSim:(id)a4 forType:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  brandFetchQueue = self->_brandFetchQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A86E11A4;
  v17[3] = &unk_1E782A148;
  objc_copyWeak(v21, &location);
  v21[1] = a5;
  v14 = v10;
  v18 = v14;
  v15 = v11;
  v19 = v15;
  v16 = v12;
  v20 = v16;
  [(NSOperationQueue *)brandFetchQueue addOperationWithBlock:v17];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

@end