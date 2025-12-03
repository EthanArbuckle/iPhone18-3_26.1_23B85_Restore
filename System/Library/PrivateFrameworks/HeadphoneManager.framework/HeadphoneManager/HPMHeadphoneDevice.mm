@interface HPMHeadphoneDevice
- (AudioAccessoryDevice)aaDevice;
- (BOOL)adaptiveVolume;
- (BOOL)batteryCharging;
- (BOOL)caseSound;
- (BOOL)conversationDetect;
- (BOOL)findMyNetworkEnable;
- (BOOL)findMyNetworkSupport;
- (BOOL)findMyNetworkValueUpdated;
- (BOOL)firmwareLoggingEnabled;
- (BOOL)firmwareUpgradeParticipation;
- (BOOL)inEarDetection;
- (BOOL)isAirpods;
- (BOOL)isCaseSoundSupported;
- (BOOL)isResettingCaseSoundOnError;
- (BOOL)isResettingFindMyNetworkOnError;
- (BOOL)isServiceSupported:(unsigned int)supported;
- (BOOL)isSettingCaseSoundValue;
- (BOOL)isSettingFindMyNetworkValue;
- (BOOL)isUpdatingDeviceConfig;
- (BOOL)isiCloudSignedIn;
- (BOOL)pressHoldAuto;
- (BOOL)pressHoldNoiseCancel;
- (BOOL)pressHoldOff;
- (BOOL)pressHoldTransparency;
- (BOOL)selectiveSpeechListening;
- (BOOL)shouldShowFindMyNetworkAlert;
- (BOOL)spatialProfileExists;
- (BOOL)supportsFeatureWithFeature:(int64_t)feature;
- (BOOL)validatePressHoldCombination;
- (BOOL)volumeControlToggle;
- (BOOL)volumeControlView;
- (BTAirPodsControlServiceClient)airPodsServiceClient;
- (CBDevice)cbDevice;
- (CBProductInfo)productInfo;
- (HPMHeadphoneDevice)initWithCbDevice:(id)device delegate:(id)delegate;
- (HPMHeadphoneDevice)initWith_aaDevice:(id)device cbDevice:(id)cbDevice delegate:(id)delegate;
- (NSDictionary)serialNumbers;
- (NSString)btAddress;
- (NSString)name;
- (SPOwnerSessionProtocol)findMyNetworkSession;
- (char)doubleTapActionLeft;
- (char)doubleTapActionRight;
- (char)microphoneMode;
- (char)smartRoutingMode;
- (float)batteryLevelCase;
- (float)batteryLevelLeft;
- (float)batteryLevelMain;
- (float)batteryLevelRight;
- (id)getFindMyUrlWithHpDevice:(id)device;
- (id)getModelName;
- (int)listeningMode;
- (unsigned)accessorySettingFeatureBitMask;
- (unsigned)batteryStateCase;
- (unsigned)batteryStateLeft;
- (unsigned)batteryStateMain;
- (unsigned)batteryStateRight;
- (unsigned)clickHoldModeLeft;
- (unsigned)clickHoldModeRight;
- (unsigned)crownRotationDirection;
- (unsigned)deviceColor;
- (unsigned)endCallGesture;
- (unsigned)listeningModeConfigs;
- (unsigned)muteControlGesture;
- (void)featureUpdateListenerWithCbDevice:(id)device;
- (void)featureUpdateListenerWith_aaDevice:(id)device cbDevice:(id)cbDevice;
- (void)getCaseSilentMode;
- (void)isSpatialProfileRecordPresent;
- (void)populateSerialNumbers;
- (void)removeSpatialProfileRecord;
- (void)resetToggle;
- (void)setAaDevice:(id)device;
- (void)setAccessorySettingFeatureBitMask:(unsigned int)mask;
- (void)setAdaptiveVolume:(BOOL)volume;
- (void)setAirPodsServiceClient:(id)client;
- (void)setBatteryCharging:(BOOL)charging;
- (void)setBatteryLevelCase:(float)case;
- (void)setBatteryLevelLeft:(float)left;
- (void)setBatteryLevelMain:(float)main;
- (void)setBatteryLevelRight:(float)right;
- (void)setBatteryStateCase:(unsigned __int8)case;
- (void)setBatteryStateLeft:(unsigned __int8)left;
- (void)setBatteryStateMain:(unsigned __int8)main;
- (void)setBatteryStateRight:(unsigned __int8)right;
- (void)setCaseSilentMode;
- (void)setCaseSound:(BOOL)sound;
- (void)setCbDevice:(id)device;
- (void)setClickHoldModeLeft:(unsigned __int8)left;
- (void)setClickHoldModeRight:(unsigned __int8)right;
- (void)setConversationDetect:(BOOL)detect;
- (void)setCrownRotationDirection:(unsigned __int8)direction;
- (void)setDeviceColor:(unsigned int)color;
- (void)setDoubleTapActionLeft:(char)left;
- (void)setDoubleTapActionRight:(char)right;
- (void)setEndCallGesture:(unsigned __int8)gesture;
- (void)setFindMyNetworkEnable:(BOOL)enable;
- (void)setFindMyNetworkSession:(id)session;
- (void)setFindMyNetworkSupport:(BOOL)support;
- (void)setFindMyNetworkValueUpdated:(BOOL)updated;
- (void)setFindMyStatus;
- (void)setFirmwareLoggingEnabled:(BOOL)enabled;
- (void)setFirmwareUpgradeParticipation:(BOOL)participation;
- (void)setInEarDetection:(BOOL)detection;
- (void)setIsAirpods:(BOOL)airpods;
- (void)setIsCaseSoundSupported:(BOOL)supported;
- (void)setIsResettingCaseSoundOnError:(BOOL)error;
- (void)setIsResettingFindMyNetworkOnError:(BOOL)error;
- (void)setIsSettingCaseSoundValue:(BOOL)value;
- (void)setIsSettingFindMyNetworkValue:(BOOL)value;
- (void)setIsUpdatingDeviceConfig:(BOOL)config;
- (void)setListeningMode:(int)mode;
- (void)setListeningModeConfigs:(unsigned int)configs;
- (void)setMicrophoneMode:(char)mode;
- (void)setMuteControlGesture:(unsigned __int8)gesture;
- (void)setName:(id)name;
- (void)setPressHoldAuto:(BOOL)auto;
- (void)setPressHoldDefaults;
- (void)setPressHoldNoiseCancel:(BOOL)cancel;
- (void)setPressHoldOff:(BOOL)off;
- (void)setPressHoldTransparency:(BOOL)transparency;
- (void)setProductInfo:(id)info;
- (void)setSelectiveSpeechListening:(BOOL)listening;
- (void)setSerialNumbers:(id)numbers;
- (void)setSmartRoutingMode:(char)mode;
- (void)setSpatialProfileExists:(BOOL)exists;
- (void)setVolumeControlToggle:(BOOL)toggle;
- (void)setVolumeControlView:(BOOL)view;
- (void)updateFeatureValuesWithFeature:(int64_t)feature;
@end

