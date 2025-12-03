@interface DockCoreManager
+ (NSString)localFirmwarePath;
- (BOOL)monitorSystemTrackingStateWithDelegate:(id)delegate appID:(id)d error:(id *)error;
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
- (void)_getAccessoryDescriptionWithInfo:(id)info delegate:(id)delegate completion:(id)completion;
- (void)_getAccessoryDiagnosticsWithInfo:(id)info delegate:(id)delegate options:(id)options completion:(id)completion;
- (void)_getAccessoryDiagnosticsWithInfo:(id)info options:(id)options completion:(id)completion;
- (void)_getClientConfigurationUpdatesWithDelegate:(id)delegate appID:(id)d completion:(id)completion;
- (void)_getSystemTrackingEnabledWithAppID:(id)d completion:(id)completion;
- (void)_getTrackerDebugNotificationsWithDelegate:(id)delegate completion:(id)completion;
- (void)_manualFirmwareUpdateWithFilePath:(id)path sandboxExt:(id)ext delegate:(id)delegate completion:(id)completion;
- (void)_selectSubjectAt:(CGPoint)at completion:(id)completion;
- (void)_selectSubjects:(id)subjects completion:(id)completion;
- (void)_setDockAccessoryStateWithInfo:(id)info docked:(int64_t)docked completion:(id)completion;
- (void)_setRectOfInterestWithRect:(CGRect)rect completion:(id)completion;
- (void)_triggerSystemEventWithInfo:(id)info event:(id)event completion:(id)completion;
- (void)_updateCameraSessionWithSession:(id)session new:(BOOL)new completion:(id)completion;
- (void)clearAllDelegates;
- (void)clearAllSavedObjects;
- (void)clearXPCError;
- (void)closeXPCNoReply;
- (void)closeXPCNoReply_CameraCapture;
- (void)closeXPCNoReply_Cert;
- (void)closeXPCNoReply_Debug;
- (void)connectedClientsWithCompletionHandler:(id)handler;
- (void)connectedDockAccessoryWithCompletionHandler:(id)handler;
- (void)disconnect;
- (void)dockedDockAccessoryWithCompletionHandler:(id)handler;
- (void)dumpStateWithCompletionHandler:(id)handler;
- (void)dumpTrackerDiagsWithPath:(NSString *)path completionHandler:(id)handler;
- (void)dumpTrackerStatesWithPath:(NSString *)path completionHandler:(id)handler;
- (void)fwUpdateFeedbackWithProcessID:(int)d info:(id)info message:(id)message complete:(BOOL)complete err:(id)err;
- (void)getAccessoryDescriptionWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info delegate:(_TtP11DockKitCore27XPCDataStreamClientProtocol_ *)delegate completionHandler:(id)handler;
- (void)getAccessoryDiagnosticsWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)delegate options:(NSDictionary *)options completionHandler:(id)handler;
- (void)getAccessoryDiagnosticsWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info options:(NSDictionary *)options completionHandler:(id)handler;
- (void)getClientConfigurationUpdatesWithDelegate:(_TtP11DockKitCore38XPCTrackingCameraCaptureClientProtocol_ *)delegate appID:(NSString *)d completionHandler:(id)handler;
- (void)getDockTrackingButtonStateWithCompletionHandler:(id)handler;
- (void)getSystemTrackingEnabledWithAppID:(NSString *)d completionHandler:(id)handler;
- (void)getTrackerDebugNotificationsWithDelegate:(_TtP11DockKitCore23DockClientDebugProtocol_ *)delegate completionHandler:(id)handler;
- (void)haltWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)delegate completionHandler:(id)handler;
- (void)handleUnexpectedDisconnect;
- (void)manualFirmwareUpdateWithFilePath:(NSString *)path sandboxExt:(NSString *)ext delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)delegate completionHandler:(id)handler;
- (void)migrateDataWithUpdate:(BOOL)update completionHandler:(id)handler;
- (void)notifyConfigDelegateWithAppID:(id)d;
- (void)pairedDockAccessoriesWithCompletionHandler:(id)handler;
- (void)rebootWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)delegate completionHandler:(id)handler;
- (void)reportAPIUsageWithType:(unsigned __int8)type error:(id)error;
- (void)returnToBaseWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info completionHandler:(id)handler;
- (void)searchWithCalibrate:(BOOL)calibrate completionHandler:(id)handler;
- (void)selectSubjectAt:(CGPoint)at completionHandler:(id)handler;
- (void)selectSubjectAtEventWithX:(id)x y:(id)y;
- (void)selectSubjects:(NSArray *)subjects completionHandler:(id)handler;
- (void)selectSubjectsEvent:(id)event;
- (void)sendCommandEventWithCommand:(id)command;
- (void)setCachedButtonStateWithEnabled:(BOOL)enabled;
- (void)setCachedConnectedWithConnected:(id)connected;
- (void)setConnectedNotification:(id)notification;
- (void)setDarwinQueue:(id)queue;
- (void)setDockAccessoryStateWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info docked:(int64_t)docked completionHandler:(id)handler;
- (void)setDockTrackingButtonStateWithState:(int64_t)state completionHandler:(id)handler;
- (void)setFramingModeEventWithMode:(int64_t)mode;
- (void)setFramingModeWithMode:(int64_t)mode completionHandler:(id)handler;
- (void)setRectOfInterestEventWithRect:(CGRect)rect;
- (void)setRectOfInterestWithRect:(CGRect)rect completionHandler:(id)handler;
- (void)setSystemTrackingEnabledWithEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setTrackingActivityWithEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setTrackingButtonNotification:(id)notification;
- (void)setTrackingEnableNotification:(id)notification;
- (void)set_connected:(id)set_connected;
- (void)set_xpcConnection:(id)connection;
- (void)set_xpcConnectionError:(id)error;
- (void)set_xpcConnection_CameraCapture:(id)capture;
- (void)set_xpcConnection_Certification:(id)certification;
- (void)set_xpcConnection_Debug:(id)debug;
- (void)stopSearchWithCalibrate:(BOOL)calibrate completionHandler:(id)handler;
- (void)stopStateEvents;
- (void)stopTrackerDebugNotificationsWithCompletionHandler:(id)handler;
- (void)syncStateAndGenerateStateEvents:(unint64_t)events;
- (void)triggerSystemEventWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info event:(_TtC11DockKitCore20AccessorySystemEvent *)event completionHandler:(id)handler;
- (void)unpairAccessoryWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info completionHandler:(id)handler;
- (void)updateCameraSessionWithSession:(_TtC11DockKitCore24CameraSessionInformation *)session new:(BOOL)new completionHandler:(id)handler;
- (void)versionsWithCompletionHandler:(id)handler;
@end

