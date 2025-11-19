@interface HMDAccessoryFirmwareUpdateSessionWingman
- (id)newSchedulerWithAccessory:(id)a3 firmwareUpdateSession:(id)a4 workQueue:(id)a5;
@end

@implementation HMDAccessoryFirmwareUpdateSessionWingman

- (id)newSchedulerWithAccessory:(id)a3 firmwareUpdateSession:(id)a4 workQueue:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDAccessoryFirmwareUpdateScheduler alloc] initWithAccessory:v9 firmwareUpdateSession:v8 workQueue:v7];

  return v10;
}

@end