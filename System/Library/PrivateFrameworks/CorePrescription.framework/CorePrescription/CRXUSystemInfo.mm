@interface CRXUSystemInfo
+ (id)sharedInstance;
- (CRXUSystemInfo)init;
@end

@implementation CRXUSystemInfo

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__CRXUSystemInfo_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance___once__LINE___2 != -1)
  {
    dispatch_once(&sharedInstance___once__LINE___2, block);
  }

  v2 = sharedInstance_instance_2;

  return v2;
}

uint64_t __32__CRXUSystemInfo_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance_2 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CRXUSystemInfo)init
{
  v9 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = CRXUSystemInfo;
  v2 = [(CRXUSystemInfo *)&v7 init];
  if (v2)
  {
    memset(&v8, 0, 512);
    if (uname(&v8))
    {
      v3 = @"Unknown";
    }

    else
    {
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8.machine];
    }

    modelName = v2->_modelName;
    v2->_modelName = &v3->isa;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

@end