@implementation HPMHeadphoneDevice

- (CBDevice)cbDevice
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.cbDevice.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setCbDevice:(id)device
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.cbDevice.setter(device);
  MEMORY[0x1E69E5920](self);
}

- (CBProductInfo)productInfo
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.productInfo.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setProductInfo:(id)info
{
  MEMORY[0x1E69E5928](info);
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.productInfo.setter(info);
  MEMORY[0x1E69E5920](self);
}

- (AudioAccessoryDevice)aaDevice
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.aaDevice.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setAaDevice:(id)device
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.aaDevice.setter(device);
  MEMORY[0x1E69E5920](self);
}

- (NSString)btAddress
{
  MEMORY[0x1E69E5928](self);
  v5 = HeadphoneDevice.btAddress.getter();
  v6 = v2;
  MEMORY[0x1E69E5920](self);
  v7 = MEMORY[0x1DA730940](v5, v6);

  return v7;
}

- (BOOL)isUpdatingDeviceConfig
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.isUpdatingDeviceConfig.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setIsUpdatingDeviceConfig:(BOOL)config
{
  MEMORY[0x1E69E5928](self);
  v3 = _convertObjCBoolToBool(_:)();
  HeadphoneDevice.isUpdatingDeviceConfig.setter(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isAirpods
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.isAirpods.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setIsAirpods:(BOOL)airpods
{
  MEMORY[0x1E69E5928](self);
  v3 = _convertObjCBoolToBool(_:)();
  HeadphoneDevice.isAirpods.setter(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)findMyNetworkSupport
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.findMyNetworkSupport.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setFindMyNetworkSupport:(BOOL)support
{
  MEMORY[0x1E69E5928](self);
  v3 = _convertObjCBoolToBool(_:)();
  HeadphoneDevice.findMyNetworkSupport.setter(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isResettingFindMyNetworkOnError
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.isResettingFindMyNetworkOnError.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setIsResettingFindMyNetworkOnError:(BOOL)error
{
  MEMORY[0x1E69E5928](self);
  v3 = _convertObjCBoolToBool(_:)();
  HeadphoneDevice.isResettingFindMyNetworkOnError.setter(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)findMyNetworkEnable
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.findMyNetworkEnable.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setFindMyNetworkEnable:(BOOL)enable
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.findMyNetworkEnable.setter();
  MEMORY[0x1E69E5920](self);
}

- (SPOwnerSessionProtocol)findMyNetworkSession
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.findMyNetworkSession.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setFindMyNetworkSession:(id)session
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.findMyNetworkSession.setter(session);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)findMyNetworkValueUpdated
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.findMyNetworkValueUpdated.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setFindMyNetworkValueUpdated:(BOOL)updated
{
  MEMORY[0x1E69E5928](self);
  v3 = _convertObjCBoolToBool(_:)();
  HeadphoneDevice.findMyNetworkValueUpdated.setter(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isSettingFindMyNetworkValue
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.isSettingFindMyNetworkValue.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setIsSettingFindMyNetworkValue:(BOOL)value
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.isSettingFindMyNetworkValue.setter();
  MEMORY[0x1E69E5920](self);
}

- (NSString)name
{
  MEMORY[0x1E69E5928](self);
  v5 = HeadphoneDevice.name.getter();
  v6 = v2;
  MEMORY[0x1E69E5920](self);
  v7 = MEMORY[0x1DA730940](v5, v6);

  return v7;
}

- (void)setName:(id)name
{
  MEMORY[0x1E69E5928](name);
  MEMORY[0x1E69E5928](self);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  HeadphoneDevice.name.setter();
  MEMORY[0x1E69E5920](name);
  MEMORY[0x1E69E5920](self);
}

- (int)listeningMode
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.listeningMode.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setListeningMode:(int)mode
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.listeningMode.setter();
  MEMORY[0x1E69E5920](self);
}

- (unsigned)clickHoldModeLeft
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.clickHoldModeLeft.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setClickHoldModeLeft:(unsigned __int8)left
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.clickHoldModeLeft.setter();
  MEMORY[0x1E69E5920](self);
}

- (unsigned)clickHoldModeRight
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.clickHoldModeRight.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setClickHoldModeRight:(unsigned __int8)right
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.clickHoldModeRight.setter();
  MEMORY[0x1E69E5920](self);
}

- (unsigned)listeningModeConfigs
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.listeningModeConfigs.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setListeningModeConfigs:(unsigned int)configs
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.listeningModeConfigs.setter(configs);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)pressHoldAuto
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.pressHoldAuto.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setPressHoldAuto:(BOOL)auto
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.pressHoldAuto.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)pressHoldTransparency
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.pressHoldTransparency.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setPressHoldTransparency:(BOOL)transparency
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.pressHoldTransparency.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)pressHoldOff
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.pressHoldOff.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setPressHoldOff:(BOOL)off
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.pressHoldOff.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)pressHoldNoiseCancel
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.pressHoldNoiseCancel.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setPressHoldNoiseCancel:(BOOL)cancel
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.pressHoldNoiseCancel.setter();
  MEMORY[0x1E69E5920](self);
}

