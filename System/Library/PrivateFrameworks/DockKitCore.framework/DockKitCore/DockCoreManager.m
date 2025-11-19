@interface DockCoreManager
+ (NSString)localFirmwarePath;
- (BOOL)monitorSystemTrackingStateWithDelegate:(id)a3 appID:(id)a4 error:(id *)a5;
- (NSError)_xpcConnectionError;
- (_TtP11DockKitCore22DockClientCertProtocol_)certDelegate;
- (_TtP11DockKitCore22SystemTrackingProtocol_)configDelegate;
- (_TtP11DockKitCore23DockClientDebugProtocol_)debugDelegate;
- (_TtP11DockKitCore33DockCoreManagerConnectionDelegate_)connectionDelegate;
- (_TtP11DockKitCore38XPCTrackingCameraCaptureClientProtocol_)clientConfigDelegate;
- (id)xpcConnection;
- (id)xpcConnection_CameraCapture;
- (id)xpcConnection_Cert;
- (id)xpcConnection_Debug;
- (id)xpcConnection_useEntitledIfOpen;
- (void)_disconnectTrackingActivityScene;
- (void)_getAccessoryDescriptionWithInfo:(id)a3 delegate:(id)a4 completion:(id)a5;
- (void)_getAccessoryDiagnosticsWithInfo:(id)a3 delegate:(id)a4 options:(id)a5 completion:(id)a6;
- (void)_getAccessoryDiagnosticsWithInfo:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_getClientConfigurationUpdatesWithDelegate:(id)a3 appID:(id)a4 completion:(id)a5;
- (void)_getSystemTrackingEnabledWithAppID:(id)a3 completion:(id)a4;
- (void)_getTrackerDebugNotificationsWithDelegate:(id)a3 completion:(id)a4;
- (void)_manualFirmwareUpdateWithFilePath:(id)a3 sandboxExt:(id)a4 delegate:(id)a5 completion:(id)a6;
- (void)_selectSubjectAt:(CGPoint)a3 completion:(id)a4;
- (void)_selectSubjects:(id)a3 completion:(id)a4;
- (void)_setDockAccessoryStateWithInfo:(id)a3 docked:(int64_t)a4 completion:(id)a5;
- (void)_setRectOfInterestWithRect:(CGRect)a3 completion:(id)a4;
- (void)_triggerSystemEventWithInfo:(id)a3 event:(id)a4 completion:(id)a5;
- (void)_updateCameraSessionWithSession:(id)a3 new:(BOOL)a4 completion:(id)a5;
- (void)clearAllDelegates;
- (void)clearAllSavedObjects;
- (void)clearXPCError;
- (void)closeXPCNoReply;
- (void)closeXPCNoReply_CameraCapture;
- (void)closeXPCNoReply_Cert;
- (void)closeXPCNoReply_Debug;
- (void)connectedClientsWithCompletionHandler:(id)a3;
- (void)connectedDockAccessoryWithCompletionHandler:(id)a3;
- (void)disconnect;
- (void)dockedDockAccessoryWithCompletionHandler:(id)a3;
- (void)dumpStateWithCompletionHandler:(id)a3;
- (void)dumpTrackerDiagsWithPath:(NSString *)a3 completionHandler:(id)a4;
- (void)dumpTrackerStatesWithPath:(NSString *)a3 completionHandler:(id)a4;
- (void)fwUpdateFeedbackWithProcessID:(int)a3 info:(id)a4 message:(id)a5 complete:(BOOL)a6 err:(id)a7;
- (void)getAccessoryDescriptionWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 delegate:(_TtP11DockKitCore27XPCDataStreamClientProtocol_ *)a4 completionHandler:(id)a5;
- (void)getAccessoryDiagnosticsWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)a4 options:(NSDictionary *)a5 completionHandler:(id)a6;
- (void)getAccessoryDiagnosticsWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 options:(NSDictionary *)a4 completionHandler:(id)a5;
- (void)getClientConfigurationUpdatesWithDelegate:(_TtP11DockKitCore38XPCTrackingCameraCaptureClientProtocol_ *)a3 appID:(NSString *)a4 completionHandler:(id)a5;
- (void)getDockTrackingButtonStateWithCompletionHandler:(id)a3;
- (void)getSystemTrackingEnabledWithAppID:(NSString *)a3 completionHandler:(id)a4;
- (void)getTrackerDebugNotificationsWithDelegate:(_TtP11DockKitCore23DockClientDebugProtocol_ *)a3 completionHandler:(id)a4;
- (void)haltWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)a4 completionHandler:(id)a5;
- (void)handleUnexpectedDisconnect;
- (void)manualFirmwareUpdateWithFilePath:(NSString *)a3 sandboxExt:(NSString *)a4 delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)a5 completionHandler:(id)a6;
- (void)migrateDataWithUpdate:(BOOL)a3 completionHandler:(id)a4;
- (void)notifyConfigDelegateWithAppID:(id)a3;
- (void)pairedDockAccessoriesWithCompletionHandler:(id)a3;
- (void)rebootWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)a4 completionHandler:(id)a5;
- (void)reportAPIUsageWithType:(unsigned __int8)a3 error:(id)a4;
- (void)returnToBaseWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 completionHandler:(id)a4;
- (void)searchWithCalibrate:(BOOL)a3 completionHandler:(id)a4;
- (void)selectSubjectAt:(CGPoint)a3 completionHandler:(id)a4;
- (void)selectSubjectAtEventWithX:(id)a3 y:(id)a4;
- (void)selectSubjects:(NSArray *)a3 completionHandler:(id)a4;
- (void)selectSubjectsEvent:(id)a3;
- (void)sendCommandEventWithCommand:(id)a3;
- (void)setCachedButtonStateWithEnabled:(BOOL)a3;
- (void)setCachedConnectedWithConnected:(id)a3;
- (void)setConnectedNotification:(id)a3;
- (void)setDarwinQueue:(id)a3;
- (void)setDockAccessoryStateWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 docked:(int64_t)a4 completionHandler:(id)a5;
- (void)setDockTrackingButtonStateWithState:(int64_t)a3 completionHandler:(id)a4;
- (void)setFramingModeEventWithMode:(int64_t)a3;
- (void)setFramingModeWithMode:(int64_t)a3 completionHandler:(id)a4;
- (void)setRectOfInterestEventWithRect:(CGRect)a3;
- (void)setRectOfInterestWithRect:(CGRect)a3 completionHandler:(id)a4;
- (void)setSystemTrackingEnabledWithEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setTrackingActivityWithEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setTrackingButtonNotification:(id)a3;
- (void)setTrackingEnableNotification:(id)a3;
- (void)set_connected:(id)a3;
- (void)set_xpcConnection:(id)a3;
- (void)set_xpcConnectionError:(id)a3;
- (void)set_xpcConnection_CameraCapture:(id)a3;
- (void)set_xpcConnection_Certification:(id)a3;
- (void)set_xpcConnection_Debug:(id)a3;
- (void)stopSearchWithCalibrate:(BOOL)a3 completionHandler:(id)a4;
- (void)stopStateEvents;
- (void)stopTrackerDebugNotificationsWithCompletionHandler:(id)a3;
- (void)syncStateAndGenerateStateEvents:(unint64_t)a3;
- (void)triggerSystemEventWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 event:(_TtC11DockKitCore20AccessorySystemEvent *)a4 completionHandler:(id)a5;
- (void)unpairAccessoryWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 completionHandler:(id)a4;
- (void)updateCameraSessionWithSession:(_TtC11DockKitCore24CameraSessionInformation *)a3 new:(BOOL)a4 completionHandler:(id)a5;
- (void)versionsWithCompletionHandler:(id)a3;
@end

