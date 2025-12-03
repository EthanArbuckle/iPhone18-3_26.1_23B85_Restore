@interface LACDTOSensorRepairStateProviderNullAdapter
- (void)fetchRepairStateWithCompletion:(id)completion;
@end

@implementation LACDTOSensorRepairStateProviderNullAdapter

- (void)fetchRepairStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(LACDTOMutableSensorRepairState);
  [(LACDTOMutableSensorRepairState *)v4 setRepairFlag:0];
  completionCopy[2](completionCopy, v4, 0);
}

@end