- (char)doubleTapActionLeft
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.doubleTapActionLeft.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setDoubleTapActionLeft:(char)left
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.doubleTapActionLeft.setter();
  MEMORY[0x1E69E5920](self);
}

- (char)doubleTapActionRight
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.doubleTapActionRight.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setDoubleTapActionRight:(char)right
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.doubleTapActionRight.setter();
  MEMORY[0x1E69E5920](self);
}

- (unsigned)crownRotationDirection
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.crownRotationDirection.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setCrownRotationDirection:(unsigned __int8)direction
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.crownRotationDirection.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)inEarDetection
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.inEarDetection.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setInEarDetection:(BOOL)detection
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.inEarDetection.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)batteryCharging
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.batteryCharging.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setBatteryCharging:(BOOL)charging
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.batteryCharging.setter();
  MEMORY[0x1E69E5920](self);
}

- (char)smartRoutingMode
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.smartRoutingMode.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setSmartRoutingMode:(char)mode
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.smartRoutingMode.setter();
  MEMORY[0x1E69E5920](self);
}

- (char)microphoneMode
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.microphoneMode.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setMicrophoneMode:(char)mode
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.microphoneMode.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)volumeControlToggle
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.volumeControlToggle.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setVolumeControlToggle:(BOOL)toggle
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.volumeControlToggle.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)volumeControlView
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.volumeControlView.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setVolumeControlView:(BOOL)view
{
  MEMORY[0x1E69E5928](self);
  v3 = _convertObjCBoolToBool(_:)();
  HeadphoneDevice.volumeControlView.setter(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)spatialProfileExists
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.spatialProfileExists.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setSpatialProfileExists:(BOOL)exists
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.spatialProfileExists.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isCaseSoundSupported
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.isCaseSoundSupported.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setIsCaseSoundSupported:(BOOL)supported
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.isCaseSoundSupported.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)caseSound
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.caseSound.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setCaseSound:(BOOL)sound
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.caseSound.setter();
  MEMORY[0x1E69E5920](self);
}

