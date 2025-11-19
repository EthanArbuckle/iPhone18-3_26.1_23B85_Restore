@interface LACKeyBagProvider
+ (LACKeyBagProvider)sharedInstance;
- (LACKeyBagProvider)init;
@end

@implementation LACKeyBagProvider

- (LACKeyBagProvider)init
{
  v6.receiver = self;
  v6.super_class = LACKeyBagProvider;
  v2 = [(LACKeyBagProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userKeybags = v2->_userKeybags;
    v2->_userKeybags = v3;
  }

  return v2;
}

+ (LACKeyBagProvider)sharedInstance
{
  if (sharedInstance_onceToken_14 != -1)
  {
    +[LACKeyBagProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_12;

  return v3;
}

uint64_t __35__LACKeyBagProvider_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_12 = objc_alloc_init(LACKeyBagProvider);

  return MEMORY[0x1EEE66BB8]();
}

@end