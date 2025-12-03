@interface ObjectTrackingAgent
+ (BOOL)trackingSummaryDebugEnabled;
- (BOOL)customInferenceEnabled;
- (BOOL)docked;
- (NSDate)lastSummaryPublishTime;
- (ObjectTrackingAgent)initWithTrackerConfig:(id)config;
- (id)getDockCoreObservationsWithDetectedObjectsInfo:(id)info cameraPort:(id)port;
- (id)getTrackedObjects;
- (void)deRegisterForDebugNotificationsWithCompletionHandler:(id)handler;
- (void)disconnectedWithErr:(id)err;
- (void)getConnectedTrackerWithCompletionHandler:(id)handler;
- (void)isTrackingWithCompletionHandler:(id)handler;
- (void)processImageWithImage:(CIImage *)image faces:(NSArray *)faces completionHandler:(id)handler;
- (void)registerForDebugNotificationsWithCompletionHandler:(id)handler;
- (void)registerForTrackingConfigChangesWithCompletionHandler:(id)handler;
- (void)selectSubjectAtEventWithX:(id)x y:(id)y;
- (void)selectSubjectAtPoint:(CGPoint)point completionHandler:(id)handler;
- (void)selectSubjects:(NSArray *)subjects completionHandler:(id)handler;
- (void)selectSubjectsEvent:(id)event;
- (void)sendCommandEventWithCommand:(id)command;
- (void)sendUsageMetric;
- (void)sendUsageMetric_Legacy;
- (void)setFramingModeEventWithMode:(int64_t)mode;
- (void)setLastSummaryPublishTime:(id)time;
- (void)setRectOfInterestEventWithRect:(CGRect)rect;
- (void)setRectOfInterestLocallyWithRect:(CGRect)rect completionHandler:(id)handler;
- (void)setRectOfInterestWithRect:(CGRect)rect completionHandler:(id)handler;
- (void)setupAgentWithTrustNotifications:(BOOL)notifications completionHandler:(id)handler;
- (void)stateEventWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info connectedState:(int64_t)state dockState:(int64_t)dockState trackingButtonState:(int64_t)buttonState completionHandler:(id)handler;
- (void)stateEventWithInfo:(id)info connectedState:(int64_t)state dockState:(int64_t)dockState trackingButtonState:(int64_t)buttonState;
- (void)stop;
- (void)trackWithDetectedObjectsInfo:(NSDictionary *)info image:(CIImage *)image cameraPortType:(NSString *)type cameraIntrinsics:(NSArray *)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)handler;
- (void)trackWithFocusObservation:(DKFocusObservation *)observation metadata:(NSArray *)metadata image:(CIImage *)image cameraPortType:(NSString *)type cameraIntrinsics:(NSArray *)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)self0;
- (void)trackWithMetadata:(NSArray *)metadata image:(CIImage *)image cameraPortType:(NSString *)type cameraIntrinsics:(NSArray *)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)handler;
- (void)trackingButtonEnabledWithCompletionHandler:(id)handler;
- (void)trackingButtonStateChangedWithInfo:(id)info state:(int64_t)state;
- (void)trackingEnabledForAppWithCompletionHandler:(id)handler;
- (void)trackingEnabledWithEnabled:(BOOL)enabled appID:(id)d;
- (void)updateCameraSessionWithSession:(_TtC11DockKitCore24CameraSessionInformation *)session new:(BOOL)new completionHandler:(id)handler;
- (void)xpcConnected;
- (void)xpcDisconnected;
@end

@implementation ObjectTrackingAgent

- (void)isTrackingWithCompletionHandler:(id)handler
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
  v11[4] = &unk_22462F780;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22462F788;
  v12[5] = v11;
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_22462F790, v12);
}

- (BOOL)customInferenceEnabled
{
  v2 = qword_27D0C8870;
  selfCopy = self;
  if (v2 != -1)
  {
    v6 = selfCopy;
    swift_once();
    selfCopy = v6;
  }

  v4 = byte_27D0D6060;
  if (byte_27D0D6060 == 2)
  {
    v4 = *(selfCopy + OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig);
  }

  return v4 & 1;
}

+ (BOOL)trackingSummaryDebugEnabled
{
  if (qword_280C51638 != -1)
  {
    swift_once();
  }

  return byte_280C51959;
}

- (NSDate)lastSummaryPublishTime
{
  v3 = sub_224627118();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___ObjectTrackingAgent_lastSummaryPublishTime, v3);
  v7 = sub_2246270A8();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (void)setLastSummaryPublishTime:(id)time
{
  v4 = sub_224627118();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2246270D8();
  (*(v5 + 40))(self + OBJC_IVAR___ObjectTrackingAgent_lastSummaryPublishTime, v7, v4);
}

- (ObjectTrackingAgent)initWithTrackerConfig:(id)config
{
  configCopy = config;
  v4 = sub_22455D114(configCopy);

  return v4;
}

