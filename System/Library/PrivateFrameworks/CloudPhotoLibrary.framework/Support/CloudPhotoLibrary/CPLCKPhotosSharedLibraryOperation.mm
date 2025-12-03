@interface CPLCKPhotosSharedLibraryOperation
+ (id)exitSharedLibraryOperationWithZoneID:(id)d retentionPolicy:(int64_t)policy exitType:(int64_t)type exitSource:(int64_t)source stopAt:(int64_t)at participantUserIDsToRemove:(id)remove participantIDsToRemove:(id)toRemove completionHandler:(id)self0;
+ (id)getNextBatchToMoveOperationWithZoneID:(id)d batchSize:(int64_t)size completionHandler:(id)handler;
+ (id)moveBatchSharedLibraryOperationWithZoneID:(id)d batchSize:(int)size operationID:(id)iD completionHandler:(id)handler;
+ (id)sendExitMoveBatchFeedbackWithMoveBatchOperationID:(id)d moveBatchID:(id)iD exitZoneID:(id)zoneID feedbackItems:(id)items completionHandler:(id)handler;
+ (id)sendExitStatusFeedbackWithOperationID:(id)d shareID:(id)iD status:(int64_t)status completionHandler:(id)handler;
+ (id)silentMoverServerRampOperationWithOperationID:(id)d completionHandler:(id)handler;
- (CPLCKPhotosSharedLibraryOperation)init;
@end

@implementation CPLCKPhotosSharedLibraryOperation

+ (id)silentMoverServerRampOperationWithOperationID:(id)d completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  if (d)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v9 = _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC021silentMoverServerRampG004withG2ID17completionHandlerSo010CKDatabaseG0CSSSg_ySb_AIs5Int64VSbs5Int32VS6bs5Error_pSgtctFZ_0(v6, d, sub_10011ADD0, v8);

  return v9;
}

+ (id)getNextBatchToMoveOperationWithZoneID:(id)d batchSize:(int64_t)size completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  dCopy = d;
  _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC18getNextBatchToMove4with9batchSize17completionHandlerSo010CKDatabaseG0CSo14CKRecordZoneIDC_SiySaySSGSg_SSSgANSbs5Error_pSgtctFZ_0(dCopy, size, sub_10011ADC8, v8);
  v11 = v10;

  return v11;
}

+ (id)moveBatchSharedLibraryOperationWithZoneID:(id)d batchSize:(int)size operationID:(id)iD completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (iD)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    iD = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  dCopy = d;
  v14 = _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC09moveBatchefG04with9batchSize11operationID17completionHandlerSo010CKDatabaseG0CSo012CKRecordZoneN0C_s5Int32VSSSgySb_SbA2Os5Int64VSaySSGSgs5Error_pSgtctFZ_0(dCopy, size, v10, iD, sub_10011AD9C, v12);

  return v14;
}

+ (id)exitSharedLibraryOperationWithZoneID:(id)d retentionPolicy:(int64_t)policy exitType:(int64_t)type exitSource:(int64_t)source stopAt:(int64_t)at participantUserIDsToRemove:(id)remove participantIDsToRemove:(id)toRemove completionHandler:(id)self0
{
  v15 = _Block_copy(handler);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  dCopy = d;
  sub_100119F20(dCopy, policy, type, source, at, v16, v17, sub_10011AD94, v18);
  v21 = v20;

  return v21;
}

+ (id)sendExitMoveBatchFeedbackWithMoveBatchOperationID:(id)d moveBatchID:(id)iD exitZoneID:(id)zoneID feedbackItems:(id)items completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  if (d)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v12;
    if (!iD)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (iD)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  sub_1000BB130(&qword_1002C4008, &unk_10024B750);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  zoneIDCopy = zoneID;
  v16 = sub_10011A578(v11, d, zoneIDCopy, v13, sub_100111344, v14);

  return v16;
}

+ (id)sendExitStatusFeedbackWithOperationID:(id)d shareID:(id)iD status:(int64_t)status completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (d)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  iDCopy = iD;
  v14 = _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC22sendExitStatusFeedback04withG2ID5share6status17completionHandlerSo010CKDatabaseG0CSSSg_So012CKRecordZoneM0CSo011CPLCKSharedfiJ0VySb_s5Error_pSgtctFZ_0(v10, d, iDCopy, status, sub_1001111B0, v12);

  return v14;
}

- (CPLCKPhotosSharedLibraryOperation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CPLCKPhotosSharedLibraryOperation();
  return [(CPLCKPhotosSharedLibraryOperation *)&v3 init];
}

@end