@implementation DockCoreManager

- (void)_disconnectTrackingActivityScene
{
  v1 = a1;
  sub_2245DC628();
}

- (_TtP11DockKitCore33DockCoreManagerConnectionDelegate_)connectionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)set_xpcConnection:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection) = a3;
  v3 = a3;
}

- (NSError)_xpcConnectionError
{
  v2 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  if (v2)
  {
    v3 = v2;
    v4 = sub_224626FA8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)set_xpcConnectionError:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = a3;
  v4 = a3;
}

- (_TtP11DockKitCore22SystemTrackingProtocol_)configDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtP11DockKitCore23DockClientDebugProtocol_)debugDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtP11DockKitCore38XPCTrackingCameraCaptureClientProtocol_)clientConfigDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtP11DockKitCore22DockClientCertProtocol_)certDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setConnectedNotification:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification) = a3;
  v3 = a3;
}

- (void)setTrackingEnableNotification:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingEnableNotification);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingEnableNotification) = a3;
  v3 = a3;
}

- (void)setTrackingButtonNotification:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification) = a3;
  v3 = a3;
}

- (void)setDarwinQueue:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_darwinQueue);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_darwinQueue) = a3;
  v3 = a3;
}

- (void)set_connected:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected) = a3;
  v3 = a3;
}

