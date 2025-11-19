@interface _DKSyncUpCloudKitKnowledgeStorage
+ (id)sharedInstance;
- (BOOL)isAvailable;
- (_DKSyncUpCloudKitKnowledgeStorage)init;
- (void)cancelOutstandingOperations;
- (void)fetchAdditionsHighWaterMarkWithPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5;
- (void)fetchDeletedEventIDsFromPeer:(id)a3 sinceDate:(id)a4 streamNames:(id)a5 limit:(unint64_t)a6 highPriority:(BOOL)a7 completion:(id)a8;
- (void)fetchDeletionsHighWaterMarkWithPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5;
- (void)fetchEventsFromPeer:(id)a3 windows:(id)a4 streamNames:(id)a5 limit:(unint64_t)a6 fetchOrder:(int64_t)a7 highPriority:(BOOL)a8 completion:(id)a9;
- (void)fetchSourceDeviceIDFromPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5;
- (void)prewarmFetchWithCompletion:(id)a3;
- (void)setAvailable:(BOOL)a3;
- (void)start;
- (void)updateStorageWithAddedEvents:(id)a3 deletedEventIDs:(id)a4 highPriority:(BOOL)a5 completion:(id)a6;
@end

@implementation _DKSyncUpCloudKitKnowledgeStorage

+ (id)sharedInstance
{
  if (sharedInstance_initialized_455 != -1)
  {
    +[_DKSyncUpCloudKitKnowledgeStorage sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_456;

  return v3;
}

- (_DKSyncUpCloudKitKnowledgeStorage)init
{
  v3.receiver = self;
  v3.super_class = _DKSyncUpCloudKitKnowledgeStorage;
  return [(_DKSyncUpCloudKitKnowledgeStorage *)&v3 init];
}

- (BOOL)isAvailable
{
  common = self->_common;
  if (common)
  {
    LOBYTE(common) = common->_available;
  }

  return OUTLINED_FUNCTION_61(common);
}

- (void)setAvailable:(BOOL)a3
{
  common = self->_common;
  if (common)
  {
    common->_available = a3;
  }
}

- (void)start
{
  v3 = +[_DKSyncCloudKitKnowledgeStorage sharedInstance];
  common = self->_common;
  self->_common = v3;

  v6 = self->_common;
  if (v6)
  {
    OUTLINED_FUNCTION_57(v6, v5);
    v6 = self->_common;
  }

  [(_DKSyncCloudKitKnowledgeStorage *)v6 start];
}

- (void)cancelOutstandingOperations
{
  common = self->_common;
  if (common)
  {
    OUTLINED_FUNCTION_57(common, a2);
    common = self->_common;
  }

  [(_DKSyncCloudKitKnowledgeStorage *)common cancelOutstandingOperations];
}

- (void)prewarmFetchWithCompletion:(id)a3
{
  v6 = a3;
  common = self->_common;
  if (common)
  {
    OUTLINED_FUNCTION_57(common, v4);
    common = self->_common;
  }

  [(_DKSyncCloudKitKnowledgeStorage *)common prewarmFetchWithCompletion:v6];
}

- (void)fetchEventsFromPeer:(id)a3 windows:(id)a4 streamNames:(id)a5 limit:(unint64_t)a6 fetchOrder:(int64_t)a7 highPriority:(BOOL)a8 completion:(id)a9
{
  v25 = OUTLINED_FUNCTION_42(self, a2, a3);
  v13 = v9;
  v14 = v10;
  v22 = v12;
  v23 = *(v11 + 8);
  if (v23)
  {
    objc_setProperty_atomic(v23, v15, *(v11 + 16), 160);
    v23 = *(v11 + 8);
  }

  OUTLINED_FUNCTION_36_0(v23, v15, v16, v17, v18, v19, v20, v21, v24, v25);
}

- (void)fetchAdditionsHighWaterMarkWithPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5
{
  v12 = OUTLINED_FUNCTION_29_0(self, a2, a3);
  v7 = v5;
  v8 = OUTLINED_FUNCTION_40();
  if (v8)
  {
    OUTLINED_FUNCTION_59(v8, v9);
    v10 = *(v6 + 8);
  }

  OUTLINED_FUNCTION_18_0();
  [v11 fetchAdditionsHighWaterMarkWithPeer:? highPriority:? completion:?];
}

- (void)fetchDeletedEventIDsFromPeer:(id)a3 sinceDate:(id)a4 streamNames:(id)a5 limit:(unint64_t)a6 highPriority:(BOOL)a7 completion:(id)a8
{
  v24 = OUTLINED_FUNCTION_47(self, a2, a3);
  v12 = v8;
  v13 = v9;
  v21 = v11;
  v22 = *(v10 + 8);
  if (v22)
  {
    objc_setProperty_atomic(v22, v14, *(v10 + 16), 160);
    v22 = *(v10 + 8);
  }

  OUTLINED_FUNCTION_48(v22, v14, v15, v16, v17, v18, v19, v20, v23, v24);
}

- (void)fetchDeletionsHighWaterMarkWithPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5
{
  v12 = OUTLINED_FUNCTION_29_0(self, a2, a3);
  v7 = v5;
  v8 = OUTLINED_FUNCTION_40();
  if (v8)
  {
    OUTLINED_FUNCTION_59(v8, v9);
    v10 = *(v6 + 8);
  }

  OUTLINED_FUNCTION_18_0();
  [v11 fetchDeletionsHighWaterMarkWithPeer:? highPriority:? completion:?];
}

- (void)fetchSourceDeviceIDFromPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5
{
  v12 = OUTLINED_FUNCTION_29_0(self, a2, a3);
  v7 = v5;
  v8 = OUTLINED_FUNCTION_40();
  if (v8)
  {
    OUTLINED_FUNCTION_59(v8, v9);
    v10 = *(v6 + 8);
  }

  OUTLINED_FUNCTION_18_0();
  [v11 fetchSourceDeviceIDFromPeer:? highPriority:? completion:?];
}

- (void)updateStorageWithAddedEvents:(id)a3 deletedEventIDs:(id)a4 highPriority:(BOOL)a5 completion:(id)a6
{
  v20 = OUTLINED_FUNCTION_76(self, a2, a3);
  v9 = v6;
  v17 = v7;
  v18 = *(v8 + 8);
  if (v18)
  {
    objc_setProperty_atomic(v18, v10, *(v8 + 16), 160);
    v18 = *(v8 + 8);
  }

  OUTLINED_FUNCTION_77(v18, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

@end