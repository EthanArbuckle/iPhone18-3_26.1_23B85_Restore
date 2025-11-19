@interface HMDSyncOperation
+ (id)cancelOperationWithBlock:(id)a3;
+ (id)cloudForcePushSyncOperationWithBlock:(id)a3;
+ (id)cloudOperation:(id)a3 withBlock:(id)a4 completion:(id)a5;
+ (id)cloudPushSyncOperationWithBlock:(id)a3;
+ (id)cloudVerifyAccountSyncOperationWithBlock:(id)a3;
+ (id)cloudZonePushSyncOperation:(id)a3 block:(id)a4;
+ (id)postFetchOperationWithBlock:(id)a3;
+ (id)queryDatabaseOperationWithBlock:(id)a3;
- (NSArray)operationCompletions;
- (NSString)zoneName;
- (id)_initWithOptions:(id)a3 syncBlock:(id)a4 completion:(id)a5;
- (id)description;
- (unint64_t)operationType;
- (void)removeAllOperationCompletions;
- (void)updateOperationCompletionsWithArray:(id)a3;
@end

@implementation HMDSyncOperation

- (void)removeAllOperationCompletions
{
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_operationCompletions removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateOperationCompletionsWithArray:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_operationCompletions addObjectsFromArray:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)operationCompletions
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_operationCompletions copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)zoneName
{
  v2 = [(HMDSyncOperation *)self options];
  v3 = [v2 zoneName];

  return v3;
}

- (unint64_t)operationType
{
  v2 = [(HMDSyncOperation *)self options];
  v3 = [v2 operationType];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDSyncOperation *)self operationType];
  if (v5 - 1 > 8)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_27867B328[v5 - 1];
  }

  v7 = v6;
  v8 = [(HMDSyncOperation *)self options];
  v9 = [(HMDSyncOperation *)self identifier];
  v10 = [v3 stringWithFormat:@"<%@, Operation Type = %@, Options = %@, Identifier = %@>", v4, v7, v8, v9];

  return v10;
}

- (id)_initWithOptions:(id)a3 syncBlock:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = HMDSyncOperation;
  v12 = [(HMDSyncOperation *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v14 = [MEMORY[0x277CCAD78] UUID];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_options, a3);
    v16 = _Block_copy(v10);
    operationBlock = v13->_operationBlock;
    v13->_operationBlock = v16;

    v18 = [MEMORY[0x277CBEB18] array];
    operationCompletions = v13->_operationCompletions;
    v13->_operationCompletions = v18;

    if (v11)
    {
      v20 = v13->_operationCompletions;
      v21 = _Block_copy(v11);
      [(NSMutableArray *)v20 addObject:v21];
    }
  }

  return v13;
}

+ (id)cloudOperation:(id)a3 withBlock:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDSyncOperation alloc] _initWithOptions:v9 syncBlock:v8 completion:v7];

  return v10;
}

+ (id)cloudZonePushSyncOperation:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDSyncOperationOptions alloc] initWithOperationType:5 zoneName:v6 delayRespected:0];

  v8 = [[HMDSyncOperation alloc] _initWithOptions:v7 syncBlock:v5 completion:0];

  return v8;
}

+ (id)cloudVerifyAccountSyncOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:3 zoneName:@"VerifyZones" cloudConflict:0 delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:v3 completion:0];

  return v5;
}

+ (id)cloudForcePushSyncOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:2 zoneName:@"HomeDataBlobZone" delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:v3 completion:0];

  return v5;
}

+ (id)cloudPushSyncOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:1 zoneName:@"HomeDataBlobZone" delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:v3 completion:0];

  return v5;
}

+ (id)cancelOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:7 zoneName:@"CancelAll" cloudConflict:0 delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:v3 completion:0];

  return v5;
}

+ (id)postFetchOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:9 zoneName:@"PostFetch" cloudConflict:0 delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:v3 completion:0];

  return v5;
}

+ (id)queryDatabaseOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:8 zoneName:@"QueryDatabase" cloudConflict:0 delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:v3 completion:0];

  return v5;
}

@end