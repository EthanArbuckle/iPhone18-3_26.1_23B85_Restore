@interface HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent
+ (id)eventWithHome:(id)a3;
- (HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent)initWithAutoThirdPartyUpdateEnable:(BOOL)a3 numHAPAccessories:(unint64_t)a4 numCameraAccessories:(unint64_t)a5 numCameraAccessoriesRecordingEnabled:(unint64_t)a6 numSecurityClassAccessories:(unint64_t)a7 numCriticalSensorAccessories:(unint64_t)a8;
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

- (HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent)initWithAutoThirdPartyUpdateEnable:(BOOL)a3 numHAPAccessories:(unint64_t)a4 numCameraAccessories:(unint64_t)a5 numCameraAccessoriesRecordingEnabled:(unint64_t)a6 numSecurityClassAccessories:(unint64_t)a7 numCriticalSensorAccessories:(unint64_t)a8
{
  v15.receiver = self;
  v15.super_class = HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent;
  result = [(HMMLogEvent *)&v15 init];
  if (result)
  {
    result->_autoThirdPartySoftwareUpdateEnable = a3;
    result->_numHAPAccessories = a4;
    result->_numCameraAccessories = a5;
    result->_numCameraAccessoriesRecordingEnabled = a6;
    result->_numSecurityClassAccessories = a7;
    result->_numCriticalSensorAccessories = a8;
  }

  return result;
}

+ (id)eventWithHome:(id)a3
{
  v3 = a3;
  v4 = [v3 accessoryCount];
  v5 = [v3 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];

  v6 = +[HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent eventWithAutoThirdPartyUpdateEnable:numHAPAccessories:numCameraAccessories:numCameraAccessoriesRecordingEnabled:numSecurityClassAccessories:numCriticalSensorAccessories:](HMDAccessorySoftwareUpdateAutoThirdPartyToggledEvent, "eventWithAutoThirdPartyUpdateEnable:numHAPAccessories:numCameraAccessories:numCameraAccessoriesRecordingEnabled:numSecurityClassAccessories:numCriticalSensorAccessories:", v5, [v4 numHAPAccessories], objc_msgSend(v4, "numCameraAccessories"), objc_msgSend(v4, "numCameraAccessoriesRecordingEnabled"), objc_msgSend(v4, "numSecurityClassAccessories"), objc_msgSend(v4, "numCriticalSensorAccessories"));

  return v6;
}

@end