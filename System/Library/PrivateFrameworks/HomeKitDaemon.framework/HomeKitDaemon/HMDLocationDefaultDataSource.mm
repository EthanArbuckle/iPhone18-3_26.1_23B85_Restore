@interface HMDLocationDefaultDataSource
- (id)makeLocationManagerWithEffectiveBundle:(id)bundle delegate:(id)delegate onQueue:(id)queue;
@end

@implementation HMDLocationDefaultDataSource

- (id)makeLocationManagerWithEffectiveBundle:(id)bundle delegate:(id)delegate onQueue:(id)queue
{
  v7 = MEMORY[0x277CBFC10];
  queueCopy = queue;
  delegateCopy = delegate;
  bundleCopy = bundle;
  v11 = [[v7 alloc] initWithEffectiveBundle:bundleCopy delegate:delegateCopy onQueue:queueCopy];

  return v11;
}

@end