- (BTAirPodsControlServiceClient)airPodsServiceClient
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.airPodsServiceClient.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setAirPodsServiceClient:(id)client
{
  MEMORY[0x1E69E5928](client);
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.airPodsServiceClient.setter(client);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isResettingCaseSoundOnError
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.isResettingCaseSoundOnError.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setIsResettingCaseSoundOnError:(BOOL)error
{
  MEMORY[0x1E69E5928](self);
  v3 = _convertObjCBoolToBool(_:)();
  HeadphoneDevice.isResettingCaseSoundOnError.setter(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isSettingCaseSoundValue
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.isSettingCaseSoundValue.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setIsSettingCaseSoundValue:(BOOL)value
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.isSettingCaseSoundValue.setter();
  MEMORY[0x1E69E5920](self);
}

- (unsigned)endCallGesture
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.endCallGesture.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setEndCallGesture:(unsigned __int8)gesture
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.endCallGesture.setter();
  MEMORY[0x1E69E5920](self);
}

- (unsigned)muteControlGesture
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.muteControlGesture.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setMuteControlGesture:(unsigned __int8)gesture
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.muteControlGesture.setter();
  MEMORY[0x1E69E5920](self);
}

- (NSDictionary)serialNumbers
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.serialNumbers.getter();
  MEMORY[0x1E69E5920](self);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (void)setSerialNumbers:(id)numbers
{
  MEMORY[0x1E69E5928](numbers);
  MEMORY[0x1E69E5928](self);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  HeadphoneDevice.serialNumbers.setter();
  MEMORY[0x1E69E5920](numbers);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)selectiveSpeechListening
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.selectiveSpeechListening.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setSelectiveSpeechListening:(BOOL)listening
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.selectiveSpeechListening.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)conversationDetect
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.conversationDetect.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setConversationDetect:(BOOL)detect
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.conversationDetect.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)adaptiveVolume
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.adaptiveVolume.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setAdaptiveVolume:(BOOL)volume
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.adaptiveVolume.setter();
  MEMORY[0x1E69E5920](self);
}

- (float)batteryLevelMain
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.batteryLevelMain.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryLevelMain:(float)main
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.batteryLevelMain.setter();
  MEMORY[0x1E69E5920](self);
}

- (unsigned)batteryStateMain
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.batteryStateMain.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryStateMain:(unsigned __int8)main
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.batteryStateMain.setter();
  MEMORY[0x1E69E5920](self);
}

- (float)batteryLevelLeft
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.batteryLevelLeft.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryLevelLeft:(float)left
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.batteryLevelLeft.setter();
  MEMORY[0x1E69E5920](self);
}

- (unsigned)batteryStateLeft
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.batteryStateLeft.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryStateLeft:(unsigned __int8)left
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.batteryStateLeft.setter();
  MEMORY[0x1E69E5920](self);
}

- (float)batteryLevelRight
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.batteryLevelRight.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryLevelRight:(float)right
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.batteryLevelRight.setter();
  MEMORY[0x1E69E5920](self);
}

- (unsigned)batteryStateRight
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.batteryStateRight.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryStateRight:(unsigned __int8)right
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.batteryStateRight.setter();
  MEMORY[0x1E69E5920](self);
}

- (float)batteryLevelCase
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.batteryLevelCase.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryLevelCase:(float)case
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.batteryLevelCase.setter();
  MEMORY[0x1E69E5920](self);
}

