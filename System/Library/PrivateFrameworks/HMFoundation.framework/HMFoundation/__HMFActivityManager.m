@interface __HMFActivityManager
- (__HMFActivityManager)init;
@end

@implementation __HMFActivityManager

- (__HMFActivityManager)init
{
  v6.receiver = self;
  v6.super_class = __HMFActivityManager;
  v2 = [(__HMFActivityManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:1282 valueOptions:6];
    activitiesByIdentifier = v2->_activitiesByIdentifier;
    v2->_activitiesByIdentifier = v3;
  }

  return v2;
}

@end