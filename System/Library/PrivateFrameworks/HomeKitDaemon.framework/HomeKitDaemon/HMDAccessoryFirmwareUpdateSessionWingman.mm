@interface HMDAccessoryFirmwareUpdateSessionWingman
- (id)newSchedulerWithAccessory:(id)accessory firmwareUpdateSession:(id)session workQueue:(id)queue;
@end

@implementation HMDAccessoryFirmwareUpdateSessionWingman

- (id)newSchedulerWithAccessory:(id)accessory firmwareUpdateSession:(id)session workQueue:(id)queue
{
  queueCopy = queue;
  sessionCopy = session;
  accessoryCopy = accessory;
  v10 = [[HMDAccessoryFirmwareUpdateScheduler alloc] initWithAccessory:accessoryCopy firmwareUpdateSession:sessionCopy workQueue:queueCopy];

  return v10;
}

@end