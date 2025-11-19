@interface ProfileController
- (void)profilesChangedForLocalDeviceWithProfiles:(id)a3;
@end

@implementation ProfileController

- (void)profilesChangedForLocalDeviceWithProfiles:(id)a3
{
  v3 = sub_2543A2718();

  ProfileController.profilesChangedForLocalDevice(profiles:)(v3);
}

@end