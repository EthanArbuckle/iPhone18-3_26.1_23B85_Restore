@interface CPLCKResourceDownloadOperation
+ (id)assetDownloadOperationFor:(id)for key:(id)key fingerPrint:(id)print downloadType:(int64_t)type timeRange:(id *)range completionBlock:(id)block;
+ (id)downloadOperationWithRecordIDsAndTasks:(id)tasks keys:(id)keys downloadType:(int64_t)type perRecordProgressBlock:(id)block perRecordCompletionBlock:(id)completionBlock completionBlock:(id)a8;
+ (id)inMemoryDownloadOperationForRecordID:(id)d resource:(id)resource record:(id)record keys:(id)keys downloadType:(int64_t)type completionBlock:(id)block;
+ (id)streamOperationForRecordID:(id)d key:(id)key downloadType:(int64_t)type filename:(id)filename timeRange:(id *)range mediaRequestHints:(id)hints completionBlock:(id)aBlock;
- (CPLCKResourceDownloadOperation)init;
@end

@implementation CPLCKResourceDownloadOperation

+ (id)downloadOperationWithRecordIDsAndTasks:(id)tasks keys:(id)keys downloadType:(int64_t)type perRecordProgressBlock:(id)block perRecordCompletionBlock:(id)completionBlock completionBlock:(id)a8
{
  v12 = _Block_copy(block);
  v13 = _Block_copy(completionBlock);
  v14 = _Block_copy(a8);
  sub_1000CC8B0(0, &qword_1002C0DD0, CKRecordID_ptr);
  sub_1000CC8B0(0, &qword_1002C0DD8, CPLEngineResourceDownloadTask_ptr);
  sub_1000CC0F0();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  keysCopy = keys;
  sub_1000C9C98(v15, keysCopy, type, sub_1000CC158, v16, sub_1000CC16C, v17, sub_1000CC194, v18);
  v21 = v20;

  return v21;
}

+ (id)streamOperationForRecordID:(id)d key:(id)key downloadType:(int64_t)type filename:(id)filename timeRange:(id *)range mediaRequestHints:(id)hints completionBlock:(id)aBlock
{
  var3 = range->var1.var3;
  v24[0] = range->var0.var0;
  v24[1] = *&range->var0.var1;
  v25 = *&range->var0.var3;
  v26 = *&range->var1.var1;
  v27 = var3;
  v13 = _Block_copy(aBlock);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (hints)
  {
    hints = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  dCopy = d;
  v22 = sub_1000CAC50(dCopy, v14, v16, type, v17, v19, v24, hints, sub_1000CC0E8, v20);

  return v22;
}

+ (id)inMemoryDownloadOperationForRecordID:(id)d resource:(id)resource record:(id)record keys:(id)keys downloadType:(int64_t)type completionBlock:(id)block
{
  v13 = _Block_copy(block);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  dCopy = d;
  resourceCopy = resource;
  recordCopy = record;
  keysCopy = keys;
  v19 = _s22CloudKitImplementation30CPLCKResourceDownloadOperationC08inMemoryeF03for8resource6record4keys12downloadType15completionBlockSo010CKDatabaseF0CSo10CKRecordIDC_So11CPLResourceCSo20CPLPlaceholderRecordCSo08CPLCloudB12ResourceKeysCSo0deN0Vy10Foundation4DataVSg_SSSgSbs5Error_pSgtctFZ_0(dCopy, resourceCopy, recordCopy, keysCopy, type, sub_1000CC0E0, v14);

  return v19;
}

+ (id)assetDownloadOperationFor:(id)for key:(id)key fingerPrint:(id)print downloadType:(int64_t)type timeRange:(id *)range completionBlock:(id)block
{
  var3 = range->var1.var3;
  v22[0] = range->var0.var0;
  v22[1] = *&range->var0.var1;
  v23 = *&range->var0.var3;
  v24 = *&range->var1.var1;
  v25 = var3;
  v11 = _Block_copy(block);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  forCopy = for;
  v20 = sub_1000CB9F4(forCopy, v12, v14, v15, v17, type, v22, sub_1000CCE90, v18);

  return v20;
}

- (CPLCKResourceDownloadOperation)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end