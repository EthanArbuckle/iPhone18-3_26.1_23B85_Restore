@interface FSFCallKitUtil
+ (id)sharedInstance;
- (BOOL)isOnCall;
- (FSFCallKitUtil)init;
@end

@implementation FSFCallKitUtil

- (FSFCallKitUtil)init
{
  v6.receiver = self;
  v6.super_class = FSFCallKitUtil;
  v2 = [(FSFCallKitUtil *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBAF70]);
    callCenter = v2->_callCenter;
    v2->_callCenter = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FSFCallKitUtil sharedInstance];
  }

  v3 = sharedInstance_sSharedUtil;

  return v3;
}

uint64_t __32__FSFCallKitUtil_sharedInstance__block_invoke()
{
  sharedInstance_sSharedUtil = objc_alloc_init(FSFCallKitUtil);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isOnCall
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CXCallObserver *)self->_callCenter calls];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v8 + 1) + 8 * i) hasEnded])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

@end