+ (NSString)localFirmwarePath
{
  _s11DockKitCore0aC7ManagerC17localFirmwarePathSSSgvgZ_0();
  if (v2)
  {
    v3 = sub_224627CB8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)clearAllSavedObjects
{
  v2 = self;
  sub_2245D4C5C();
}

- (void)clearAllDelegates
{
  v2 = self;
  sub_2245D4DE0();
}

- (void)disconnect
{
  v2 = self;
  DockCoreManager.disconnect()();
}

- (void)clearXPCError
{
  v3 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  v7 = self;

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v7 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(v7 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v6 = *(self + v3);

  os_unfair_lock_unlock(v6 + 4);
}

- (id)xpcConnection
{
  v2 = self;
  v3 = sub_2245D53F8();

  return v3;
}

- (id)xpcConnection_useEntitledIfOpen
{
  v2 = self;
  v3 = sub_2245D6690();

  return v3;
}

- (void)handleUnexpectedDisconnect
{
  v2 = self;
  sub_2245D62DC();
}

- (void)closeXPCNoReply
{
  v2 = self;
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
}

- (void)pairedDockAccessoriesWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224633160;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224633168;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224633170, v12);
}

- (void)selectSubjects:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224633140;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224633148;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_224616E14(0, 0, v9, &unk_224633150, v14);
}

- (void)_selectSubjects:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_224627ED8();
  _Block_copy(v5);
  v7 = self;
  sub_2245FB60C(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)selectSubjectAt:(CGPoint)a3 completionHandler:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = x;
  v12[3] = y;
  *(v12 + 4) = v11;
  *(v12 + 5) = self;
  v13 = sub_224627F78();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224633120;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224633128;
  v15[5] = v14;
  v16 = self;
  sub_224616E14(0, 0, v10, &unk_224633130, v15);
}

- (void)_selectSubjectAt:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = _Block_copy(a4);
  _Block_copy(v7);
  v8 = self;
  sub_2245FC2A8(v8, v7, x, y);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)setFramingModeWithMode:(int64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224633100;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224633108;
  v14[5] = v13;
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_224633110, v14);
}

- (void)setRectOfInterestWithRect:(CGRect)a3 completionHandler:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a4);
  v14 = swift_allocObject();
  v14[2] = x;
  v14[3] = y;
  v14[4] = width;
  v14[5] = height;
  *(v14 + 6) = v13;
  *(v14 + 7) = self;
  v15 = sub_224627F78();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2246330E0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2246330E8;
  v17[5] = v16;
  v18 = self;
  sub_224616E14(0, 0, v12, &unk_2246330F0, v17);
}