- (void)trackWithMetadata:(NSArray *)metadata image:(CIImage *)image cameraPortType:(NSString *)type cameraIntrinsics:(NSArray *)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)handler
{
  height = dimensions.height;
  width = dimensions.width;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v31 - v19;
  v21 = _Block_copy(handler);
  v22 = swift_allocObject();
  *(v22 + 16) = metadata;
  *(v22 + 24) = image;
  *(v22 + 32) = type;
  *(v22 + 40) = intrinsics;
  *(v22 + 48) = width;
  *(v22 + 56) = height;
  *(v22 + 64) = orientation;
  *(v22 + 72) = v21;
  *(v22 + 80) = self;
  v23 = sub_224627F78();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22462F760;
  v24[5] = v22;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22462F768;
  v25[5] = v24;
  metadataCopy = metadata;
  imageCopy = image;
  typeCopy = type;
  intrinsicsCopy = intrinsics;
  selfCopy = self;
  sub_224616E14(0, 0, v20, &unk_22462F770, v25);
}

- (void)trackWithFocusObservation:(DKFocusObservation *)observation metadata:(NSArray *)metadata image:(CIImage *)image cameraPortType:(NSString *)type cameraIntrinsics:(NSArray *)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)self0
{
  height = dimensions.height;
  width = dimensions.width;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - v20;
  v22 = _Block_copy(handler);
  v23 = swift_allocObject();
  *(v23 + 16) = observation;
  *(v23 + 24) = metadata;
  *(v23 + 32) = image;
  *(v23 + 40) = type;
  *(v23 + 48) = intrinsics;
  *(v23 + 56) = width;
  *(v23 + 64) = height;
  *(v23 + 72) = orientation;
  *(v23 + 80) = v22;
  *(v23 + 88) = self;
  v24 = sub_224627F78();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22462F740;
  v25[5] = v23;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_22462F748;
  v26[5] = v25;
  observationCopy = observation;
  metadataCopy = metadata;
  imageCopy = image;
  typeCopy = type;
  intrinsicsCopy = intrinsics;
  selfCopy = self;
  sub_224616E14(0, 0, v21, &unk_22462F750, v26);
}

- (void)trackWithDetectedObjectsInfo:(NSDictionary *)info image:(CIImage *)image cameraPortType:(NSString *)type cameraIntrinsics:(NSArray *)intrinsics referenceDimensions:(CGSize)dimensions orientation:(int)orientation completionHandler:(id)handler
{
  height = dimensions.height;
  width = dimensions.width;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v31 - v19;
  v21 = _Block_copy(handler);
  v22 = swift_allocObject();
  *(v22 + 16) = info;
  *(v22 + 24) = image;
  *(v22 + 32) = type;
  *(v22 + 40) = intrinsics;
  *(v22 + 48) = width;
  *(v22 + 56) = height;
  *(v22 + 64) = orientation;
  *(v22 + 72) = v21;
  *(v22 + 80) = self;
  v23 = sub_224627F78();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22462F720;
  v24[5] = v22;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22462F728;
  v25[5] = v24;
  infoCopy = info;
  imageCopy = image;
  typeCopy = type;
  intrinsicsCopy = intrinsics;
  selfCopy = self;
  sub_224616E14(0, 0, v20, &unk_22462F730, v25);
}

- (id)getDockCoreObservationsWithDetectedObjectsInfo:(id)info cameraPort:(id)port
{
  v6 = sub_224627CD8();
  v8 = v7;
  infoCopy = info;
  selfCopy = self;
  sub_22453C458(infoCopy, v6, v8);

  type metadata accessor for DockCoreObservation();
  v11 = sub_224627EB8();

  return v11;
}

- (void)stop
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  *(self + OBJC_IVAR___ObjectTrackingAgent_expectingDisconnect) = 1;
  v6 = sub_224627F78();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_224536440(0, 0, v5, &unk_22462F710, v7);
}

- (id)getTrackedObjects
{
  v2 = *(self + OBJC_IVAR___ObjectTrackingAgent_lastFaces);
  selfCopy = self;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9468);
  sub_224627EC8();

  v5 = sub_224627EB8();

  return v5;
}

- (void)processImageWithImage:(CIImage *)image faces:(NSArray *)faces completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = image;
  v13[3] = faces;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22462F6F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22462F700;
  v16[5] = v15;
  imageCopy = image;
  facesCopy = faces;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_22462F708, v16);
}

- (BOOL)docked
{
  selfCopy = self;
  v3 = sub_22453FACC();

  return v3;
}

- (void)trackingButtonEnabledWithCompletionHandler:(id)handler
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
  v11[4] = &unk_22462F6D8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22462F6E0;
  v12[5] = v11;
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_22462F6E8, v12);
}

- (void)selectSubjectAtPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
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
  v14[4] = &unk_22462F6B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22462F6C0;
  v15[5] = v14;
  selfCopy = self;
  sub_224616E14(0, 0, v10, &unk_22462F6C8, v15);
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
  v13[4] = &unk_22462F698;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22462F6A0;
  v14[5] = v13;
  subjectsCopy = subjects;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_22462F6A8, v14);
}

