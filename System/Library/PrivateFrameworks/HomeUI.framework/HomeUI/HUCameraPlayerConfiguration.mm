@interface HUCameraPlayerConfiguration
- (BOOL)isConfiguredForLiveStream;
- (HUCameraPlayerConfiguration)initWithHome:(id)home cameraProfile:(id)profile notificationUUID:(id)d clipUUID:(id)iD;
- (id)description;
@end

@implementation HUCameraPlayerConfiguration

- (HUCameraPlayerConfiguration)initWithHome:(id)home cameraProfile:(id)profile notificationUUID:(id)d clipUUID:(id)iD
{
  homeCopy = home;
  profileCopy = profile;
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = HUCameraPlayerConfiguration;
  v15 = [(HUCameraPlayerConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_home, home);
    objc_storeStrong(&v16->_cameraProfile, profile);
    objc_storeStrong(&v16->_notificationUUID, d);
    objc_storeStrong(&v16->_clipUUID, iD);
  }

  return v16;
}

- (BOOL)isConfiguredForLiveStream
{
  cameraProfile = [(HUCameraPlayerConfiguration *)self cameraProfile];
  if ([cameraProfile hf_supportsRecordingEvents])
  {
    startingPlaybackDate = [(HUCameraPlayerConfiguration *)self startingPlaybackDate];
    v5 = startingPlaybackDate == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  cameraProfile = [(HUCameraPlayerConfiguration *)self cameraProfile];
  uniqueIdentifier = [cameraProfile uniqueIdentifier];
  v6 = [v3 appendObject:uniqueIdentifier withName:@"cameraProfileUUID"];

  cameraProfile2 = [(HUCameraPlayerConfiguration *)self cameraProfile];
  accessory = [cameraProfile2 accessory];
  uniqueIdentifier2 = [accessory uniqueIdentifier];
  v10 = [v3 appendObject:uniqueIdentifier2 withName:@"accessoryUUID"];

  cameraProfile3 = [(HUCameraPlayerConfiguration *)self cameraProfile];
  accessory2 = [cameraProfile3 accessory];
  name = [accessory2 name];
  v14 = [v3 appendObject:name withName:@"accessoryName"];

  startingPlaybackDate = [(HUCameraPlayerConfiguration *)self startingPlaybackDate];
  v16 = [v3 appendObject:startingPlaybackDate withName:@"startingPlaybackDate" skipIfNil:1];

  notificationUUID = [(HUCameraPlayerConfiguration *)self notificationUUID];
  v18 = [v3 appendObject:notificationUUID withName:@"notificationUUID" skipIfNil:1];

  clipUUID = [(HUCameraPlayerConfiguration *)self clipUUID];
  v20 = [v3 appendObject:clipUUID withName:@"clipUUID" skipIfNil:1];

  build = [v3 build];

  return build;
}

@end