@implementation DockCoreManager

- (void)_disconnectTrackingActivityScene
{
  selfCopy = self;
  sub_2245DC628();
}

- (_TtP11DockKitCore33DockCoreManagerConnectionDelegate_)connectionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)set_xpcConnection:(id)connection
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection) = connection;
  connectionCopy = connection;
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

- (void)set_xpcConnectionError:(id)error
{
  v3 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = error;
  errorCopy = error;
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

- (void)setConnectedNotification:(id)notification
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification) = notification;
  notificationCopy = notification;
}

- (void)setTrackingEnableNotification:(id)notification
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingEnableNotification);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingEnableNotification) = notification;
  notificationCopy = notification;
}

- (void)setTrackingButtonNotification:(id)notification
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification) = notification;
  notificationCopy = notification;
}

- (void)setDarwinQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_darwinQueue);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_darwinQueue) = queue;
  queueCopy = queue;
}

- (void)set_connected:(id)set_connected
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected) = set_connected;
  set_connectedCopy = set_connected;
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
  selfCopy = self;
  sub_2245D4C5C();
}

- (void)clearAllDelegates
{
  selfCopy = self;
  sub_2245D4DE0();
}

- (void)disconnect
{
  selfCopy = self;
  DockCoreManager.disconnect()();
}

