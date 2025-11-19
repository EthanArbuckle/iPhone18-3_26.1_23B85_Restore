@interface HMDLocationDefaultDataSource
- (id)makeLocationManagerWithEffectiveBundle:(id)a3 delegate:(id)a4 onQueue:(id)a5;
@end

@implementation HMDLocationDefaultDataSource

- (id)makeLocationManagerWithEffectiveBundle:(id)a3 delegate:(id)a4 onQueue:(id)a5
{
  v7 = MEMORY[0x277CBFC10];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithEffectiveBundle:v10 delegate:v9 onQueue:v8];

  return v11;
}

@end