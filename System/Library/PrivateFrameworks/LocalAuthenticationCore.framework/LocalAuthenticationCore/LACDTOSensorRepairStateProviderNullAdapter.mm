@interface LACDTOSensorRepairStateProviderNullAdapter
- (void)fetchRepairStateWithCompletion:(id)a3;
@end

@implementation LACDTOSensorRepairStateProviderNullAdapter

- (void)fetchRepairStateWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LACDTOMutableSensorRepairState);
  [(LACDTOMutableSensorRepairState *)v4 setRepairFlag:0];
  v3[2](v3, v4, 0);
}

@end