- (void)clearXPCError
{
  v3 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  selfCopy = self;

  os_unfair_lock_lock(v4 + 4);

  v5 = *(selfCopy + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(selfCopy + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v6 = *(self + v3);

  os_unfair_lock_unlock(v6 + 4);
}

- (id)xpcConnection
{
  selfCopy = self;
  v3 = sub_2245D53F8();

  return v3;
}

- (id)xpcConnection_useEntitledIfOpen
{
  selfCopy = self;
  v3 = sub_2245D6690();

  return v3;
}

- (void)handleUnexpectedDisconnect
{
  selfCopy = self;
  sub_2245D62DC();
}

- (void)closeXPCNoReply
{
  selfCopy = self;
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
}

- (void)pairedDockAccessoriesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_224633170, v12);
}

- (void)selectSubjects:(NSArray *)subjects completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = subjects;
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
  subjectsCopy = subjects;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224633150, v14);
}

- (void)_selectSubjects:(id)subjects completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_224627ED8();
  _Block_copy(v5);
  selfCopy = self;
  sub_2245FB60C(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)selectSubjectAt:(CGPoint)at completionHandler:(id)handler
{
  y = at.y;
  x = at.x;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
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
  selfCopy = self;
  sub_224616E14(0, 0, v10, &unk_224633130, v15);
}

- (void)_selectSubjectAt:(CGPoint)at completion:(id)completion
{
  y = at.y;
  x = at.x;
  v7 = _Block_copy(completion);
  _Block_copy(v7);
  selfCopy = self;
  sub_2245FC2A8(selfCopy, v7, x, y);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)setFramingModeWithMode:(int64_t)mode completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = mode;
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
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224633110, v14);
}

- (void)setRectOfInterestWithRect:(CGRect)rect completionHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
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
  selfCopy = self;
  sub_224616E14(0, 0, v12, &unk_2246330F0, v17);
}

- (void)_setRectOfInterestWithRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = _Block_copy(completion);
  _Block_copy(v9);
  selfCopy = self;
  sub_2245FCE60(selfCopy, v9, x, y, width, height);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)reportAPIUsageWithType:(unsigned __int8)type error:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_2245DA9D4(type, error);
}

- (void)getClientConfigurationUpdatesWithDelegate:(_TtP11DockKitCore38XPCTrackingCameraCaptureClientProtocol_ *)delegate appID:(NSString *)d completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = delegate;
  v13[3] = d;
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
  dCopy = d;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_2246330D0, v16);
}

- (void)_getClientConfigurationUpdatesWithDelegate:(id)delegate appID:(id)d completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_224627CD8();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2245F90F8(delegate, v8, v10, sub_22460AC50, v11, selfCopy);
  swift_unknownObjectRelease();
}

- (void)setFramingModeEventWithMode:(int64_t)mode
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong setFramingModeEventWithMode_];
      swift_unknownObjectRelease();
    }
  }
}

- (void)selectSubjectAtEventWithX:(id)x y:(id)y
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    xCopy = x;
    yCopy = y;
    selfCopy = self;
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong selectSubjectAtEventWithX:xCopy y:yCopy];
      swift_unknownObjectRelease();
    }
  }
}

- (void)selectSubjectsEvent:(id)event
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    eventCopy = event;
    selfCopy = self;
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

- (void)setRectOfInterestEventWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong setRectOfInterestEventWithRect_];
      swift_unknownObjectRelease();
    }
  }
}

- (void)sendCommandEventWithCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
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

- (void)connectedDockAccessoryWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_2246330B0, v12);
}

- (void)dockedDockAccessoryWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_224633090, v12);
}

- (void)getDockTrackingButtonStateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_224633070, v12);
}

- (void)updateCameraSessionWithSession:(_TtC11DockKitCore24CameraSessionInformation *)session new:(BOOL)new completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = session;
  *(v13 + 24) = new;
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
  sessionCopy = session;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_224633040, v16);
}

- (void)_updateCameraSessionWithSession:(id)session new:(BOOL)new completion:(id)completion
{
  newCopy = new;
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  sessionCopy = session;
  selfCopy = self;
  sub_2245FE6D0(sessionCopy, newCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)setSystemTrackingEnabledWithEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = enabled;
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
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224633020, v14);
}

- (void)getSystemTrackingEnabledWithAppID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
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
  dCopy = d;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224633000, v14);
}

