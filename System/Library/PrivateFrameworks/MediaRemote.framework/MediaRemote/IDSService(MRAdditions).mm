@interface IDSService(MRAdditions)
+ (id)mr_sharedIDSCompanionService;
+ (id)mr_sharedIDSService;
@end

@implementation IDSService(MRAdditions)

+ (id)mr_sharedIDSCompanionService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__IDSService_MRAdditions__mr_sharedIDSCompanionService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mr_sharedIDSCompanionService_onceToken != -1)
  {
    dispatch_once(&mr_sharedIDSCompanionService_onceToken, block);
  }

  v1 = mr_sharedIDSCompanionService___service;

  return v1;
}

+ (id)mr_sharedIDSService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__IDSService_MRAdditions__mr_sharedIDSService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mr_sharedIDSService_onceToken != -1)
  {
    dispatch_once(&mr_sharedIDSService_onceToken, block);
  }

  v1 = mr_sharedIDSService___service;

  return v1;
}

@end