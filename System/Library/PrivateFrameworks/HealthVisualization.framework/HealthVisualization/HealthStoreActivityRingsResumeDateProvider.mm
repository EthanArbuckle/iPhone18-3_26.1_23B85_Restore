@interface HealthStoreActivityRingsResumeDateProvider
- (void)pauseStateLoadedWithNotification:(id)a3;
@end

@implementation HealthStoreActivityRingsResumeDateProvider

- (void)pauseStateLoadedWithNotification:(id)a3
{
  v3 = sub_1D15A22D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A22B8();

  sub_1D150DB5C();

  (*(v4 + 8))(v6, v3);
}

@end