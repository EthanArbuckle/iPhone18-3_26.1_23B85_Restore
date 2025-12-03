@interface HMDHomeDefaultDataSource
- (HMDDeviceLockStateDataSource)deviceLockStateDataSource;
- (HMDHomeDefaultDataSource)init;
- (id)makeCurrentUserWithUserPrivilege:(unint64_t)privilege home:(id)home;
- (id)makeHomeMetricsDispatcherWithIdentifier:(id)identifier logEventSubmitter:(id)submitter;
- (id)makeHomePresenceMonitor;
- (id)makeNaturalLightingCurveWriterWithHome:(id)home;
- (id)makeNotificationRegistry;
- (id)makeReportingSessionManager;
- (id)makeResidentDeviceManagerWithHomeUUID:(id)d;
- (id)makeSiriSecureAccessoryAccessControllerWithDataSource:(id)source;
- (id)makeSwiftExtensionsWithHome:(id)home;
@end

@implementation HMDHomeDefaultDataSource

- (HMDHomeDefaultDataSource)init
{
  v3.receiver = self;
  v3.super_class = HMDHomeDefaultDataSource;
  return [(HMDHomeDefaultDataSource *)&v3 init];
}

- (HMDDeviceLockStateDataSource)deviceLockStateDataSource
{
  v2 = [objc_allocWithZone(HMDDeviceLockStateDataSource) init];

  return v2;
}

- (id)makeSwiftExtensionsWithHome:(id)home
{
  v4 = objc_allocWithZone(_s22DefaultSwiftExtensionsCMa());
  homeCopy = home;
  v6 = sub_253208B60(homeCopy);

  return v6;
}

- (id)makeNotificationRegistry
{
  v2 = [objc_allocWithZone(HMDNotificationRegistry) init];

  return v2;
}

- (id)makeResidentDeviceManagerWithHomeUUID:(id)d
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFF38();
  v8 = objc_opt_self();
  v9 = sub_253CCFF18();
  createManagerForHomeUUID_ = [v8 createManagerForHomeUUID_];

  (*(v4 + 8))(v7, v3);

  return createManagerForHomeUUID_;
}

- (id)makeCurrentUserWithUserPrivilege:(unint64_t)privilege home:(id)home
{
  v4 = [objc_opt_self() currentUserWithPrivilege:privilege forHome:home];

  return v4;
}

- (id)makeHomeMetricsDispatcherWithIdentifier:(id)identifier logEventSubmitter:(id)submitter
{
  v5 = sub_253CCFF58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFF38();
  v10 = objc_allocWithZone(HMDHomeMetricsDispatcher);
  swift_unknownObjectRetain();
  v11 = sub_253CCFF18();
  v12 = [v10 initWithIdentifier:v11 logEventSubmitter:submitter];
  swift_unknownObjectRelease();

  (*(v6 + 8))(v9, v5);

  return v12;
}

- (id)makeReportingSessionManager
{
  v2 = [objc_allocWithZone(HMDXPCMessageReportingSessionManager) init];

  return v2;
}

- (id)makeSiriSecureAccessoryAccessControllerWithDataSource:(id)source
{
  initWithDataSource_ = [objc_allocWithZone(HMDSiriSecureAccessoryAccessController) initWithDataSource_];

  return initWithDataSource_;
}

- (id)makeNaturalLightingCurveWriterWithHome:(id)home
{
  initWithHome_ = [objc_allocWithZone(HMDHomeNaturalLightingCurveWriter) initWithHome_];

  return initWithHome_;
}

- (id)makeHomePresenceMonitor
{
  v2 = [objc_allocWithZone(HMDHomePresenceMonitor) init];

  return v2;
}

@end