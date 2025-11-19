@interface HMDHomeDefaultDataSource
- (HMDDeviceLockStateDataSource)deviceLockStateDataSource;
- (HMDHomeDefaultDataSource)init;
- (HMDIDSIDQueryController)idsIDQueryController;
- (id)makeAccessoryMatterCapabilitiesForFilename:(int64_t)a3;
- (id)makeHomeActivityStateManagerWithHome:(id)a3;
- (id)makeHomeMetricsDispatcherWithIdentifier:(id)a3 logEventSubmitter:(id)a4;
- (id)makeHomePresenceMonitor;
- (id)makeModernMessagingHandlerWithMappings:(id)a3;
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

- (HMDIDSIDQueryController)idsIDQueryController
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)makeSwiftExtensionsWithHome:(id)a3
{
  v4 = objc_allocWithZone(_s22DefaultSwiftExtensionsCMa_0());
  v5 = a3;
  v6 = sub_2297ACD98(v5);

  return v6;
}

- (id)makeNotificationRegistry
{
  v2 = [objc_allocWithZone(HMDNotificationRegistry) init];

  return v2;
}

- (id)makeResidentDeviceManagerWithHomeUUID:(id)a3
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v8 = objc_opt_self();
  v9 = sub_22A4DB77C();
  v10 = [v8 createManagerForHomeUUID_];

  (*(v4 + 8))(v7, v3);

  return v10;
}

- (id)makeHomeMetricsDispatcherWithIdentifier:(id)a3 logEventSubmitter:(id)a4
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v10 = objc_allocWithZone(HMDHomeMetricsDispatcher);
  swift_unknownObjectRetain();
  v11 = sub_22A4DB77C();
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

- (id)makeAccessoryMatterCapabilitiesForFilename:(int64_t)a3
{
  v3 = [objc_opt_self() makeInstanceForAssetFilename_];

  return v3;
}

- (id)makeModernMessagingHandlerWithMappings:(id)a3
{
  sub_22A4DD49C();
  v3 = objc_allocWithZone(HMDModernMessagingHandler);
  v4 = sub_22A4DD47C();

  v5 = [v3 initForMappings_];

  return v5;
}

- (id)makeHomeActivityStateManagerWithHome:(id)a3
{
  v3 = [objc_allocWithZone(HMDHomeActivityStateManager) initWithHome_];

  return v3;
}

- (id)makeHomePresenceMonitor
{
  v2 = [objc_allocWithZone(HMDHomePresenceMonitor) init];

  return v2;
}

@end