- (void)setRectOfInterestLocallyWithRect:(CGRect)rect completionHandler:(id)handler
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
  v16[4] = &unk_22462F678;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22462F680;
  v17[5] = v16;
  selfCopy = self;
  sub_224616E14(0, 0, v12, &unk_22462F688, v17);
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
  v16[4] = &unk_22462F658;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22462F660;
  v17[5] = v16;
  selfCopy = self;
  sub_224616E14(0, 0, v12, &unk_22462F668, v17);
}

- (void)setupAgentWithTrustNotifications:(BOOL)notifications completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = notifications;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22462F638;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22462F640;
  v14[5] = v13;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_22462F648, v14);
}

- (void)registerForTrackingConfigChangesWithCompletionHandler:(id)handler
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
  v11[4] = &unk_22462F618;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22462F620;
  v12[5] = v11;
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_22462F628, v12);
}

- (void)registerForDebugNotificationsWithCompletionHandler:(id)handler
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
  v11[4] = &unk_22462F5F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22462F600;
  v12[5] = v11;
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_22462F608, v12);
}

- (void)deRegisterForDebugNotificationsWithCompletionHandler:(id)handler
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
  v11[4] = &unk_22462F5D8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22462F5E0;
  v12[5] = v11;
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_22462F5E8, v12);
}

- (void)trackingEnabledForAppWithCompletionHandler:(id)handler
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
  v11[4] = &unk_22462F5B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22462F5C0;
  v12[5] = v11;
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_22462F5C8, v12);
}

- (void)getConnectedTrackerWithCompletionHandler:(id)handler
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
  v11[4] = &unk_22462F598;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22462F5A0;
  v12[5] = v11;
  selfCopy = self;
  sub_224616E14(0, 0, v7, &unk_22462F5A8, v12);
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
  v15[4] = &unk_22462F578;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22462F580;
  v16[5] = v15;
  sessionCopy = session;
  selfCopy = self;
  sub_224616E14(0, 0, v11, &unk_22462F588, v16);
}

- (void)stateEventWithInfo:(id)info connectedState:(int64_t)state dockState:(int64_t)dockState trackingButtonState:(int64_t)buttonState
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = info;
  v15[6] = state;
  v15[7] = dockState;
  v15[8] = buttonState;
  infoCopy = info;
  selfCopy = self;
  sub_224536440(0, 0, v13, &unk_22462F568, v15);
}

- (void)stateEventWithInfo:(_TtC11DockKitCore12DockCoreInfo *)info connectedState:(int64_t)state dockState:(int64_t)dockState trackingButtonState:(int64_t)buttonState completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = info;
  v17[3] = state;
  v17[4] = dockState;
  v17[5] = buttonState;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_224627F78();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22462F550;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_2246336D0;
  v20[5] = v19;
  infoCopy = info;
  selfCopy = self;
  sub_224616E14(0, 0, v15, &unk_22462F560, v20);
}

- (void)trackingButtonStateChangedWithInfo:(id)info state:(int64_t)state
{
  infoCopy = info;
  selfCopy = self;
  sub_22454D948(infoCopy, state);
}

- (void)disconnectedWithErr:(id)err
{
  selfCopy = self;
  errCopy = err;
  sub_22454EB08(err);
}

- (void)xpcConnected
{
  selfCopy = self;
  sub_22454F9C4();
}

- (void)xpcDisconnected
{
  selfCopy = self;
  sub_22454FB64();
}

- (void)trackingEnabledWithEnabled:(BOOL)enabled appID:(id)d
{
  enabledCopy = enabled;
  v6 = sub_224627CD8();
  v8 = v7;
  selfCopy = self;
  sub_224553D38(enabledCopy, v6, v8);
}

- (void)setFramingModeEventWithMode:(int64_t)mode
{
  selfCopy = self;
  sub_22455460C(mode);
}

- (void)selectSubjectAtEventWithX:(id)x y:(id)y
{
  xCopy = x;
  yCopy = y;
  selfCopy = self;
  sub_224554E44(xCopy, yCopy);
}

- (void)selectSubjectsEvent:(id)event
{
  v4 = sub_224627ED8();
  selfCopy = self;
  sub_2245567D8(v4);
}

- (void)setRectOfInterestEventWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_22455814C(x, y, width, height);
}

- (void)sendCommandEventWithCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  v5 = sub_224627038();
  v7 = v6;

  sub_224559638();
  sub_22452F684(v5, v7);
}

- (void)sendUsageMetric_Legacy
{
  selfCopy = self;
  sub_224559F68();
}

- (void)sendUsageMetric
{
  v3 = sub_224627118();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_224559F68();
  sub_224627108();
  DKTrackingMetric.send(time:)();

  (*(v4 + 8))(v6, v3);
}

@end