@interface CPLCKPhotosSharedLibraryOperation
+ (id)exitSharedLibraryOperationWithZoneID:(id)a3 retentionPolicy:(int64_t)a4 exitType:(int64_t)a5 exitSource:(int64_t)a6 stopAt:(int64_t)a7 participantUserIDsToRemove:(id)a8 participantIDsToRemove:(id)a9 completionHandler:(id)a10;
+ (id)getNextBatchToMoveOperationWithZoneID:(id)a3 batchSize:(int64_t)a4 completionHandler:(id)a5;
+ (id)moveBatchSharedLibraryOperationWithZoneID:(id)a3 batchSize:(int)a4 operationID:(id)a5 completionHandler:(id)a6;
+ (id)sendExitMoveBatchFeedbackWithMoveBatchOperationID:(id)a3 moveBatchID:(id)a4 exitZoneID:(id)a5 feedbackItems:(id)a6 completionHandler:(id)a7;
+ (id)sendExitStatusFeedbackWithOperationID:(id)a3 shareID:(id)a4 status:(int64_t)a5 completionHandler:(id)a6;
+ (id)silentMoverServerRampOperationWithOperationID:(id)a3 completionHandler:(id)a4;
- (CPLCKPhotosSharedLibraryOperation)init;
@end

@implementation CPLCKPhotosSharedLibraryOperation

+ (id)silentMoverServerRampOperationWithOperationID:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v9 = _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC021silentMoverServerRampG004withG2ID17completionHandlerSo010CKDatabaseG0CSSSg_ySb_AIs5Int64VSbs5Int32VS6bs5Error_pSgtctFZ_0(v6, a3, sub_10011ADD0, v8);

  return v9;
}

+ (id)getNextBatchToMoveOperationWithZoneID:(id)a3 batchSize:(int64_t)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC18getNextBatchToMove4with9batchSize17completionHandlerSo010CKDatabaseG0CSo14CKRecordZoneIDC_SiySaySSGSg_SSSgANSbs5Error_pSgtctFZ_0(v9, a4, sub_10011ADC8, v8);
  v11 = v10;

  return v11;
}

+ (id)moveBatchSharedLibraryOperationWithZoneID:(id)a3 batchSize:(int)a4 operationID:(id)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (a5)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = a3;
  v14 = _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC09moveBatchefG04with9batchSize11operationID17completionHandlerSo010CKDatabaseG0CSo012CKRecordZoneN0C_s5Int32VSSSgySb_SbA2Os5Int64VSaySSGSgs5Error_pSgtctFZ_0(v13, a4, v10, a5, sub_10011AD9C, v12);

  return v14;
}

+ (id)exitSharedLibraryOperationWithZoneID:(id)a3 retentionPolicy:(int64_t)a4 exitType:(int64_t)a5 exitSource:(int64_t)a6 stopAt:(int64_t)a7 participantUserIDsToRemove:(id)a8 participantIDsToRemove:(id)a9 completionHandler:(id)a10
{
  v15 = _Block_copy(a10);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = a3;
  sub_100119F20(v19, a4, a5, a6, a7, v16, v17, sub_10011AD94, v18);
  v21 = v20;

  return v21;
}

+ (id)sendExitMoveBatchFeedbackWithMoveBatchOperationID:(id)a3 moveBatchID:(id)a4 exitZoneID:(id)a5 feedbackItems:(id)a6 completionHandler:(id)a7
{
  v10 = _Block_copy(a7);
  if (a3)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v12;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (a4)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  sub_1000BB130(&qword_1002C4008, &unk_10024B750);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a5;
  v16 = sub_10011A578(v11, a3, v15, v13, sub_100111344, v14);

  return v16;
}

+ (id)sendExitStatusFeedbackWithOperationID:(id)a3 shareID:(id)a4 status:(int64_t)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = a4;
  v14 = _s22CloudKitImplementation33CPLCKPhotosSharedLibraryOperationC22sendExitStatusFeedback04withG2ID5share6status17completionHandlerSo010CKDatabaseG0CSSSg_So012CKRecordZoneM0CSo011CPLCKSharedfiJ0VySb_s5Error_pSgtctFZ_0(v10, a3, v13, a5, sub_1001111B0, v12);

  return v14;
}

- (CPLCKPhotosSharedLibraryOperation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CPLCKPhotosSharedLibraryOperation();
  return [(CPLCKPhotosSharedLibraryOperation *)&v3 init];
}

@end