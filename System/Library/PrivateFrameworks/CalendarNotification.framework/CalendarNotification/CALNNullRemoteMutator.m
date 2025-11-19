@interface CALNNullRemoteMutator
+ (CALNNullRemoteMutator)sharedInstance;
@end

@implementation CALNNullRemoteMutator

+ (CALNNullRemoteMutator)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[CALNNullRemoteMutator sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

uint64_t __39__CALNNullRemoteMutator_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_3 = objc_alloc_init(CALNNullRemoteMutator);

  return MEMORY[0x2821F96F8]();
}

@end