- (void)_setRectOfInterestWithRect:(CGRect)a3 completion:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = _Block_copy(a4);
  _Block_copy(v9);
  v10 = self;
  sub_2245FCE60(v10, v9, x, y, width, height);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)reportAPIUsageWithType:(unsigned __int8)a3 error:(id)a4
{
  v7 = a4;
  v8 = self;
  sub_2245DA9D4(a3, a4);
}

- (void)getClientConfigurationUpdatesWithDelegate:(_TtP11DockKitCore38XPCTrackingCameraCaptureClientProtocol_ *)a3 appID:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2246330C0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2246330C8;
  v16[5] = v15;
  swift_unknownObjectRetain();
  v17 = a4;
  v18 = self;
  sub_224616E14(0, 0, v11, &unk_2246330D0, v16);
}

- (void)_getClientConfigurationUpdatesWithDelegate:(id)a3 appID:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_224627CD8();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v12 = self;
  sub_2245F90F8(a3, v8, v10, sub_22460AC50, v11, v12);
  swift_unknownObjectRelease();
}

- (void)setFramingModeEventWithMode:(int64_t)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = self;
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong setFramingModeEventWithMode_];
      swift_unknownObjectRelease();
    }
  }
}

- (void)selectSubjectAtEventWithX:(id)a3 y:(id)a4
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = a3;
    v8 = a4;
    v10 = self;
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong selectSubjectAtEventWithX:v7 y:v8];
      swift_unknownObjectRelease();
    }
  }
}

- (void)selectSubjectsEvent:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a3;
    v7 = self;
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong selectSubjectsEvent_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

- (void)setRectOfInterestEventWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = self;
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong setRectOfInterestEventWithRect_];
      swift_unknownObjectRelease();
    }
  }
}

- (void)sendCommandEventWithCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_224627038();
  v8 = v7;

  if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v10 = Strong;
    v11 = sub_224627028();
    [v10 sendCommandEventWithCommand_];

    sub_22452F684(v6, v8);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_22452F684(v6, v8);
  }
}

- (void)connectedDockAccessoryWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2246330A0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2246330A8;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_2246330B0, v12);
}

- (void)dockedDockAccessoryWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224633080;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224633088;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224633090, v12);
}

- (void)getDockTrackingButtonStateWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224633060;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224633068;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224633070, v12);
}

- (void)updateCameraSessionWithSession:(_TtC11DockKitCore24CameraSessionInformation *)a3 new:(BOOL)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224633030;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224633038;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_224616E14(0, 0, v11, &unk_224633040, v16);
}

- (void)_updateCameraSessionWithSession:(id)a3 new:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_2245FE6D0(v9, v5, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)setSystemTrackingEnabledWithEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224633010;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224633018;
  v14[5] = v13;
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_224633020, v14);
}

- (void)getSystemTrackingEnabledWithAppID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632FF0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632FF8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_224616E14(0, 0, v9, &unk_224633000, v14);
}

- (void)_getSystemTrackingEnabledWithAppID:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_224627CD8();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_2245FFD50(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)stopStateEvents
{
  v2 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification);
  if (v2)
  {
    *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification) = 0;
    v3 = self;
  }

  else
  {
    v4 = self;
  }

  v5 = self;
  v6 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification);
  if (v6)
  {
    *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification) = 0;

    v5 = v6;
  }
}

- (BOOL)monitorSystemTrackingStateWithDelegate:(id)a3 appID:(id)a4 error:(id *)a5
{
  v7 = sub_224627CD8();
  v9 = v8;
  swift_unknownObjectRetain();
  v10 = self;
  DockCoreManager.monitorSystemTrackingState(delegate:appID:)(a3, v7, v9);

  swift_unknownObjectRelease();
  return 1;
}

- (void)notifyConfigDelegateWithAppID:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_224627CD8();
  v9 = v8;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = v7;
  v11[6] = v9;
  v12 = self;
  sub_2245E2798(0, 0, v6, &unk_224632FE0, v11);
}

