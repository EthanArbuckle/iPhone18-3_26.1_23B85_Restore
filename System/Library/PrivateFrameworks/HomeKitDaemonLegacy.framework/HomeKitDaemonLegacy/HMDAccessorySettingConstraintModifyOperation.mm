@interface HMDAccessorySettingConstraintModifyOperation
- (void)main;
@end

@implementation HMDAccessorySettingConstraintModifyOperation

- (void)main
{
  executionBlock = [(HMDAccessorySettingConstraintModifyOperation *)self executionBlock];
  executionBlock[2]();
}

@end