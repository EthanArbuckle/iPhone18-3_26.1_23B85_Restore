@interface CUICalibration
+ (void)showCalibrationAlert;
@end

@implementation CUICalibration

+ (void)showCalibrationAlert
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.compass"];
  v3 = [MEMORY[0x277D0EC70] sharedPlatform];
  if (![v3 isInternalInstall])
  {

    goto LABEL_5;
  }

  v4 = [v2 BOOLForKey:@"CalibrationDisabled"];

  if (!v4)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28570E508];
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.CompassCalibration"];
    [v6 setRemoteObjectInterface:v5];
    [v6 resume];
    v7 = [v6 remoteObjectProxy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_243D6CA10;
    v9[3] = &unk_278DF27B0;
    v10 = v6;
    v8 = v6;
    [v7 showCalibrationAlert:v9];

    goto LABEL_6;
  }

  NSLog(&cfstr_TheCalibration.isa);
LABEL_6:
}

@end