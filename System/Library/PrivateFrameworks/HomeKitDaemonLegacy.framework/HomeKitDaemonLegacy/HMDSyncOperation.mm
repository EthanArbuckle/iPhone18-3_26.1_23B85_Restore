@interface HMDSyncOperation
+ (id)cancelOperationWithBlock:(id)block;
+ (id)cloudForcePushSyncOperationWithBlock:(id)block;
+ (id)cloudOperation:(id)operation withBlock:(id)block completion:(id)completion;
+ (id)cloudPushSyncOperationWithBlock:(id)block;
+ (id)cloudVerifyAccountSyncOperationWithBlock:(id)block;
+ (id)cloudZonePushSyncOperation:(id)operation block:(id)block;
+ (id)postFetchOperationWithBlock:(id)block;
+ (id)queryDatabaseOperationWithBlock:(id)block;
- (NSArray)operationCompletions;
- (NSString)zoneName;
- (id)_initWithOptions:(id)options syncBlock:(id)block completion:(id)completion;
- (id)description;
- (unint64_t)operationType;
- (void)removeAllOperationCompletions;
- (void)updateOperationCompletionsWithArray:(id)array;
@end

@implementation HMDSyncOperation

- (void)removeAllOperationCompletions
{
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_operationCompletions removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateOperationCompletionsWithArray:(id)array
{
  arrayCopy = array;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_operationCompletions addObjectsFromArray:arrayCopy];
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
  options = [(HMDSyncOperation *)self options];
  zoneName = [options zoneName];

  return zoneName;
}

- (unint64_t)operationType
{
  options = [(HMDSyncOperation *)self options];
  operationType = [options operationType];

  return operationType;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  operationType = [(HMDSyncOperation *)self operationType];
  if (operationType - 1 > 8)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_27972A560[operationType - 1];
  }

  v7 = v6;
  options = [(HMDSyncOperation *)self options];
  identifier = [(HMDSyncOperation *)self identifier];
  v10 = [v3 stringWithFormat:@"<%@, Operation Type = %@, Options = %@, Identifier = %@>", v4, v7, options, identifier];

  return v10;
}

- (id)_initWithOptions:(id)options syncBlock:(id)block completion:(id)completion
{
  optionsCopy = options;
  blockCopy = block;
  completionCopy = completion;
  v23.receiver = self;
  v23.super_class = HMDSyncOperation;
  v12 = [(HMDSyncOperation *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v13->_identifier;
    v13->_identifier = uUID;

    objc_storeStrong(&v13->_options, options);
    v16 = _Block_copy(blockCopy);
    operationBlock = v13->_operationBlock;
    v13->_operationBlock = v16;

    array = [MEMORY[0x277CBEB18] array];
    operationCompletions = v13->_operationCompletions;
    v13->_operationCompletions = array;

    if (completionCopy)
    {
      v20 = v13->_operationCompletions;
      v21 = _Block_copy(completionCopy);
      [(NSMutableArray *)v20 addObject:v21];
    }
  }

  return v13;
}

+ (id)cloudOperation:(id)operation withBlock:(id)block completion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  operationCopy = operation;
  v10 = [[HMDSyncOperation alloc] _initWithOptions:operationCopy syncBlock:blockCopy completion:completionCopy];

  return v10;
}

+ (id)cloudZonePushSyncOperation:(id)operation block:(id)block
{
  blockCopy = block;
  operationCopy = operation;
  v7 = [[HMDSyncOperationOptions alloc] initWithOperationType:5 zoneName:operationCopy delayRespected:0];

  v8 = [[HMDSyncOperation alloc] _initWithOptions:v7 syncBlock:blockCopy completion:0];

  return v8;
}

+ (id)cloudVerifyAccountSyncOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:3 zoneName:@"VerifyZones" cloudConflict:0 delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:blockCopy completion:0];

  return v5;
}

+ (id)cloudForcePushSyncOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:2 zoneName:@"HomeDataBlobZone" delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:blockCopy completion:0];

  return v5;
}

+ (id)cloudPushSyncOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:1 zoneName:@"HomeDataBlobZone" delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:blockCopy completion:0];

  return v5;
}

+ (id)cancelOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:7 zoneName:@"CancelAll" cloudConflict:0 delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:blockCopy completion:0];

  return v5;
}

+ (id)postFetchOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:9 zoneName:@"PostFetch" cloudConflict:0 delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:blockCopy completion:0];

  return v5;
}

+ (id)queryDatabaseOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[HMDSyncOperationOptions alloc] initWithOperationType:8 zoneName:@"QueryDatabase" cloudConflict:0 delayRespected:0];
  v5 = [[HMDSyncOperation alloc] _initWithOptions:v4 syncBlock:blockCopy completion:0];

  return v5;
}

@end