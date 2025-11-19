@interface DeviceSharingDefaults
- (DeviceSharingDefaults)init;
- (void)log;
@end

@implementation DeviceSharingDefaults

- (DeviceSharingDefaults)init
{
  if (qword_281511438 != -1)
  {
    swift_once();
  }

  v2 = qword_281511440;
  v3 = sub_248A86784(v2);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)log
{
  v2 = self;
  DeviceSharingDefaults.log()();
}

@end