- (void)_getSystemTrackingEnabledWithAppID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_224627CD8();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_2245FFD50(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)stopStateEvents
{
  v2 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification);
  if (v2)
  {
    *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification) = 0;
    selfCopy = self;
  }

  else
  {
    selfCopy2 = self;
  }

  selfCopy3 = self;
  v6 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification);
  if (v6)
  {
    *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification) = 0;

    selfCopy3 = v6;
  }
}

- (BOOL)monitorSystemTrackingStateWithDelegate:(id)delegate appID:(id)d error:(id *)error
{
  v7 = sub_224627CD8();
  v9 = v8;
  swift_unknownObjectRetain();
  selfCopy = self;
  DockCoreManager.monitorSystemTrackingState(delegate:appID:)(delegate, v7, v9);

  swift_unknownObjectRelease();
  return 1;
}

- (void)notifyConfigDelegateWithAppID:(id)d
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
  selfCopy = self;
  sub_2245E2798(0, 0, v6, &unk_224632FE0, v11);
}

- (void)setCachedConnectedWithConnected:(id)connected
{
  v5 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock);
  connectedCopy = connected;
  selfCopy = self;

  os_unfair_lock_lock(v5 + 5);
  sub_2245E30D4(&v5[4], selfCopy, connected, "setCachedConnected: 2 setting _connected to %@");
  os_unfair_lock_unlock(v5 + 5);
}

- (void)setCachedButtonStateWithEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock);
  selfCopy = self;

  os_unfair_lock_lock(v4 + 5);
  *(selfCopy + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState) = enabledCopy;
  os_unfair_lock_unlock(v4 + 5);
}

- (void)syncStateAndGenerateStateEvents:(unint64_t)events
{
  selfCopy = self;
  sub_224600358();
}

- (void)set_xpcConnection_Debug:(id)debug
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug) = debug;
  debugCopy = debug;
}

- (id)xpcConnection_Debug
{
  selfCopy = self;
  v3 = sub_2245E4F94();

  return v3;
}

- (void)closeXPCNoReply_Debug
{
  selfCopy = self;
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug);
}

- (void)setDockAccessoryStateWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info docked:(int64_t)docked completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = info;
  v13[3] = docked;
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
  infoCopy = info;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_224632FC0, v16);
}

- (void)_setDockAccessoryStateWithInfo:(id)info docked:(int64_t)docked completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  infoCopy = info;
  selfCopy = self;
  sub_224600594(infoCopy, docked, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)triggerSystemEventWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info event:(_TtC11DockKitCore20AccessorySystemEvent *)event completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = info;
  v13[3] = event;
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
  infoCopy = info;
  eventCopy = event;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_224632FA0, v16);
}

- (void)_triggerSystemEventWithInfo:(id)info event:(id)event completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  infoCopy = info;
  eventCopy = event;
  selfCopy = self;
  sub_224600B70(infoCopy, eventCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)getTrackerDebugNotificationsWithDelegate:(_TtP11DockKitCore23DockClientDebugProtocol_ *)delegate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = delegate;
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
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224632F80, v14);
}

- (void)_getTrackerDebugNotificationsWithDelegate:(id)delegate completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2245F9CA8(delegate, sub_22460A948, v7, selfCopy);
  swift_unknownObjectRelease();
}

- (void)stopTrackerDebugNotificationsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_224632F60, v12);
}

- (void)getAccessoryDescriptionWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info delegate:(_TtP11DockKitCore27XPCDataStreamClientProtocol_ *)delegate completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = info;
  v13[3] = delegate;
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
  infoCopy = info;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_224632F40, v16);
}

- (void)_getAccessoryDescriptionWithInfo:(id)info delegate:(id)delegate completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  infoCopy = info;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22460173C(info, delegate, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);

  swift_unknownObjectRelease();
}

- (void)set_xpcConnection_Certification:(id)certification
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification) = certification;
  certificationCopy = certification;
}

- (id)xpcConnection_Cert
{
  selfCopy = self;
  v3 = sub_2245E8814();

  return v3;
}

- (void)closeXPCNoReply_Cert
{
  selfCopy = self;
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification);
}

- (void)getAccessoryDiagnosticsWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)delegate options:(NSDictionary *)options completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = info;
  v15[3] = delegate;
  v15[4] = options;
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
  infoCopy = info;
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  sub_224616E14(0, 0, v13, &unk_224632F20, v18);
}

