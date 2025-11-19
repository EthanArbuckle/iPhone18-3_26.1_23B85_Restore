@interface HMDBackingStoreLogPrunePushedOperation
- (HMDBackingStoreLogPrunePushedOperation)init;
- (void)main;
@end

@implementation HMDBackingStoreLogPrunePushedOperation

- (void)main
{
  v2.receiver = self;
  v2.super_class = HMDBackingStoreLogPrunePushedOperation;
  [(HMDBackingStoreOperation *)&v2 main];
}

- (HMDBackingStoreLogPrunePushedOperation)init
{
  v3.receiver = self;
  v3.super_class = HMDBackingStoreLogPrunePushedOperation;
  return [(HMDBackingStoreOperation *)&v3 init];
}

@end