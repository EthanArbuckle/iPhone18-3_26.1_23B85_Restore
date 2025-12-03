@interface HPSThirdPartyHeadphone
- (HPSThirdPartyHeadphone)initWithLEDevice:(id)device classicDevice:(id)classicDevice daDevice:(id)daDevice avDevice:(id)avDevice;
- (UIImage)image;
@end

@implementation HPSThirdPartyHeadphone

- (HPSThirdPartyHeadphone)initWithLEDevice:(id)device classicDevice:(id)classicDevice daDevice:(id)daDevice avDevice:(id)avDevice
{
  deviceCopy = device;
  classicDeviceCopy = classicDevice;
  daDeviceCopy = daDevice;
  avDeviceCopy = avDevice;
  v19.receiver = self;
  v19.super_class = HPSThirdPartyHeadphone;
  v15 = [(HPSThirdPartyHeadphone *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_leDevice, device);
    objc_storeStrong(&v16->_classicDevice, classicDevice);
    objc_storeStrong(&v16->_daDevice, daDevice);
    objc_storeStrong(&v16->_avDevice, avDevice);
    [deviceCopy setUnderlyingDADevice:daDeviceCopy];
    name = [deviceCopy name];
    [classicDeviceCopy setAccessorySetupKitDisplayName:name];

    [classicDeviceCopy setCtkdDevice:1];
  }

  return v16;
}

- (UIImage)image
{
  if ([(AVOutputDevice *)self->_avDevice deviceSubType]== 2)
  {
    v2 = @"headphones";
  }

  else
  {
    v2 = @"headset";
  }

  v3 = [MEMORY[0x277D755B8] systemImageNamed:v2];

  return v3;
}

@end