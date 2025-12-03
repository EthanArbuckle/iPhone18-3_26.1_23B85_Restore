@interface CMLUseCaseStatus
+ (id)statusForClientConfig:(id)config options:(unint64_t)options error:(id *)error;
+ (void)requestStatusForClientConfig:(id)config options:(unint64_t)options completionHandler:(id)handler;
+ (void)requestStatusForClientConfig:(id)config options:(unint64_t)options dispatchQueue:(id)queue completionHandler:(id)handler;
- (CMLUseCaseStatus)initWithCoder:(id)coder;
- (CMLUseCaseStatus)initWithUseCase:(id)case serializedDynamicConfig:(id)config serializedEvaluationKeyConfig:(id)keyConfig lastUsed:(id)used keyGenerationTime:(id)time keyExpirationTime:(id)expirationTime cacheCapacity:(int64_t)capacity cacheElementCount:(int64_t)self0 cacheEntryMinutesToLive:(int64_t)self1 cacheEvictionPolicy:(int64_t)self2 status:(unint64_t)self3;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMLUseCaseStatus

- (CMLUseCaseStatus)initWithUseCase:(id)case serializedDynamicConfig:(id)config serializedEvaluationKeyConfig:(id)keyConfig lastUsed:(id)used keyGenerationTime:(id)time keyExpirationTime:(id)expirationTime cacheCapacity:(int64_t)capacity cacheElementCount:(int64_t)self0 cacheEntryMinutesToLive:(int64_t)self1 cacheEvictionPolicy:(int64_t)self2 status:(unint64_t)self3
{
  caseCopy = case;
  configCopy = config;
  keyConfigCopy = keyConfig;
  usedCopy = used;
  timeCopy = time;
  expirationTimeCopy = expirationTime;
  v29.receiver = self;
  v29.super_class = CMLUseCaseStatus;
  v23 = [(CMLUseCaseStatus *)&v29 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_useCase, case);
    objc_storeStrong(&v24->_serializedDynamicConfig, config);
    objc_storeStrong(&v24->_serializedEvaluationKeyConfig, keyConfig);
    objc_storeStrong(&v24->_lastUsed, used);
    objc_storeStrong(&v24->_keyGenerationTime, time);
    objc_storeStrong(&v24->_keyExpirationTime, expirationTime);
    v24->_cacheCapacity = capacity;
    v24->_cacheElementCount = count;
    v24->_cacheEntryMinutesToLive = live;
    v24->_cacheEvictionPolicy = policy;
    v24->_status = status;
  }

  return v24;
}

+ (void)requestStatusForClientConfig:(id)config options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  configCopy = config;
  v9 = dispatch_queue_create("com.apple.CipherML.CMLUseCaseStatus", 0);
  [objc_opt_class() requestStatusForClientConfig:configCopy options:options dispatchQueue:v9 completionHandler:handlerCopy];
}

+ (void)requestStatusForClientConfig:(id)config options:(unint64_t)options dispatchQueue:(id)queue completionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  configCopy = config;
  v13 = +[CMLXPC createConnection];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke;
  aBlock[3] = &unk_2785418E8;
  v14 = handlerCopy;
  v31 = v14;
  v15 = v13;
  v30 = v15;
  v16 = _Block_copy(aBlock);
  v17 = [CMLXPC asyncProxyToConnection:v15 dispatchQueue:queueCopy errorHandler:v16];
  v18 = +[CMLLog client];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = NSStringFromSelector(a2);
    *buf = 138543362;
    v33 = v19;
    _os_log_impl(&dword_224E26000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke_3;
  v24[3] = &unk_278541938;
  v27 = v14;
  v28 = a2;
  v25 = queueCopy;
  v26 = v15;
  v20 = v15;
  v21 = v14;
  v22 = queueCopy;
  [v17 queryStatusForClientConfig:configCopy options:options reply:v24];

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[CMLLog client];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 56));
    *buf = 138543874;
    v20 = v8;
    v21 = 1024;
    v22 = v5 != 0;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, status(%d) error:%{public}@", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = [CMLError errorWithCode:1100 underlyingError:v6 description:@"Unable to query status due to errors"];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke_6;
  v14[3] = &unk_278541910;
  v18 = *(a1 + 48);
  v15 = v5;
  v16 = v9;
  v17 = *(a1 + 40);
  v11 = v9;
  v12 = v5;
  dispatch_async(v10, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke_6(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 invalidate];
}

