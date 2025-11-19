@interface HUCameraPlayerConfiguration
- (BOOL)isConfiguredForLiveStream;
- (HUCameraPlayerConfiguration)initWithHome:(id)a3 cameraProfile:(id)a4 notificationUUID:(id)a5 clipUUID:(id)a6;
- (id)description;
@end

@implementation HUCameraPlayerConfiguration

- (HUCameraPlayerConfiguration)initWithHome:(id)a3 cameraProfile:(id)a4 notificationUUID:(id)a5 clipUUID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HUCameraPlayerConfiguration;
  v15 = [(HUCameraPlayerConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_home, a3);
    objc_storeStrong(&v16->_cameraProfile, a4);
    objc_storeStrong(&v16->_notificationUUID, a5);
    objc_storeStrong(&v16->_clipUUID, a6);
  }

  return v16;
}

- (BOOL)isConfiguredForLiveStream
{
  v3 = [(HUCameraPlayerConfiguration *)self cameraProfile];
  if ([v3 hf_supportsRecordingEvents])
  {
    v4 = [(HUCameraPlayerConfiguration *)self startingPlaybackDate];
    v5 = v4 == 0;
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
  v4 = [(HUCameraPlayerConfiguration *)self cameraProfile];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 appendObject:v5 withName:@"cameraProfileUUID"];

  v7 = [(HUCameraPlayerConfiguration *)self cameraProfile];
  v8 = [v7 accessory];
  v9 = [v8 uniqueIdentifier];
  v10 = [v3 appendObject:v9 withName:@"accessoryUUID"];

  v11 = [(HUCameraPlayerConfiguration *)self cameraProfile];
  v12 = [v11 accessory];
  v13 = [v12 name];
  v14 = [v3 appendObject:v13 withName:@"accessoryName"];

  v15 = [(HUCameraPlayerConfiguration *)self startingPlaybackDate];
  v16 = [v3 appendObject:v15 withName:@"startingPlaybackDate" skipIfNil:1];

  v17 = [(HUCameraPlayerConfiguration *)self notificationUUID];
  v18 = [v3 appendObject:v17 withName:@"notificationUUID" skipIfNil:1];

  v19 = [(HUCameraPlayerConfiguration *)self clipUUID];
  v20 = [v3 appendObject:v19 withName:@"clipUUID" skipIfNil:1];

  v21 = [v3 build];

  return v21;
}

@end