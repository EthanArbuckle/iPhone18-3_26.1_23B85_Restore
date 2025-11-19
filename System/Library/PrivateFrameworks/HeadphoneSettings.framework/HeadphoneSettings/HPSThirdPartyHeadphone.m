@interface HPSThirdPartyHeadphone
- (HPSThirdPartyHeadphone)initWithLEDevice:(id)a3 classicDevice:(id)a4 daDevice:(id)a5 avDevice:(id)a6;
- (UIImage)image;
@end

@implementation HPSThirdPartyHeadphone

- (HPSThirdPartyHeadphone)initWithLEDevice:(id)a3 classicDevice:(id)a4 daDevice:(id)a5 avDevice:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = HPSThirdPartyHeadphone;
  v15 = [(HPSThirdPartyHeadphone *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_leDevice, a3);
    objc_storeStrong(&v16->_classicDevice, a4);
    objc_storeStrong(&v16->_daDevice, a5);
    objc_storeStrong(&v16->_avDevice, a6);
    [v11 setUnderlyingDADevice:v13];
    v17 = [v11 name];
    [v12 setAccessorySetupKitDisplayName:v17];

    [v12 setCtkdDevice:1];
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