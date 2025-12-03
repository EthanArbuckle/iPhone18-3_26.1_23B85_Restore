@interface CPLCloudKitBaseSetupTask
- (CPLCloudKitBaseSetupTask)initWithController:(id)controller;
@end

@implementation CPLCloudKitBaseSetupTask

- (CPLCloudKitBaseSetupTask)initWithController:(id)controller
{
  v4.receiver = self;
  v4.super_class = CPLCloudKitBaseSetupTask;
  return [(CPLCloudKitTransportTask *)&v4 initWithController:controller];
}

@end