- (void)setCachedConnectedWithConnected:(id)a3
{
  v5 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock);
  v6 = a3;
  v7 = self;

  os_unfair_lock_lock(v5 + 5);
  sub_2245E30D4(&v5[4], v7, a3, "setCachedConnected: 2 setting _connected to %@");
  os_unfair_lock_unlock(v5 + 5);
}

- (void)setCachedButtonStateWithEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock);
  v5 = self;

  os_unfair_lock_lock(v4 + 5);
  *(v5 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState) = v3;
  os_unfair_lock_unlock(v4 + 5);
}

- (void)syncStateAndGenerateStateEvents:(unint64_t)a3
{
  v3 = self;
  sub_224600358();
}

- (void)set_xpcConnection_Debug:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug) = a3;
  v3 = a3;
}

- (id)xpcConnection_Debug
{
  v2 = self;
  v3 = sub_2245E4F94();

  return v3;
}

- (void)closeXPCNoReply_Debug
{
  v2 = self;
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug);
}

- (void)setDockAccessoryStateWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 docked:(int64_t)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224632FB0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224632FB8;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_224616E14(0, 0, v11, &unk_224632FC0, v16);
}

- (void)_setDockAccessoryStateWithInfo:(id)a3 docked:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_224600594(v9, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)triggerSystemEventWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 event:(_TtC11DockKitCore20AccessorySystemEvent *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224632F90;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224632F98;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_224616E14(0, 0, v11, &unk_224632FA0, v16);
}

- (void)_triggerSystemEventWithInfo:(id)a3 event:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_224600B70(v9, v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)getTrackerDebugNotificationsWithDelegate:(_TtP11DockKitCore23DockClientDebugProtocol_ *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632F70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632F78;
  v14[5] = v13;
  swift_unknownObjectRetain();
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_224632F80, v14);
}

- (void)_getTrackerDebugNotificationsWithDelegate:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = self;
  sub_2245F9CA8(a3, sub_22460A948, v7, v8);
  swift_unknownObjectRelease();
}

- (void)stopTrackerDebugNotificationsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224632F50;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224632F58;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224632F60, v12);
}

- (void)getAccessoryDescriptionWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 delegate:(_TtP11DockKitCore27XPCDataStreamClientProtocol_ *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224632F30;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224632F38;
  v16[5] = v15;
  v17 = a3;
  swift_unknownObjectRetain();
  v18 = self;
  sub_224616E14(0, 0, v11, &unk_224632F40, v16);
}

- (void)_getAccessoryDescriptionWithInfo:(id)a3 delegate:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = self;
  sub_22460173C(a3, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);

  swift_unknownObjectRelease();
}

- (void)set_xpcConnection_Certification:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification) = a3;
  v3 = a3;
}

- (id)xpcConnection_Cert
{
  v2 = self;
  v3 = sub_2245E8814();

  return v3;
}

- (void)closeXPCNoReply_Cert
{
  v2 = self;
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification);
}

- (void)getAccessoryDiagnosticsWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)a4 options:(NSDictionary *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_224627F78();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_224632F10;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_224632F18;
  v18[5] = v17;
  v19 = a3;
  swift_unknownObjectRetain();
  v20 = a5;
  v21 = self;
  sub_224616E14(0, 0, v13, &unk_224632F20, v18);
}

- (void)_getAccessoryDiagnosticsWithInfo:(id)a3 delegate:(id)a4 options:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  sub_22450950C(0, &unk_27D0C89A0);
  v10 = sub_224627C58();
  _Block_copy(v9);
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  sub_224601CD8(a3, a4, v10, v12, v9);
  _Block_release(v9);
  _Block_release(v9);

  swift_unknownObjectRelease();
}

- (void)getAccessoryDiagnosticsWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 options:(NSDictionary *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224632EF0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224632EF8;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_224616E14(0, 0, v11, &unk_224632F00, v16);
}

