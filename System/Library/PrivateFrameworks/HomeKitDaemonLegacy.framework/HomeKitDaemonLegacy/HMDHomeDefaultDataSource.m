@interface HMDHomeDefaultDataSource
- (HMDDeviceLockStateDataSource)deviceLockStateDataSource;
- (HMDHomeDefaultDataSource)init;
- (id)makeCurrentUserWithUserPrivilege:(unint64_t)a3 home:(id)a4;
- (id)makeHomeMetricsDispatcherWithIdentifier:(id)a3 logEventSubmitter:(id)a4;
- (id)makeHomePresenceMonitor;
- (id)makeNaturalLightingCurveWriterWithHome:(id)a3;
- (id)makeNotificationRegistry;
- (id)makeReportingSessionManager;
- (id)makeResidentDeviceManagerWithHomeUUID:(id)a3;
- (id)makeSiriSecureAccessoryAccessControllerWithDataSource:(id)a3;
- (id)makeSwiftExtensionsWithHome:(id)a3;
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

- (id)makeSwiftExtensionsWithHome:(id)a3
{
  v4 = objc_allocWithZone(_s22DefaultSwiftExtensionsCMa());
  v5 = a3;
  v6 = sub_253208B60(v5);

  return v6;
}

- (id)makeNotificationRegistry
{
  v2 = [objc_allocWithZone(HMDNotificationRegistry) init];

  return v2;
}

- (id)makeResidentDeviceManagerWithHomeUUID:(id)a3
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFF38();
  v8 = objc_opt_self();
  v9 = sub_253CCFF18();
  v10 = [v8 createManagerForHomeUUID_];

  (*(v4 + 8))(v7, v3);

  return v10;
}

- (id)makeCurrentUserWithUserPrivilege:(unint64_t)a3 home:(id)a4
{
  v4 = [objc_opt_self() currentUserWithPrivilege:a3 forHome:a4];

  return v4;
}

- (id)makeHomeMetricsDispatcherWithIdentifier:(id)a3 logEventSubmitter:(id)a4
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
  v12 = [v10 initWithIdentifier:v11 logEventSubmitter:a4];
  swift_unknownObjectRelease();

  (*(v6 + 8))(v9, v5);

  return v12;
}

- (id)makeReportingSessionManager
{
  v2 = [objc_allocWithZone(HMDXPCMessageReportingSessionManager) init];

  return v2;
}

- (id)makeSiriSecureAccessoryAccessControllerWithDataSource:(id)a3
{
  v3 = [objc_allocWithZone(HMDSiriSecureAccessoryAccessController) initWithDataSource_];

  return v3;
}

- (id)makeNaturalLightingCurveWriterWithHome:(id)a3
{
  v3 = [objc_allocWithZone(HMDHomeNaturalLightingCurveWriter) initWithHome_];

  return v3;
}

- (id)makeHomePresenceMonitor
{
  v2 = [objc_allocWithZone(HMDHomePresenceMonitor) init];

  return v2;
}

@end