@interface _MSPContainerEditReplacedEntirely
+ (id)sharedInstance;
- (NSString)description;
@end

@implementation _MSPContainerEditReplacedEntirely

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___MSPContainerEditReplacedEntirely_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_me;

  return v2;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = _MSPContainerEditReplacedEntirely;
  v3 = [(_MSPContainerEditReplacedEntirely *)&v6 description];
  v4 = [v2 stringWithFormat:@"%@ { CONTAINER'S CONTENTS REPLACED ENTIRELY }", v3];

  return v4;
}

@end