- (void)_getAccessoryDiagnosticsWithInfo:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_22450950C(0, &unk_27D0C89A0);
  v8 = sub_224627C58();
  _Block_copy(v7);
  v9 = a3;
  v10 = self;
  sub_2246022B4(a3, v8, v10, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)manualFirmwareUpdateWithFilePath:(NSString *)a3 sandboxExt:(NSString *)a4 delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_224627F78();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_224632ED0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_224632ED8;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  swift_unknownObjectRetain();
  v21 = self;
  sub_224616E14(0, 0, v13, &unk_224632EE0, v18);
}

- (void)_manualFirmwareUpdateWithFilePath:(id)a3 sandboxExt:(id)a4 delegate:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_224627CD8();
  v11 = v10;
  v12 = sub_224627CD8();
  v14 = v13;
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v15 = self;
  sub_22460287C(v9, v11, v12, v14, a5, v15, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)haltWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224632EB0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224632EB8;
  v16[5] = v15;
  v17 = a3;
  swift_unknownObjectRetain();
  v18 = self;
  sub_224616E14(0, 0, v11, &unk_224632EC0, v16);
}

- (void)set_xpcConnection_CameraCapture:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture) = a3;
  v3 = a3;
}

- (id)xpcConnection_CameraCapture
{
  v2 = self;
  v3 = sub_2245D6734();

  return v3;
}

- (void)closeXPCNoReply_CameraCapture
{
  v2 = self;
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
}

- (void)rebootWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224632E90;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224632E98;
  v16[5] = v15;
  v17 = a3;
  swift_unknownObjectRetain();
  v18 = self;
  sub_224616E14(0, 0, v11, &unk_224632EA0, v16);
}

- (void)connectedClientsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224632E70;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224632E78;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224632E80, v12);
}

- (void)versionsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224632E50;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224632E58;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224632E60, v12);
}

- (void)migrateDataWithUpdate:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632E40;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224631D10;
  v14[5] = v13;
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_224631D18, v14);
}

- (void)dumpStateWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224632E20;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224632E28;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224632E30, v12);
}

- (void)unpairAccessoryWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632E00;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632E08;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_224616E14(0, 0, v9, &unk_224632E10, v14);
}

- (void)returnToBaseWithInfo:(_TtC11DockKitCore12DockCoreInfo *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632DE0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632DE8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_224616E14(0, 0, v9, &unk_224632DF0, v14);
}

- (void)dumpTrackerDiagsWithPath:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632DB0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632DB8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_224616E14(0, 0, v9, &unk_224632DC0, v14);
}

- (void)dumpTrackerStatesWithPath:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632D90;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632D98;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_224616E14(0, 0, v9, &unk_224632DA0, v14);
}

- (void)searchWithCalibrate:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632D70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632D78;
  v14[5] = v13;
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_224632D80, v14);
}

- (void)stopSearchWithCalibrate:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632D50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632D58;
  v14[5] = v13;
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_224632D60, v14);
}

- (void)setDockTrackingButtonStateWithState:(int64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632D30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224632D38;
  v14[5] = v13;
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_224632D40, v14);
}

- (void)setTrackingActivityWithEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224632D10;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2246336D0;
  v14[5] = v13;
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_22462F560, v14);
}

- (void)fwUpdateFeedbackWithProcessID:(int)a3 info:(id)a4 message:(id)a5 complete:(BOOL)a6 err:(id)a7
{
  v10 = *&a3;
  v12 = sub_224627CD8();
  v14 = v13;
  v15 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_fwUpdateFeedbackLock);
  v16 = a4;
  v17 = self;
  v18 = a7;

  os_unfair_lock_lock(v15 + 5);
  sub_2245F8444(&v15[4], v17, v10, v16, v12, v14, a6, a7);
  os_unfair_lock_unlock(v15 + 5);
}

@end