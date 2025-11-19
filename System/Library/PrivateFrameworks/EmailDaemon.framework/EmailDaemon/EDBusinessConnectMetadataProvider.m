@interface EDBusinessConnectMetadataProvider
+ (id)sharedInstance;
- (EDBusinessConnectMetadataProvider)init;
- (id)cachedBusinessMetadataForEmail:(id)a3 error:(id *)a4;
- (void)fetchBusinessMetadataForEmails:(id)a3 perItemCallback:(id)a4 completion:(id)a5;
@end

@implementation EDBusinessConnectMetadataProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[EDBusinessConnectMetadataProvider sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

void __51__EDBusinessConnectMetadataProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(EDBusinessConnectMetadataProvider);
  v1 = sharedInstance_sInstance;
  sharedInstance_sInstance = v0;
}

- (EDBusinessConnectMetadataProvider)init
{
  v8.receiver = self;
  v8.super_class = EDBusinessConnectMetadataProvider;
  v2 = [(EDBusinessConnectMetadataProvider *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getBCSBusinessQueryServiceClass_softClass;
    v13 = getBCSBusinessQueryServiceClass_softClass;
    if (!getBCSBusinessQueryServiceClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getBCSBusinessQueryServiceClass_block_invoke;
      v9[3] = &unk_1E8250000;
      v9[4] = &v10;
      __getBCSBusinessQueryServiceClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    businessQueryService = v2->_businessQueryService;
    v2->_businessQueryService = v5;
  }

  return v2;
}

- (id)cachedBusinessMetadataForEmail:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(EDBusinessConnectMetadataProvider *)self businessQueryService];
  v8 = [v7 cachedBusinessMetadataForEmail:v6 error:a4];

  return v8;
}

- (void)fetchBusinessMetadataForEmails:(id)a3 perItemCallback:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(EDBusinessConnectMetadataProvider *)self businessQueryService];
  [v10 fetchBusinessMetadataForEmails:v11 perItemCallback:v8 completion:v9];
}

@end