- (unsigned)batteryStateCase
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.batteryStateCase.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryStateCase:(unsigned __int8)case
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.batteryStateCase.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)firmwareUpgradeParticipation
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.firmwareUpgradeParticipation.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setFirmwareUpgradeParticipation:(BOOL)participation
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.firmwareUpgradeParticipation.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)firmwareLoggingEnabled
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.firmwareLoggingEnabled.getter();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setFirmwareLoggingEnabled:(BOOL)enabled
{
  MEMORY[0x1E69E5928](self);
  _convertObjCBoolToBool(_:)();
  HeadphoneDevice.firmwareLoggingEnabled.setter();
  MEMORY[0x1E69E5920](self);
}

- (HPMHeadphoneDevice)initWithCbDevice:(id)device delegate:(id)delegate
{
  MEMORY[0x1E69E5928](device);
  swift_unknownObjectRetain();
  return HeadphoneDevice.init(cbDevice:delegate:)(device);
}

- (HPMHeadphoneDevice)initWith_aaDevice:(id)device cbDevice:(id)cbDevice delegate:(id)delegate
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](cbDevice);
  swift_unknownObjectRetain();
  return HeadphoneDevice.init(_aaDevice:cbDevice:delegate:)(device, cbDevice, delegate);
}

- (BOOL)supportsFeatureWithFeature:(int64_t)feature
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.supportsFeature(feature:)(feature);
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)updateFeatureValuesWithFeature:(int64_t)feature
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.updateFeatureValues(feature:)(feature);
  MEMORY[0x1E69E5920](self);
}

- (id)getFindMyUrlWithHpDevice:(id)device
{
  selfCopy = self;
  deviceCopy = device;
  v14 = type metadata accessor for URL();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v9 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](deviceCopy);
  v15 = &v9 - v9;
  MEMORY[0x1E69E5928](v4);
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.getFindMyUrl(hpDevice:)(deviceCopy, v15);
  MEMORY[0x1E69E5920](selfCopy);
  MEMORY[0x1E69E5920](deviceCopy);
  URL._bridgeToObjectiveC()(v5);
  v16 = v6;
  (*(v12 + 8))(v15, v14);
  v7 = v16;

  return v7;
}

- (void)featureUpdateListenerWith_aaDevice:(id)device cbDevice:(id)cbDevice
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](cbDevice);
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.featureUpdateListener(_aaDevice:cbDevice:)(device, cbDevice);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](cbDevice);
  MEMORY[0x1E69E5920](device);
}

- (void)featureUpdateListenerWithCbDevice:(id)device
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.featureUpdateListener(cbDevice:)(device);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](device);
}

- (id)getModelName
{
  MEMORY[0x1E69E5928](self);
  v2 = HeadphoneDevice.getModelName()();
  MEMORY[0x1E69E5920](self);
  v5 = MEMORY[0x1DA730940](v2._countAndFlagsBits, v2._object);

  return v5;
}

- (void)setFindMyStatus
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.setFindMyStatus()();
  MEMORY[0x1E69E5920](self);
}

- (void)resetToggle
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.resetToggle()();
  MEMORY[0x1E69E5920](self);
}

- (void)setCaseSilentMode
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.setCaseSilentMode()();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isiCloudSignedIn
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.isiCloudSignedIn()();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setPressHoldDefaults
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.setPressHoldDefaults()();
  MEMORY[0x1E69E5920](self);
}

- (void)isSpatialProfileRecordPresent
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.isSpatialProfileRecordPresent()();
  MEMORY[0x1E69E5920](self);
}

- (void)removeSpatialProfileRecord
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.removeSpatialProfileRecord()();
  MEMORY[0x1E69E5920](self);
}

- (void)getCaseSilentMode
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.getCaseSilentMode()();
  MEMORY[0x1E69E5920](self);
}

- (void)populateSerialNumbers
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.populateSerialNumbers()();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)validatePressHoldCombination
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.validatePressHoldCombination()();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (BOOL)shouldShowFindMyNetworkAlert
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.shouldShowFindMyNetworkAlert()();
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (unsigned)accessorySettingFeatureBitMask
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.accessorySettingFeatureBitMask.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setAccessorySettingFeatureBitMask:(unsigned int)mask
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.accessorySettingFeatureBitMask.setter(mask);
  MEMORY[0x1E69E5920](self);
}

- (unsigned)deviceColor
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneDevice.deviceColor.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setDeviceColor:(unsigned int)color
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.deviceColor.setter(color);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isServiceSupported:(unsigned int)supported
{
  MEMORY[0x1E69E5928](self);
  HeadphoneDevice.isServiceSupported(_:)(supported);
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

@end