@interface HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent
+ (id)eventWithHome:(id)home;
- (HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent)initWithAutoThirdPartyUpdateEnable:(BOOL)enable numHAPAccessories:(unint64_t)accessories numCameraAccessories:(unint64_t)cameraAccessories numCameraAccessoriesRecordingEnabled:(unint64_t)enabled numSecurityClassAccessories:(unint64_t)classAccessories numCriticalSensorAccessories:(unint64_t)sensorAccessories;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"autoThirdPartySoftwareUpdateEnable";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent autoThirdPartySoftwareUpdateEnable](self, "autoThirdPartySoftwareUpdateEnable")}];
  v13[0] = v3;
  v12[1] = @"numHAPAccessories";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent numHAPAccessories](self, "numHAPAccessories")}];
  v13[1] = v4;
  v12[2] = @"numCameraAccessories";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent numCameraAccessories](self, "numCameraAccessories")}];
  v13[2] = v5;
  v12[3] = @"numCameraAccessoriesRecordingEnabled";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent numCameraAccessoriesRecordingEnabled](self, "numCameraAccessoriesRecordingEnabled")}];
  v13[3] = v6;
  v12[4] = @"numSecurityClassAccessories";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent numSecurityClassAccessories](self, "numSecurityClassAccessories")}];
  v13[4] = v7;
  v12[5] = @"numCriticalSensorAccessories";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent numCriticalSensorAccessories](self, "numCriticalSensorAccessories")}];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent)initWithAutoThirdPartyUpdateEnable:(BOOL)enable numHAPAccessories:(unint64_t)accessories numCameraAccessories:(unint64_t)cameraAccessories numCameraAccessoriesRecordingEnabled:(unint64_t)enabled numSecurityClassAccessories:(unint64_t)classAccessories numCriticalSensorAccessories:(unint64_t)sensorAccessories
{
  v15.receiver = self;
  v15.super_class = HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent;
  result = [(HMMLogEvent *)&v15 init];
  if (result)
  {
    result->_autoThirdPartySoftwareUpdateEnable = enable;
    result->_numHAPAccessories = accessories;
    result->_numCameraAccessories = cameraAccessories;
    result->_numCameraAccessoriesRecordingEnabled = enabled;
    result->_numSecurityClassAccessories = classAccessories;
    result->_numCriticalSensorAccessories = sensorAccessories;
  }

  return result;
}

+ (id)eventWithHome:(id)home
{
  homeCopy = home;
  accessoryCount = [homeCopy accessoryCount];
  isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = [homeCopy isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];

  v6 = +[HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent eventWithAutoThirdPartyUpdateEnable:numHAPAccessories:numCameraAccessories:numCameraAccessoriesRecordingEnabled:numSecurityClassAccessories:numCriticalSensorAccessories:](HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent, "eventWithAutoThirdPartyUpdateEnable:numHAPAccessories:numCameraAccessories:numCameraAccessoriesRecordingEnabled:numSecurityClassAccessories:numCriticalSensorAccessories:", isAutomaticThirdPartyAccessorySoftwareUpdateEnabled, [accessoryCount numHAPAccessories], objc_msgSend(accessoryCount, "numCameraAccessories"), objc_msgSend(accessoryCount, "numCameraAccessoriesRecordingEnabled"), objc_msgSend(accessoryCount, "numSecurityClassAccessories"), objc_msgSend(accessoryCount, "numCriticalSensorAccessories"));

  return v6;
}

@end