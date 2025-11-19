@interface CPLCKResourceDownloadOperation
+ (id)assetDownloadOperationFor:(id)a3 key:(id)a4 fingerPrint:(id)a5 downloadType:(int64_t)a6 timeRange:(id *)a7 completionBlock:(id)a8;
+ (id)downloadOperationWithRecordIDsAndTasks:(id)a3 keys:(id)a4 downloadType:(int64_t)a5 perRecordProgressBlock:(id)a6 perRecordCompletionBlock:(id)a7 completionBlock:(id)a8;
+ (id)inMemoryDownloadOperationForRecordID:(id)a3 resource:(id)a4 record:(id)a5 keys:(id)a6 downloadType:(int64_t)a7 completionBlock:(id)a8;
+ (id)streamOperationForRecordID:(id)a3 key:(id)a4 downloadType:(int64_t)a5 filename:(id)a6 timeRange:(id *)a7 mediaRequestHints:(id)a8 completionBlock:(id)aBlock;
- (CPLCKResourceDownloadOperation)init;
@end

@implementation CPLCKResourceDownloadOperation

+ (id)downloadOperationWithRecordIDsAndTasks:(id)a3 keys:(id)a4 downloadType:(int64_t)a5 perRecordProgressBlock:(id)a6 perRecordCompletionBlock:(id)a7 completionBlock:(id)a8
{
  v12 = _Block_copy(a6);
  v13 = _Block_copy(a7);
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
  v19 = a4;
  sub_1000C9C98(v15, v19, a5, sub_1000CC158, v16, sub_1000CC16C, v17, sub_1000CC194, v18);
  v21 = v20;

  return v21;
}

+ (id)streamOperationForRecordID:(id)a3 key:(id)a4 downloadType:(int64_t)a5 filename:(id)a6 timeRange:(id *)a7 mediaRequestHints:(id)a8 completionBlock:(id)aBlock
{
  var3 = a7->var1.var3;
  v24[0] = a7->var0.var0;
  v24[1] = *&a7->var0.var1;
  v25 = *&a7->var0.var3;
  v26 = *&a7->var1.var1;
  v27 = var3;
  v13 = _Block_copy(aBlock);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (a8)
  {
    a8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  v21 = a3;
  v22 = sub_1000CAC50(v21, v14, v16, a5, v17, v19, v24, a8, sub_1000CC0E8, v20);

  return v22;
}

+ (id)inMemoryDownloadOperationForRecordID:(id)a3 resource:(id)a4 record:(id)a5 keys:(id)a6 downloadType:(int64_t)a7 completionBlock:(id)a8
{
  v13 = _Block_copy(a8);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = _s22CloudKitImplementation30CPLCKResourceDownloadOperationC08inMemoryeF03for8resource6record4keys12downloadType15completionBlockSo010CKDatabaseF0CSo10CKRecordIDC_So11CPLResourceCSo20CPLPlaceholderRecordCSo08CPLCloudB12ResourceKeysCSo0deN0Vy10Foundation4DataVSg_SSSgSbs5Error_pSgtctFZ_0(v15, v16, v17, v18, a7, sub_1000CC0E0, v14);

  return v19;
}

+ (id)assetDownloadOperationFor:(id)a3 key:(id)a4 fingerPrint:(id)a5 downloadType:(int64_t)a6 timeRange:(id *)a7 completionBlock:(id)a8
{
  var3 = a7->var1.var3;
  v22[0] = a7->var0.var0;
  v22[1] = *&a7->var0.var1;
  v23 = *&a7->var0.var3;
  v24 = *&a7->var1.var1;
  v25 = var3;
  v11 = _Block_copy(a8);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  v19 = a3;
  v20 = sub_1000CB9F4(v19, v12, v14, v15, v17, a6, v22, sub_1000CCE90, v18);

  return v20;
}

- (CPLCKResourceDownloadOperation)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end