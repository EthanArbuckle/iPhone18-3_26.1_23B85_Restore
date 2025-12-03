@interface IMBrandManager
+ (id)sharedInstance;
- (id)_init;
- (id)brandInfoFromBSBrand:(id)brand;
- (id)brandManagerForType:(unint64_t)type;
- (void)_setBrand:(id)brand forBrand:(id)forBrand forType:(unint64_t)type error:(id)error completion:(id)completion;
- (void)brandWithURI:(id)i completion:(id)completion;
- (void)brandWithURI:(id)i usingSim:(id)sim forType:(unint64_t)type completion:(id)completion;
- (void)configChatBotBrandManagerWithCacheClient:(id)client;
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
    opaqueWrapper = [(IMBrandRBMBrandDataSourceObjcShim *)v13 opaqueWrapper];
    v15 = [v10 initWithCachingEnabled:v11 cacheURL:v12 brandDataSourceOpaqueWrapper:opaqueWrapper];
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

- (void)configChatBotBrandManagerWithCacheClient:(id)client
{
  v4 = qword_1EB30B6D8;
  clientCopy = client;
  v6 = [v4 alloc];
  v7 = IMIsRunningInMessages();
  v12 = IMCachesDirectoryURL();
  v8 = [[IMBrandRBMBrandDataSourceObjcShim alloc] initWithCacheClient:clientCopy];

  opaqueWrapper = [(IMBrandRBMBrandDataSourceObjcShim *)v8 opaqueWrapper];
  v10 = [v6 initWithCachingEnabled:v7 cacheURL:v12 brandDataSourceOpaqueWrapper:opaqueWrapper];
  chatBotBrandManager = self->_chatBotBrandManager;
  self->_chatBotBrandManager = v10;
}

- (void)_setBrand:(id)brand forBrand:(id)forBrand forType:(unint64_t)type error:(id)error completion:(id)completion
{
  brandCopy = brand;
  forBrandCopy = forBrand;
  errorCopy = error;
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A86E0960;
  v20[3] = &unk_1E782A0F8;
  v21 = brandCopy;
  v22 = errorCopy;
  v25 = completionCopy;
  typeCopy = type;
  v23 = forBrandCopy;
  selfCopy = self;
  v16 = completionCopy;
  v17 = forBrandCopy;
  v18 = errorCopy;
  v19 = brandCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
}

- (id)brandInfoFromBSBrand:(id)brand
{
  brandCopy = brand;
  v20 = [IMBrandInfo alloc];
  brandURI = [brandCopy brandURI];
  name = [brandCopy name];
  categories = [brandCopy categories];
  primaryPhoneNumber = [brandCopy primaryPhoneNumber];
  isVerified = [brandCopy isVerified];
  localizedDescription = [brandCopy localizedDescription];
  verifiedBy = [brandCopy verifiedBy];
  website = [brandCopy website];
  absoluteString = [website absoluteString];
  messageNumber = [brandCopy messageNumber];
  emailAddress = [brandCopy emailAddress];
  address = [brandCopy address];
  termsAndConditionsURL = [brandCopy termsAndConditionsURL];
  absoluteString2 = [termsAndConditionsURL absoluteString];
  localizedResponseTime = [brandCopy localizedResponseTime];
  genericCSSTemplateURL = [brandCopy genericCSSTemplateURL];

  absoluteString3 = [genericCSSTemplateURL absoluteString];
  LOBYTE(v11) = isVerified;
  v21 = [(IMBrandInfo *)v20 initWithBrandURI:brandURI name:name categories:categories primaryPhoneNumber:primaryPhoneNumber primaryBrandColorHexString:0 secondaryBrandColorHexString:0 isVerified:v11 localizedDescription:localizedDescription verifiedBy:verifiedBy website:absoluteString messageNumber:messageNumber emailAddress:emailAddress address:address termsAndConditionsURL:absoluteString2 localizedResponseTime:localizedResponseTime genericCSSTemplateURL:absoluteString3 brandLogoGuid:0];

  return v21;
}

- (id)brandManagerForType:(unint64_t)type
{
  if (type == 1)
  {
    v4 = 8;
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_6;
    }

    v4 = 16;
  }

  a2 = *(&self->super.isa + v4);
LABEL_6:

  return a2;
}

- (void)brandWithURI:(id)i completion:(id)completion
{
  completionCopy = completion;
  iCopy = i;
  if (MEMORY[0x1AC570A30]())
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(IMBrandManager *)self brandWithURI:iCopy forType:v7 completion:completionCopy];
}

- (void)brandWithURI:(id)i usingSim:(id)sim forType:(unint64_t)type completion:(id)completion
{
  iCopy = i;
  simCopy = sim;
  completionCopy = completion;
  objc_initWeak(&location, self);
  brandFetchQueue = self->_brandFetchQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A86E11A4;
  v17[3] = &unk_1E782A148;
  objc_copyWeak(v21, &location);
  v21[1] = type;
  v14 = iCopy;
  v18 = v14;
  v15 = simCopy;
  v19 = v15;
  v16 = completionCopy;
  v20 = v16;
  [(NSOperationQueue *)brandFetchQueue addOperationWithBlock:v17];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

@end