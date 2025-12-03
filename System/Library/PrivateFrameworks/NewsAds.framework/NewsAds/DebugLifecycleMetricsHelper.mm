@interface DebugLifecycleMetricsHelper
- (void)trackImpressionWithStartDate:(id)date endDate:(id)endDate;
@end

@implementation DebugLifecycleMetricsHelper

- (void)trackImpressionWithStartDate:(id)date endDate:(id)endDate
{
  v4 = sub_1D7702F50();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14 - v11;
  sub_1D7702F30();
  sub_1D7702F30();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v12, v4);
}

@end