+ (id)statusForClientConfig:(id)config options:(unint64_t)options error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v9 = +[CMLXPC createConnection];
  v34 = 0;
  v10 = [CMLXPC syncProxyToConnection:v9 error:&v34];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v11 = +[CMLLog client];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v36 = v12;
    _os_log_impl(&dword_224E26000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__CMLUseCaseStatus_statusForClientConfig_options_error___block_invoke;
  v21[3] = &unk_278541960;
  v21[4] = &v22;
  v21[5] = &v28;
  v21[6] = a2;
  [v10 queryStatusForClientConfig:configCopy options:options reply:v21];
  if (error)
  {
    v13 = v34;
    if (!v34)
    {
      v13 = v29[5];
    }

    *error = v13;
  }

  v14 = +[CMLLog client];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    v16 = v23[5] != 0;
    v17 = v29[5];
    *buf = 138543874;
    v36 = v15;
    v37 = 1024;
    v38 = v16;
    v39 = 2114;
    v40 = v17;
    _os_log_impl(&dword_224E26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete, status(%d) error:%{public}@", buf, 0x1Cu);
  }

  [v9 invalidate];
  v18 = v23[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __56__CMLUseCaseStatus_statusForClientConfig_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    v14 = 138543874;
    v15 = v9;
    v16 = 1024;
    v17 = v6 != 0;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, status(%d), error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:1100 underlyingError:v7 description:@"Unable to query status due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (CMLUseCaseStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useCase"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedDynamicConfig"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedEvaluationKeyConfig"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsed"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyGenerationTime"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyExpirationTime"];
  v8 = [coderCopy decodeIntegerForKey:@"cacheCapacity"];
  v9 = [coderCopy decodeIntegerForKey:@"cacheElementCount"];
  v10 = [coderCopy decodeIntegerForKey:@"cacheEntryMinutesToLive"];
  v11 = [coderCopy decodeInt64ForKey:@"cacheEvictionPolicy"];
  v12 = [coderCopy decodeInt64ForKey:@"status"];

  v13 = [(CMLUseCaseStatus *)self initWithUseCase:v16 serializedDynamicConfig:v15 serializedEvaluationKeyConfig:v4 lastUsed:v5 keyGenerationTime:v6 keyExpirationTime:v7 cacheCapacity:v8 cacheElementCount:v9 cacheEntryMinutesToLive:v10 cacheEvictionPolicy:v11 status:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  useCase = [(CMLUseCaseStatus *)self useCase];
  [coderCopy encodeObject:useCase forKey:@"useCase"];

  serializedDynamicConfig = [(CMLUseCaseStatus *)self serializedDynamicConfig];
  [coderCopy encodeObject:serializedDynamicConfig forKey:@"serializedDynamicConfig"];

  serializedEvaluationKeyConfig = [(CMLUseCaseStatus *)self serializedEvaluationKeyConfig];
  [coderCopy encodeObject:serializedEvaluationKeyConfig forKey:@"serializedEvaluationKeyConfig"];

  lastUsed = [(CMLUseCaseStatus *)self lastUsed];
  [coderCopy encodeObject:lastUsed forKey:@"lastUsed"];

  keyGenerationTime = [(CMLUseCaseStatus *)self keyGenerationTime];
  [coderCopy encodeObject:keyGenerationTime forKey:@"keyGenerationTime"];

  keyExpirationTime = [(CMLUseCaseStatus *)self keyExpirationTime];
  [coderCopy encodeObject:keyExpirationTime forKey:@"keyExpirationTime"];

  [coderCopy encodeInteger:-[CMLUseCaseStatus cacheCapacity](self forKey:{"cacheCapacity"), @"cacheCapacity"}];
  [coderCopy encodeInteger:-[CMLUseCaseStatus cacheElementCount](self forKey:{"cacheElementCount"), @"cacheElementCount"}];
  [coderCopy encodeInteger:-[CMLUseCaseStatus cacheEntryMinutesToLive](self forKey:{"cacheEntryMinutesToLive"), @"cacheEntryMinutesToLive"}];
  [coderCopy encodeInt64:-[CMLUseCaseStatus cacheEvictionPolicy](self forKey:{"cacheEvictionPolicy"), @"cacheEvictionPolicy"}];
  [coderCopy encodeInt64:-[CMLUseCaseStatus status](self forKey:{"status"), @"status"}];
}

@end