- (void)_getAccessoryDiagnosticsWithInfo:(id)info delegate:(id)delegate options:(id)options completion:(id)completion
{
  v9 = _Block_copy(completion);
  sub_22450950C(0, &unk_27D0C89A0);
  v10 = sub_224627C58();
  _Block_copy(v9);
  infoCopy = info;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_224601CD8(info, delegate, v10, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);

  swift_unknownObjectRelease();
}

- (void)getAccessoryDiagnosticsWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info options:(NSDictionary *)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = info;
  v13[3] = options;
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
  infoCopy = info;
  optionsCopy = options;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_224632F00, v16);
}

- (void)_getAccessoryDiagnosticsWithInfo:(id)info options:(id)options completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_22450950C(0, &unk_27D0C89A0);
  v8 = sub_224627C58();
  _Block_copy(v7);
  infoCopy = info;
  selfCopy = self;
  sub_2246022B4(info, v8, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)manualFirmwareUpdateWithFilePath:(NSString *)path sandboxExt:(NSString *)ext delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)delegate completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = path;
  v15[3] = ext;
  v15[4] = delegate;
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
  pathCopy = path;
  extCopy = ext;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_224616E14(0, 0, v13, &unk_224632EE0, v18);
}

- (void)_manualFirmwareUpdateWithFilePath:(id)path sandboxExt:(id)ext delegate:(id)delegate completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = sub_224627CD8();
  v11 = v10;
  v12 = sub_224627CD8();
  v14 = v13;
  _Block_copy(v8);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22460287C(v9, v11, v12, v14, delegate, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)haltWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)delegate completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = info;
  v13[3] = delegate;
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
  infoCopy = info;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_224632EC0, v16);
}

- (void)set_xpcConnection_CameraCapture:(id)capture
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture) = capture;
  captureCopy = capture;
}

- (id)xpcConnection_CameraCapture
{
  selfCopy = self;
  v3 = sub_2245D6734();

  return v3;
}

- (void)closeXPCNoReply_CameraCapture
{
  selfCopy = self;
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
}

- (void)rebootWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info delegate:(_TtP11DockKitCore30XPCCertificationClientProtocol_ *)delegate completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = info;
  v13[3] = delegate;
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
  infoCopy = info;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_224632EA0, v16);
}

- (void)connectedClientsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_224632E80, v12);
}

- (void)versionsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_224632E60, v12);
}

- (void)migrateDataWithUpdate:(BOOL)update completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = update;
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
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224631D18, v14);
}

- (void)dumpStateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_224632E30, v12);
}

- (void)unpairAccessoryWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = info;
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
  infoCopy = info;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224632E10, v14);
}

- (void)returnToBaseWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = info;
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
  infoCopy = info;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224632DF0, v14);
}

- (void)dumpTrackerDiagsWithPath:(NSString *)path completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = path;
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
  pathCopy = path;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224632DC0, v14);
}

- (void)dumpTrackerStatesWithPath:(NSString *)path completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = path;
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
  pathCopy = path;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224632DA0, v14);
}

- (void)searchWithCalibrate:(BOOL)calibrate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = calibrate;
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
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224632D80, v14);
}

- (void)stopSearchWithCalibrate:(BOOL)calibrate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = calibrate;
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
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224632D60, v14);
}

- (void)setDockTrackingButtonStateWithState:(int64_t)state completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = state;
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
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_224632D40, v14);
}

- (void)setTrackingActivityWithEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = enabled;
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
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_22462F560, v14);
}

- (void)fwUpdateFeedbackWithProcessID:(int)d info:(id)info message:(id)message complete:(BOOL)complete err:(id)err
{
  v10 = *&d;
  v12 = sub_224627CD8();
  v14 = v13;
  v15 = *(self + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_fwUpdateFeedbackLock);
  infoCopy = info;
  selfCopy = self;
  errCopy = err;

  os_unfair_lock_lock(v15 + 5);
  sub_2245F8444(&v15[4], selfCopy, v10, infoCopy, v12, v14, complete, err);
  os_unfair_lock_unlock(v15 + 5);
}

@end